BOOL AudioFileObject::IsDataFormatValid(AudioFileObject *this, const AudioStreamBasicDescription *a2)
{
  v2 = 0;
  if (*this >= 0.0 && *this <= 3000000.0)
  {
    v3 = *(this + 7);
    v2 = 0;
    if ((v3 - 0x100000) >= 0xFFF00001)
    {
      if (*(this + 2) != 1819304813)
      {
        return 1;
      }

      v4 = *(this + 8);
      if ((v4 - 65) >= 0xFFFFFFC0 && *(this + 5) == 1)
      {
        v5 = *(this + 4);
        if (v5)
        {
          if (*(this + 6) == v5 && v5 >= (v4 * v3 + 7) >> 3)
          {
            return 1;
          }
        }
      }
    }
  }

  return v2;
}

void AudioFileObject::SetURL(AudioFileObject *this, CFTypeRef cf)
{
  v3 = *(this + 11);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 11);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 11) = cf;
  }
}

void std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<acv2::AudioConverterBase>>::~__split_buffer(uint64_t a1)
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
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *acv2::AudioConverterChain::AddStep(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = result[13];
  v7 = result[14];
  v6 = result + 13;
  if (v5 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 - 1);
  }

  *(v4 + 96) = v8;
  v9 = result[15];
  if (v7 >= v9)
  {
    v11 = v7 - v5;
    v12 = (v7 - v5) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v5;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v21[4] = v6;
    if (v15)
    {
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v15);
    }

    v16 = v12;
    v17 = (8 * v12);
    *a2 = 0;
    v18 = &v17[-v16];
    *v17 = v4;
    v10 = v17 + 1;
    memcpy(v18, v5, v11);
    v19 = v3[13];
    v3[13] = v18;
    v3[14] = v10;
    v20 = v3[15];
    v3[15] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<std::unique_ptr<acv2::AudioConverterBase>>::~__split_buffer(v21);
  }

  else
  {
    *a2 = 0;
    *v7 = v4;
    v10 = v7 + 8;
  }

  v3[14] = v10;
  return result;
}

void std::vector<std::unique_ptr<acv2::AudioConverterBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<acv2::AudioConverterBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t acv2::AudioConverterChain::PostBuild(acv2::AudioConverterChain *this)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(this + 35);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v2 = std::unique_ptr<ACOutputBuffer>::~unique_ptr[abi:ne200100](v2 - 1);
  }

  *(this + 35) = v3;
  v4 = *(this + 14) - *(this + 13);
  if ((v4 >> 3) < 1)
  {
LABEL_20:
    std::optional<ACAudioSpan>::emplace[abi:ne200100]<CA::StreamDescription const&,void>((this + 128), this + 1);
    if ((atomic_load_explicit(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input))
    {
      _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input = checkEnvVar("CoreAudio_CaptureConverterChain_Input");
      __cxa_guard_release(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input);
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input == 1)
    {
      acv2::AudioConverterBase::createCapturer(&__p, "-ConverterChainInput", this + 61, this, this);
    }

    if ((atomic_load_explicit(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input))
    {
      _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input = checkEnvVar("CoreAudio_CaptureConverterChain_Nodes");
      __cxa_guard_release(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input);
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm38EEEtlA38_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc67ELc111ELc110ELc118ELc101ELc114ELc116ELc101ELc114ELc67ELc104ELc97ELc105ELc110ELc95ELc78ELc111ELc100ELc101ELc115EEEEEbvE5input == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v58, "-ConverterChainNode_");
      v15 = *(this + 13);
      if (v15 != *(this + 14))
      {
        v16 = *v15;
        std::to_string(&v52, 0);
        if (v59 >= 0)
        {
          v17 = v58;
        }

        else
        {
          v17 = v58[0];
        }

        if (v59 >= 0)
        {
          v18 = v59;
        }

        else
        {
          v18 = v58[1];
        }

        v19 = std::string::insert(&v52, 0, v17, v18);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v53, "_", 1uLL);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = (*(**v15 + 56))();
        v24 = v23;
        if (v23)
        {
          CFRetain(v23);
          cf = v24;
          v25 = CFGetTypeID(v24);
          if (v25 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          if (cf)
          {
            applesauce::CF::convert_to<std::string,0>(v50, cf);
            if ((v51 & 0x80u) == 0)
            {
              v26 = v50;
            }

            else
            {
              v26 = v50[0];
            }

            if ((v51 & 0x80u) == 0)
            {
              v27 = v51;
            }

            else
            {
              v27 = v50[1];
            }

            v28 = std::string::append(&v54, v26, v27);
            v29 = *&v28->__r_.__value_.__l.__data_;
            v57 = v28->__r_.__value_.__r.__words[2];
            v56 = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            if (v57 >= 0)
            {
              v30 = &v56;
            }

            else
            {
              v30 = v56;
            }

            acv2::AudioConverterBase::createCapturer(buf, v30, (v16 + 152), (v16 + 56), v16);
          }
        }

        v47 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v47, "Could not construct");
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }

    v31 = *(this + 43);
    if (v31)
    {
      if (*(v31 + 72))
      {
        v32 = *(v31 + 76) == 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = 0;
      *(this + 496) = v32;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = (v4 >> 3) & 0x7FFFFFFF;
    v7 = v6 + 1;
    v8 = 8 * v6 - 8;
    while (1)
    {
      v48 = *(this + 13);
      v9 = *(v48 + v8);
      *(v9 + 8) = this;
      if (v5)
      {
        operator new();
      }

      *(v9 + 120) = -1;
      v10 = v9;
      if (v7 == 2)
      {
        break;
      }

      if ((*(*v9 + 104))(v9))
      {
        v10 = *(v48 + v8);
        break;
      }

      std::unique_ptr<ACSpanningInputBuffer>::reset[abi:ne200100]((v9 + 104), 0);
      v12 = *(v48 + v8);
      v13 = *(v12 + 56);
      v14 = *(v12 + 72);
      *(this + 9) = *(v12 + 88);
      *(this + 56) = v14;
      *(this + 40) = v13;
      --v7;
      ++v5;
      v8 -= 8;
      if (v7 <= 1)
      {
        goto LABEL_20;
      }
    }

    v11 = (*(*v10 + 48))(v10);
    if (!v11 || *(v11 + 205) != 1 || *(v11 + 364))
    {
      if (*(this + 96) == 1)
      {
        operator new();
      }

      operator new();
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v33 = 1768846202;
    v35 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v37 = *(v48 + v8);
      v36.i32[0] = bswap32(*(v37 + 24));
      v38 = vzip1_s8(v36, v36);
      v39.i64[0] = 0x1F0000001FLL;
      v39.i64[1] = 0x1F0000001FLL;
      v40.i64[0] = 0x1F0000001FLL;
      v40.i64[1] = 0x1F0000001FLL;
      v41.i64[0] = 0x5F0000005FLL;
      v41.i64[1] = 0x5F0000005FLL;
      v42 = vbsl_s8(vmovn_s32(vcgtq_u32(v41, vsraq_n_s32(v40, vshlq_n_s32(vmovl_u16(v38), 0x18uLL), 0x18uLL))), v38, 0x2E002E002E002ELL);
      v59 = 4;
      v43 = vuzp1_s8(v42, v42);
      LODWORD(v58[0]) = v43.i32[0];
      BYTE4(v58[0]) = 0;
      v43.i32[0] = bswap32(*(v37 + 64));
      v44 = vzip1_s8(v43, v43);
      v45 = vbsl_s8(vmovn_s32(vcgtq_u32(v41, vsraq_n_s32(v39, vshlq_n_s32(vmovl_u16(v44), 0x18uLL), 0x18uLL))), v44, 0x2E002E002E002ELL);
      HIBYTE(v57) = 4;
      LODWORD(v56) = vuzp1_s8(v45, v45).u32[0];
      BYTE4(v56) = 0;
      *buf = 136315906;
      *&buf[4] = "CompositeAudioConverter.cpp";
      v61 = 1024;
      v62 = 1802;
      v63 = 2080;
      v64 = v58;
      v65 = 2080;
      v66 = &v56;
      _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d CompressedFormatMaxPacketSize() == 0 with input format: %s, output format: %s", buf, 0x26u);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }
  }

  return v33;
}

uint64_t anonymous namespace::EABLImpl::create(_anonymous_namespace_::EABLImpl *this, int a2, int a3)
{
  v3 = this;
  v24 = *MEMORY[0x1E69E9840];
  if (this > 0x1000)
  {
    v17 = CADefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "AudioBuffers.cpp";
      v20 = 1024;
      v21 = 165;
      v22 = 1024;
      v23 = v3;
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d ExtendedAudioBufferList_Create: Too many buffers (%d)", &v18, 0x18u);
    }

    return 0;
  }

  else
  {
    v4 = 16 * this;
    if ((16 * this) <= 0xC)
    {
      v4 = 12;
    }

    v5 = v4 + 60;
    v6 = (v4 + 75) & 0x3FFF0;
    if (a3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = (v6 + 24);
    }

    else
    {
      v8 = v5;
    }

    v9 = (a2 + 15) & 0xFFFFFFF0;
    v10 = caulk::numeric::exceptional_mul<unsigned int>(this, v9);
    v11 = v10;
    if ((atomic_load_explicit(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      if (v10)
      {
        _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input = checkEnvVar("AudioBufferMemoryResource_UseMalloc");
        __cxa_guard_release(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      }
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input == 1)
    {
      default_resource = std::pmr::get_default_resource(v10);
    }

    else
    {
      default_resource = caulk::audio_buffer_resource(v10);
    }

    v13 = default_resource;
    v14 = (*(*default_resource + 16))(default_resource, v8, 16);
    if (v11)
    {
      v15 = (*(*v13 + 16))(v13, v11, 16);
    }

    else
    {
      v15 = 0;
    }

    *v14 = v3;
    *(v14 + 4) = v9;
    *(v14 + 8) = 1094863915;
    *(v14 + 12) = v7;
    *(v14 + 16) = v8;
    *(v14 + 20) = v11;
    *(v14 + 24) = 0;
    *(v14 + 32) = v15;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    if (!gCADefaultDeferredLog)
    {
      if (gDefaultDeferredLogOnce[0] != -1)
      {
        dispatch_once(gDefaultDeferredLogOnce, &__block_literal_global_4895);
      }

      v7 = *(v14 + 12);
    }

    *(v14 + 48) = v3;
    *(v14 + 16 * v3 + 56) = 1094863915;
    if (v7)
    {
      AudioMetadataFrame::AudioMetadataFrame((v14 + v7));
    }
  }

  return v14;
}

unint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

unsigned int *ExtendedAudioBufferList_Prepare(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 8) != 1094863915)
  {
    std::terminate();
  }

  v3 = a1;
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (v4 > *a1)
  {
    v11 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v11 + 88, 16);
    if (message)
    {
      v13 = message;
      v14 = _os_log_pack_fill(message + 40, v11, 0, &dword_18F5DF000, "ExtendedAudioBufferList_Prepare(): too many buffers (%d/%d)", v18, v19);
      v6 = *v5;
LABEL_13:
      v17 = *v3;
      *v14 = 67109376;
      *(v14 + 4) = v6;
      *(v14 + 8) = 1024;
      *(v14 + 10) = v17;
      caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v13);
    }

    return 0;
  }

  v6 = a3;
  v7 = *(a1 + 4);
  if (v7 < a3)
  {
    v15 = _os_log_pack_size();
    v16 = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v15 + 88, 16);
    if (v16)
    {
      v13 = v16;
      v14 = _os_log_pack_fill(v16 + 40, v15, 0, &dword_18F5DF000, "ExtendedAudioBufferList_Prepare(): insufficient capacity (%d/%d)", v18, v19);
      ++v3;
      goto LABEL_13;
    }

    return 0;
  }

  if (v4)
  {
    v8 = *(a1 + 32);
    v9 = (a1 + 64);
    do
    {
      *v9 = v8;
      v8 += v7;
      *(v9 - 2) = a2;
      *(v9 - 1) = a3;
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void ACAudioSpan::ACAudioSpan(ACAudioSpan *this, const AudioStreamBasicDescription *a2)
{
  *(this + 88) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 21) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  CA::AudioBuffersBase::AudioBuffersBase((this + 96), a2, 0);
  if ((a2->mFormatFlags & 0x20) != 0)
  {
    mFormatID = a2->mFormatID;
    v7 = *(this + 12);
    if (a2->mChannelsPerFrame == 1)
    {
      v7[14] = 1;
      v6 = v7 + 12;
    }

    else
    {
      v6 = v7 + 12;
      v8 = v7[12];
      if (v8)
      {
        v9 = 0;
        v10 = v8 + 0xFFFFFFFFFFFFFFFLL;
        v11 = v10 & 0xFFFFFFFFFFFFFFFLL;
        v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) - (v10 & 3) + 4;
        v13 = vdupq_n_s64(v11);
        v14 = v7 + 26;
        do
        {
          v15 = vdupq_n_s64(v9);
          v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_18F9016C0)));
          if (vuzp1_s16(v16, *v13.i8).u8[0])
          {
            *(v14 - 12) = 1;
          }

          if (vuzp1_s16(v16, *&v13).i8[2])
          {
            *(v14 - 8) = 1;
          }

          if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_18F9016B0)))).i32[1])
          {
            *(v14 - 4) = 1;
            *v14 = 1;
          }

          v9 += 4;
          v14 += 16;
        }

        while (v12 != v9);
      }
    }
  }

  else
  {
    mFormatID = a2->mFormatID;
    v5 = *(this + 12);
    *(v5 + 56) = a2->mChannelsPerFrame;
    v6 = (v5 + 48);
  }

  if (mFormatID == 1885564203)
  {
    if ((*(this + 88) & 1) == 0)
    {
      _ZNSt3__18optionalI19ACMetadataContainerE7emplaceB8ne200100IJEvEERS1_DpOT_(this + 48);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  *(this + 2) = v6;
  *(this + 6) = *v6;
  *(this + 28) = v17;
}

void sub_18F5F1F98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v1 + 48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CA::AudioBuffersBase::AudioBuffersBase(CA::AudioBuffersBase *this, const AudioStreamBasicDescription *a2, uint64_t a3)
{
  v5 = ExtendedAudioBufferList_CreateWithFormat(a2, a3);
  mFormatID = a2->mFormatID;
  v7 = mFormatID == 1885564203 || mFormatID == 1819304813;
  if (v7 && (a2->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  return CA::AudioBuffersBase::AudioBuffersBase(this, v5, mChannelsPerFrame);
}

uint64_t ExtendedAudioBufferList_CreateWithFormat(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 28);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 == 1885564203 || v3 == 1819304813)
  {
    if ((*(a1 + 12) & 0x20) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }
}

uint64_t *std::unique_ptr<ACSpanningInputBuffer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 280) == 1)
    {
      std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100]((v2 + 256));
    }

    v3 = *(v2 + 232);
    if (v3)
    {
      *(v2 + 240) = v3;
      operator delete(v3);
    }

    ACAudioSpan::~ACAudioSpan((v2 + 128));
    ACAudioSpan::~ACAudioSpan((v2 + 24));
    ExtendedAudioBufferList_Destroy(*(v2 + 16));

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::optional<ACAudioSpan>::emplace[abi:ne200100]<CA::StreamDescription const&,void>(ACAudioSpan *a1, const AudioStreamBasicDescription *a2)
{
  if (*(a1 + 104) == 1)
  {
    ACAudioSpan::~ACAudioSpan(a1);
    *(a1 + 104) = 0;
  }

  ACAudioSpan::ACAudioSpan(a1, a2);
  *(v3 + 104) = 1;
}

acv2::AudioConverterChain **std::unique_ptr<acv2::AudioConverterChain>::~unique_ptr[abi:ne200100](acv2::AudioConverterChain **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    acv2::AudioConverterChain::~AudioConverterChain(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

acv2::AudioConverterChain *std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](acv2::AudioConverterChain **a1, acv2::AudioConverterChain *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    acv2::AudioConverterChain::~AudioConverterChain(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t acv2::AudioConverterChain::GetProperty(acv2::AudioConverterChain *this, signed int a2, unsigned int *a3, void **a4)
{
  PropertyDelegate = acv2::AudioConverterChain::GetPropertyDelegate(this, a2);
  if (!PropertyDelegate)
  {
    v11 = 1886547824;
    if (a2 > 1835626095)
    {
      if (a2 > 1886546284)
      {
        if ((a2 - 1936876385) > 0x10 || ((1 << (a2 - 97)) & 0x18101) == 0)
        {
          if (a2 == 1886546285)
          {
            if (*a3 == 8)
            {
              __src[0] = 0;
              v44 = *(this + 13);
              v43 = *(this + 14);
              if (v44 != v43)
              {
                v45 = 0;
                do
                {
                  if ((*(**v44 + 120))())
                  {
                    if (v45)
                    {
                      v45 = 1;
                    }

                    else
                    {
                      v45 = (*(**v44 + 120))();
                    }

                    (*(**v44 + 128))(*v44, __src, 0);
                  }

                  ++v44;
                }

                while (v44 != v43);
                if (v45)
                {
                  v11 = 0;
                  *a4 = __src[0];
                }
              }

              return v11;
            }
          }

          else
          {
            if (a2 != 1919837298)
            {
              return v11;
            }

            if (*a3 == 4)
            {
              v11 = 0;
              v13 = *(this + 528);
              goto LABEL_87;
            }
          }

          return 561211770;
        }
      }

      else
      {
        if (a2 > 1868786719)
        {
          if (a2 == 1868786720)
          {
            v50 = 0;
            std::vector<char>::vector[abi:ne200100](__src, 32, &v50);
          }

          if (a2 != 1885627760)
          {
            return v11;
          }

          if (*a3 == 4)
          {
            v11 = 0;
            v13 = 1;
            goto LABEL_87;
          }

          return 561211770;
        }

        if (a2 != 1835626096)
        {
          if (a2 != 1835884912)
          {
            return v11;
          }

          v14 = *(this + 53);
          if (!v14)
          {
            v11 = 0;
            *a3 = 0;
            return v11;
          }

          v15 = *(this + 7) * *(this + 17);
          if (*a3 != 4 * v15)
          {
            return 561211770;
          }

          v16 = (4 * v15);
          memset(__src, 0, sizeof(__src));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__src, *(v14 + 176), *(v14 + 184), (*(v14 + 184) - *(v14 + 176)) >> 2);
          v17 = __src[0];
          memcpy(a4, __src[0], v16);
          if (v17)
          {
            operator delete(v17);
          }

          return 0;
        }
      }

      v28 = *(this + 37);
      if (v28 != *(this + 38))
      {
        PropertyDelegate = *v28;
        goto LABEL_2;
      }

      return v11;
    }

    if (a2 > 1667850866)
    {
      if (a2 > 1684632679)
      {
        switch(a2)
        {
          case 1684632680:
            if (*a3 == 4)
            {
              v11 = 0;
              v13 = *(this + 108);
              goto LABEL_87;
            }

            break;
          case 1684892024:
            if (*a3 == 4)
            {
              v11 = 0;
              v13 = *(this + 417);
              goto LABEL_87;
            }

            break;
          case 1768123424:
            v50 = 0;
            std::vector<char>::vector[abi:ne200100](__src, 32, &v50);
          default:
            return v11;
        }

        return 561211770;
      }

      switch(a2)
      {
        case 1667850867:
          for (i = *(this + 14); i != *(this + 13); i -= 8)
          {
            v39 = *(i - 8);
            v11 = (*(*v39 + 88))(v39, 1667850867, a3, a4);
            if (v11)
            {
              return v11;
            }
          }

          break;
        case 1668244083:
          v42 = *(this + 13);
          v41 = *(this + 14);
          if (v42 != v41)
          {
            do
            {
              v11 = (*(**v42 + 88))(*v42, 1668244083, a3, a4);
              if (v11)
              {
                break;
              }

              ++v42;
            }

            while (v42 != v41);
            return v11;
          }

          break;
        case 1684171124:
          if (*a3 == 4)
          {
            v12 = *(this + 55);
            if (v12)
            {
              v11 = 0;
              v13 = *(v12 + 168);
LABEL_87:
              *a4 = v13;
            }

            return v11;
          }

          return 561211770;
        default:
          return v11;
      }

      return 0;
    }

    if (a2 <= 1633906531)
    {
      if (a2 == 1633903204)
      {
        v40 = *(this + 43);
        if (!v40 || *(v40 + 204) != 1)
        {
          return v11;
        }

        if (*a3 == 4)
        {
          v11 = 0;
          v13 = *(this + 103);
          goto LABEL_87;
        }

        return 561211770;
      }

      if (a2 != 1633904996)
      {
        return v11;
      }

      if (*a3 != 40)
      {
        return 561211770;
      }

      v11 = 2003329396;
      v29 = *(this + 13);
      if (v29 == *(this + 14))
      {
        return v11;
      }

      v30 = *v29;
      if (!v30)
      {
        return v11;
      }

      v11 = 0;
      v31 = *(v30 + 16);
      v32 = *(v30 + 32);
      v33 = *(v30 + 48);
    }

    else
    {
      if (a2 != 1633906532)
      {
        if (a2 == 1633906803)
        {
          if (*a3 == 8)
          {
            v36 = *(this + 13);
            v37 = *(this + 14);
            while (1)
            {
              if (v36 == v37)
              {
                v11 = 0;
                *a3 = 0;
                *a4 = 0;
                return v11;
              }

              if ((*(**v36 + 136))())
              {
                break;
              }

              v36 += 8;
            }

            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], (*(this + 14) - *(this + 13)) >> 3, MEMORY[0x1E695E9C0]);
            v47 = *(this + 13);
            v48 = *(this + 14);
            while (v47 != v48)
            {
              (*(**v47 + 144))(__src);
              if (__src[0])
              {
                CFArrayAppendValue(Mutable, __src[0]);
                if (__src[0])
                {
                  CFRelease(__src[0]);
                }
              }

              v47 += 8;
            }

            v11 = 0;
            *a4 = Mutable;
            return v11;
          }

          return 561211770;
        }

        if (a2 != 1667788144)
        {
          return v11;
        }

        v18 = *a3;
        if (v18 == 4 * *(this + 17))
        {
          if (v18 >= 4)
          {
            v19 = 0;
            v20 = v18 >> 2;
            v21 = ((*a3 >> 2) + 3) & 0x7FFFFFFC;
            v22 = vdupq_n_s64(v20 - 1);
            v23 = xmmword_18F9016B0;
            v24 = xmmword_18F9016C0;
            v25 = (a4 + 1);
            v26 = vdupq_n_s64(4uLL);
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v22, v24));
              if (vuzp1_s16(v27, *v22.i8).u8[0])
              {
                *(v25 - 2) = v19;
              }

              if (vuzp1_s16(v27, *&v22).i8[2])
              {
                *(v25 - 1) = v19 + 1;
              }

              if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
              {
                *v25 = v19 + 2;
                *(v25 + 1) = v19 + 3;
              }

              v11 = 0;
              v19 += 4;
              v23 = vaddq_s64(v23, v26);
              v24 = vaddq_s64(v24, v26);
              v25 += 16;
            }

            while (v21 != v19);
            return v11;
          }

          return 0;
        }

        return 561211770;
      }

      if (*a3 != 40)
      {
        return 561211770;
      }

      v11 = 2003329396;
      v34 = *(this + 14);
      if (*(this + 13) == v34)
      {
        return v11;
      }

      v35 = *(v34 - 8);
      if (!v35)
      {
        return v11;
      }

      v11 = 0;
      v31 = *(v35 + 56);
      v32 = *(v35 + 72);
      v33 = *(v35 + 88);
    }

    a4[4] = v33;
    *a4 = v31;
    *(a4 + 1) = v32;
    return v11;
  }

LABEL_2:
  v9 = *(*PropertyDelegate + 11);

  return v9();
}

void sub_18F5F2A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::AudioConverterV2::getProperty(acv2::AudioConverterV2 *this, signed int a2, unsigned int *a3, void **a4)
{
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v17[0] = 0;
    v23 = 0;
  }

  else
  {
    v25 = 2738;
    v26 = a2;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    kdebug_trace();
    v17[0] = 1;
    v18 = 2738;
    v19 = a2;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24[0] = 0;
    v23 = 1;
    AT::ScopedTrace::~ScopedTrace(v24);
  }

  if (a3)
  {
    if (a4)
    {
      Property = acv2::AudioConverterChain::GetProperty(*(this + 5), a2, a3, a4);
      goto LABEL_8;
    }

    v13 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v13 + 88, 16);
    if (message)
    {
      v12 = message;
      v15 = _os_log_pack_fill(message + 40, v13, 0, &dword_18F5DF000, "PropertyID=%d is NULL", v16);
      *v15 = 67109120;
      v15[1] = a2;
      goto LABEL_15;
    }
  }

  else
  {
    v10 = _os_log_pack_size();
    v11 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v10 + 88, 16);
    if (v11)
    {
      v12 = v11;
      *_os_log_pack_fill(v11 + 40, v10, 0, &dword_18F5DF000, "ioPropertyDataSize == NULL") = 0;
LABEL_15:
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v12);
    }
  }

  Property = 4294967246;
LABEL_8:
  if (v23 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v17);
  }

  return Property;
}

void sub_18F5F2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a10);
  }

  _Unwind_Resume(exception_object);
}

OpaqueAudioComponentInstance **acv2::AudioConverterChain::GetPropertyDelegate(acv2::AudioConverterChain *this, signed int a2)
{
  if (HIBYTE(a2) == 94)
  {
    result = *(this + 43);
    if (result)
    {
      return result;
    }
  }

  result = 0;
  if (a2 > 1868786719)
  {
    if (a2 <= 1936876384)
    {
      if (a2 > 1919116143)
      {
        if (a2 == 1919116144)
        {
          goto LABEL_47;
        }

        if (a2 == 1919837298)
        {
          return result;
        }

        v4 = 1935893603;
        goto LABEL_46;
      }

      if (a2 == 1868786720 || a2 == 1886546285)
      {
        return result;
      }

      if (a2 != 1886547309)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (a2 > 1986360177)
      {
        if (a2 > 2020175986)
        {
          if (a2 == 2020569203)
          {
            goto LABEL_50;
          }

          v5 = 28787;
        }

        else
        {
          if (a2 == 1986360178)
          {
            goto LABEL_47;
          }

          v5 = 25203;
        }

        v6 = v5 | 0x78690000;
LABEL_38:
        if (a2 != v6)
        {
          goto LABEL_56;
        }

        v7 = *(this + 13);
        v8 = *(this + 14);
LABEL_53:
        if (v7 != v8)
        {
          return *v7;
        }

        return 0;
      }

      if ((a2 - 1936876385) > 0x10 || ((1 << (a2 - 97)) & 0x18101) == 0)
      {
        v4 = 1986355826;
        goto LABEL_46;
      }
    }

LABEL_52:
    v7 = *(this + 37);
    v8 = *(this + 38);
    goto LABEL_53;
  }

  if (a2 > 1667788143)
  {
    if (a2 <= 1768123423)
    {
      if (a2 <= 1684891490)
      {
        if (a2 == 1667788144)
        {
          v7 = *(this + 40);
          v10 = *(this + 41);
          if (v7 != v10)
          {
            v11 = v10 - 8;
            if (*(this + 7) <= *(this + 17))
            {
              v7 = v11;
            }

            return *v7;
          }

          return 0;
        }

        v4 = 1668114275;
        goto LABEL_46;
      }

      if (a2 == 1684891491)
      {
        goto LABEL_47;
      }

      v4 = 1718383476;
      goto LABEL_46;
    }

    if (a2 <= 1835626095)
    {
      if (a2 == 1768123424)
      {
        return result;
      }

      v6 = 1835623027;
      goto LABEL_38;
    }

    if (a2 != 1835626096)
    {
      if (a2 != 1836016243)
      {
        goto LABEL_56;
      }

LABEL_50:
      v9 = *(this + 14);
      if (*(this + 13) != v9)
      {
        v7 = (v9 - 8);
        return *v7;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if (a2 > 1634038641)
  {
    if (a2 > 1651663219)
    {
      if (a2 == 1651663220)
      {
        goto LABEL_47;
      }

      v4 = 1667527029;
    }

    else
    {
      if (a2 == 1634038642)
      {
        goto LABEL_47;
      }

      v4 = 1634366322;
    }
  }

  else
  {
    if (a2 <= 1634034289)
    {
      if (a2 != 1633904996)
      {
        v4 = 1633906532;
        goto LABEL_46;
      }

LABEL_47:
      v7 = this + 344;
      return *v7;
    }

    if (a2 == 1634034290)
    {
      goto LABEL_47;
    }

    v4 = 1634034540;
  }

LABEL_46:
  if (a2 == v4)
  {
    goto LABEL_47;
  }

LABEL_56:
  result = *(this + 43);
  if (result)
  {
    if (acv2::CodecConverter::ConverterSupportsProperty(result, a2))
    {
      goto LABEL_47;
    }

    return 0;
  }

  return result;
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = vsnprintf(0, 0, this, va);
  if (v4 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v4 + 1), 0);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = vsnprintf(v6, v7, this, va);
    std::string::resize(a2, v8, 0);
  }
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    return;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v53 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v53;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      return;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v58.__r_.__value_.__s + 23) = 4;
    LODWORD(v58.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v58.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v56, v13, *&v14, &v58, *(a2 + 3));
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v58, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v56;
        }

        else
        {
          v31 = v56.__r_.__value_.__r.__words[0];
        }

        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v56.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v58, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v58.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v58, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v58;
        }

        else
        {
          v29 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v58.__r_.__value_.__l.__size_;
        }

        std::string::append(&v56, v29, v30);
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v56, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v58, *(a2 + 5));
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v56;
      }

      else
      {
        v31 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = "";
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = "";
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v58.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v40 = ", deinterleaved";
        }

        else
        {
          v40 = "";
        }

        v37 = "";
        v41 = "";
        goto LABEL_106;
      }
    }

    v36 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v39 = " signed";
      if ((v20 & 4) == 0)
      {
        v39 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v39;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v36 = 1;
      v37 = "";
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v37 = " big-endian";
      }

      else
      {
        v37 = " little-endian";
      }

      v38 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v38 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v38;
      }
    }

    v42 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v43 = 1;
    }

    else
    {
      v43 = *(a2 + 7);
    }

    if (v43)
    {
      v43 = 8 * (v21 / v43);
    }

    if (v43 == *(a2 + 8))
    {
      v58.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v44 = "";
      }

      else
      {
        v44 = "un";
      }

      snprintf(&v58, 0x20uLL, "%spacked in %u bytes", v44, v36);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v45 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v42 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v45 = 1;
    }

    else
    {
      v45 = v42;
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

LABEL_128:
    v46 = *(a2 + 8);
    v47 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v47 = " low-aligned";
    }

    if ((v46 & 7) == 0 && v45 == v46)
    {
      v41 = "";
    }

    else
    {
      v41 = v47;
    }

    if (v22)
    {
      v40 = ", deinterleaved";
    }

    else
    {
      v40 = "";
    }

    if (v58.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v55, __str, v37, v27, v26, v23, &v58, v41, v40);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v56;
      }

      else
      {
        v49 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v56.__r_.__value_.__l.__size_;
      }

      v51 = std::string::insert(&v55, 0, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v51->__r_.__value_.__l + 2);
      *this = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v55.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v41)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v54 = ", deinterleaved";
  }

  else
  {
    v54 = ", interleaved";
  }

  if (v9 == 1)
  {
    v54 = "";
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_1E72BA0A0 + v12), v54);
}

void sub_18F5F373C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AudioFormatProperty_FormatEmploysDependentPackets(RegistryAccess *a1, unsigned int *a2)
{
  RegistryAccess::instance(a1);
  v4 = qword_1ED746318;
  os_unfair_recursive_lock_lock_with_options();
  v5 = (*(*v4 + 16))(v4, a1, 1819304813, 0, 0);
  if (v5 || (v5 = (*(*v4 + 16))(v4, 1819304813, a1, 0, 0)) != 0)
  {
    v6 = (*(*v5 + 32))(v5, a2);
  }

  else
  {
    v6 = 1718449215;
  }

  os_unfair_recursive_lock_unlock();
  return v6;
}

void std::vector<ChunkInfo64>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AudioFileObject::ValidateFormatAndData(AudioFileObject *this, const AudioStreamBasicDescription *a2)
{
  v3 = 1685348671;
  v4 = *(this + 40);
  v8 = *(this + 24);
  v9 = v4;
  v10 = *(this + 7);
  if (AudioFileObject::IsDataFormatValid(&v8, a2))
  {
    if (DWORD2(v8) != 1819304813)
    {
      return 0;
    }

    v5 = (*(*this + 232))(this);
    v6 = v5 / v9;
    if ((*(*this + 248))(this) <= v6)
    {
      return 0;
    }
  }

  return v3;
}

OSStatus AudioFileGetProperty(AudioFileID inAudioFile, AudioFilePropertyID inPropertyID, UInt32 *ioDataSize, void *outPropertyData)
{
  v4 = -50;
  if (inAudioFile && ioDataSize && outPropertyData)
  {
    v7 = *&inPropertyID;
    v9 = inAudioFile;
    v10 = 0;
    if (AudioFileLocker::Lock(&v9))
    {
      if (v10)
      {
        v4 = (*(*v10 + 144))(v10, v7, ioDataSize, outPropertyData);
      }
    }

    else
    {
      v4 = -38;
    }

    AudioFileLocker::~AudioFileLocker(&v9);
  }

  return v4;
}

void sub_18F5F3B58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F5F3B40);
}

uint64_t AudioFileLocker::Lock(AudioFileLocker *this)
{
  v7.__m_ = &AudioFileMutex(void)::global;
  v7.__owns_ = 1;
  std::mutex::lock(&AudioFileMutex(void)::global);
  if (*this)
  {
    v2 = *(this + 1);
    if (v2 || (v2 = BaseOpaqueObject::ResolveOpaqueRef(), (*(this + 1) = v2) != 0))
    {
      if (*(v2 + 12))
      {
        ++*(v2 + 16);
        do
        {
          if (*(v2 + 20))
          {
            v4 = 0;
            --*(v2 + 16);
            goto LABEL_15;
          }

          std::condition_variable::wait(&AudioFileCondVar(void)::global, &v7);
          v2 = *(this + 1);
        }

        while (*(v2 + 12));
        v3 = *(v2 + 20);
        --*(v2 + 16);
        if (v3)
        {
          goto LABEL_9;
        }

        v5 = *(v2 + 12) + 1;
      }

      else
      {
        v5 = 1;
      }

      *(v2 + 12) = v5;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *this = 0;
    }
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

LABEL_15:
  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }

  return v4;
}

void AudioFileLocker::~AudioFileLocker(AudioFileLocker *this)
{
  std::mutex::lock(&AudioFileMutex(void)::global);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 12);
    if (v3)
    {
      *(v2 + 12) = v3 - 1;
      std::condition_variable::notify_one(&AudioFileCondVar(void)::global);
    }
  }

  std::mutex::unlock(&AudioFileMutex(void)::global);
}

uint64_t AudioFileObject::GetProperty(AudioFileObject *this, int a2, unsigned int *a3, uint64_t *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v7 = 1886681407;
  if (a2 <= 1835493730)
  {
    if (a2 > 1701082481)
    {
      if (a2 > 1718775914)
      {
        if (a2 > 1768842862)
        {
          if (a2 != 1768842863)
          {
            if (a2 != 1769172837)
            {
              if (a2 == 1819243876)
              {
                if (*a3 == 8)
                {
                  *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *&cf[8] = 257;
                  v7 = (*(*this + 480))(this, cf);
                  if (v7 && (*(*this + 512))(this, cf))
                  {
                    goto LABEL_219;
                  }

                  v8 = *cf;
                  if (*cf)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_215;
                }

                v7 = 561211770;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *cf = 136315394;
                  *&cf[4] = "AudioFileObject.cpp";
                  v29 = 1024;
                  v30 = 1841;
                  v23 = MEMORY[0x1E69E9C10];
                  v24 = "%25s:%-5d  inDataSize is wrong";
                  goto LABEL_222;
                }
              }

              return v7;
            }

            if (*a3 == 8)
            {
              *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              *&cf[8] = 257;
              v7 = (*(*this + 488))(this, cf);
              if (!v7)
              {
                v19 = *cf;
                if (*cf)
                {
                  goto LABEL_164;
                }

LABEL_217:
                v9 = 0;
                goto LABEL_218;
              }

LABEL_219:
              CACFDictionary::~CACFDictionary(cf);
              return v7;
            }

            v7 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              return v7;
            }

            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v29 = 1024;
            v30 = 1861;
            v23 = MEMORY[0x1E69E9C10];
            v24 = "%25s:%-5d  inDataSize is wrong";
LABEL_222:
            _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v24, cf, 0x12u);
            return v7;
          }

          if (*a3 != 8)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v29 = 1024;
              v30 = 1805;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            return v7;
          }

          *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *&cf[8] = 257;
          v7 = (*(*this + 440))(this, cf);
          if (v7)
          {
            goto LABEL_219;
          }

          v19 = *cf;
          if (!*cf)
          {
            goto LABEL_217;
          }

LABEL_164:
          CFRetain(v19);
          v9 = *cf;
LABEL_218:
          *a4 = v9;
          goto LABEL_219;
        }

        if (a2 != 1718775915)
        {
          if (a2 != 1735159669)
          {
            return v7;
          }

          if (*a3 != 8)
          {
            v7 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              return v7;
            }

            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v29 = 1024;
            v30 = 1876;
            v23 = MEMORY[0x1E69E9C10];
            v24 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }

          *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *&cf[8] = 257;
          v7 = (*(*this + 544))(this, cf);
          if (v7)
          {
            goto LABEL_219;
          }

          v19 = *cf;
          if (!*cf)
          {
            goto LABEL_217;
          }

          goto LABEL_164;
        }

        if (*a3 != 24)
        {
          v7 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return v7;
          }

          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v29 = 1024;
          v30 = 1723;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        v17 = *(*this + 272);

        return v17();
      }

      if (a2 <= 1717988723)
      {
        if (a2 == 1701082482)
        {
          if (*a3 == 8)
          {
            *cf = 0;
            v7 = (*(*this + 552))(this, cf);
            *a4 = fmax(*cf, 0.0);
            return v7;
          }

          v7 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return v7;
          }

          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v29 = 1024;
          v30 = 1892;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        if (a2 != 1701799487)
        {
          return v7;
        }

        if (*a3 == 4)
        {
          *cf = 0;
          v7 = (*(**(this + 13) + 40))(*(this + 13), cf);
          if (v7)
          {
            return v7;
          }

          v11 = *(this + 9);
          v12 = (*(*this + 232))(this);
          v13 = *cf >= v12 + v11;
          goto LABEL_225;
        }

        return 561211770;
      }

      if (a2 != 1717988724)
      {
        if (a2 != 1718383476)
        {
          return v7;
        }

        v10 = *(*this + 208);

        return v10();
      }

      if (*a3 != 4)
      {
        v7 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return v7;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v29 = 1024;
        v30 = 1615;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_222;
      }

      v7 = 0;
      v13 = *(this + 21);
LABEL_225:
      *a4 = v13;
      return v7;
    }

    if (a2 <= 1668112751)
    {
      if (a2 > 1651663219)
      {
        if (a2 == 1651663220)
        {
          if (*a3 != 4)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v29 = 1024;
              v30 = 1678;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            return v7;
          }

          v14 = *(*this + 328);
        }

        else
        {
          if (a2 != 1652125803)
          {
            return v7;
          }

          if (*a3 != 24)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v29 = 1024;
              v30 = 1795;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            return v7;
          }

          v14 = *(*this + 320);
        }
      }

      else
      {
        if (a2 != 1280922179)
        {
          if (a2 == 1650683508)
          {
            if (*a3 == 8)
            {
              v7 = 0;
              *a4 = (*(*this + 232))(this);
            }

            else
            {
              v7 = 561211770;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *cf = 136315394;
                *&cf[4] = "AudioFileObject.cpp";
                v29 = 1024;
                v30 = 1643;
                v23 = MEMORY[0x1E69E9C10];
                v24 = "%25s:%-5d  inDataSize is wrong";
                goto LABEL_222;
              }
            }
          }

          return v7;
        }

        if (*a3 < 8)
        {
          return 561211770;
        }

        *a3 = 8;
        v14 = *(*this + 616);
      }

      return v14();
    }

    if (a2 <= 1685022309)
    {
      if (a2 != 1668112752)
      {
        if (a2 == 1684434292)
        {
          if (*a3 == 40)
          {
            v7 = 0;
            v15 = *(this + 24);
            v16 = *(this + 40);
            a4[4] = *(this + 7);
            *a4 = v15;
            *(a4 + 1) = v16;
          }

          else
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v29 = 1024;
              v30 = 1626;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }
          }
        }

        return v7;
      }

      v7 = (*(*this + 408))(this, &v27 + 4, &v27);
      if (v7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return v7;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v29 = 1024;
        v30 = 1698;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  GetChannelLayoutSize failed";
      }

      else
      {
        if (*a3 == HIDWORD(v27))
        {
          return (*(*this + 416))(this, a3, a4);
        }

        v7 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return v7;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v29 = 1024;
        v30 = 1699;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  inDataSize is wrong";
      }

      goto LABEL_222;
    }

    if (a2 != 1685022310)
    {
      if (a2 != 1685289589)
      {
        return v7;
      }

      if (*a3 != 4)
      {
        v7 = 561211770;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v29 = 1024;
          v30 = 1706;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        return v7;
      }

      v7 = 0;
      v13 = *(this + 33);
      goto LABEL_225;
    }

    if (*a3 != 8)
    {
      v7 = 561211770;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v29 = 1024;
        v30 = 1632;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_222;
      }

      return v7;
    }

    v7 = 0;
    v26 = *(this + 9);
LABEL_156:
    *a4 = v26;
    return v7;
  }

  if (a2 <= 1886086769)
  {
    if (a2 > 1885564531)
    {
      if (a2 > 1886085752)
      {
        if (a2 == 1886085753)
        {
          if (*a3 != 24)
          {
            v7 = 561211770;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *cf = 136315394;
              *&cf[4] = "AudioFileObject.cpp";
              v29 = 1024;
              v30 = 1786;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  inDataSize is wrong";
              goto LABEL_222;
            }

            return v7;
          }

          v14 = *(*this + 312);

          return v14();
        }

        if (a2 != 1886086256)
        {
          return v7;
        }

        if (*a3 != 16)
        {
          return 561211770;
        }

        if (a4)
        {
          if ((*a4 & 0x8000000000000000) == 0)
          {
            v14 = *(*this + 304);

            return v14();
          }

          return 1885563711;
        }

        return 4294967246;
      }

      if (a2 == 1885564532)
      {
        if (*a3 != 8)
        {
          v7 = 561211770;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v29 = 1024;
            v30 = 1649;
            v23 = MEMORY[0x1E69E9C10];
            v24 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }

          return v7;
        }

        v25 = (*(*this + 248))(this);
        v7 = 0;
        v26 = v25 & ~(v25 >> 63);
        goto LABEL_156;
      }

      if (a2 != 1885957732)
      {
        return v7;
      }
    }

    else
    {
      if (a2 <= 1852403299)
      {
        if (a2 == 1835493731)
        {
          v10 = *(*this + 344);
        }

        else
        {
          if (a2 != 1835756659)
          {
            return v7;
          }

          v10 = *(*this + 368);
        }

        return v10();
      }

      if (a2 != 1852403300)
      {
        if (a2 != 1869640813)
        {
          return v7;
        }

        if (*a3 != 4)
        {
          v7 = 561211770;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v29 = 1024;
            v30 = 1637;
            v23 = MEMORY[0x1E69E9C10];
            v24 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }

          return v7;
        }

        v7 = 0;
        v13 = *(this + 20);
        goto LABEL_225;
      }
    }

    if (*a3 != 16)
    {
      return 561211770;
    }

    if (a4)
    {
      if ((*a4 & 0x8000000000000000) == 0)
      {
        v10 = *(*this + 296);

        return v10();
      }

      return 1885563711;
    }

    return 4294967246;
  }

  if (a2 <= 1886616164)
  {
    if (a2 > 1886090593)
    {
      if (a2 != 1886090594)
      {
        if (a2 != 1886549346)
        {
          return v7;
        }

        if (*a3 != 24)
        {
          v7 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return v7;
          }

          *cf = 136315394;
          *&cf[4] = "AudioFileObject.cpp";
          v29 = 1024;
          v30 = 1662;
          v23 = MEMORY[0x1E69E9C10];
          v24 = "%25s:%-5d  inDataSize is wrong";
          goto LABEL_222;
        }

        v17 = *(*this + 672);

        return v17();
      }

      if (*a3 != 4)
      {
        v7 = 561211770;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return v7;
        }

        *cf = 136315394;
        *&cf[4] = "AudioFileObject.cpp";
        v29 = 1024;
        v30 = 1655;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  inDataSize is wrong";
        goto LABEL_222;
      }

      v21 = (*(*this + 664))(this);
      goto LABEL_167;
    }

    if (a2 != 1886086770)
    {
      if (a2 != 1886089836)
      {
        return v7;
      }

      if (*a3 != 16)
      {
        return 561211770;
      }

      if (a4)
      {
        if ((*a4 & 0x8000000000000000) == 0)
        {
          v14 = *(*this + 288);

          return v14();
        }

        return 1885563711;
      }

      return 4294967246;
    }

    if (*a3 != 24)
    {
      v7 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v7;
      }

      *cf = 136315394;
      *&cf[4] = "AudioFileObject.cpp";
      v29 = 1024;
      v30 = 1714;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  inDataSize is wrong";
      goto LABEL_222;
    }

    v10 = *(*this + 264);

    return v10();
  }

  if (a2 > 1920098671)
  {
    if (a2 != 1920098672)
    {
      if (a2 != 1935832164)
      {
        if (a2 == 1935893603)
        {
          if (*a3 == 8)
          {
            *cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *&cf[8] = 257;
            v7 = (*(*this + 464))(this, cf);
            if (v7 && (*(*this + 504))(this, cf))
            {
              goto LABEL_219;
            }

            v8 = *cf;
            if (*cf)
            {
LABEL_23:
              CFRetain(v8);
              v9 = *cf;
LABEL_216:
              v7 = 0;
              goto LABEL_218;
            }

LABEL_215:
            v9 = 0;
            goto LABEL_216;
          }

          v7 = 561211770;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "AudioFileObject.cpp";
            v29 = 1024;
            v30 = 1821;
            v23 = MEMORY[0x1E69E9C10];
            v24 = "%25s:%-5d  inDataSize is wrong";
            goto LABEL_222;
          }
        }

        return v7;
      }

      if (*a3 == 4)
      {
        *cf = 0;
        v22 = (*(*this + 704))(this, cf);
        v7 = v22;
        v13 = *cf;
        if (v22 || !*cf)
        {
          if (*(this + 8) == 1819304813)
          {
            v13 = *(this + 14);
            if (*(this + 36))
            {
              v13 = -v13;
            }
          }

          else if (v22)
          {
            return v7;
          }
        }

        v7 = 0;
        goto LABEL_225;
      }

      return 561211770;
    }

    if (*a3 != 4)
    {
      return 561211770;
    }

    v21 = (*(*this + 280))(this);
LABEL_167:
    v7 = 0;
    *a4 = v21;
    return v7;
  }

  if (a2 == 1886616165)
  {
    if (*a3 != 4)
    {
      v7 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v7;
      }

      *cf = 136315394;
      *&cf[4] = "AudioFileObject.cpp";
      v29 = 1024;
      v30 = 1671;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  inDataSize is wrong";
      goto LABEL_222;
    }

    v21 = (*(*this + 648))(this);
    goto LABEL_167;
  }

  if (a2 != 1919380595)
  {
    return v7;
  }

  bzero(a4, *a3);
  v20 = *(*this + 392);

  return v20(this, a3, a4);
}

void sub_18F5F578C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

OSStatus AudioFileGetPropertyInfo(AudioFileID inAudioFile, AudioFilePropertyID inPropertyID, UInt32 *outDataSize, UInt32 *isWritable)
{
  if (!inAudioFile)
  {
    return -50;
  }

  v6 = *&inPropertyID;
  v9 = inAudioFile;
  v10 = 0;
  if (AudioFileLocker::Lock(&v9))
  {
    if (v10)
    {
      v7 = (*(*v10 + 136))(v10, v6, outDataSize, isWritable);
    }

    else
    {
      v7 = -50;
    }
  }

  else
  {
    v7 = -38;
  }

  AudioFileLocker::~AudioFileLocker(&v9);
  return v7;
}

void sub_18F5F586C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F5F5854);
}

uint64_t AudioFileObject::GetPropertyInfo(AudioFileObject *this, int a2, unsigned int *a3, unsigned int *a4)
{
  v15 = 0;
  result = 1886681407;
  if (a2 > 1835493730)
  {
    if (a2 <= 1886086769)
    {
      if (a2 > 1885564531)
      {
        if (a2 <= 1886085752)
        {
          if (a2 == 1885564532)
          {
            goto LABEL_83;
          }

          v11 = 1885957732;
          goto LABEL_71;
        }

        if (a2 == 1886085753)
        {
          goto LABEL_74;
        }

        v9 = 25712;
LABEL_70:
        v11 = v9 | 0x706B0000;
LABEL_71:
        if (a2 != v11)
        {
          goto LABEL_79;
        }

        goto LABEL_72;
      }

      if (a2 <= 1852403299)
      {
        if (a2 == 1835493731)
        {
          result = (*(*this + 336))(this, a3, &v15);
        }

        else if (a2 == 1835756659)
        {
          result = (*(*this + 360))(this, a3, &v15);
        }

        goto LABEL_79;
      }

      if (a2 == 1852403300)
      {
LABEL_72:
        if (!a3)
        {
          goto LABEL_77;
        }

        v13 = 16;
        goto LABEL_76;
      }

      if (a2 != 1869640813)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (a2 > 1886616164)
      {
        if (a2 <= 1920098671)
        {
          if (a2 != 1886616165)
          {
            if (a2 == 1919380595)
            {
              result = (*(*this + 384))(this, a3, &v15);
            }

            goto LABEL_79;
          }
        }

        else if (a2 != 1920098672)
        {
          if (a2 != 1935832164)
          {
            if (a2 == 1935893603)
            {
              result = (*(*this + 456))(this, a3, &v15);
            }

            goto LABEL_79;
          }

LABEL_29:
          if (!a3)
          {
            goto LABEL_91;
          }

          v8 = 4;
          goto LABEL_90;
        }

        goto LABEL_60;
      }

      if (a2 <= 1886090593)
      {
        if (a2 == 1886086770)
        {
          goto LABEL_74;
        }

        v9 = 29292;
        goto LABEL_70;
      }

      if (a2 != 1886090594)
      {
        if (a2 != 1886549346)
        {
          goto LABEL_79;
        }

        if (a3)
        {
          result = 0;
          v12 = 24;
LABEL_102:
          *a3 = v12;
          goto LABEL_79;
        }

LABEL_103:
        result = 0;
        goto LABEL_79;
      }
    }

LABEL_60:
    if (!a3)
    {
      goto LABEL_77;
    }

    v13 = 4;
LABEL_76:
    *a3 = v13;
    goto LABEL_77;
  }

  if (a2 > 1701082481)
  {
    if (a2 > 1718775914)
    {
      if (a2 > 1768842862)
      {
        if (a2 == 1768842863)
        {
          result = (*(*this + 432))(this, a3, &v15);
          goto LABEL_79;
        }

        if (a2 != 1769172837)
        {
          if (a2 == 1819243876)
          {
            result = (*(*this + 528))(this, a3, &v15);
          }

          goto LABEL_79;
        }

        result = (*(*this + 536))(this, a3, &v15);
        goto LABEL_78;
      }

      if (a2 != 1718775915)
      {
        if (a2 == 1735159669)
        {
          result = (*(*this + 528))(this, a3, &v15);
LABEL_78:
          v15 = 0;
        }

LABEL_79:
        if (!a4)
        {
          return result;
        }

        v14 = v15;
        goto LABEL_81;
      }

LABEL_74:
      if (a3)
      {
        v13 = 24;
        goto LABEL_76;
      }

LABEL_77:
      result = 0;
      goto LABEL_78;
    }

    if (a2 <= 1717988723)
    {
      if (a2 == 1701082482)
      {
        if (!a3)
        {
          goto LABEL_77;
        }

        v13 = 8;
        goto LABEL_76;
      }

      if (a2 != 1701799487)
      {
        goto LABEL_79;
      }

      goto LABEL_29;
    }

    if (a2 != 1717988724)
    {
      if (a2 == 1718383476)
      {
        result = (*(*this + 200))(this, a3, &v15);
      }

      goto LABEL_79;
    }

    goto LABEL_60;
  }

  if (a2 > 1668112751)
  {
    if (a2 > 1685022309)
    {
      if (a2 == 1685022310)
      {
        if (a3)
        {
LABEL_101:
          result = 0;
          v12 = 8;
          goto LABEL_102;
        }

        goto LABEL_103;
      }

      if (a2 != 1685289589)
      {
        goto LABEL_79;
      }

      if (a3)
      {
        v10 = 4;
        goto LABEL_66;
      }
    }

    else
    {
      if (a2 == 1668112752)
      {
        result = (*(*this + 408))(this, a3, &v15);
        if (a3)
        {
          if (*a3 >= 0xC)
          {
            result = result;
          }

          else
          {
            result = 561211770;
          }
        }

        goto LABEL_79;
      }

      if (a2 != 1684434292)
      {
        goto LABEL_79;
      }

      if (a3)
      {
        v10 = 40;
LABEL_66:
        *a3 = v10;
      }
    }

    result = 0;
    v15 = 1;
    goto LABEL_79;
  }

  if (a2 > 1651663219)
  {
    if (a2 != 1651663220)
    {
      if (a2 != 1652125803)
      {
        goto LABEL_79;
      }

      goto LABEL_74;
    }

    if (a3)
    {
      result = 0;
      v12 = 4;
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  if (a2 != 1280922179)
  {
    if (a2 != 1650683508)
    {
      goto LABEL_79;
    }

LABEL_83:
    v15 = 1;
    if (!a3)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  if (!a3)
  {
    goto LABEL_91;
  }

  v8 = 8;
LABEL_90:
  *a3 = v8;
LABEL_91:
  v14 = 0;
  result = 0;
  if (a4)
  {
LABEL_81:
    *a4 = v14;
  }

  return result;
}

OSStatus AudioComponentInstanceDispose(AudioComponentInstance inInstance)
{
  if (!inInstance)
  {
    return -50;
  }

  v1 = (*(*inInstance + 8))(inInstance);
  if (!v1)
  {
    return -50;
  }

  v2 = v1;
  v3 = objc_autoreleasePoolPush();
  v4 = v2[3];
  if (v4)
  {
    (*(v4 + 8))();
  }

  atomic_fetch_add((v2[1] + 136), 0xFFFFFFFF);
  (*(*v2 + 24))(v2);
  objc_autoreleasePoolPop(v3);
  return 0;
}

void APMIDIRouter::~APMIDIRouter(APMIDIRouter *this)
{
  (*(*(this + 17) + 24))(this + 144);
  (*(*(this + 12) + 24))(this + 104);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C40C4F964E4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x193ADF220](v3, 0xC400A2AC0F1);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1000C40F03D91BDLL);
  }
}

void APComponentInstance::~APComponentInstance(RenderContextChangeGenerator *this)
{
  this->mLastWorkgroup = &unk_1F032B9B0;
  APMIDIRouter::~APMIDIRouter(&this[5].mObserver);
  mObserver = this[4].mObserver;
  if (mObserver)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mObserver);
  }

  if (LOBYTE(this[3].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::~RenderContextChangeGenerator(this + 2);
  }

  mLastWorkgroup = this[1].mLastWorkgroup;
  if (mLastWorkgroup)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mLastWorkgroup);
  }

  JUMPOUT(0x193ADF220);
}

{
  this->mLastWorkgroup = &unk_1F032B9B0;
  APMIDIRouter::~APMIDIRouter(&this[5].mObserver);
  mObserver = this[4].mObserver;
  if (mObserver)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mObserver);
  }

  if (LOBYTE(this[3].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::~RenderContextChangeGenerator(this + 2);
  }

  mLastWorkgroup = this[1].mLastWorkgroup;
  if (mLastWorkgroup)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](mLastWorkgroup);
  }
}

uint64_t with_resolved_rt(int a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  LODWORD(result) = ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(v5, a1);
  v4 = v8;
  if (v8)
  {
    LODWORD(result) = (*a2)((a2 + 1), v8);
  }

  if (v7 == 1 && v6)
  {
    atomic_fetch_add(v6, 0xFFFFFFFF);
  }

  if (v4)
  {
    return result;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  v5 = pthread_self();
  v6 = 0;
  atomic_compare_exchange_strong(*(a1 + 8), &v6, v5);
  if (v6)
  {
    v7 = v5;
    v8 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v8 + 88, 16);
    if (message)
    {
      v10 = message;
      v11 = _os_log_pack_fill(message + 40, v8, 0, &dword_18F5DF000, "AudioConverter-> %p: can't render concurrently from thread %p when thread %p is also rendering.", v13, v14, v15);
      *v11 = 134218496;
      *(v11 + 4) = a3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v6;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v10);
    }

    *a1 = 1919249970;
  }

  return a1;
}

caulk::rt_safe_memory_resource *ACBaseAudioSpan::set(caulk::rt_safe_memory_resource *this, const AudioBufferList *a2, uint64_t a3, int a4, AudioStreamPacketDescription *a5)
{
  *this = 0;
  *(this + 2) = 0;
  v5 = **(this + 2);
  if (v5)
  {
    v6 = 16;
    do
    {
      *(*(this + 2) + v6) = *(&a2->mNumberBuffers + v6);
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(this + 4) = a3;
  *(this + 1) = a4;
  *(this + 3) = a5;
  return ACBaseAudioSpan::resetMetadataEvents(this);
}

caulk::rt_safe_memory_resource *ACBaseAudioSpan::resetMetadataEvents(caulk::rt_safe_memory_resource *this)
{
  if (*(this + 88) == 1)
  {
    if (*(this + 28) == 1 && (v1 = *(this + 2), v1[4 * *v1 + 2] == 1094863915))
    {
      v2 = *(v1 - 9);
      v3 = v1 + v2 - 48;
      if (v2)
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    return ACMetadataContainer::resetMetadataEvents((this + 48), v4);
  }

  return this;
}

unint64_t acv2::AudioConverterChain::ProduceOutput(uint64_t a1, __int128 *a2, ACBaseAudioSpan *this, unsigned __int8 a4)
{
  if (*(a1 + 104) == *(a1 + 112))
  {
    LOBYTE(v15) = 0;
    v28 = 1869627199;
    return v28 | (v15 << 32);
  }

  v8 = *a2;
  *(a1 + 256) = *(a2 + 2);
  *(a1 + 240) = v8;
  if ((*(gAudioConverterLog + 8) & 2) != 0)
  {
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 2);
    if (message)
    {
      v4 = message;
      v11 = _os_log_pack_fill(message + 40, v9, 0, &dword_18F5DF000, "%p -> ProduceOutput reqPackets:%u reqBytes:%u", v56, __p, v60);
      v12 = *(this + 1);
      v13 = *(this + 3);
      *v11 = 134218496;
      *(v11 + 4) = a1;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v12;
      *(v11 + 18) = 1024;
      *(v11 + 20) = v13;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v4);
    }
  }

  v14 = 0;
  v15 = 1;
  do
  {
    if (*this >= *(this + 1))
    {
      break;
    }

    ACBaseAudioSpan::setAfter(a1 + 128, this);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((a1 + 128), this);
    v16 = (*(**(*(a1 + 112) - 8) + 112))(*(*(a1 + 112) - 8), a1 + 128, a4);
    v17 = HIDWORD(v16);
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      LODWORD(v17) = v15;
      v18 = 1;
    }

    if ((v16 & 0x100000000) != 0)
    {
      v14 = (v16 | v14) & 1;
    }

    else
    {
      LODWORD(v4) = v16 >> 8;
      v14 = v16;
    }

    v15 = (v16 & 0x100000000) != 0 ? v18 : v17;
    v19 = (v16 & 0x100000000) != 0 ? v16 : 0;
    v20 = *(a1 + 128);
    if ((v19 & 1) == 0 && !v20)
    {
      break;
    }

    v21 = *(a1 + 136);
    v22 = *(this + 4);
    v23 = *this;
    v24 = *(this + 2);
    if (v20)
    {
      v25 = v22 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = *this;
      v27 = *(a1 + 128);
      do
      {
        *(v22 + 16 * v26++) += v24;
        --v27;
      }

      while (v27);
    }

    *this = v23 + v20;
    *(this + 2) = v24 + v21;
    ACBaseAudioSpan::copyFilledMetadataEventsFrom(this, a1 + 128, 0);
  }

  while ((v15 & 1) != 0);
  ACBaseAudioSpan::completeMetadataFrame(this);
  v28 = v14 | (v4 << 8);
  *(a1 + 404) += *this;
  if ((*(gAudioConverterLog + 8) & 2) != 0)
  {
    v29 = _os_log_pack_size();
    v30 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v29 + 88, 2);
    if (v30)
    {
      v31 = v30;
      v32 = _os_log_pack_fill(v30 + 40, v29, 0, &dword_18F5DF000, "%p <- ProduceOutput outPackets:%u byteCount:%u err:%d total:%u", v56, __p, v60, v61, v63);
      v33 = *this;
      v34 = *(this + 2);
      if (v15)
      {
        v35 = 0;
      }

      else
      {
        v35 = v28;
      }

      v36 = *(a1 + 404);
      *v32 = 134219008;
      *(v32 + 4) = a1;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v33;
      *(v32 + 18) = 1024;
      *(v32 + 20) = v34;
      *(v32 + 24) = 1024;
      *(v32 + 26) = v35;
      *(v32 + 30) = 1024;
      *(v32 + 32) = v36;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v31);
    }
  }

  if ((v15 & 1) != 0 && *this < *(this + 1) && (*(a1 + 401) & 1) == 0 && (*(a1 + 402) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v63);
    v38 = *(a1 + 104);
    for (i = *(a1 + 112); v38 != i; v38 += 8)
    {
      (*(**v38 + 64))(&__p);
      if ((v62 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v62 & 0x80u) == 0)
      {
        v40 = v62;
      }

      else
      {
        v40 = v60;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, p_p, v40);
      if (v62 < 0)
      {
        operator delete(__p);
      }
    }

    if ((v73 & 0x10) != 0)
    {
      v43 = v72;
      if (v72 < v69)
      {
        v72 = v69;
        v43 = v69;
      }

      v44 = __src;
    }

    else
    {
      if ((v73 & 8) == 0)
      {
        v41 = 0;
        v62 = 0;
        goto LABEL_63;
      }

      v44 = v66;
      v43 = v67;
    }

    v41 = v43 - v44;
    if (v43 - v44 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v62 = v43 - v44;
    if (v41)
    {
      memmove(&__p, v44, v41);
    }

LABEL_63:
    *(&__p + v41) = 0;
    if (v62 < 0)
    {
      v45 = strlen(__p);
      operator delete(__p);
    }

    else
    {
      v45 = strlen(&__p);
    }

    v46 = _os_log_pack_size();
    v47 = v46 + 88;
    v48 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + v46 + 88 + 1, 17);
    if (!v48)
    {
LABEL_87:
      v63 = *MEMORY[0x1E69E54E8];
      *(&v63 + *(v63 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v64 = MEMORY[0x1E69E5548] + 16;
      if (v71 < 0)
      {
        operator delete(v70);
      }

      v64 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v65);
      std::ostream::~ostream();
      MEMORY[0x193ADF120](&v74);
      return v28 | (v15 << 32);
    }

    v49 = v48;
    v50 = _os_log_pack_fill(v48 + 40, v46, 0, &dword_18F5DF000, "ProduceOutput: produced only %d of %d requested packets %s", v56, __p, v60);
    v51 = *(this + 1);
    v58 = *this;
    if ((v73 & 0x10) != 0)
    {
      v57 = *(this + 1);
      v53 = v72;
      if (v72 < v69)
      {
        v72 = v69;
        v53 = v69;
      }

      v54 = __src;
    }

    else
    {
      if ((v73 & 8) == 0)
      {
        v52 = 0;
        v62 = 0;
LABEL_81:
        *(&__p + v52) = 0;
        if ((v62 & 0x80u) == 0)
        {
          v55 = &__p;
        }

        else
        {
          v55 = __p;
        }

        stpcpy(v49 + v47, v55);
        *v50 = 67109634;
        *(v50 + 4) = v58;
        *(v50 + 8) = 1024;
        *(v50 + 10) = v51;
        *(v50 + 14) = 2080;
        *(v50 + 16) = v49 + v47;
        if (v62 < 0)
        {
          operator delete(__p);
        }

        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v49);
        goto LABEL_87;
      }

      v57 = *(this + 1);
      v54 = v66;
      v53 = v67;
    }

    v52 = v53 - v54;
    if (v53 - v54 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v52 >= 0x17)
    {
      operator new();
    }

    v62 = v53 - v54;
    if (v52)
    {
      memmove(&__p, v54, v52);
    }

    v51 = v57;
    goto LABEL_81;
  }

  return v28 | (v15 << 32);
}

void sub_18F5F6AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

OSStatus AudioConverterConvertBuffer(AudioConverterRef inAudioConverter, UInt32 inInputDataSize, const void *inInputData, UInt32 *ioOutputDataSize, void *outOutputData)
{
  v11 = inInputDataSize;
  v9 = ioOutputDataSize;
  v10 = inInputData;
  v8 = outOutputData;
  v6[0] = &v11;
  v6[1] = &v10;
  v6[2] = &v9;
  v6[3] = &v8;
  v7[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertBuffer::$_0>;
  v7[1] = v6;
  return with_resolved_rt(inAudioConverter, v7);
}

uint64_t caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertBuffer::$_0>(unsigned int ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 64))(a2, ***a1, *(*a1)[1], *(*a1)[2], *(*a1)[3]);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size();
    v6 = v5 + 88;
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + 88 + v4, 16);
    if (message)
    {
      v8 = message;
      v9 = _os_log_pack_fill(message + 40, v5, 0, &dword_18F5DF000, "AudioConverter -> %p: ConvertBuffer %s render returned %i", v13, v14, v15);
      v10 = v8 + v6;
      if ((*(*a2 + 104))(a2))
      {
        v11 = "out-of-process";
      }

      else
      {
        v11 = "in-process";
      }

      stpcpy(v10, v11);
      *v9 = 134218498;
      *(v9 + 4) = a2;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v10;
      *(v9 + 22) = 1024;
      *(v9 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v8);
    }
  }

  return v3;
}

uint64_t acv2::AudioConverterV2::convertBuffer(acv2::AudioConverterV2 *this, unsigned int a2, const void *a3, unsigned int *a4, void *a5)
{
  v56 = a4;
  if (*(this + 12))
  {
    v54 = this;
    v55 = &v56;
  }

  else
  {
    v9 = *(this + 12);
    v54 = this;
    v55 = &v56;
    if (v9 & 1) == 0 && (*(this + 13))
    {
      v10 = *(this + 4);
      v11 = *(this + 5);
      HIDWORD(v58) = 2740;
      v59 = v10;
      v60 = v11;
      v61 = 0;
      v62 = 0;
      kdebug_trace();
      v47[0] = 1;
      v48 = 2740;
      v49 = v10;
      v50 = v11;
      v51 = 0;
      v52 = 0;
      LOBYTE(v58) = 0;
      v53 = 1;
      AT::ScopedTrace::~ScopedTrace(&v58);
      goto LABEL_7;
    }
  }

  v47[0] = 0;
  v53 = 0;
LABEL_7:
  if (!a3)
  {
    v31 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v31 + 88, 16);
    if (!message)
    {
      goto LABEL_59;
    }

    v33 = message;
    v34 = _os_log_pack_fill(message + 40, v31, 0, &dword_18F5DF000, "inInputData == NULL");
LABEL_58:
    *v34 = 0;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v33);
    goto LABEL_59;
  }

  if (!v56)
  {
    v35 = _os_log_pack_size();
    v36 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v35 + 88, 16);
    if (!v36)
    {
      goto LABEL_59;
    }

    v33 = v36;
    v34 = _os_log_pack_fill(v36 + 40, v35, 0, &dword_18F5DF000, "ioOutputDataSize == NULL");
    goto LABEL_58;
  }

  if (a5)
  {
    AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v45, this + 32, this);
    v12 = v45;
    if (v45)
    {
LABEL_35:
      atomic_store(0, v46);
      goto LABEL_36;
    }

    v13 = *(this + 5);
    if (*(v13 + 82) == 1)
    {
      v43 = _os_log_pack_size();
      v44 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v43 + 88, 16);
      if (!v44)
      {
LABEL_65:
        v12 = 4294967246;
        goto LABEL_35;
      }

      v41 = v44;
      v42 = _os_log_pack_fill(v44 + 40, v43, 0, &dword_18F5DF000, "AudioConverterConvertBuffer: sample rate conversion not allowed");
    }

    else
    {
      if ((*(v13 + 80) & 1) == 0 && *(v13 + 81) != 1)
      {
        v14 = v56;
        v70[0] = a3;
        v70[1] = a2;
        v15 = *(v13 + 449);
        if (v15 == 1)
        {
          v16 = mach_absolute_time();
        }

        else
        {
          v16 = 0;
        }

        v17 = *v14;
        if (*v14)
        {
          v18 = 1869627136;
          v19 = *(v13 + 16);
          if (!v19 || !*(v13 + 24) || (v20 = *(v13 + 56)) == 0 || !*(v13 + 64))
          {
            v22 = 0;
            v23 = 63;
            goto LABEL_29;
          }

          v21 = a2 / v19;
          v69 = a2 / v19;
          if (v17 / v20 >= a2 / v19)
          {
            v68 = 0;
            v67[0] = &v68;
            v67[1] = v70;
            v67[2] = &v69;
            *&v66.mNumberBuffers = 1;
            v66.mBuffers[0].mNumberChannels = *(v13 + 68);
            v66.mBuffers[0].mDataByteSize = v20 * v21;
            v66.mBuffers[0].mData = a5;
            v58 = 0;
            v59 = 0;
            v60 = &v66;
            LODWORD(v61) = 1;
            BYTE4(v61) = 0;
            v65 = 0;
            v62 = 0;
            v63 = 0;
            v64[0] = 0;
            ACBaseAudioSpan::set(&v58, &v66, 0, v21, (v20 * v21));
            *&v57 = caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterChain::ConvertBuffer(std::span<unsigned char const,18446744073709551615ul>,void *,unsigned int &)::$_0>;
            *(&v57 + 1) = v67;
            v23 = acv2::AudioConverterChain::ProduceOutput(v13, &v57, &v58, 1u);
            *v14 = v59;
            if (v15)
            {
              v28 = mach_absolute_time() - v16;
              ++*(v13 + 456);
              v29 = *(v13 + 472);
              *(v13 + 464) += v28;
              if (v29 > v28)
              {
                *(v13 + 472) = v28;
              }

              if (*(v13 + 480) < v28)
              {
                *(v13 + 480) = v28;
              }
            }

            v22 = v23 & 0x100000000;
            v30 = v23 & 0xFFFFFF00;
            v23 = v23;
            if (v65 == 1)
            {
              std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v64);
            }

            if (v22)
            {
              v18 = 0;
            }

            else
            {
              v18 = v30;
            }

            if (v22)
            {
              v23 = 0;
            }

            goto LABEL_29;
          }

          v22 = 0;
          v18 = 1768846080;
        }

        else
        {
          v18 = 1869902592;
          v24 = _os_log_pack_size();
          v25 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v24 + 88, 16);
          if (v25)
          {
            v26 = v25;
            *_os_log_pack_fill(v25 + 40, v24, 0, &dword_18F5DF000, "ioOutputDataSize == 0") = 0;
            caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v26);
          }

          v22 = 0;
        }

        v23 = 122;
LABEL_29:
        if (*(this + 28) == 1 && *v56)
        {
          *(this + 28) = 0;
          kdebug_trace();
        }

        if ((v18 | v23 | v22) >= 0x100000000)
        {
          v12 = 0x100000000;
        }

        else
        {
          v12 = v18 | v23 | v22;
        }

        goto LABEL_35;
      }

      v39 = _os_log_pack_size();
      v40 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v39 + 88, 16);
      if (!v40)
      {
        goto LABEL_65;
      }

      v41 = v40;
      v42 = _os_log_pack_fill(v40 + 40, v39, 0, &dword_18F5DF000, "AudioConverterConvertBuffer: deinterleaved formats not allowed");
    }

    *v42 = 0;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v41);
    goto LABEL_65;
  }

  v37 = _os_log_pack_size();
  v38 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v37 + 88, 16);
  if (v38)
  {
    v33 = v38;
    v34 = _os_log_pack_fill(v38 + 40, v37, 0, &dword_18F5DF000, "outOutputData == NULL");
    goto LABEL_58;
  }

LABEL_59:
  v12 = 4294967246;
LABEL_36:
  if (v53 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v47);
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard();
  return v12;
}

void sub_18F5F7210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a36)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](&a31);
  }

  atomic_store(0, a11);
  if (a17 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a12);
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard();
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterChain::ConvertBuffer(std::span<unsigned char const,18446744073709551615ul>,void *,unsigned int &)::$_0>(char ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *v3;
  *v3 = 1;
  if (v4)
  {
    v5 = 0;
    v6 = 1852139886;
  }

  else
  {
    v7 = *(a2 + 16);
    v9 = v2[1];
    v8 = v2[2];
    v11 = *v9;
    v10 = v9[1];
    *(v7 + 16) = v11;
    *(v7 + 12) = v10;
    v6 = *v8;
    v5 = 0x100000000;
  }

  return v5 | v6;
}

uint64_t acv2::PCMConverter2::ConvertBufferList(uint64_t result, int a2, void *a3, void *a4)
{
  v6 = result;
  if ((*(result + 28) & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(result + 44);
  }

  v8 = **a3;
  if (v8)
  {
    v9 = (v7 * a2);
    v10 = 16;
    do
    {
      result = (*(v6 + 168))(*(*a3 + v10), *(*a4 + v10), v9);
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

int16x8_t *NativeInt16ToFloat32Scaled_ARM(int16x8_t *result, float32x4_t *a2, unsigned int a3, float a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->i16[0];
      result = (result + 2);
      a2->f32[0] = v5 * a4;
      a2 = (a2 + 4);
      v6 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    do
    {
      v8 = *result++;
      *a2 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v8.i8)), a4);
      a2[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v8)), a4);
      a2 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 7; i; --i)
  {
    v10 = result->i16[0];
    result = (result + 2);
    a2->f32[0] = v10 * a4;
    a2 = (a2 + 4);
  }

  return result;
}

caulk::rt_safe_memory_resource *ACBaseAudioSpan::copyEmptyMetadataEventsFrom(caulk::rt_safe_memory_resource *this, const ACBaseAudioSpan *a2)
{
  if (*(this + 88) == 1)
  {
    v12 = v2;
    v13 = v3;
    if (*(a2 + 88) == 1)
    {
      v5 = this;
      if (*(this + 28) == 1)
      {
        v6 = *(this + 2);
        if (v6[4 * *v6 + 2] == 1094863915)
        {
          v7 = *(v6 - 9);
          if (v7)
          {
            v8 = (v6 + v7 - 48);
            memset(v11, 0, 44);
            BYTE8(v11[1]) = 1;
            *&v11[2] = 0x10000002CLL;
            AudioMetadataFrame::begin_new(v8, v11);
            if (*(a2 + 20))
            {
              v9 = 0;
              v10 = *(a2 + 9);
              do
              {
                AudioMetadataFrame_AppendEvent(v8, v10);
                v10 += *(v10 + 8);
                ++v9;
              }

              while (v9 < *(a2 + 20));
            }

            return ACMetadataContainer::resetMetadataEvents((v5 + 48), v8);
          }
        }
      }
    }
  }

  return this;
}

uint64_t ACBaseAudioSpan::setAfter(uint64_t result, unsigned int *a2)
{
  *result = 0;
  *(result + 8) = 0;
  v2 = **(result + 16);
  if (v2)
  {
    v3 = a2[2];
    v4 = 16;
    do
    {
      *(*(result + 16) + v4) = *(*(a2 + 2) + v4) + v3;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v5 = *(a2 + 4);
  v6 = *a2;
  if (v5)
  {
    *(result + 32) = v5 + 16 * v6;
  }

  v7 = *(a2 + 5);
  if (v7)
  {
    *(result + 40) = v7 + 16 * v6;
  }

  v8 = a2[2];
  *(result + 4) = a2[1] - v6;
  *(result + 12) = a2[3] - v8;
  return result;
}

uint64_t acv2::CBRConverter::ProduceOutput(uint64_t a1, ACBaseAudioSpan *a2, unsigned __int8 a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 1869627199;
  }

  acv2::AudioConverterChain::ObtainInput(v17, v4, a1, *(a2 + 1), a3);
  if ((v18 & 1) == 0)
  {
    v13 = 0;
    LODWORD(Packets) = v17[0];
    goto LABEL_14;
  }

  v6 = v17[0];
  v7 = *(a2 + 1);
  if (v7 >= *v17[0])
  {
    v8 = *v17[0];
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    LOBYTE(Packets) = 0;
    v15 = 0;
LABEL_17:
    v13 = 0x100000000;
    return v13 | v15 | Packets;
  }

  v9 = v17[1];
  (*(*a1 + 160))(a1, v8, v17[0] + 16, a2 + 4);
  v10 = *(a1 + 72);
  *a2 = v8;
  Packets = ACBaseAudioSpan::sizeOfFirstPackets(a2, v8, v10);
  v13 = HIDWORD(Packets);
  if (!HIDWORD(Packets))
  {
LABEL_14:
    v15 = Packets & 0xFFFFFF00;
    return v13 | v15 | Packets;
  }

  *(a2 + 2) = Packets;
  v14 = *(a1 + 152);
  if (v14)
  {
    acv2::AudioConverterBase::writeCapture(v14, a2, v12);
  }

  Packets = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), *v6, v9, v8);
  v13 = HIDWORD(Packets);
  if (HIDWORD(Packets))
  {
    v15 = 0;
    LOBYTE(Packets) = 1;
    goto LABEL_17;
  }

  v15 = Packets & 0xFFFFFF00;
  return v13 | v15 | Packets;
}

uint64_t acv2::AudioConverterChain::ObtainInput(uint64_t result, caulk::concurrent::message *a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  v9 = result;
  v10 = *(a3 + 104);
  if (!v10)
  {
    v28 = *(a3 + 112);
    if (v28)
    {
      *v28 = 0;
      *(v28 + 8) = 0;
      result = ACBaseAudioSpan::resetMetadataEvents(v28);
      v29 = *(a3 + 32) * v6;
      *(v28 + 4) = v6;
      *(v28 + 12) = v29;
    }

LABEL_31:
    v31 = *(a3 + 96);
    if (v31)
    {
      if (*(a3 + 104))
      {
        v109 = v6;
      }

      else
      {
        v42 = v31[30];
        v43 = *(v8 + 34);
        if (v42 >= (*(v8 + 35) - v43) >> 3)
        {
          v30 = 0;
          *v9 = 1651074168;
          goto LABEL_78;
        }

        v44 = v5;
        v45 = v9;
        v46 = *(v43 + 8 * v42);
        if (*v46 >= v6)
        {
          v47 = v6;
        }

        else
        {
          v47 = *v46;
        }

        LODWORD(v48) = v31[21];
        if ((v31[17] & 0x20) != 0)
        {
          v48 = v48;
        }

        else
        {
          v48 = 1;
        }

        v49 = (v31[20] * v47 + 15) & 0xFFFFFFF0;
        **(v46 + 24) = v48;
        v50 = *(v46 + 112);
        LODWORD(v51) = ((v48 + 1) >> 1) * v49 + 32;
        if (v48 <= 1)
        {
          v51 = 0;
        }

        else
        {
          v51 = v51;
        }

        v111 = *(v46 + 112);
        v112 = v50 + v51;
        if (v48)
        {
          v52 = 0;
          v53 = 16;
          do
          {
            v54 = (&v111)[v52 & 1];
            *(*(v46 + 24) + v53) = v54;
            (&v111)[v52++ & 1] = &v54[v49];
            v53 += 16;
          }

          while (v48 != v52);
        }

        *(v46 + 8) = 0;
        v28 = v46 + 8;
        *(v28 + 8) = 0;
        ACBaseAudioSpan::resetMetadataEvents(v28);
        *(v28 + 4) = v47;
        *(v28 + 12) = v49;
        v109 = *v28;
        v9 = v45;
        v5 = v44;
      }

      if ((*(gAudioConverterLog + 8) & 2) != 0)
      {
        v55 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v55 + 88, 2);
        if (message)
        {
          v57 = message;
          v58 = _os_log_pack_fill(message + 40, v55, 0, &dword_18F5DF000, "Chain rendering %p -> ObtainInput upstream packetCapacity: %u, byteCapacity: %u ", v102, v103, v105);
          v59 = *(v28 + 4);
          v60 = *(v28 + 12);
          *v58 = 134218496;
          *(v58 + 4) = a3;
          *(v58 + 12) = 1024;
          *(v58 + 14) = v59;
          *(v58 + 18) = 1024;
          *(v58 + 20) = v60;
          caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v57);
        }
      }

      result = (*(*v31 + 112))(v31, v28, v5);
      if ((result & 0x100000000) != 0)
      {
        v61 = result;
      }

      else
      {
        v61 = result;
      }

      if ((result & 0x100000000) != 0)
      {
        v62 = 1;
      }

      else
      {
        v62 = BYTE4(result);
      }

      if ((*(gAudioConverterLog + 8) & 2) != 0)
      {
        v63 = _os_log_pack_size();
        result = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v63 + 88, 2);
        if (result)
        {
          v64 = result;
          v65 = _os_log_pack_fill(result + 40, v63, 0, &dword_18F5DF000, "Chain rendering %p ->  ObtainInput upstream packetCount: %u, byteCount: %u, status: %d", v102, v103, v105, v107);
          v66 = *v28;
          v67 = *(v28 + 8);
          if (v62)
          {
            v68 = 0;
          }

          else
          {
            v68 = v61;
          }

          *v65 = 134218752;
          *(v65 + 4) = a3;
          *(v65 + 12) = 1024;
          *(v65 + 14) = v66;
          *(v65 + 18) = 1024;
          *(v65 + 20) = v67;
          *(v65 + 24) = 1024;
          *(v65 + 26) = v68;
          result = caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v64);
        }
      }

      if (v62)
      {
        v6 = v109;
LABEL_74:
        if (v10)
        {
          result = ACSpanningInputBuffer::consolidateInput(v10, v6);
          v28 = result;
          if ((v70 & 1) == 0)
          {
            v30 = 0;
            *v9 = result;
            goto LABEL_78;
          }
        }

        *v9 = v28;
        goto LABEL_77;
      }

      v69 = *(a3 + 104);
      v6 = v109;
      if (v69 && (*(v69 + 24) || *(v69 + 128)) || *v28)
      {
        goto LABEL_74;
      }

LABEL_127:
      *v28 = 0;
      *(v28 + 8) = 0;
      result = ACBaseAudioSpan::resetMetadataEvents(v28);
      v30 = 0;
      *v9 = v61;
      goto LABEL_78;
    }

    v106 = v9;
    if ((*(gAudioConverterLog + 8) & 2) != 0)
    {
      v32 = _os_log_pack_size();
      v33 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v32 + 88, 2);
      if (v33)
      {
        v34 = v33;
        v35 = _os_log_pack_fill(v33 + 40, v32, 0, &dword_18F5DF000, "%p -> ObtainInput callback reqPackets:%u reqBytes:%u", v102, v103, v9);
        v36 = *(v28 + 4);
        v37 = *(v28 + 12);
        *v35 = 134218496;
        *(v35 + 4) = v8;
        *(v35 + 12) = 1024;
        *(v35 + 14) = v36;
        *(v35 + 18) = 1024;
        *(v35 + 20) = v37;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v34);
      }
    }

    *(v8 + 400) = 1;
    v38 = (*(v8 + 30))(v8 + 248, v28);
    v40 = v38;
    *(v8 + 400) = 0;
    if ((v38 & 0x100000000) == 0)
    {
      v41 = 0;
      v110 = v38;
      goto LABEL_113;
    }

    v110 = v38 != 0;
    if (v38)
    {
      v71 = *(v8 + 4);
      if (!v71)
      {
        goto LABEL_102;
      }

      v72 = *(*(v28 + 16) + 12);
      if (*(v28 + 32))
      {
        v73 = v71 * v38;
        v74 = v71 * v38 - v72;
        if (v71 * v38 <= v72)
        {
          if (v73 < v72)
          {
            if ((*(gAudioConverterLog + 8) & 2) != 0)
            {
              v80 = _os_log_pack_size();
              v81 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v80 + 88, 2);
              if (v81)
              {
                v82 = v81;
                v83 = _os_log_pack_fill(v81 + 40, v80, 0, &dword_18F5DF000, "%p -> Input mDataByteSize of %u bytes is greater than expected for %u input packets (%u bytes) attempting to rectify by truncating data", v102, v103, v106, v107);
                *v83 = 134218752;
                *(v83 + 4) = v8;
                *(v83 + 12) = 1024;
                *(v83 + 14) = v72;
                *(v83 + 18) = 1024;
                *(v83 + 20) = v40;
                *(v83 + 24) = 1024;
                *(v83 + 26) = v73;
                caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v82);
              }
            }

            *(*(v28 + 16) + 12) = v73;
          }

          goto LABEL_102;
        }

        if ((*(gAudioConverterLog + 8) & 2) != 0)
        {
          LODWORD(v103) = v71 * v38 - v72;
          v75 = _os_log_pack_size();
          v76 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v75 + 88, 2);
          v74 = v103;
          if (v76)
          {
            v77 = v75;
            v78 = v76;
            v79 = _os_log_pack_fill(v76 + 40, v77, 0, &dword_18F5DF000, "%p -> Expected %u bytes for %u input packets however actual byte count is %u, attempting to rectify by trimming packets", v102, v103, v106, v107);
            *v79 = 134218752;
            *(v79 + 4) = v8;
            *(v79 + 12) = 1024;
            *(v79 + 14) = v73;
            *(v79 + 18) = 1024;
            *(v79 + 20) = v40;
            *(v79 + 24) = 1024;
            *(v79 + 26) = v72;
            caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v78);
            v74 = v103;
          }
        }

        v40 -= v74 / v71;
        goto LABEL_99;
      }

      if (v72 / v71 == v38)
      {
LABEL_102:
        v87 = *(v8 + 43);
        if (v87)
        {
          v88 = *(v87 + 364) | 0x100000000;
        }

        else
        {
          v88 = 0;
        }

        v89 = validateInputProcData(v8, *(v28 + 16), v40, *(v28 + 32), v88);
        if (v89)
        {
          v41 = 0;
          v110 = v89;
        }

        else
        {
          *v28 = v40;
          *(v28 + 4) = v40;
          if (v40)
          {
            v90 = *(*(v28 + 16) + 12);
          }

          else
          {
            v90 = 0;
          }

          *(v28 + 8) = v90;
          *(v28 + 12) = v90;
          v41 = 1;
          if (v10 && *(v28 + 32))
          {
            ACSpanningInputBuffer::checkRelocateClientPacketDescriptions(v10, v28);
          }
        }

LABEL_113:
        *(v8 + 102) += *v28;
        if ((*(gAudioConverterLog + 8) & 2) != 0)
        {
          v91 = *(v8 + 401) ? 4 : 3;
          v92 = _os_log_pack_size();
          v93 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v92 + 88 + v91, 2);
          if (v93)
          {
            v94 = v93;
            v95 = (v93 + v92 + 88);
            v96 = _os_log_pack_fill(v93 + 40, v92, 0, &dword_18F5DF000, "%p <- ObtainInput callback outPackets:%u outBytes:%u err:%d eof:%s total:%u", v102, v103, v106, v107, v111, v112);
            v97 = *v28;
            v98 = *(v28 + 8);
            v99 = v110;
            if (v41)
            {
              v99 = 0;
            }

            v104 = v99;
            if (*(v8 + 401))
            {
              v100 = "YES";
            }

            else
            {
              v100 = "NO";
            }

            stpcpy(v95, v100);
            v101 = *(v8 + 102);
            *v96 = 134219266;
            *(v96 + 4) = v8;
            *(v96 + 12) = 1024;
            *(v96 + 14) = v97;
            *(v96 + 18) = 1024;
            *(v96 + 20) = v98;
            *(v96 + 24) = 1024;
            *(v96 + 26) = v104;
            *(v96 + 30) = 2080;
            *(v96 + 32) = v95;
            *(v96 + 40) = 1024;
            *(v96 + 42) = v101;
            caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v94);
          }
        }

        result = *(v8 + 61);
        if (result)
        {
          result = acv2::AudioConverterBase::writeCapture(result, v28, v39);
        }

        v9 = v106;
        v61 = v110;
        if (v41)
        {
          goto LABEL_74;
        }

        goto LABEL_127;
      }

      v84 = _os_log_pack_size();
      v85 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v84 + 88, 16);
      if (v85)
      {
        v86 = _os_log_pack_fill(v85 + 40, v84, 0, &dword_18F5DF000, "Input data proc returned inconsistent %d packets for %d bytes; at %d bytes per packet, that is actually %d packets", v102, v85, v106, v107);
        *v86 = 67109888;
        *(v86 + 4) = v40;
        *(v86 + 8) = 1024;
        *(v86 + 10) = v72;
        *(v86 + 14) = 1024;
        *(v86 + 16) = v71;
        *(v86 + 20) = 1024;
        *(v86 + 22) = v72 / v71;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v103);
      }

      v40 = v72 / v71;
    }

LABEL_99:
    if ((*(v8 + 401) & 1) == 0 && !v40)
    {
      *(v8 + 401) = 1;
    }

    goto LABEL_102;
  }

  if (*v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = *v10;
  }

  v12 = *(v10 + 24);
  if (v12 >= v11)
  {
    result = v10 + 24;
    goto LABEL_27;
  }

  if (!v12 && !*(v10 + 128))
  {
    result = ACBaseAudioSpan::set((v10 + 128), (*(v10 + 16) + 48), *(v10 + 232), v11, (*(v10 + 8) * v11));
LABEL_30:
    v28 = v10 + 128;
    goto LABEL_31;
  }

  v103 = a2;
  v105 = a5;
  v13 = result;
  v14 = *(v10 + 16);
  v15 = *(v10 + 232);
  v16 = *(v10 + 12);
  *(v10 + 28) = *v10;
  *(v10 + 36) = v16;
  v17 = **(v10 + 40);
  if (v17)
  {
    v18 = (v14 + 64);
    v19 = 16;
    do
    {
      v20 = *(v10 + 40);
      v21 = *(v20 + v19);
      v22 = *v18;
      if (v21 != *v18)
      {
        memmove(v22, v21, *(v10 + 32));
        v22 = *v18;
      }

      *(v20 + v19) = v22;
      v18 += 2;
      v19 += 16;
      --v17;
    }

    while (v17);
  }

  v23 = *(v10 + 56);
  if (v23)
  {
    v24 = v23 == v15;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    memmove(v15, v23, 16 * *(v10 + 24));
    *(v10 + 56) = v15;
  }

  result = ACSpanningInputBuffer::consolidateInput(v10, v11);
  v9 = v13;
  if (v25)
  {
    v5 = v105;
    if (*result < v11)
    {
      if (v11 - *(v10 + 24) >= *v10)
      {
        v26 = *v10;
      }

      else
      {
        v26 = v11 - *(v10 + 24);
      }

      result = ACBaseAudioSpan::setAfter(v10 + 128, (v10 + 24));
      v27 = *(v10 + 8) * v26;
      *(v10 + 132) = v26;
      *(v10 + 140) = v27;
      v6 = a4;
      v8 = v103;
      goto LABEL_30;
    }

LABEL_27:
    *v9 = result;
LABEL_77:
    *(v9 + 8) = v10;
    v30 = 1;
    goto LABEL_78;
  }

  v30 = 0;
  *v13 = result;
LABEL_78:
  *(v9 + 16) = v30;
  return result;
}

uint64_t validateInputProcData(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  CrashIfClientProvidedBogusAudioBufferList();
  v10 = *a2;
  v11 = *(a1 + 28);
  if ((*(a1 + 12) & 0x20) == 0)
  {
    v11 = 1;
  }

  if (v10 != v11)
  {
    v24 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v24 + 88, 16);
    if (!message)
    {
      return 4294967246;
    }

    v26 = message;
    *_os_log_pack_fill(message + 40, v24, 0, &dword_18F5DF000, "Input callback has incorrectly modified bufferList->mNumberBuffers.") = 0;
LABEL_29:
    v31 = *(gAudioConverterDeferredLog + 16);
    v32 = v26;
LABEL_30:
    caulk::concurrent::messenger::enqueue(v31, v32);
    return 4294967246;
  }

  v12 = a2[3];
  if (v10 >= 2)
  {
    v13 = a2 + 7;
    v14 = 1;
    while (*v13 == v12)
    {
      ++v14;
      v13 += 4;
      if (v10 == v14)
      {
        goto LABEL_8;
      }
    }

    v27 = _os_log_pack_size();
    v28 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v27 + 88, 16);
    if (!v28)
    {
      return 4294967246;
    }

    v26 = v28;
    v29 = _os_log_pack_fill(v28 + 40, v27, 0, &dword_18F5DF000, "Received inconsistent %d bytes in mBuffers[0], %d bytes in mBuffers[%d]", v46, v47, v48);
    v30 = *v13;
    *v29 = 67109632;
    *(v29 + 4) = v12;
    *(v29 + 8) = 1024;
    *(v29 + 10) = v30;
    *(v29 + 14) = 1024;
    *(v29 + 16) = v14;
    goto LABEL_29;
  }

LABEL_8:
  if (!a4)
  {
    return 0;
  }

  if (a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = (a4 + 12);
    while (1)
    {
      v18 = *v17;
      if ((a5 & 0x100000000) != 0 && v18 > a5)
      {
        v42 = _os_log_pack_size();
        v43 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v42 + 88, 16);
        if (!v43)
        {
          return 4294967246;
        }

        v39 = v43;
        v44 = _os_log_pack_fill(v43 + 40, v42, 0, &dword_18F5DF000, "Packet description %d of %d (size %d) exceeds maximum packet size (%d) for input format", v46, v47, v48, v49);
        v45 = *v17;
        *v44 = 67109888;
        *(v44 + 4) = v15;
        *(v44 + 8) = 1024;
        *(v44 + 10) = a3;
        *(v44 + 14) = 1024;
        *(v44 + 16) = v45;
        *(v44 + 20) = 1024;
        *(v44 + 22) = a5;
        v41 = gAudioConverterDeferredLog;
        goto LABEL_42;
      }

      v19 = *(v17 - 3);
      v20 = v19 + v18;
      v21 = v19 >= v16 && v19 <= v12;
      if (!v21 || v20 > v12)
      {
        break;
      }

      ++v15;
      v17 += 4;
      v16 = v19 + v18;
      if (a3 == v15)
      {
        if (v20 >= v12)
        {
          return 0;
        }

        if (a3 == 1)
        {
          result = 0;
          a2[3] = v20;
          return result;
        }

        goto LABEL_34;
      }
    }

    v37 = _os_log_pack_size();
    v38 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v37 + 88, 16);
    if (v38)
    {
      v39 = v38;
      v40 = _os_log_pack_fill(v38 + 40, v37, 0, &dword_18F5DF000, "kAudio_ParamError: packet description %d of %d: range %lld-%lld, %d data bytes", v46, v47, v48, v49, v50);
      *v40 = 67110144;
      *(v40 + 4) = v15;
      *(v40 + 8) = 1024;
      *(v40 + 10) = a3;
      *(v40 + 14) = 2048;
      *(v40 + 16) = v19;
      *(v40 + 24) = 2048;
      *(v40 + 26) = v20;
      *(v40 + 34) = 1024;
      *(v40 + 36) = v12;
      v41 = gAudioConverterDeferredLog;
LABEL_42:
      v31 = *(v41 + 16);
      v32 = v39;
      goto LABEL_30;
    }

    return 4294967246;
  }

  if (!v12)
  {
    return 0;
  }

  v20 = 0;
LABEL_34:
  v33 = _os_log_pack_size();
  result = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v33 + 88, 16);
  if (result)
  {
    v34 = result;
    v35 = _os_log_pack_fill(result + 40, v33, 0, &dword_18F5DF000, "%d bytes of input provided, but packet descriptions (%d) only account for %lld bytes", v46, v47, v48);
    v36 = a2[3];
    *v35 = 67109632;
    *(v35 + 4) = v36;
    *(v35 + 8) = 1024;
    *(v35 + 10) = a3;
    *(v35 + 14) = 2048;
    *(v35 + 16) = v20;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v34);
    return 0;
  }

  return result;
}

ACBaseAudioSpan *ACSpanningInputBuffer::consolidateInput(ACSpanningInputBuffer *this, unsigned int a2)
{
  v4 = (this + 24);
  v3 = *(this + 6);
  v6 = (this + 128);
  v5 = *(this + 32);
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 >= a2;
  }

  if (!v7 || *(this + 20))
  {
    if (*this >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = *this;
    }

    v9 = v8 - v3;
    if (v9 >= v5)
    {
      v10 = *(this + 32);
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (!v3)
      {
        ACBaseAudioSpan::set((this + 24), (*(this + 2) + 48), *(this + 29), *this, *(this + 3));
      }

      v11 = ACBaseAudioSpan::append(v4, v6, v10, *(this + 1));
      if (HIDWORD(v11))
      {
        v12 = ACBaseAudioSpan::advanceConsume(v6, v10, *(this + 1));
        if (HIDWORD(v12))
        {
          return v4;
        }

        else
        {
          return v12;
        }
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return (this + 24);
    }
  }

  return v6;
}

uint64_t ACBaseAudioSpan::advanceConsume(ACBaseAudioSpan *this, unsigned int a2, int a3)
{
  if (a2)
  {
    Packets = ACBaseAudioSpan::sizeOfFirstPackets(this, a2, a3);
    if (HIDWORD(Packets))
    {
      v8 = *(this + 2);
      v9 = *v8;
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v8 + 4;
        do
        {
          *v11 += Packets;
          v11 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      v12 = *this;
      v6 = *this - a2;
      *this = v6;
      *(this + 2) -= Packets;
      v13 = *(this + 4);
      if (v13 && (v14 = (v13 + 16 * a2), *(this + 4) = v14, v12 != a2))
      {
        do
        {
          *v14 -= Packets;
          v14 += 2;
          --v6;
        }

        while (v6);
      }

      else
      {
        v6 = 0;
      }

      v7 = 0x100000000;
    }

    else
    {
      v6 = Packets & 0xFFFFFF00;
      v7 = Packets;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0x100000000;
  }

  return v7 | v6;
}

uint64_t acv2::AudioConverterChain::ConsumedInput(void *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a3 || a2 <= a4)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = *(a3 + 24);
        v6 = a3 + 24;
        if (v7)
        {
          v8 = v6;
        }

        else
        {
          v8 = (v6 + 104);
        }

        v9 = ACBaseAudioSpan::advanceConsume(v8, a4, *(v6 - 20));
      }

      else
      {
        v9 = 0x100000000;
      }

      v11 = v9 & 0xFFFFFF00;
      v12 = v9 & 0x100000000;
      v10 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0x100000000;
    }
  }

  else
  {
    acv2::AudioConverterChain::description(__s, a1);
    if (v22 < 0)
    {
      v5 = strlen(*__s);
      operator delete(*__s);
    }

    else
    {
      v5 = strlen(__s);
    }

    v11 = 2003329280;
    v13 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + v13 + 88 + 1, 17);
    if (message)
    {
      v15 = message;
      v16 = (message + v13 + 88);
      v17 = _os_log_pack_fill(message + 40, v13, 0, &dword_18F5DF000, "%s did not consume all input", v20);
      acv2::AudioConverterChain::description(__s, a1);
      if (v22 >= 0)
      {
        v18 = __s;
      }

      else
      {
        v18 = *__s;
      }

      stpcpy(v16, v18);
      *v17 = 136315138;
      *(v17 + 4) = v16;
      if (v22 < 0)
      {
        operator delete(*__s);
      }

      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v15);
    }

    v12 = 0;
    v10 = 116;
  }

  return v10 | v11 | v12;
}

void sub_18F5F8704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACBaseAudioSpan::sizeOfFirstPackets(ACBaseAudioSpan *this, unsigned int a2, int a3)
{
  if (!a2)
  {
    LODWORD(v4) = 0;
    goto LABEL_5;
  }

  if (!a3)
  {
    v8 = *(this + 4);
    v9 = *this;
    if (v8)
    {
      if (v9 >= a2)
      {
        v4 = *(v8 + 16 * (a2 - 1)) + *(v8 + 16 * (a2 - 1) + 12);
        if (!HIDWORD(v4))
        {
          goto LABEL_5;
        }

        LODWORD(v4) = 2003329396;
        v14 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v14 + 88, 16);
        if (message)
        {
          v16 = message;
          *_os_log_pack_fill(message + 40, v14, 0, &dword_18F5DF000, "overflow in sizeOfFirstPackets") = 0;
          v17 = *(gAudioConverterDeferredLog + 16);
          v18 = v16;
LABEL_20:
          caulk::concurrent::messenger::enqueue(v17, v18);
        }
      }

      else
      {
        LODWORD(v4) = 2003329396;
        v10 = _os_log_pack_size();
        v11 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v10 + 88, 16);
        if (v11)
        {
          v12 = v11;
          v13 = _os_log_pack_fill(v11 + 40, v10, 0, &dword_18F5DF000, "invalid packet count (%u > %u) in sizeOfFirstPackets");
LABEL_19:
          v21 = *this;
          *v13 = 67109376;
          *(v13 + 4) = a2;
          *(v13 + 8) = 1024;
          *(v13 + 10) = v21;
          v17 = *(gAudioConverterDeferredLog + 16);
          v18 = v12;
          goto LABEL_20;
        }
      }
    }

    else
    {
      if (v9 == a2)
      {
        LODWORD(v4) = *(this + 2);
        goto LABEL_5;
      }

      LODWORD(v4) = 2003329396;
      v19 = _os_log_pack_size();
      v20 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v19 + 88, 16);
      if (v20)
      {
        v12 = v20;
        v13 = _os_log_pack_fill(v20 + 40, v19, 0, &dword_18F5DF000, "missing packet descriptions (%u != %u) in sizeOfFirstPackets");
        goto LABEL_19;
      }
    }

    v5 = 0;
    return v5 | v4;
  }

  LODWORD(v4) = a3 * a2;
LABEL_5:
  v5 = 0x100000000;
  return v5 | v4;
}

caulk::rt_safe_memory_resource *ACBaseAudioSpan::completeMetadataFrame(caulk::rt_safe_memory_resource *this)
{
  if (*(this + 88) == 1 && *(this + 28) == 1)
  {
    v1 = *(this + 2);
    if (v1[4 * *v1 + 2] == 1094863915)
    {
      v2 = *(v1 - 9);
      if (v2)
      {
        v3 = v1 + v2;
        v6 = *(v3 - 6);
        v5 = *(v3 - 5);
        v4 = (v3 - 48);
        if ((v5 - v6) >= 0x2C && v6 != 0)
        {
          v8 = *(this + 6);
          if (*(this + 7) - v8 >= 0x2CuLL)
          {
            if (v8)
            {
              return AudioMetadataFrame::begin_new(v4, v8);
            }
          }
        }
      }
    }
  }

  return this;
}

char **ACBaseAudioSpan::copyFilledMetadataEventsFrom(char **result, uint64_t a2, uint64_t a3)
{
  if (*(result + 88) == 1 && *(a2 + 88) == 1 && *(a2 + 28) == 1)
  {
    v19 = v3;
    v20 = v4;
    v5 = *(a2 + 16);
    if (v5[4 * *v5 + 2] == 1094863915)
    {
      v6 = *(v5 - 9);
      if (v6)
      {
        v7 = v5 + v6;
        v8 = *(v7 - 6);
        v9 = (*(v7 - 5) - v8) < 0x2C || v8 == 0;
        if (!v9 && *(v8 + 40))
        {
          v11 = result;
          v12 = 0;
          v13 = (v8 + 44);
          do
          {
            v14 = *v13;
            v15 = v13[1];
            v18 = *(v13 + 4);
            v16 = v14;
            v17 = v15;
            if ((a3 & 0x100000000) != 0)
            {
              DWORD1(v17) = a3;
            }

            result = AudioMetadataFrame_AppendEvent((v11 + 48), &v16);
            v13 = (v13 + *(v13 + 2));
            *(v11 + 72) += *(*(v11 + 72) + 8);
            --*(v11 + 80);
            ++v12;
          }

          while (v12 < *(v8 + 40));
        }
      }
    }
  }

  return result;
}

uint64_t isRenderStatusConcerning(int a1)
{
  result = 1;
  if (a1 > 1869627198)
  {
    if (a1 > 1919251262)
    {
      if (a1 == 1919251263)
      {
        return result;
      }

      v3 = 2003329396;
    }

    else
    {
      if (a1 == 1869627199)
      {
        return result;
      }

      v3 = 1919249970;
    }

LABEL_13:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 560164717)
  {
    if (a1 == 560164718)
    {
      return result;
    }

    v3 = 561277293;
    goto LABEL_13;
  }

  if (a1 != -50 && a1 != -4)
  {
    return 0;
  }

  return result;
}

OSStatus AudioConverterConvertComplexBuffer(AudioConverterRef inAudioConverter, UInt32 inNumberPCMFrames, const AudioBufferList *inInputData, AudioBufferList *outOutputData)
{
  v9 = inNumberPCMFrames;
  v7 = outOutputData;
  v8 = inInputData;
  v5[0] = &v9;
  v5[1] = &v8;
  v5[2] = &v7;
  v6[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
  v6[1] = v5;
  return with_resolved_rt(inAudioConverter, v6);
}

uint64_t caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>(unsigned int ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 88))(a2, ***a1, *(*a1)[1], *(*a1)[2]);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size();
    v6 = v5 + 88;
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + 88 + v4, 16);
    if (message)
    {
      v8 = message;
      v9 = _os_log_pack_fill(message + 40, v5, 0, &dword_18F5DF000, "AudioConverter -> %p: ConvertComplexBuffer %s render returned %i", v13, v14, v15);
      v10 = v8 + v6;
      if ((*(*a2 + 104))(a2))
      {
        v11 = "out-of-process";
      }

      else
      {
        v11 = "in-process";
      }

      stpcpy(v10, v11);
      *v9 = 134218498;
      *(v9 + 4) = a2;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v10;
      *(v9 + 22) = 1024;
      *(v9 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v8);
    }
  }

  return v3;
}

uint64_t acv2::AudioConverterV2::convertComplexBuffer(acv2::AudioConverterV2 *this, int a2, const AudioBufferList *a3, AudioBufferList *a4)
{
  v92 = a2;
  v91 = a3;
  if (*(this + 12))
  {
    v89 = this;
    v90 = &v92;
  }

  else
  {
    v8 = *(this + 12);
    v89 = this;
    v90 = &v92;
    if (v8 & 1) == 0 && (*(this + 13))
    {
      v9 = *(this + 4);
      v10 = *(this + 5);
      v72[1] = 2740;
      v73 = v9;
      v74 = v10;
      v75 = a2;
      v76 = 0;
      kdebug_trace();
      v82[0] = 1;
      v83 = 2740;
      v84 = v9;
      v85 = v10;
      v86 = a2;
      v87 = 0;
      LOBYTE(v72[0]) = 0;
      v88 = 1;
      AT::ScopedTrace::~ScopedTrace(v72);
      goto LABEL_7;
    }
  }

  v82[0] = 0;
  v88 = 0;
LABEL_7:
  if (a3)
  {
    if (a4)
    {
      AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v80, this + 32, this);
      v11 = v80;
      if (v80)
      {
LABEL_59:
        atomic_store(0, v81);
        goto LABEL_60;
      }

      v12 = *(this + 5);
      if (*(v12 + 82) == 1)
      {
        v59 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v59 + 88, 16);
        if (!message)
        {
          goto LABEL_70;
        }

        v43 = message;
        *_os_log_pack_fill(message + 40, v59, 0, &dword_18F5DF000, "AudioConverterConvertComplexBuffer: sample rate conversion not allowed") = 0;
        goto LABEL_68;
      }

      if ((*(v12 + 12) & 0x20) != 0)
      {
        v13 = *(v12 + 28);
        if (v13 == a3->mNumberBuffers)
        {
          goto LABEL_15;
        }
      }

      else if (a3->mNumberBuffers == 1)
      {
        v13 = 1;
LABEL_15:
        if ((*(v12 + 52) & 0x20) != 0)
        {
          mNumberBuffers = *(v12 + 68);
          if (mNumberBuffers != a4->mNumberBuffers)
          {
            goto LABEL_17;
          }
        }

        else
        {
          mNumberBuffers = a4->mNumberBuffers;
          if (a4->mNumberBuffers != 1)
          {
LABEL_17:
            v15 = _os_log_pack_size();
            v16 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v15 + 88, 16);
            if (!v16)
            {
LABEL_70:
              v11 = 4294967246;
              goto LABEL_59;
            }

            v17 = v16;
            v18 = _os_log_pack_fill(v16 + 40, v15, 0, &dword_18F5DF000, "AudioConverterConvertComplexBuffer: expected output buffer list with %d, got %d buffers", v69, v70);
            v19 = *(this + 5);
            if ((*(v19 + 52) & 0x20) != 0)
            {
              v20 = *(v19 + 68);
            }

            else
            {
              v20 = 1;
            }

            v68 = a4->mNumberBuffers;
            *v18 = 67109376;
            *(v18 + 4) = v20;
            *(v18 + 8) = 1024;
            *(v18 + 10) = v68;
            v51 = *(gAudioConverterDeferredLog + 16);
            v52 = v17;
LABEL_69:
            caulk::concurrent::messenger::enqueue(v51, v52);
            goto LABEL_70;
          }
        }

        if (v13)
        {
          v21 = 0;
          v22 = *(v12 + 24) * v92;
          p_mData = &a3->mBuffers[0].mData;
          while (*p_mData && *(p_mData - 1) >= v22)
          {
            ++v21;
            p_mData += 2;
            if (v13 == v21)
            {
              goto LABEL_26;
            }
          }

          v41 = _os_log_pack_size();
          v42 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v41 + 88, 16);
          if (!v42)
          {
            goto LABEL_70;
          }

          v43 = v42;
          v44 = _os_log_pack_fill(v42 + 40, v41, 0, &dword_18F5DF000, "buffer %d ptr %p size %d expected %d", v69, v70, DWORD2(v70), v71);
          v45 = &a3->mBuffers[v21];
          mData = v45->mData;
          LODWORD(v45) = v45->mDataByteSize;
          *v44 = 67109888;
          *(v44 + 4) = v21;
          *(v44 + 8) = 2048;
          *(v44 + 10) = mData;
          *(v44 + 18) = 1024;
          *(v44 + 20) = v45;
          *(v44 + 24) = 1024;
        }

        else
        {
LABEL_26:
          if (!mNumberBuffers)
          {
LABEL_31:
            CrashIfClientProvidedBogusAudioBufferList();
            CrashIfClientProvidedBogusAudioBufferList();
            if (*(*(this + 5) + 48) == 1885564203 && a4->mBuffers[a4->mNumberBuffers].mNumberChannels == 1094863915)
            {
              v26 = (a4[-2].mBuffers[0].mDataByteSize != 0);
            }

            else
            {
              v26 = 0;
            }

            v79 = 0;
            v78[0] = &v79;
            v78[1] = &v91;
            v78[2] = &v92;
            ACBaseAudioSpan::ACBaseAudioSpan(v72, v92, a4, v26);
            v27 = *(this + 5);
            *&v70 = caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1>;
            *(&v70 + 1) = v78;
            v28 = acv2::AudioConverterChain::ProduceOutput(v27, &v70, v72, 1u);
            if ((v28 & 0x100000000) != 0)
            {
              v29 = 0;
            }

            else
            {
              v29 = v28;
            }

            v30 = *v74;
            if (v30)
            {
              v31 = v73;
              v32 = (v30 + 3) & 0x1FFFFFFFCLL;
              v33 = vdupq_n_s64(v30 - 1);
              v34 = xmmword_18F9016B0;
              v35 = xmmword_18F9016C0;
              v36 = v74 + 11;
              v37 = vdupq_n_s64(4uLL);
              do
              {
                v38 = vmovn_s64(vcgeq_u64(v33, v35));
                if (vuzp1_s16(v38, *v33.i8).u8[0])
                {
                  *(v36 - 8) = v31;
                }

                if (vuzp1_s16(v38, *&v33).i8[2])
                {
                  *(v36 - 4) = v31;
                }

                if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34))).i32[1])
                {
                  *v36 = v31;
                  v36[4] = v31;
                }

                v34 = vaddq_s64(v34, v37);
                v35 = vaddq_s64(v35, v37);
                v36 += 16;
                v32 -= 4;
              }

              while (v32);
            }

            if (v72[0] == v92)
            {
              v39 = 0;
            }

            else
            {
              v39 = 1768846202;
            }

            if (v29)
            {
              v11 = v29;
            }

            else
            {
              v11 = v39;
            }

            if ((*(this + 28) & 1) != 0 && a4->mNumberBuffers && a4->mBuffers[0].mDataByteSize)
            {
              *(this + 28) = 0;
              kdebug_trace();
            }

            if (v77[40] == 1)
            {
              std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v77);
            }

            goto LABEL_59;
          }

          v24 = 0;
          v22 = *(v12 + 64) * v92;
          mBuffers = a4->mBuffers;
          while (mBuffers->mData && mBuffers->mDataByteSize >= v22)
          {
            ++v24;
            ++mBuffers;
            if (mNumberBuffers == v24)
            {
              goto LABEL_31;
            }
          }

          v47 = _os_log_pack_size();
          v48 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v47 + 88, 16);
          if (!v48)
          {
            goto LABEL_70;
          }

          v43 = v48;
          v44 = _os_log_pack_fill(v48 + 40, v47, 0, &dword_18F5DF000, "buffer %d ptr %p size %d expected %d", v69, v70, DWORD2(v70), v71);
          v49 = mBuffers->mData;
          mDataByteSize = mBuffers->mDataByteSize;
          *v44 = 67109888;
          *(v44 + 4) = v24;
          *(v44 + 8) = 2048;
          *(v44 + 10) = v49;
          *(v44 + 18) = 1024;
          *(v44 + 20) = mDataByteSize;
          *(v44 + 24) = 1024;
        }

        *(v44 + 26) = v22;
LABEL_68:
        v51 = *(gAudioConverterDeferredLog + 16);
        v52 = v43;
        goto LABEL_69;
      }

      v61 = _os_log_pack_size();
      v62 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v61 + 88, 16);
      if (!v62)
      {
        goto LABEL_70;
      }

      v63 = v62;
      v64 = _os_log_pack_fill(v62 + 40, v61, 0, &dword_18F5DF000, "AudioConverterConvertComplexBuffer: expected input buffer list with %d, got %d buffers", v69, v70);
      v65 = *(this + 5);
      if ((*(v65 + 12) & 0x20) != 0)
      {
        v66 = *(v65 + 28);
      }

      else
      {
        v66 = 1;
      }

      v67 = a3->mNumberBuffers;
      *v64 = 67109376;
      *(v64 + 4) = v66;
      *(v64 + 8) = 1024;
      *(v64 + 10) = v67;
      v51 = *(gAudioConverterDeferredLog + 16);
      v52 = v63;
      goto LABEL_69;
    }

    v57 = _os_log_pack_size();
    v58 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v57 + 88, 16);
    if (v58)
    {
      v55 = v58;
      v56 = _os_log_pack_fill(v58 + 40, v57, 0, &dword_18F5DF000, "outOutputData == NULL");
      goto LABEL_75;
    }
  }

  else
  {
    v53 = _os_log_pack_size();
    v54 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v53 + 88, 16);
    if (v54)
    {
      v55 = v54;
      v56 = _os_log_pack_fill(v54 + 40, v53, 0, &dword_18F5DF000, "inInputData == NULL");
LABEL_75:
      *v56 = 0;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v55);
    }
  }

  v11 = 4294967246;
LABEL_60:
  if (v88 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v82);
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard();
  return v11;
}

void sub_18F5F9400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t *a30)
{
  if (a24 == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](&a19);
  }

  atomic_store(0, a30);
  if (*(v30 - 104) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((v30 - 144));
  }

  applesauce::raii::v1::detail::ScopeGuard<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard();
  _Unwind_Resume(a1);
}

void ACBaseAudioSpan::ACBaseAudioSpan(ACBaseAudioSpan *this, int a2, AudioBufferList *a3, AudioStreamPacketDescription *a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = a3->mNumberBuffers;
  *(this + 28) = a4;
  *(this + 88) = 0;
  *(this + 48) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (a4)
  {
    _ZNSt3__18optionalI19ACMetadataContainerE7emplaceB8ne200100IJEvEERS1_DpOT_(this + 48);
  }

  mDataByteSize = a3->mBuffers[0].mDataByteSize;
  *(this + 5) = 0;
  ACBaseAudioSpan::set(this, a3, 0, a2, mDataByteSize);
}

uint64_t caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::functor_invoker<acv2::AudioConverterV2::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1>(_BYTE ***a1, ACBaseAudioSpan *this)
{
  v2 = *a1;
  if (***a1 == 1)
  {
    *this = 0;
    *(this + 2) = 0;
    ACBaseAudioSpan::resetMetadataEvents(this);
    return 0x100000000;
  }

  else
  {
    memcpy(*(this + 2), **(v2 + 8), 16 * (***(v2 + 8) - 1) + 24);
    v4 = **(v2 + 16);
    **v2 = 1;
    return v4 | 0x100000000;
  }
}

void acv2::Reinterleaver::ConvertBufferList(uint64_t a1, acv2::Reinterleaver *this, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v11 = *(a1 + 80);
  if (!v11)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 68) & 0x20) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a1 + 84);
    if (!v12)
    {
LABEL_4:
      v13 = 0;
      goto LABEL_7;
    }
  }

  v13 = (v11 / v12);
LABEL_7:
  v14 = *(*a3 + 16);
  v15 = *(*a4 + 16);
  if (*(a1 + 272) == 1)
  {
    v16 = *(a1 + 268);
    switch(v16)
    {
      case 3:
        v26 = *(*a3 + 16);
        v27 = *(*a4 + 16);

        DownmixStereoInterleavedInt32ToMono_Portable(v26, v27, this);
        break;
      case 2:
        v24 = *(*a3 + 16);
        v25 = *(*a4 + 16);

        DownmixStereoInterleavedInt16ToMono_ARM(v24, v25, this);
        break;
      case 1:
        if (this >= 2)
        {
          v17 = this >> 1;
          v18 = vdup_n_s32(0x3F3504F3u);
          do
          {
            v19.i32[0] = *v14;
            v20 = v14 + 16;
            v19.i32[1] = *(v14 + 12);
            *v15 = vmul_f32(vadd_f32(*(v14 + 4), v19), v18);
            v15 += 8;
            v14 += 16;
            --v17;
          }

          while (v17);
          v14 = v20;
        }

        if (this)
        {
          *v15 = (*v14 + *(v14 + 4)) * 0.70711;
        }

        break;
    }

    return;
  }

  v21 = *(a1 + 276);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if ((*(a1 + 68) & 0x20) != 0)
      {
        v34 = *(a1 + 84);
      }

      else
      {
        v34 = 1;
      }

      if ((*(a1 + 28) & 0x20) != 0)
      {
        v45 = 1;
      }

      else
      {
        v45 = *(a1 + 44);
      }

      v46 = *(a1 + 40);
      v47 = (v13 * this);
      if (v13 <= 8 && ((1 << v13) & 0x114) != 0 && *(a1 + 265) == 1)
      {
        if (v45 >= 1)
        {
          v48 = 0;
          do
          {
            v49 = *(*(a1 + 240) + 4 * v48);
            if (v49 == -1)
            {
              v50 = &acv2::Reinterleaver::sTempScratchBuffer;
              if (v47 > 0x2000)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v50 = (*a4 + 16 * v49 + 16);
            }

            *(*(a1 + 168) + 8 * v48++) = *v50;
          }

          while (v45 != v48);
        }

        switch(v13)
        {
          case 8:
            TDeinterleaver_SIMD<PCMFloat64_SIMD>::Deinterleave(v45, v14, *(a1 + 168), this);
            break;
          case 4:
            v72 = *(a1 + 168);
            if (v45 == 2)
            {
              StereoDeinterleave32_Portable(v14, *v72, v72[1], this);
            }

            else
            {
              TDeinterleaver_SIMD<PCMSInt32_SIMD>::Deinterleave(v45, v14, v72, this);
            }

            break;
          case 2:
            TDeinterleaver_SIMD<PCMSInt16_SIMD>::Deinterleave(v45, v14, *(a1 + 168), this);
            break;
        }

        if (v34 >= 1)
        {
          v73 = 0;
          v74 = 16;
          do
          {
            if (*(*(a1 + 192) + v73) == -1)
            {
              bzero(*(*a4 + v74), v47);
            }

            v73 += 4;
            v74 += 16;
          }

          while (4 * v34 != v73);
        }
      }

      else
      {
LABEL_86:
        if (v34 >= 1)
        {
          v51 = 0;
          v52 = 4 * v34;
          v53 = 16;
          do
          {
            v54 = *(*(a1 + 192) + v51);
            if (v54 == -1)
            {
              bzero(*(*a4 + v53), (v13 * this));
            }

            else
            {
              acv2::Reinterleaver::Blit(this, v14 + v54 * v13, *(*a4 + v53), v13, v46, v13);
            }

            v51 += 4;
            v53 += 16;
          }

          while (v52 != v51);
        }
      }
    }

    else
    {
      if (v21 != 3)
      {
        return;
      }

      if ((*(a1 + 68) & 0x20) != 0)
      {
        v23 = *(a1 + 84);
        if (v23 < 1)
        {
          return;
        }
      }

      else
      {
        v23 = 1;
      }

      v39 = 0;
      v40 = (v13 * this);
      v41 = 16;
      v42 = v23;
      do
      {
        v43 = *(*a4 + v41);
        v44 = *(*(a1 + 192) + 4 * v39);
        if (v44 == -1)
        {
          bzero(v43, v40);
        }

        else
        {
          memcpy(v43, *(*a3 + 16 * v44 + 16), v40);
        }

        ++v39;
        v41 += 16;
      }

      while (v42 != v39);
    }
  }

  else if (v21)
  {
    if (v21 == 1)
    {
      if ((*(a1 + 68) & 0x20) != 0)
      {
        v22 = 1;
      }

      else
      {
        v22 = *(a1 + 84);
      }

      if (v13 <= 8 && ((1 << v13) & 0x114) != 0)
      {
        if (v22 >= 1)
        {
          v35 = 0;
          do
          {
            v36 = *(*(a1 + 192) + 4 * v35);
            if (v36 == -1)
            {
              v37 = &acv2::Reinterleaver::sTempZeroBuffer;
              if ((v13 * this) > 0x2000)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v37 = (*a3 + 16 * v36 + 16);
            }

            *(*(a1 + 168) + 8 * v35++) = *v37;
          }

          while (v22 != v35);
        }

        switch(v13)
        {
          case 8:
            v71 = *(a1 + 168);

            TInterleaver_SIMD<PCMFloat64_SIMD>::Interleave(v22, v71, v15, this);
            break;
          case 4:
            v65 = *(a1 + 168);
            if (v22 == 2)
            {
              v67 = *v65;
              v66 = v65[1];
              if (this >= 2)
              {
                v68 = this >> 1;
                do
                {
                  v69 = *v67++;
                  v76.val[0] = v69;
                  v70 = *v66++;
                  v76.val[1] = v70;
                  vst2_f32(v15, v76);
                  v15 += 16;
                  --v68;
                }

                while (v68);
              }

              if (this)
              {
                *v15 = v67->i32[0];
                *(v15 + 4) = v66->i32[0];
              }
            }

            else
            {

              TInterleaver_SIMD<PCMSInt32_SIMD>::Interleave(v22, v65, v15, this);
            }

            break;
          case 2:
            v38 = *(a1 + 168);

            TInterleaver_SIMD<PCMSInt16_SIMD>::Interleave(v22, v38, v15, this);
            break;
        }
      }

      else
      {
LABEL_93:
        if (v22 >= 1)
        {
          v55 = 0;
          do
          {
            LODWORD(v56) = v55 + 1;
            v57 = v55;
            v58 = *(a1 + 192);
            v59 = *(v58 + 4 * v55);
            if (v59 == -1)
            {
              if (v56 < v22)
              {
                v56 = v56;
                while (*(v58 + 4 * v56) == -1)
                {
                  if (v22 == ++v56)
                  {
                    LODWORD(v56) = v22;
                    break;
                  }
                }
              }

              acv2::Reinterleaver::Zero(this, v15 + v57 * v13, ((v56 - v57) * v13), v11);
            }

            else
            {
              acv2::Reinterleaver::Blit(this, *(*a3 + 16 * v59 + 16), (v15 + v57 * v13), v13, v13, v11);
            }

            v55 = v56;
          }

          while (v56 < v22);
        }
      }
    }
  }

  else
  {
    if ((*(a1 + 68) & 0x20) != 0)
    {
      v29 = *(a1 + 40);
      v28 = 1;
    }

    else
    {
      v28 = *(a1 + 84);
      v29 = *(a1 + 40);
      if (v28 == 2)
      {
        v30 = *(a1 + 192);
        v31 = *v30;
        v32 = v30[1];
        if (v31 != -1 && v31 == v32)
        {
          if (v13 == 4)
          {

            UpmixMonoToStereoInterleaved32_ARM((v14 + 4 * v31), v15, this);
            return;
          }

          if (v13 == 2)
          {

            UpmixMonoToStereoInterleaved16_ARM((v14 + 2 * v31), v15, this);
            return;
          }
        }

        v28 = 2;
      }

      else if (v28 < 1)
      {
        return;
      }
    }

    v60 = 0;
    do
    {
      LODWORD(v61) = v60 + 1;
      v62 = v60;
      v63 = *(a1 + 192);
      v64 = *(v63 + 4 * v60);
      if (v64 == -1)
      {
        if (v61 < v28)
        {
          v61 = v61;
          while (*(v63 + 4 * v61) == -1)
          {
            if (v28 == ++v61)
            {
              LODWORD(v61) = v28;
              break;
            }
          }
        }

        acv2::Reinterleaver::Zero(this, v15 + v62 * v13, ((v61 - v62) * v13), v11);
      }

      else
      {
        if (v61 < v28)
        {
          v61 = v61;
          while (*(v63 + 4 * v61) == *(v63 + 4 * v61 - 4) + 1)
          {
            if (v28 == ++v61)
            {
              LODWORD(v61) = v28;
              break;
            }
          }
        }

        acv2::Reinterleaver::Blit(this, v14 + v64 * v13, (v15 + v62 * v13), ((v61 - v62) * v13), v29, v11);
      }

      v60 = v61;
    }

    while (v61 < v28);
  }
}

OSStatus AudioOutputUnitStop(AudioUnit ci)
{
  if (!ci)
  {
    return -50;
  }

  v1 = (*(*ci + 8))(ci);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = *(*((**v2)(v2) + 112) + 152);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

const __CFString *AudioFormatProperty_FormatCategoryName(const AudioStreamBasicDescription *a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  v6 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v6 = sAudioToolboxBundle;
  }

  mFormatID = a1->mFormatID;
  v8 = @"Dolby Atmos";
  if (mFormatID > 1902324530)
  {
    v9 = mFormatID == 1902324531;
    v10 = 2053319475;
  }

  else
  {
    v9 = mFormatID == 1700997939;
    v10 = 1885547315;
  }

  if (!v9 && mFormatID != v10)
  {
    if (a1->mChannelsPerFrame <= 2)
    {
      v8 = @"Stereo";
    }

    else
    {
      v8 = @"Multichannel";
    }
  }

  result = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v8, @"FormatNames", v6, a4);
  *a2 = result;
  return result;
}

int *StereoDeinterleave32_Portable(int *result, int *a2, int *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = a4 >> 1;
    do
    {
      v5 = *result;
      v6 = result[1];
      v7 = result[2];
      v8 = result[3];
      result += 4;
      *a2 = v5;
      *a3 = v6;
      a2[1] = v7;
      a3[1] = v8;
      a2 += 2;
      a3 += 2;
      --v4;
    }

    while (v4);
  }

  if (a4)
  {
    *a2 = *result;
    *a3 = result[1];
  }

  return result;
}

OSStatus AudioUnitRender(AudioUnit inUnit, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, UInt32 inOutputBusNumber, UInt32 inNumberFrames, AudioBufferList *ioData)
{
  if (!inUnit)
  {
    return -50;
  }

  v7 = *&inNumberFrames;
  v8 = *&inOutputBusNumber;
  v11 = (*(*inUnit + 8))(inUnit);
  if (!v11)
  {
    return 560947818;
  }

  v12 = v11;
  if (*((*v11->mLastWorkgroup)(v11) + 38) != 24949)
  {
    return -3000;
  }

  v13 = *((*v12->mLastWorkgroup)(v12) + 112);
  v14 = *(v13 + 112);
  if (!v14)
  {
    return -4;
  }

  if (LOBYTE(v12[3].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::checkChange(v12 + 2);
    v14 = *(v13 + 112);
  }

  mObserver = v12[1].mObserver;

  return v14(mObserver, ioActionFlags, inTimeStamp, v8, v7, ioData);
}

uint64_t AudioConverterFillComplexBufferRealtimeSafe(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a2;
  v10 = a5;
  v11 = a4;
  v9 = a6;
  v7[0] = &v13;
  v7[1] = &v12;
  v7[2] = &v11;
  v7[3] = &v10;
  v7[4] = &v9;
  v8[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBufferRealtimeSafe::$_0>;
  v8[1] = v7;
  return with_resolved_rt(a1, v8);
}

OSStatus AudioConverterReset(AudioConverterRef inAudioConverter)
{
  v3[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
  v3[1] = &v2;
  return with_resolved(inAudioConverter, v3);
}

uint64_t acv2::AudioConverterV2::reset(acv2::AudioConverterV2 *this)
{
  v1 = *(this + 5);
  if (*(v1 + 400))
  {
    return 0;
  }

  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  while (v3 != v4)
  {
    result = (*(**v3 + 72))();
    if (result)
    {
      return result;
    }

    v5 = *(*v3 + 104);
    if (v5)
    {
      v5[6] = 0;
      v5[8] = 0;
      ACBaseAudioSpan::resetMetadataEvents((v5 + 6));
      v5[32] = 0;
      v6 = (v5 + 32);
      *(v6 + 2) = 0;
      ACBaseAudioSpan::resetMetadataEvents(v6);
    }

    v3 += 8;
  }

  result = 0;
  *(v1 + 400) = 0;
  *(v1 + 402) = 0;
  return result;
}

void AudioMetadataMemoryPool_AP::AudioMetadataMemoryPool_AP(AudioMetadataMemoryPool_AP *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v1 = this;
  operator new();
}

void sub_18F5FA4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v9 + 24;
  std::vector<std::pair<BOOL,std::shared_ptr<unsigned char []>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

OSStatus AudioUnitReset(AudioUnit inUnit, AudioUnitScope inScope, AudioUnitElement inElement)
{
  if (!inUnit)
  {
    return -50;
  }

  v3 = *&inElement;
  v4 = *&inScope;
  v5 = (*(*inUnit + 8))(inUnit);
  if (!v5)
  {
    return 560947818;
  }

  v6 = v5;
  if (*((**v5)(v5) + 38) != 24949)
  {
    return -3000;
  }

  v7 = *(*((**v6)(v6) + 112) + 104);
  if (!v7)
  {
    return -4;
  }

  v8 = v6[3];

  return v7(v8, v4, v3);
}

OSStatus AudioUnitGetParameter(AudioUnit inUnit, AudioUnitParameterID inID, AudioUnitScope inScope, AudioUnitElement inElement, AudioUnitParameterValue *outValue)
{
  if (!inUnit)
  {
    return -50;
  }

  v6 = *&inElement;
  v7 = *&inScope;
  v8 = *&inID;
  v9 = (*(*inUnit + 8))(inUnit);
  if (!v9)
  {
    return 560947818;
  }

  v10 = v9;
  if (*((**v9)(v9) + 38) != 24949)
  {
    return -3000;
  }

  v11 = *(*((**v10)(v10) + 112) + 80);
  if (!v11)
  {
    return -4;
  }

  v12 = v10[3];

  return v11(v12, v8, v7, v6, outValue);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_18F5FA884(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x193ADF0B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_18F5FA97C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x193ADEE00](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
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

  MEMORY[0x193ADEE10](v20);
  return a1;
}

void sub_18F5FAC4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x193ADEE10](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x18F5FAC20);
}

void *std::ostringstream::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t FetchFormatListFromCodecs(uint64_t (*a1)(void), const AudioFormatInfo *a2, unsigned int a3, unsigned int *a4, AudioFormatListItem *a5)
{
  v24 = 0;
  if (a3 < 0x40)
  {
    LODWORD(v21) = 1969977198;
    v10 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(a2->mASBD.mFormatID, &v21);
    *&inDesc.componentType = 0;
    v11 = OpenCodecComponent(v10, &inDesc, 0x61646563u);
    if (v11)
    {
      goto LABEL_6;
    }

    outInstance = *&inDesc.componentType;
    v24 = *a4;
    v9 = a1();
    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&outInstance);
    if (v9)
    {
      return v9;
    }

    if (!v24)
    {
LABEL_6:
      if (a5)
      {
        v12 = *a4;
      }

      else
      {
        v12 = 0;
      }

      v20 = v12;
      if (OpenCodecComponent(v10, &inDesc, 0x61636463u))
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        outInstance = *&inDesc.componentType;
        v9 = a1();
        AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&outInstance);
        if (v9)
        {
          return v9;
        }

        v14 = 1;
        v13 = v20;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v15 = v13 + v24;
    *a4 = v15;
    if (a5)
    {
      v16 = v21;
      if (v21 != 1969977198 && v15 >= 0x30)
      {
        v17 = 0;
        p_mFormatID = &a5->mASBD.mFormatID;
        do
        {
          *p_mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(*p_mFormatID, v16);
          p_mFormatID += 12;
          ++v17;
        }

        while (v17 < *a4 / 0x30uLL);
      }
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    inDesc.componentFlags = 0;
    inDesc.componentFlagsMask = 0;
    *&inDesc.componentType = *(&a2->mMagicCookieSize + 1);
    inDesc.componentManufacturer = HIDWORD(a2[1].mASBD.mSampleRate);
    Next = AudioComponentFindNext(0, &inDesc);
    if (Next && (outInstance = 0, !AudioComponentInstanceNew(Next, &outInstance)))
    {
      v21 = outInstance;
      v9 = a1();
      AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v21);
    }

    else
    {
      return 4294957891;
    }
  }

  return v9;
}

void sub_18F5FAFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AudioCodecAutoDisposer::~AudioCodecAutoDisposer(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_FormatListSize(const AudioFormatInfo *a1, unsigned int a2, unsigned int *a3)
{
  *a3 = 0;
  if (a1->mASBD.mFormatID == 1836069985)
  {
    v13 = 0;
    v5 = FormatFromESDS(a1->mMagicCookie, a1->mMagicCookieSize, &v13);
    if (v13)
    {
      v6 = v5;
      memset(&v12, 0, 40);
      mMagicCookie = a1->mMagicCookie;
      v12.mMagicCookie = mMagicCookie;
      mMagicCookieSize = a1->mMagicCookieSize;
      v12.mMagicCookieSize = mMagicCookieSize;
      if (v6)
      {
        v10 = 40;
        memset(&v11, 0, sizeof(v11));
        result = AudioFormatProperty_AudioFormatInfoFromESDS(mMagicCookie, mMagicCookieSize, &v10, &v11);
        if (result)
        {
          return result;
        }

        v12.mASBD.mFormatID = v11.mFormatID;
      }

      else
      {
        v12.mASBD.mFormatID = v13;
      }

      return AudioFormatProperty_FormatListSize(&v12, 0x38u, a3);
    }

    else
    {
      return 560360820;
    }
  }

  else
  {

    return FetchFormatListFromCodecs(GetFormatListFromCodec, a1, a2, a3, 0);
  }
}

uint64_t AudioFormatEncryptedFormatTranslator::DecryptFormatID(uint64_t result, int *a2)
{
  v2 = 1633772320;
  *a2 = 1969977198;
  if (result > 1902211170)
  {
    if (result > 2053202274)
    {
      if (result > 2053202799)
      {
        if (result <= 2053464882)
        {
          if (result != 2053202800)
          {
            if (result != 2053319475)
            {
              return result;
            }

            v3 = 2053467747;
            goto LABEL_53;
          }

          v2 = 1633772400;
LABEL_61:
          v3 = 2053467747;
          goto LABEL_64;
        }

        if (result == 2053464883)
        {
          v2 = 1700998451;
          goto LABEL_61;
        }

        if (result != 2053923171)
        {
          return result;
        }

        v3 = 2053467747;
LABEL_55:
        v2 = 1634492771;
        goto LABEL_64;
      }

      if (result == 2053202275)
      {
        goto LABEL_61;
      }

      if (result != 2053202739)
      {
        if (result != 2053202792)
        {
          return result;
        }

        v2 = 1633772392;
        goto LABEL_61;
      }

      v3 = 2053467747;
LABEL_63:
      v2 = 1633889587;
      goto LABEL_64;
    }

    if (result <= 1902537826)
    {
      switch(result)
      {
        case 0x71617063:
          v2 = 1634754915;
          break;
        case 0x71632B33:
          v3 = 1667392371;
LABEL_53:
          v2 = 1700997939;
          goto LABEL_64;
        case 0x71656333:
          v2 = 1700998451;
          break;
        default:
          return result;
      }

      goto LABEL_58;
    }

    if (result == 1902537827)
    {
      v2 = 1718378851;
      goto LABEL_58;
    }

    if (result == 1902928227)
    {
      v3 = 1667392371;
      goto LABEL_55;
    }

    if (result != 1903522657)
    {
      return result;
    }

    v3 = 1667392371;
    goto LABEL_45;
  }

  if (result <= 1885692722)
  {
    if (result > 1885430639)
    {
      switch(result)
      {
        case 0x70616370:
          v2 = 1633772400;
          break;
        case 0x70617063:
          v2 = 1634754915;
          break;
        case 0x70632B33:
          v3 = 1885695587;
          goto LABEL_53;
        default:
          return result;
      }
    }

    else if (result != 1885430115)
    {
      if (result == 1885430579)
      {
        v3 = 1885695587;
        goto LABEL_63;
      }

      if (result != 1885430632)
      {
        return result;
      }

      v2 = 1633772392;
    }

    goto LABEL_50;
  }

  if (result > 1902207794)
  {
    switch(result)
    {
      case 0x71616333:
        v3 = 1667392371;
        goto LABEL_63;
      case 0x71616368:
        v2 = 1633772392;
        break;
      case 0x71616370:
        v2 = 1633772400;
        break;
      default:
        return result;
    }

LABEL_58:
    v3 = 1667392371;
    goto LABEL_64;
  }

  switch(result)
  {
    case 0x70656333:
      v2 = 1700998451;
LABEL_50:
      v3 = 1885695587;
      goto LABEL_64;
    case 0x70757361:
      v3 = 1885695587;
LABEL_45:
      v2 = 1970495843;
LABEL_64:
      *a2 = v3;
      return v2;
    case 0x71616163:
      goto LABEL_58;
  }

  return result;
}

uint64_t OpenCodecComponent(OSType a1, OpaqueAudioComponentInstance **a2, OSType a3)
{
  inDesc.componentFlagsMask = 0;
  inDesc.componentType = a3;
  inDesc.componentSubType = a1;
  *&inDesc.componentManufacturer = 1634758764;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    inDesc.componentManufacturer = 0;
    Next = AudioComponentFindNext(0, &inDesc);
    if (!Next)
    {
      return 4294957891;
    }
  }

  *a2 = 0;
  v5 = AudioComponentInstanceNew(Next, a2);
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -9405;
  }

  if (v5)
  {
    return 4294957891;
  }

  else
  {
    return v6;
  }
}

unint64_t AudioFormatProperty_FirstPlayableFormatFromList(RegistryAccess *a1, AudioFormatListItem *a2, unsigned int *a3)
{
  v5 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v15[0] = &unk_1F033CE48;
  v16 = v15;
  if (a1 == 1 && a2->mASBD.mFormatID == 1819304813)
  {
    v6 = 0;
  }

  else
  {
    RegistryAccess::instance(a1);
    v7 = 1718449215;
    v8 = qword_1ED746318;
    os_unfair_recursive_lock_lock_with_options();
    if (v5)
    {
      v9 = 0;
      p_mFormatID = &a2->mASBD.mFormatID;
      while (1)
      {
        v11 = *p_mFormatID;
        p_mFormatID += 12;
        v12 = (*(*v8 + 16))(v8, v11, 1819304813, 0, 0);
        if (v12)
        {
          if (std::function<BOOL ()(IConverterFactory const*)>::operator()(v16, v12))
          {
            break;
          }
        }

        if (v5 == ++v9)
        {
          goto LABEL_9;
        }
      }

      v7 = (v9 >> 31) & 0x666D743F;
      if ((v9 & 0x80000000) != 0)
      {
        v13 = 0xFFFFFFFF00000000;
      }

      else
      {
        v13 = v9 << 32;
      }
    }

    else
    {
LABEL_9:
      v13 = 0xFFFFFFFF00000000;
    }

    os_unfair_recursive_lock_unlock();
    v6 = v13 | v7;
  }

  std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](v15);
  if (a3)
  {
    *a3 = HIDWORD(v6);
  }

  return v6;
}

void sub_18F5FB69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

OSStatus AudioUnitUninitialize(AudioUnit inUnit)
{
  if (!inUnit)
  {
    return -50;
  }

  v1 = (*(*inUnit + 8))(inUnit);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = *(*((**v2)(v2) + 112) + 8);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

OSStatus AudioConverterDispose(AudioConverterRef inAudioConverter)
{
  ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(v10, inAudioConverter);
  v1 = v14;
  if (v14)
  {
    v2 = *(v14 + 12);
    if (v2 == 1)
    {
      v5[0] = 0;
      v9 = 0;
    }

    else
    {
      v16 = 2741;
      v17 = 0u;
      v18 = 0u;
      kdebug_trace();
      v5[0] = 1;
      v6 = 2741;
      v7 = 0u;
      v8 = 0u;
      v15[0] = 0;
      v9 = 1;
      AT::ScopedTrace::~ScopedTrace(v15);
      v1 = v14;
      if (!v14)
      {
LABEL_11:
        AT::ScopedTrace::~ScopedTrace(v5);
LABEL_12:
        v3 = 0;
        goto LABEL_13;
      }
    }

    if (v12)
    {
      atomic_fetch_add(v12, 0xFFFFFFFF);
      if (v11 == 1)
      {
        v11 = 0;
      }

      v12 = 0;
    }

    BaseOpaqueObject::destroyOpaqueRef(v1);
    (*(*v1 + 8))(v1);
    v14 = 0;
    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = -50;
LABEL_13:
  if (v13 == 1 && v12)
  {
    atomic_fetch_add(v12, 0xFFFFFFFF);
  }

  return v3;
}

void sub_18F5FB978(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F5FB948);
}

void acv2::AudioConverterV2::~AudioConverterV2(acv2::AudioConverterChain **this)
{
  *this = &unk_1F032D4A8;
  std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](this + 5, 0);
  AudioConverterAPI::~AudioConverterAPI(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D4A8;
  std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](this + 5, 0);

  AudioConverterAPI::~AudioConverterAPI(this);
}

void acv2::AudioConverterChain::~AudioConverterChain(acv2::AudioConverterChain *this)
{
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    AudioConverterCapturer::~AudioConverterCapturer(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 40);
  if (v6)
  {
    *(this + 41) = v6;
    operator delete(v6);
  }

  v7 = *(this + 37);
  if (v7)
  {
    *(this + 38) = v7;
    operator delete(v7);
  }

  v8 = (this + 272);
  std::vector<std::unique_ptr<ACOutputBuffer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 232) == 1)
  {
    ACAudioSpan::~ACAudioSpan((this + 128));
  }

  v8 = (this + 104);
  std::vector<std::unique_ptr<acv2::AudioConverterBase>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void ACAudioSpan::~ACAudioSpan(ACAudioSpan *this)
{
  ExtendedAudioBufferList_Destroy(*(this + 12));
  if (*(this + 88) == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](this + 48);
  }
}

uint64_t ExtendedAudioBufferList_Destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) != 1094863915)
    {
      std::terminate();
    }

    if ((atomic_load_explicit(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input, memory_order_acquire) & 1) == 0)
    {
      result = __cxa_guard_acquire(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      if (result)
      {
        _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input = checkEnvVar("AudioBufferMemoryResource_UseMalloc");
        __cxa_guard_release(&_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input);
      }
    }

    if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm36EEEtlA36_cLc65ELc117ELc100ELc105ELc111ELc66ELc117ELc102ELc102ELc101ELc114ELc77ELc101ELc109ELc111ELc114ELc121ELc82ELc101ELc115ELc111ELc117ELc114ELc99ELc101ELc95ELc85ELc115ELc101ELc77ELc97ELc108ELc108ELc111ELc99EEEEEbvE5input == 1)
    {
      default_resource = std::pmr::get_default_resource(result);
    }

    else
    {
      default_resource = caulk::audio_buffer_resource(result);
    }

    v3 = default_resource;
    v4 = *(v1 + 32);
    if (v4)
    {
      (*(*default_resource + 24))(default_resource, v4, *(v1 + 20), 8);
    }

    v5 = *(v1 + 12);
    v6 = *(v1 + 16);
    if (v5)
    {
      std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](v1 + v5);
    }

    v7 = *(*v3 + 24);

    return v7(v3, v1, v6, 8);
  }

  return result;
}

void std::vector<std::unique_ptr<ACOutputBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<ACOutputBuffer>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void acv2::AudioConverterBase::~AudioConverterBase(acv2::AudioConverterBase *this)
{
  *this = &unk_1F033D460;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    AudioConverterCapturer::~AudioConverterCapturer(v2);
    MEMORY[0x193ADF220]();
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    ACAudioSpan::~ACAudioSpan(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    if (*(v4 + 280) == 1)
    {
      std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100]((v4 + 256));
    }

    v5 = *(v4 + 232);
    if (v5)
    {
      *(v4 + 240) = v5;
      operator delete(v5);
    }

    ACAudioSpan::~ACAudioSpan((v4 + 128));
    ACAudioSpan::~ACAudioSpan((v4 + 24));
    ExtendedAudioBufferList_Destroy(*(v4 + 16));
    MEMORY[0x193ADF220](v4, 0x1072C40F2EF4CA8);
  }
}

void AudioConverterAPI::~AudioConverterAPI(AudioConverterAPI *this)
{
  *this = &unk_1F033D040;
  if (*(this + 28) == 1)
  {
    *(this + 28) = 0;
    kdebug_trace();
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t AUOOPWorkgroupManager_RemoveRemoteIOWorkgroup(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAUExtensionScope)
  {
    v2 = *kAUExtensionScope;
    v3 = v2;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 38;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: RemoveRemoteIOWorkgroup called with token %u.", buf, 0x18u);
  }

LABEL_8:
  v5 = auoop::gWorkgroupManager(v2);
  v9 = a1;
  *buf = &unk_1F0337408;
  *&buf[8] = &v9;
  v13 = buf;
  auoop::WorkgroupManager_Base::mutateWorkgroups(v5, buf);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](buf);
  v6 = auoop::tlsWorkgroupPort();
  v7 = *v6;
  *v6 = 0;
  return mach_port_deallocate(*MEMORY[0x1E69E9A60], v7);
}

void sub_18F5FC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<auoop::WorkgroupManager_iOS::removeRemoteIOWorkgroup(unsigned int)::$_0,std::allocator<auoop::WorkgroupManager_iOS::removeRemoteIOWorkgroup(unsigned int)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v4 != v3)
  {
    while (*v4 != **(a1 + 8))
    {
      v4 += 6;
      if (v4 == v3)
      {
        v4 = v3;
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>((v4 + 6), v3, v4);
    v6 = *(a2 + 8);
    if (v6 != v5)
    {
      do
      {
        v7 = v6 - 24;
        objc_destroyWeak((v6 - 8));
        v6 = v7;
      }

      while (v7 != v5);
    }

    *(a2 + 8) = v5;
  }

  return 1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      WeakRetained = objc_loadWeakRetained((v5 + 16));
      objc_storeWeak((a3 + 16), WeakRetained);

      a3 += 24;
      v5 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

void acv2::Reinterleaver::~Reinterleaver(acv2::Reinterleaver *this)
{
  *this = &unk_1F0327440;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0327440;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

void acv2::PCMConverter2::~PCMConverter2(acv2::PCMConverter2 *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t GetMediaServerRPCTimeout(void)
{
  result = gMediaServerTimeout;
  if (gMediaServerTimeout < 0)
  {
    v4 = 0;
    AppIntegerValue = CACFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coreaudio", &v4);
    if (v4)
    {
      if (AppIntegerValue)
      {
        result = (1000 * AppIntegerValue);
      }

      else
      {
        result = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v2 = CACFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coremedia", &v4);
      v3 = 1000 * v2;
      if (!v2)
      {
        v3 = 0x7FFFFFFF;
      }

      if (v4)
      {
        result = v3;
      }

      else
      {
        result = 9000;
      }
    }

    gMediaServerTimeout = result;
  }

  return result;
}

uint64_t CAStreamBasicDescription::PackednessIsSignificant(CAStreamBasicDescription *this)
{
  if (*(this + 2) == 1819304813)
  {
    v1 = *(this + 6);
    if (v1)
    {
      if ((*(this + 12) & 0x20) != 0)
      {
        v2 = 1;
      }

      else
      {
        v2 = *(this + 7);
        if (!v2)
        {
          v1 = 0;
          return v1 != *(this + 8);
        }
      }

      v1 = 8 * (v1 / v2);
    }

    return v1 != *(this + 8);
  }

  v4 = CAVerboseAbort();
  return acv2::AudioConverterBase::AsReinterleaver(v4);
}

void CACFFormatter::CACFFormatter(CACFFormatter *this, const void *a2)
{
  *this = 0;
  v3 = CFStringCreateWithFormat(0, 0, @"%@", a2);
  usedBufLen = 0;
  v6.length = CFStringGetLength(v3);
  v6.location = 0;
  CFStringGetBytes(v3, v6, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
  v4 = malloc_type_malloc(usedBufLen + 1, 0x100004077774924uLL);
  *this = v4;
  CFStringGetCString(v3, v4, usedBufLen + 1, 0x8000100u);
  CFRelease(v3);
}

void sub_18F5FC410(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void auoop::WorkgroupManager_Base::mutateWorkgroups(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  LOBYTE(__p) = 0;
  v43 = 0;
  if (kAUExtensionScope)
  {
    v4 = *kAUExtensionScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUOOPWorkgroups.mm";
    v45 = 1024;
    v46 = 66;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: mutating workgroups.", buf, 0x12u);
  }

LABEL_8:
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 != v7)
  {
    while (1)
    {
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      v9 = WeakRetained == 0;

      if (v9)
      {
        break;
      }

      v6 += 24;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_18;
      }
    }

    if (v6 != v7)
    {
      for (i = v6 + 24; i != v7; i += 24)
      {
        v11 = objc_loadWeakRetained((i + 16));
        v12 = v11 == 0;

        if (!v12)
        {
          *v6 = *i;
          v13 = objc_loadWeakRetained((i + 16));
          objc_storeWeak((v6 + 16), v13);

          v6 += 24;
        }
      }
    }
  }

LABEL_18:
  v14 = *(a1 + 16);
  if (v6 != v14)
  {
    v15 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(*(a1 + 16), *(a1 + 16), v6);
    for (j = *(a1 + 16); j != v15; j -= 24)
    {
      objc_destroyWeak((j - 8));
    }

    *(a1 + 16) = v15;
  }

  v17 = *(a2 + 24);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v18 = (*(*v17 + 48))(v17, a1 + 8) ^ 1;
  if (v6 != v14)
  {
    LOBYTE(v18) = 0;
  }

  if (v18)
  {
    goto LABEL_52;
  }

  if (v43 != 1)
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
    std::vector<auoop::TrackedWorkgroup>::__init_with_size[abi:ne200100]<auoop::TrackedWorkgroup*,auoop::TrackedWorkgroup*>(&__p, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    v43 = 1;
LABEL_52:
    os_unfair_lock_unlock(a1);
    goto LABEL_53;
  }

  if (&__p == (a1 + 8))
  {
    goto LABEL_52;
  }

  v20 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = v19 - v20;
  v22 = v42;
  v23 = __p;
  if (v42 - __p < (v19 - v20))
  {
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          objc_destroyWeak(v24 - 1);
          v24 -= 3;
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
      v22 = 0;
      __p = 0;
      v41 = 0;
      v42 = 0;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
    if (v26 <= 0xAAAAAAAAAAAAAAALL)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v26;
      }

      if (v28 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](v28);
      }
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (v41 - __p >= v21)
  {
    std::__copy_impl::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(*(a1 + 8), *(a1 + 16), __p);
    v35 = v34;
    for (k = v41; k != v35; k -= 3)
    {
      objc_destroyWeak(k - 1);
    }

    v41 = v35;
  }

  else
  {
    v29 = std::__copy_impl::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(*(a1 + 8), v20 + v41 - __p, __p);
    v30 = v41;
    if (v19 != v29)
    {
      do
      {
        v31 = v30;
        *v30 = *v29;
        v32 = (v30 + 2);
        v33 = v29 + 16;
        objc_copyWeak(v30 + 2, (v29 + 16));
        v29 = v33 + 8;
        v30 = (v32 + 8);
      }

      while (v33 + 8 != v19);
      v30 = v31 + 3;
    }

    v41 = v30;
  }

  if (a1)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (v43 == 1)
  {
    v37 = (a1 + 32);
    os_unfair_lock_lock((a1 + 32));
    v39 = *(a1 + 40);
    v38 = *(a1 + 48);
    while (v39 != v38)
    {
      auoop::WorkgroupPropagator::propagate(*v39++, &__p);
    }

    os_unfair_lock_unlock(v37);
    if (v43)
    {
      *buf = &__p;
      std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](buf);
    }
  }
}

void sub_18F5FC8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t *a13)
{
  if (v13)
  {
    os_unfair_lock_unlock(v13);
  }

  if (a12 == 1)
  {
    a13 = &a9;
    std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&a13);
  }

  _Unwind_Resume(exception_object);
}

void auoop::WorkgroupManager_Base::State::addWorkgroup(auoop::WorkgroupManager_Base::State *this, int a2, OS_os_workgroup *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *this;
  v8 = *(this + 1);
  if (v8 != *this)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *this) >> 3);
    do
    {
      v10 = v9 >> 1;
      v11 = v7 + 24 * (v9 >> 1);
      v12 = *(v11 + 8);
      v13 = v11 + 24;
      v9 += ~(v9 >> 1);
      if (v12 > v5)
      {
        v9 = v10;
      }

      else
      {
        v7 = v13;
      }
    }

    while (v9);
    v8 = v7;
  }

  LODWORD(v35) = a2;
  *(&v35 + 1) = v5;
  objc_initWeak(&v36, v5);
  v15 = *(this + 1);
  v14 = *(this + 2);
  if (v15 >= v14)
  {
    v21 = *this;
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *this) >> 3) + 1;
    if (v22 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v21) >> 3);
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

    v40 = this;
    if (v24)
    {
      std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](v24);
    }

    v25 = v8 - v21;
    v26 = 8 * ((v8 - v21) >> 3);
    v37 = 0;
    v38 = v26;
    v39 = v26;
    if (!(0xAAAAAAAAAAAAAAABLL * ((v8 - v21) >> 3)))
    {
      if (v25 < 1)
      {
        if (v8 == v21)
        {
          v29 = 1;
        }

        else
        {
          v29 = 0x5555555555555556 * ((v8 - v21) >> 3);
        }

        v41 = this;
        std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](v29);
      }

      v27 = 1 - 0x5555555555555555 * (v25 >> 3);
      v28 = -3 * (v27 >> 1);
      v26 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(v26, v26, v26 - 24 * (v27 >> 1));
      v38 += 8 * v28;
      *&v39 = v26;
    }

    *v26 = v35;
    objc_moveWeak((v26 + 16), &v36);
    *&v39 = v39 + 24;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<auoop::TrackedWorkgroup>,auoop::TrackedWorkgroup*>(v8, *(this + 1), v39);
    v30 = *this;
    v31 = v38;
    *&v39 = v39 + *(this + 1) - v8;
    *(this + 1) = v8;
    v32 = v31 + v30 - v8;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<auoop::TrackedWorkgroup>,auoop::TrackedWorkgroup*>(v30, v8, v32);
    v33 = *this;
    *this = v32;
    v34 = *(this + 2);
    *(this + 8) = v39;
    *&v39 = v33;
    *(&v39 + 1) = v34;
    v37 = v33;
    v38 = v33;
    std::__split_buffer<auoop::TrackedWorkgroup>::~__split_buffer(&v37);
  }

  else if (v8 == v15)
  {
    *v15 = v35;
    objc_moveWeak((v15 + 16), &v36);
    *(this + 1) = v15 + 24;
  }

  else
  {
    v16 = v15 - 24;
    v17 = *(this + 1);
    if (v15 >= 0x18)
    {
      v17 = *(this + 1);
      do
      {
        *v17 = *v16;
        objc_moveWeak((v17 + 16), (v16 + 16));
        v17 += 24;
        v16 += 24;
      }

      while (v16 < v15);
    }

    *(this + 1) = v17;
    if (v15 != v8 + 24)
    {
      v18 = 0;
      do
      {
        *(v15 + v18 - 24) = *(v15 + v18 - 48);
        WeakRetained = objc_loadWeakRetained((v15 + v18 - 32));
        objc_storeWeak((v15 + v18 - 8), WeakRetained);

        v18 -= 24;
      }

      while (v8 - v15 + 24 != v18);
    }

    *v8 = v35;
    v20 = objc_loadWeakRetained(&v36);
    objc_storeWeak((v8 + 16), v20);
  }

  objc_destroyWeak(&v36);
}

void sub_18F5FCCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__split_buffer<auoop::TrackedWorkgroup>::~__split_buffer(va);
  objc_destroyWeak((v10 + 16));

  _Unwind_Resume(a1);
}

void std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<auoop::TrackedWorkgroup>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<auoop::TrackedWorkgroup>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 3;
        objc_destroyWeak(v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<auoop::TrackedWorkgroup>::__init_with_size[abi:ne200100]<auoop::TrackedWorkgroup*,auoop::TrackedWorkgroup*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<auoop::TrackedWorkgroup>::__vallocate[abi:ne200100](a1, a4);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(uint64_t a1, int a2)
{
  v4 = a2;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (*MEMORY[0x1E69E5020])
  {
    std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(a1, *MEMORY[0x1E69E5020], &v4);
    if (*(a1 + 24))
    {
      *(a1 + 48) = BaseOpaqueObject::checkRTTI();
    }
  }

  return a1;
}

uint64_t std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (*(result + 40) == 1)
  {
    v3 = *(result + 32);
    if (v3)
    {
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }

    *(result + 40) = 0;
  }

  v4 = *a3;
  *result = a2;
  *(result + 8) = v4;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  atomic_fetch_add((a2 + 16), 1u);
  v5 = atomic_load((*result + 8));
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = v4 % v6;
    if ((v4 % v6) >= 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = v7 + v8 - 3;
    v10 = v5 + 16;
    v11 = -1;
    v12 = v4 % v6;
    do
    {
      v13 = v9;
      v14 = atomic_load((v10 + 8 * v12));
      if (v14 == -1)
      {
        if (v11 < 0)
        {
          v11 = v12;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        if (v14[1] == v4)
        {
          *(result + 32) = v14;
          atomic_fetch_add(v14, 1u);
          *(result + 16) = *(*(result + 32) + 8);
          *(result + 24) = 1;
          goto LABEL_22;
        }
      }

      if (v13 >= 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = v6;
      }

      v9 = v13 + v15 - 3;
      v12 = v13;
    }

    while (v13 != v7);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_21:
      *(result + 32) = 0;
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    atomic_fetch_add((*result + 16), 0xFFFFFFFF);
    *(result + 40) = 1;
  }

  return result;
}

uint64_t with_resolved(int a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  ResolvedOpaqueRef<AudioConverterAPI>::ResolvedOpaqueRef(v5, a1);
  v3 = v8;
  if (v8)
  {
    LODWORD(a2) = (*a2)((a2 + 1), v8);
  }

  if (v7 == 1 && v6)
  {
    atomic_fetch_add(v6, 0xFFFFFFFF);
  }

  if (v3)
  {
    return a2;
  }

  else
  {
    return 4294967246;
  }
}

void sub_18F5FD164(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F5FD12CLL);
}

void std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::unique_ptr<acv2::AudioConverterBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t *CA::AudioBuffersBase::AudioBuffersBase(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  ExtendedAudioBufferList_Prepare(a2, a3, *(a2 + 4));
  return a1;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void acv2::Reinterleaver::BuildInverseChannelMap(acv2::Reinterleaver *this)
{
  *(this + 265) = 1;
  memset(*(this + 30), 255, 4 * *(this + 11));
  v2 = *(this + 21);
  if (!v2)
  {
    v2 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(this + 24);
  while (1)
  {
    v6 = *(v5 + 4 * v3);
    if (v6 == -1)
    {
      v4 = 1;
      goto LABEL_7;
    }

    v7 = *(this + 30);
    if (*(v7 + 4 * v6) != -1)
    {
      break;
    }

    *(v7 + 4 * v6) = v3;
    v2 = *(this + 21);
LABEL_7:
    if (++v3 >= v2)
    {
      goto LABEL_11;
    }
  }

  *(this + 265) = 0;
LABEL_11:
  v8 = *(this + 20);
  if (v8)
  {
    if ((*(this + 68) & 0x20) != 0)
    {
      v2 = 1;
    }

    else if (!v2)
    {
      return;
    }

    v9 = v8 / v2;
    v10 = v9 > 8;
    v11 = (1 << v9) & 0x114;
    if (!v10 && v11 != 0)
    {
      if (((*(this + 69) == 1) & v4) == 1 && acv2::Reinterleaver::BuildInverseChannelMap(void)::token[0] != -1)
      {
        dispatch_once(acv2::Reinterleaver::BuildInverseChannelMap(void)::token, &__block_literal_global_2217);
      }

      v13 = *(this + 11);
      if (v13)
      {
        v14 = 0;
        v15 = *(this + 30);
        do
        {
          v16 = *v15++;
          v14 |= v16 == -1;
          --v13;
        }

        while (v13);
        if (((*(this + 69) == 2) & v14) != 0 && acv2::Reinterleaver::BuildInverseChannelMap(void)::token != -1)
        {

          dispatch_once(&acv2::Reinterleaver::BuildInverseChannelMap(void)::token, &__block_literal_global_3);
        }
      }
    }
  }
}

uint64_t acv2::Reinterleaver::StereoDownmixPossible(_DWORD *a1)
{
  v1 = a1[7] == 2 && a1[17] == 1;
  if (v1 && a1[2] == 1819304813)
  {
    v2 = a1[8];
    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];
    v6 = a1[3] & 0xF;
    v7 = v6 == 9 && v4 == 1;
    if (v7 && (v2 == 32 ? (v8 = v3 == 8) : (v8 = 0), v8))
    {
      v9 = a1[12];
      if (v5 == 8 && v9 == 1819304813)
      {
        if ((a1[13] & 0xF) == 9 && a1[15] == 1 && a1[18] == 32 && a1[16] == 4)
        {
          v9 = 1819304813;
          if (a1[14] == 4)
          {
            return 1;
          }
        }

        else
        {
          v9 = 1819304813;
        }
      }
    }

    else
    {
      v9 = a1[12];
    }

    v12 = v6 == 12 && v4 == 1;
    if (v12 && v2 == 16 && v3 == 4 && v5 == 4 && v9 == 1819304813)
    {
      if ((a1[13] & 0xF) == 0xC && a1[15] == 1 && a1[18] == 16 && a1[16] == 2 && a1[14] == 2)
      {
        return 2;
      }
    }

    else
    {
      v17 = v2 == 32 && v12;
      v20 = v17 && v3 == 8 && v5 == 8 && v9 == 1819304813;
      if (v20 && (a1[13] & 0xF) == 0xC && a1[15] == 1 && a1[18] == 32 && a1[16] == 4 && a1[14] == 4)
      {
        return 3;
      }
    }
  }

  return 0;
}

OSStatus AudioConverterSetProperty(AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v8 = inPropertyDataSize;
  v9 = inPropertyID;
  v7 = inPropertyData;
  v5[0] = &v9;
  v5[1] = &v8;
  v5[2] = &v7;
  v6[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
  v6[1] = v5;
  return with_resolved(inAudioConverter, v6);
}

uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>(unsigned int ***a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = ***a1;
  v4 = *(*a1)[2];
  if (!v4)
  {
    v20 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v20 + 88, 16);
    if (!message)
    {
      return 4294967246;
    }

    v11 = message;
    v22 = _os_log_pack_fill(message + 40, v20, 0, &dword_18F5DF000, "PropertyID=%d is NULL", v25);
    *v22 = 67109120;
    v22[1] = v3;
    v7 = 4294967246;
    goto LABEL_14;
  }

  v6 = *v2[1];
  if (v3 == 1668309874)
  {
    if (v6 < 8)
    {
      return 561211770;
    }

    if ((*(*a2 + 104))(a2))
    {
      v7 = (*(*a2 + 56))(a2, 1668309874, v6, v4);
    }

    else
    {
      v7 = 2003329396;
      cf = 0;
      v17 = *v4;
      if (!MediaToolboxLibraryCore(0) || !getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc())
      {
        goto LABEL_21;
      }

      CryptorFromSerializedRecipeSymbolLoc = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc();
      if (!CryptorFromSerializedRecipeSymbolLoc)
      {
        v24 = dlerror();
        abort_report_np("%s", v24);
      }

      v7 = CryptorFromSerializedRecipeSymbolLoc(*MEMORY[0x1E695E480], v17, &cf);
      if (!v7)
      {
        v7 = (*(*a2 + 56))(a2, 1668310371, 8, &cf);
        CFRelease(cf);
      }

      else
      {
LABEL_21:
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v19 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "AudioConverterInternal.cpp";
          v29 = 1024;
          v30[0] = 132;
          _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a limited Cryptor from the context, returning kAudioConverterErr_UnspecifiedError", buf, 0x12u);
        }
      }
    }

    if (v7 != 1886547824)
    {
      return v7;
    }

    v3 = **v2;
    v6 = *v2[1];
    v4 = *v2[2];
  }

  v7 = (*(*a2 + 56))(a2, v3, v6, v4);
  if (v7)
  {
    v8 = (*(*a2 + 104))(a2) ? 15 : 11;
    v9 = _os_log_pack_size();
    v10 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88 + v8, 0);
    if (v10)
    {
      v11 = v10;
      v12 = (v10 + v9 + 88);
      v13 = _os_log_pack_fill(v10 + 40, v9, 0, &dword_18F5DF000, "AudioConverter -> %p: The %s SetProperty call returned %i for property %u with size %u.", v25, cf, *buf, HIDWORD(v28), *(v30 + 2));
      if ((*(*a2 + 104))(a2))
      {
        v14 = "out-of-process";
      }

      else
      {
        v14 = "in-process";
      }

      stpcpy(v12, v14);
      v15 = **v2;
      v16 = *v2[1];
      *v13 = 134219010;
      *(v13 + 4) = a2;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v12;
      *(v13 + 22) = 1024;
      *(v13 + 24) = v7;
      *(v13 + 28) = 1024;
      *(v13 + 30) = v15;
      *(v13 + 34) = 1024;
      *(v13 + 36) = v16;
LABEL_14:
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v11);
    }
  }

  return v7;
}

uint64_t acv2::AudioConverterV2::setProperty(acv2::AudioConverterV2 *this, uint64_t a2, uint64_t a3, AudioChannelLayout *a4)
{
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    v24 = 2737;
    v25 = a2;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    kdebug_trace();
    v17 = 2737;
    v18 = a2;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23[0] = 0;
    AT::ScopedTrace::~ScopedTrace(v23);
    v8 = 1;
  }

  v16[0] = v8;
  v22 = v8;
  if (a4)
  {
    v9 = acv2::AudioConverterChain::SetProperty(*(this + 5), a2, a3, a4);
  }

  else
  {
    v11 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v11 + 88, 16);
    if (message)
    {
      v13 = message;
      v14 = _os_log_pack_fill(message + 40, v11, 0, &dword_18F5DF000, "PropertyID=%d is NULL", v15);
      *v14 = 67109120;
      v14[1] = a2;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v13);
    }

    v9 = 4294967246;
  }

  if (v22 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v16);
  }

  return v9;
}