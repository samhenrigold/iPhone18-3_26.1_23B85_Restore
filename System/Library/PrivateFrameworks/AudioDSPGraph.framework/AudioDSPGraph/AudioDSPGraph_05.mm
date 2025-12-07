OpaqueAudioComponentInstance *AudioDSPGraph::Boxes::AUBox::close(AudioDSPGraph::Boxes::AUBox *this)
{
  result = *(this + 105);
  if (result)
  {
    v3 = AudioComponentInstanceDispose(result);
    *(this + 105) = 0;

    return AudioDSPGraph::Boxes::Detail::throwOnError(v3, "AudioUnitProcessMultiple", this + 5, off_1E8334A10);
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::AUBox::open(uint64_t this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 840))
  {
    return this;
  }

  v1 = this;
  Next = AudioComponentFindNext(0, (this + 816));
  if (!Next)
  {
    v23 = 0;
    v18 = cf;
    LODWORD(v15.__r_.__value_.__l.__data_) = 0;
    v25 = v1 + 5;
    *&v26 = &v15;
    *(&v26 + 1) = &v23;
    v27 = &v18;
    std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const>(unsigned long long &,std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>> *,std::string const &)::{lambda(void)#1}::operator()(&v25);
    v25 = v29;
    v26 = xmmword_1C925F110;
    v27 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v28 = 0;
    __p = v29;
    v18 = 1;
    v19 = cf;
    v20 = v23;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v25, "AudioComponentFindNext error in {}", 34, &v18);
    std::string::basic_string<std::string_view,0>(__dst, __p, *(&v26 + 1));
    if (__p != v29)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1633906209, __dst, off_1E83349C8);
  }

  v3 = (v1 + 105);
  v4 = AudioComponentInstanceNew(Next, v1 + 105);
  v5 = v4;
  if (v4)
  {
    AudioDSPGraph::Boxes::Detail::throwOnError(v4, "AudioComponentInstanceNew", v1 + 5, off_1E83349E0);
  }

  if (!*v3)
  {
    AudioDSPGraph::stringFromFourCharCode<int>(&v15, v5);
    v24[0] = 0;
    std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(v24, cf, &v15, v1 + 5);
    v25 = v29;
    v26 = xmmword_1C925F110;
    v27 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v28 = 0;
    __p = v29;
    v18 = 2;
    v19 = cf;
    v20 = v24[0];
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v25, "AudioComponentInstanceNew error {} in {}", 40, &v18);
    std::string::basic_string<std::string_view,0>(v16, __p, *(&v26 + 1));
    if (__p != v29)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1633906209, v16, off_1E83349F8);
  }

  v6 = AudioComponentInstanceCanDo(*v3, 20) && ((v1[10] - v1[9]) & 0x1FFFFFFFE0) == 0x20 && ((v1[13] - v1[12]) & 0x1FFFFFFFE0) == 32;
  *(v1 + 848) = v6;
  v7 = *(v1 + 63);
  v8 = (v1 + 5);
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  v8 = v1[5];
  if (v8)
  {
    v7 = v1[6];
LABEL_13:
    v9 = CFStringCreateWithBytes(0, v8, v7, 0x8000100u, 0);
    cf[0] = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_14;
  }

  v9 = 0;
  cf[0] = 0;
LABEL_14:
  v25 = v9;
  ((*v1)[39])(v1, 54, 0, 0, 8, &v25);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v10 = (v1[10] - v1[9]) >> 5;
  LODWORD(v25) = v10;
  v11 = (v1[13] - v1[12]) >> 5;
  LODWORD(v18) = 0;
  LODWORD(v15.__r_.__value_.__l.__data_) = 0;
  v21 = 4;
  LODWORD(cf[0]) = v11;
  ((*v1)[38])(v1, 11, 1, 0, &v21, &v18);
  this = ((*v1)[38])(v1, 11, 2, 0, &v21, &v15);
  if (v18 != v10)
  {
    v12 = ((*v1)[39])(v1, 11, 1, 0, 4, &v25);
    this = AudioDSPGraph::Boxes::Detail::throwOnError(v12, "AudioUnitSetProperty", v1 + 5, off_1E8334AA0);
  }

  if (LODWORD(v15.__r_.__value_.__l.__data_) != v11)
  {
    v13 = ((*v1)[39])(v1, 11, 2, 0, 4, cf);
    return AudioDSPGraph::Boxes::Detail::throwOnError(v13, "AudioUnitSetProperty", v1 + 5, off_1E8334AB8);
  }

  return this;
}

void sub_1C9206880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(void *result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = *(a3 + 23);
  v5 = v4;
  v6 = *a3;
  v7 = a3[1];
  *result = 13;
  if ((v4 & 0x80u) != 0)
  {
    v4 = v7;
  }

  if (v5 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  *a2 = v8;
  a2[1] = v4;
  v9 = *(a4 + 23);
  v10 = v9;
  v11 = *a4;
  v12 = a4[1];
  *result |= 0x1A0uLL;
  if ((v9 & 0x80u) != 0)
  {
    v9 = v12;
  }

  if (v10 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = v11;
  }

  a2[2] = v13;
  a2[3] = v9;
  return result;
}

void AudioDSPGraph::Boxes::AUBox::decompileBox(uint64_t a1, void *a2, char a3)
{
  v5 = (a1 + 40);
  if (a3)
  {
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    v10 = *(a1 + 64);
    std::string::basic_string[abi:ne200100]<0>(v16, v5);
    AudioDSPGraph::asDecompileString(&__p, v16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v19, "box %qu %s ", v11, v10, p_p);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v19;
    }

    else
    {
      v8 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    std::string::basic_string[abi:ne200100]<0>(v16, v5);
    AudioDSPGraph::asDecompileString(&__p, v16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v19, "box %s ", v6, v7);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v19;
    }

    else
    {
      v8 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v8, size);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  AudioDSPGraph::printACD(a2, (a1 + 816), 0);
  caulk::make_string(&v19, " %u %u\n", v13, (*(a1 + 80) - *(a1 + 72)) >> 5, (*(a1 + 104) - *(a1 + 96)) >> 5);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v19.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v14, v15);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1C9206B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::AUBox::getFormatFromUnit@<X0>(AudioUnit *this@<X0>, AudioUnitScope inScope@<W1>, AudioUnitElement inElement@<W2>, void *a4@<X8>)
{
  a4[4] = 0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  ioDataSize = 40;
  Property = AudioUnitGetProperty(this[105], 8u, inScope, inElement, a4, &ioDataSize);
  return AudioDSPGraph::Boxes::Detail::throwOnError(Property, "AudioUnitGetProperty", this + 5, off_1E8334A88);
}

uint64_t AudioDSPGraph::Boxes::AUBox::setFormatOnUnit(AudioUnit *this, const AudioStreamBasicDescription *inData, AudioUnitScope a3, AudioUnitElement a4)
{
  v5 = AudioUnitSetProperty(this[105], 8u, a3, a4, inData, 0x28u);

  return AudioDSPGraph::Boxes::Detail::throwOnError(v5, "AudioUnitGetProperty", this + 5, off_1E8334A70);
}

void AudioDSPGraph::Boxes::AUBox::getComponentName(AudioComponentInstance *this@<X0>, uint64_t a2@<X8>)
{
  Component = AudioComponentInstanceGetComponent(this[105]);
  if (Component && (outName = 0, !AudioComponentCopyName(Component, &outName)))
  {
    v10 = outName;
    if (!outName)
    {
      goto LABEL_10;
    }

    v4 = CFGetTypeID(outName);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (!v10)
    {
LABEL_10:
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(&v8, v10);
    *a2 = v8;
    v5 = v10;
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void sub_1C9206D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

const void *AudioDSPGraph::Boxes::AUBox::getPreset@<X0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, CFTypeRef *a2@<X8>)
{
  cf = 0;
  v9 = 8;
  v3 = (*(*this + 304))(this, 0, 0, 0, &v9, &cf);
  if (v3)
  {
    v6 = v3;
    std::string::basic_string[abi:ne200100]<0>(v8, "AudioUnitGetProperty ClassInfo");
    AudioDSPGraph::ThrowException(v6, v8, off_1E8334968);
  }

  result = cf;
  *a2 = cf;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_1C9206EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v15);
  _Unwind_Resume(a1);
}

unint64_t AudioDSPGraph::Boxes::AUBox::getPropertyInfo(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(this[105], a2, a3, a4, &outDataSize, &outWritable);
  v5 = (outWritable != 0) << 32;
  if (PropertyInfo)
  {
    v6 = PropertyInfo;
  }

  else
  {
    v6 = outDataSize;
  }

  if (PropertyInfo)
  {
    v5 = 0;
  }

  return v5 | v6;
}

__n128 AudioDSPGraph::Boxes::AUBox::desc@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[51];
  *a2 = result;
  a2[1].n128_u32[0] = this[52].n128_u32[0];
  return result;
}

BOOL AudioDSPGraph::Boxes::AUBox::usesFixedBlockSize(uint64_t **this)
{
  v4 = 4;
  v5 = 0;
  ((*this)[38])(this, 3700, 0, 0, &v4, &v5);
  v2 = ((*this)[38])(this, 3700, 0, 0, &v4, &v5);
  AudioDSPGraph::Boxes::Detail::throwOnError(v2, "AudioUnitGetProperty", this + 5, off_1E8334A58);
  return v5 != 0;
}

uint64_t AudioDSPGraph::Boxes::AUBox::setUsesFixedBlockSize(AudioDSPGraph::Boxes::AUBox *this, int a2)
{
  result = (*(*this + 296))(this, 3700, 0, 0);
  if ((v5 & 1) != 0 && (result & 0x100000000) != 0)
  {
    v6 = a2;
    return (*(*this + 312))(this, 3700, 0, 0, 4, &v6);
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::AUBox::getParameterInfo@<X0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 104;
  result = (*(*this + 304))();
  if (result)
  {
    v4 = 0;
    *a2 = result;
  }

  else
  {
    v5 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v5;
    *(a2 + 96) = v15;
    v6 = v10;
    *a2 = v9;
    *(a2 + 16) = v6;
    v7 = v12;
    v4 = 1;
    *(a2 + 32) = v11;
    *(a2 + 48) = v7;
  }

  *(a2 + 104) = v4;
  return result;
}

void sub_1C92072E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double AudioDSPGraph::Boxes::AUBox::getParameterList@<D0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*this + 296))(this, 3, a2, 0);
  if ((v8 & 1) != 0 && (v9 = v6, v6 > 3))
  {
    std::vector<unsigned int>::vector[abi:ne200100](__p, v6 >> 2);
    v10 = v9 & 0xFFFFFFFC;
    if ((*(*this + 304))(this, 3, a2, 0, &v10, __p[0]))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      result = *__p;
      *a3 = *__p;
      a3[2] = v12;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_1C9207410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *AudioDSPGraph::Error::setDescription<>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 1)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

  (*(*v4 + 24))(*(a1 + 16));
  (**v4)(v4);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
LABEL_5:
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
    return a1;
  }

  __break(1u);
  return result;
}

void AudioDSPGraph::Error::~Error(AudioDSPGraph::Error *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
LABEL_6:
    *(this + 2) = 0;
    return;
  }

  if (v2 == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 24))(*(this + 2));
      (**v3)(v3);
      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return;
      }

      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v3);
      goto LABEL_6;
    }
  }
}

void AudioDSPGraph::Boxes::AUBox::setParameter(AudioUnit *this@<X0>, AudioUnitParameterValue a2@<S0>, AudioUnitParameterID a3@<W1>, AudioUnitScope a4@<W2>, AudioUnitElement a5@<W3>, UInt32 a6@<W4>, uint64_t a7@<X8>)
{
  v12 = AudioUnitSetParameter(this[105], a3, a4, a5, a2, a6);
  if (v12)
  {
    v15.mEventType = v12;
    v15.mArgument.mParameter.mAudioUnit = off_1E8334938;
    *&v15.mArgument.mProperty.mPropertyID = 0;
    v15.mArgument.mParameter.mElement = 0;
    AudioDSPGraph::Error::setDescription<>(&v15, "AudioUnitSetParameter");
    *a7 = *&v15.mEventType;
    v13 = *&v15.mArgument.mProperty.mPropertyID;
    *&v15.mArgument.mProperty.mPropertyID = 0;
    *(a7 + 16) = v13;
    LODWORD(v13) = v15.mArgument.mParameter.mElement;
    v15.mArgument.mParameter.mElement = 0;
    *(a7 + 24) = v13;
    *(a7 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v15);
  }

  else
  {
    v14 = this[2];
    if (v14)
    {
      if (*(v14 + 926) == 1)
      {
        memset(&v15, 0, sizeof(v15));
        v15.mArgument.mParameter.mAudioUnit = this[105];
        *&v15.mArgument.mProperty.mPropertyID = __PAIR64__(a4, a3);
        v15.mArgument.mParameter.mElement = a5;
        AUEventListenerNotify(0, 0, &v15);
      }
    }

    *(a7 + 32) = 1;
  }
}

uint64_t AudioDSPGraph::Boxes::AUBox::selfTailTimeInTicks(AudioDSPGraph::Boxes::AUBox *this)
{
  v8 = 0.0;
  v7 = 8;
  v2 = (*(*this + 304))(this, 20, 0, 0, &v7, &v8);
  v3 = v8;
  if (v2)
  {
    v3 = 0.0;
  }

  v4 = llround(v3 * *(*(this + 2) + 848));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t AudioDSPGraph::Boxes::AUBox::selfLatencyInTicks(AudioDSPGraph::Boxes::AUBox *this)
{
  v8 = 0.0;
  v7 = 8;
  v2 = (*(*this + 304))(this, 12, 0, 0, &v7, &v8);
  v3 = v8;
  if (v2)
  {
    v3 = 0.0;
  }

  v4 = llround(v3 * *(*(this + 2) + 848));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

BOOL AudioDSPGraph::Boxes::AUBox::isBypassed(AudioDSPGraph::Boxes::AUBox *this)
{
  v4 = 0;
  v3 = 4;
  if ((*(*this + 304))(this, 21, 0, 0, &v3, &v4))
  {
    v1 = 1;
  }

  else
  {
    v1 = v4 == 0;
  }

  return !v1;
}

uint64_t AudioDSPGraph::Boxes::AUBox::print(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4;
    v6 = result;
    AudioDSPGraph::Box::print(result, a2, a3, a4);
    AudioDSPGraph::printi(a2, v4 + 4, "AU %p\n", *(v6 + 840));
  }

  return result;
}

void AudioDSPGraph::Boxes::AUBox::~AUBox(AudioDSPGraph::Boxes::AUBox *this)
{
  *this = &unk_1F48CCA58;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CCA58;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::Boxes::AverageBox::process(AudioDSPGraph::Boxes::AverageBox *this, char *a2)
{
  v2 = a2;
  AudioDSPGraph::Boxes::SumBox::process(this, a2);
  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v13 = (this + 40);
    if (*(this + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string(&v16, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v13, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v16, off_1E8337C78);
  }

  v6 = *(*(v5 + 16) + 56);
  if ((*(v6 + 72) & 0x10) == 0)
  {
    v7 = *(v6 + 80);
    v8 = *(this + 9);
    v9 = *(this + 10);
    v10 = (v9 - v8) >> 5;
    if (v10 < 2)
    {
      if (v9 == v8)
      {
        v14 = (v9 - v8) >> 5;
        v15 = (this + 40);
        if (*(this + 63) < 0)
        {
          v15 = *v15;
        }

        caulk::make_string(&v16, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v15, v14, 0);
        AudioDSPGraph::ThrowException(1919837985, &v16, off_1E8337C60);
      }

      *&v16.__r_.__value_.__l.__data_ = 1.0 / **(*(*(v8 + 16) + 56) + 80);
      MEMORY[0x1CCA853E0](*(v7 + 2), 1, &v16, *(v7 + 2), 1, v2);
    }

    else
    {
      *&v16.__r_.__value_.__l.__data_ = 1.0 / v10;
      if (*v7)
      {
        v11 = 0;
        v12 = 4;
        do
        {
          MEMORY[0x1CCA853E0](*&v7[v12], 1, &v16, *&v7[v12], 1, v2);
          ++v11;
          v12 += 4;
        }

        while (v11 < *v7);
      }
    }
  }
}

void sub_1C9207D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::AverageBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.15583197e161;
  *a1 = xmmword_1C925F1A0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::AverageBox::~AverageBox(AudioDSPGraph::Boxes::AverageBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void *AudioDSPGraph::Boxes::SumBox::SumBox(void *a1, uint64_t a2, uint64_t a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, a3, 1u);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D3498;
  return a1;
}

void sub_1C9207E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::uninitializePropertyTaps(uint64_t this)
{
  v1 = *(this + 184);
  v2 = *(this + 192);
  while (v1 != v2)
  {
    *(v1 + 48) = *(v1 + 40);
    v1 += 64;
  }

  return this;
}

void AudioDSPGraph::Box::initializePropertyTaps(AudioDSPGraph::Box *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(this + 23);
  v2 = *(this + 24);
  while (v1 != v2)
  {
    v3 = (*(**v1 + 296))(*v1, *(v1 + 2), *(v1 + 3), *(v1 + 4));
    if ((v4 & 1) == 0)
    {
      v7 = v3;
      v9 = *v1;
      v8 = v1 + 1;
      v10 = (v9 + 40);
      if (*(v9 + 63) < 0)
      {
        v10 = *v10;
      }

      __dst[2] = 492;
      v12[0] = v10;
      v12[2] = v8;
      v12[3] = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<AudioDSPGraph::PropertySpec>(AudioDSPGraph::PropertySpec &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
      v12[4] = 492;
      *__c = v17;
      *__len = xmmword_1C925F110;
      v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v16 = 0;
      __p = v17;
      __dst[0] = 2;
      __dst[1] = v12;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__c, "'{}' failed to get property info for {}", 39, __dst);
      std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
      if (__p != v17)
      {
        operator delete(__p);
      }

      AudioDSPGraph::ThrowException(v7, __dst, off_1E8334BD8);
    }

    v5 = v1[5];
    if (v1[6] - v5 != v3)
    {
      v1[6] = v5;
      LOBYTE(__c[0]) = 0;
      v6 = v3;
      if (v3)
      {
        if (v1[7] - v5 < v3)
        {
          operator new();
        }

        bzero(v5, v3);
        v1[6] = &v5[v6];
      }
    }

    v1 += 8;
  }
}

uint64_t *std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<AudioDSPGraph::PropertySpec>(AudioDSPGraph::PropertySpec &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v9[9] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a3[1];
  v9[0] = *a3;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = 0;
  v6 = a3[2];
  v9[5] = 0;
  v9[6] = 6342;
  v9[4] = v6;
  v8[0] = 3;
  v8[1] = v9;
  v8[2] = 6342;
  result = std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v4, "ID {}, scope {}, element {}", 27, v8);
  *a2 = result;
  return result;
}

void AudioDSPGraph::Box::uninitializeAnalyzers(std::mutex *this)
{
  v9 = *MEMORY[0x1E69E9840];
  std::mutex::lock(this + 4);
  sig = this[5].__m_.__sig;
  for (i = *this[5].__m_.__opaque; sig != i; sig += 8)
  {
    caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(&this[5].__m_.__opaque[24], *(*sig + 24));
    v4 = *sig;
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v5 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v4 + 56);
      if (*(v4 + 79) < 0)
      {
        v6 = *v6;
      }

      *buf = 136315138;
      v8 = v6;
      _os_log_debug_impl(&dword_1C91AE000, v5, OS_LOG_TYPE_DEBUG, "Analyzer::uninitialize %s", buf, 0xCu);
    }
  }

  std::mutex::unlock(this + 4);
}

uint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(unint64_t a1, int a2)
{
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v17 = a2;
  v4 = -1;
  v5 = 40;
  do
  {
    v6 = atomic_load((a1 + v5));
    ++v4;
    v5 += 16;
  }

  while (*((v6 & 0xFFFFFFFFFFFFFFFCLL) + 14) != 2);
  v7 = a1;
  if (v4)
  {
    v7 = a1;
    do
    {
      v7 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, v4--, v7, &v17);
    }

    while (v4);
  }

  v8 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, 0, v7, &v17);
  v10 = *(v9 + 8);
  if (v10 == a2)
  {
    v11 = v9;
    v12 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, 0, v8, v9);
    v14 = v13;
    if (!v13)
    {
      caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, 0, v12, v11);
    }

    if ((v14 & 0x100000000) != 0 && v11)
    {
      v16 = a2;
      caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v16, 0);
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, v10);
}

uint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(unint64_t a1, _DWORD *a2, unint64_t a3)
{
  v6 = -1;
  v7 = 40;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 14) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, a3, v9, a2);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = atomic_load((v2 + 16));
      v5 = *(v3 + 32);
      if (*(v5 + 32) == 1 && !*(v2 + 14))
      {
        (*v5)(v3 + 40, v2);
      }

      result = caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(v3 + 16), v2, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * *(v2 + 12) - 8]);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

unint64_t caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  _X4 = a2;
  v4 = 0;
  while (*&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v4] < a3)
  {
    if (++v4 == 10)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v7 = a1 + 32 * v4 + 48;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, a2);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X4);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      v17 = _X2 ^ result;
      result = _X2;
    }

    while (v17);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

uint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(unint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 24));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 >= *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 8))
  {
    do
    {
      v10 = atomic_load((v6 + 24));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 24));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 >= *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  return v4;
}

uint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 24);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 32));
        v13 = atomic_load((a3 + 16 * a2 + 24));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *(a4 + 8);
    while (1)
    {
      v15 = atomic_load((a3 + 16 * a2 + 24));
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 <= *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 8))
      {
        break;
      }

      v17 = atomic_load((v16 + 24));
      if (v17)
      {
        a3 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, a3, v16);
        if (!v18)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, a3, v16);
        }
      }

      else
      {
        a3 = v16;
      }
    }
  }

  while (v16 == a4);
  return a3;
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 24);
  atomic_store(a3, (v8 + 32));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 24), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 15), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 16));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 16));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

uint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(unint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 24));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 > *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 8))
  {
    do
    {
      v10 = atomic_load((v6 + 24));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 24));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 > *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  return v4;
}

void AudioDSPGraph::Box::initializeAnalyzers(AudioDSPGraph::Box *this)
{
  std::mutex::lock(this + 4);
  v2 = *(this + 40);
  v3 = *(this + 41);
  if (v2 == v3)
  {
    goto LABEL_81;
  }

  v55 = *(this + 41);
  do
  {
    v4 = *(*v2 + 24);
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v64.__r_.__value_.__l.__data_) = v4;
    v5 = *(caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 352, &v64, 0) + 8);
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 576, v6);
    if (v5 == v4)
    {
      goto LABEL_80;
    }

    v8 = *v2;
    v9 = *(*v2 + 80);
    v10 = *(this + 12);
    v11 = (*(this + 13) - v10) >> 5;
    if (v11 <= v9)
    {
      v54 = (this + 40);
      if (*(this + 63) < 0)
      {
        v54 = *v54;
      }

      caulk::make_string(&v64, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v7, v54, v11, v9);
      AudioDSPGraph::ThrowException(1919837985, &v64, off_1E8337C78);
    }

    v12 = *(v10 + 32 * v9 + 16);
    if (!v12)
    {
      std::string::basic_string[abi:ne200100]<0>(v63, "Box::initializeAnalyzers, Port Not Connected to Box.");
      AudioDSPGraph::ThrowException(1970168609, v63, off_1E8334B00);
    }

    *(v8 + 8) = v12;
    *(v8 + 16) = this;
    v13 = *(v8 + 24);
    if (*(this + 90) >= v13 || *(this + 136) <= v13)
    {
      __break(1u);
      return;
    }

    v58 = v8;
    v59 = v2;
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v64.__r_.__value_.__l.__data_) = v13;
    v14 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 352, &v64, 0);
    v16 = *(v14 + 8);
    v60 = v13;
    if (v16 == v13)
    {
      goto LABEL_79;
    }

    v17 = v14;
    v18 = v15;
    v19 = 0;
    v20 = 0;
    for (i = 1; i != 9; ++i)
    {
      if (i == 1)
      {
        caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v22 = 0;
        while (1)
        {
          v23 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v22 + 2504;
          if ((atomic_exchange(v23, 1u) & 1) == 0)
          {
            break;
          }

          v22 += 2512;
          if (v22 == 10048)
          {
            v22 = 0;
          }
        }

        v20 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v22), &qword_1EC395550);
        atomic_store(0, v23);
        v19 = 3;
      }

      if ((v19 & ~v20) != 0)
      {
        break;
      }

      v19 *= 4;
    }

    v24 = 0;
    v25 = *(this + 74);
    while (1)
    {
      v26 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v24];
      if (v26 >= *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * i - 8])
      {
        break;
      }

      if (++v24 == 10)
      {
        v27 = 0;
        goto LABEL_51;
      }
    }

    v28 = v25 + 32 * v24 + 48;
    v29 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
    if (v29)
    {
      v27 = v29;
      atomic_fetch_add((v28 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      atomic_fetch_add((v25 + 36), 0x801u);
      explicit = *(v25 + 24);
      if (explicit)
      {
        v56 = 0;
      }

      else
      {
        explicit = atomic_load_explicit((v25 + 16), memory_order_acquire);
        v56 = explicit;
      }

      v61 = v25;
      if (explicit)
      {
        v31 = explicit;
        while (1)
        {
          v32 = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v31 + 2, v26);
          if (v32)
          {
            break;
          }

          v31 = atomic_load(v31);
          if (!v31)
          {
            v31 = atomic_load_explicit((v25 + 16), memory_order_acquire);
            v56 = v31;
          }

          if (v31 == explicit)
          {
            v33 = atomic_load_explicit((v25 + 16), memory_order_acquire);
            goto LABEL_36;
          }
        }

        v27 = v32;
      }

      else
      {
        v33 = 0;
LABEL_36:
        v57 = v33;
        if (!v33)
        {
          goto LABEL_44;
        }

        v31 = v33;
        if (v33 == v56)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v34 = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v31 + 2, v26);
          if (v34)
          {
            break;
          }

          v31 = atomic_load(v31);
          if (v31)
          {
            v35 = v56 == v31;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
LABEL_44:
            while (1)
            {
              v36 = v61;
              v31 = caulk::alloc::details::caching_page_allocator_base::allocate(*(v61 + 8));
              *v31 = 0;
              v31[1] = v37;
              v31[2] = 0;
              __dmb(0xBu);
              v38 = v57;
              atomic_store(v57, v31);
              v39 = (v36 + 16);
              v33 = v38;
              atomic_compare_exchange_strong(v39, &v33, v31);
              if (v33 != v38)
              {
                break;
              }

              v34 = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v31 + 2, v26);
              if (v34)
              {
                goto LABEL_48;
              }
            }

            caulk::alloc::details::caching_page_allocator_base::deallocate();
            v56 = v57;
            goto LABEL_36;
          }
        }

LABEL_48:
        v27 = v34;
      }

      *(v61 + 24) = v31;
      atomic_fetch_add((v61 + 36), 0xFFFFFFFF);
    }

LABEL_51:
    *(v27 + 12) = i;
    *(v27 + 13) = 1;
    *(v27 + 15) = i;
    *(v27 + 8) = v60;
    *v27 = v58;
    *(v27 + 24) = 0;
    v62 = (v27 + 24);
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    if (i)
    {
      v40 = (v27 + 32);
      v41 = i;
      do
      {
        atomic_store(0, v40 - 1);
        atomic_store(0, v40);
        v40 += 2;
        --v41;
      }

      while (v41);
    }

    v42 = 0;
    __dmb(0xBu);
    while (2)
    {
      if (*(v17 + 8) == *(v27 + 8))
      {
        v43 = 0;
        goto LABEL_74;
      }

      while (1)
      {
        v44 = (v17 + 16 * v42 + 24);
        v45 = atomic_load(v44);
        if ((v45 & 2) == 0)
        {
          break;
        }

        caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 352, v42, v17, v45 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_65:
        v49 = *(v27 + 8);
        while (1)
        {
          v50 = atomic_load((v17 + 16 * v42 + 24));
          v18 = v50 & 0xFFFFFFFFFFFFFFFCLL;
          if (v49 < *((v50 & 0xFFFFFFFFFFFFFFFCLL) + 8))
          {
            break;
          }

          v51 = atomic_load((v18 + 24));
          if (v51)
          {
            v17 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(this + 352, v42, v17, v18);
            if (!v52)
            {
              caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 352, v42, v17, v18);
            }
          }

          else
          {
            v17 = v18;
          }
        }

        if (*(v17 + 8) == *(v27 + 8))
        {
          v43 = 0;
          goto LABEL_74;
        }
      }

      atomic_store(v18, &v62[2 * v42]);
      v46 = v18;
      atomic_compare_exchange_strong(v44, &v46, v27);
      if (v46 != v18)
      {
        if ((v46 & 2) != 0)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 352, v42, v17, v46 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v47 = atomic_load(v44);
        if (v47)
        {
          do
          {
            v17 = atomic_load((v17 + 16 * v42 + 32));
            v48 = atomic_load((v17 + 16 * v42 + 24));
          }

          while ((v48 & 1) != 0);
        }

        goto LABEL_65;
      }

      v43 = v27;
LABEL_74:
      if (v43 | v42)
      {
        v16 = atomic_load(v62);
        if ((v16 & 1) == 0 && ++v42 != i)
        {
          LODWORD(v64.__r_.__value_.__l.__data_) = v60;
          v17 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 352, &v64, v42);
          v18 = v53;
          continue;
        }
      }

      else
      {
        caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(this + 74), v27, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * *(v27 + 12) - 8]);
      }

      break;
    }

LABEL_79:
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 576, v16);
    v2 = v59;
    v3 = v55;
LABEL_80:
    ++v2;
  }

  while (v2 != v3);
LABEL_81:

  std::mutex::unlock(this + 4);
}

void sub_1C920906C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v30 + 4);
  _Unwind_Resume(a1);
}

unint64_t *caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load(result);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

char *caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(atomic_ullong *a1, unint64_t a2)
{
  v2 = (a2 + 7) & 0x7FF8;
  v3 = a2 > 0x3FF0 || v2 == 0;
  if (v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = ~(a1 + 23 + *a1) & 7;
  v6 = *a1 + v2 + v5;
  if (v6 > 0x3FE0)
  {
    return 0;
  }

  v8 = *a1;
  atomic_compare_exchange_strong(a1, &v8, v6);
  if (v8 != v4)
  {
    do
    {
      v5 = ~(a1 + 23 + v8) & 7;
      v9 = v8 + v2 + v5;
      if (v9 >= 0x3FE1)
      {
        return 0;
      }

      v4 = v8;
      v10 = v8;
      atomic_compare_exchange_strong(a1, &v10, v9);
      v3 = v10 == v8;
      v8 = v10;
    }

    while (!v3);
  }

  result = a1 + v4 + v5 + 16;
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random();
  }
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a2)
{
  result = a2[1];
  v4 = result - *a2;
  if (result != *a2)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v11;
      }

      while (v12 >= v5);
      return *a2 + v12;
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random()
{
  v0 = 0;
  v1 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine;
  do
  {
    v2 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v0;
    v3 = 5489;
    *(&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v0) = 5489;
    for (i = 1; i != 624; ++i)
    {
      v3 = i + 1812433253 * (v3 ^ (v3 >> 30));
      v1[i] = v3;
    }

    *(v2 + 312) = 0;
    v2[2504] = 0;
    v0 += 2512;
    v1 += 628;
  }

  while (v0 != 10048);
  v5 = 0;
  qword_1EC395550 = 0xFFFFFFFF00000000;
  v6 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine;
  do
  {
    LODWORD(result) = mach_absolute_time();
    *(&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v5) = result;
    for (j = 1; j != 624; ++j)
    {
      result = j + 1812433253 * (result ^ (result >> 30));
      v6[j] = result;
    }

    *(&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v5 + 2496) = 0;
    v5 += 2512;
    v6 += 628;
  }

  while (v5 != 10048);
  return result;
}

uint64_t AudioDSPGraph::Box::uninitialize(AudioDSPGraph::Box *this)
{
  v2 = *(this + 26);
  v3 = *(this + 27);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    *(*v2 + 16) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v7 = v4[6];
      ;
    }

    v4[7] = v7;
    AudioDSPGraph::SimpleABL::free((v4 + 9));
    v2 += 8;
  }

  v8 = *(this + 29);
  v9 = *(this + 30);
  while (v8 != v9)
  {
    v10 = *v8;
    AudioDSPGraph::SimpleABL::free((*v8 + 16));
    v12 = *(v10 + 80);
      ;
    }

    *(v10 + 88) = v12;
    ++v8;
  }

  result = (*(*this + 584))(this);
  if (*(this + 752) == 1)
  {
    *(this + 752) = 0;
  }

  return result;
}

uint64_t AudioDSPGraph::Box::initialize(AudioDSPGraph::Box *this)
{
  v1 = *(this + 26);
  v2 = *(this + 27);
  if (v1 != v2)
  {
    v3 = &unk_1EC395000;
    v4 = &unk_1EC395000;
    v69 = *(this + 27);
    do
    {
      v5 = *v1;
      v6 = *(*v1 + 8);
      v7 = *(v6 + 120);
      if (*(v7 + 2) == 1718773105)
      {
        v8 = *(v7 + 7);
        std::vector<std::unique_ptr<TimeFreqConverter>>::reserve((v5 + 48), v8);
        if (v8)
        {
          operator new();
        }

        v9 = *(*(v5 + 8) + 32);
        if (v9)
        {
          v9 = *(*(*(v9 + 16) + 8) + 24);
        }

        v2 = v69;
        v3 = &unk_1EC395000;
        v4 = &unk_1EC395000;
        v10 = *(v9 + 268);
        if (v10 == 1)
        {
          v10 = *(v9 + 272);
        }

        AudioDSPGraph::SimpleABL::alloc((v5 + 72), 0, 4 * v10, 0);
        v6 = *(v5 + 8);
        v7 = *(v6 + 120);
      }

      v11 = (v5 + 24);
      if (*(v5 + 47) < 0)
      {
        v11 = *v11;
      }

      v75 = 0;
      memset(v74, 0, sizeof(v74));
      v12 = *v7;
      v13 = *(v7 + 7);
      if (*(v7 + 2) == 1718773105)
      {
        *(&v74[0] + 1) = 0x296C70636DLL;
        *&v74[1] = 0x100000004;
        DWORD2(v74[1]) = 4;
        LODWORD(v75) = 32;
        v6 = *(v5 + 8);
      }

      else
      {
        v14 = v7[4];
        DWORD2(v74[0]) = *(v7 + 2);
        *(v74 + 12) = *(v7 + 12);
        v75 = v14;
      }

      *&v74[0] = v12;
      HIDWORD(v74[1]) = v13;
      v15 = *(v5 + 96);
      v16 = *(*(*(*(v6 + 8) + 8) + 16) + 1048);
      if (v3[183] != -1)
      {
        dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_2987);
      }

      v17 = v4[182];
      if (v17)
      {
        v18 = v17(v15, 0, v11, v16, 0, v74);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v5 + 16);
      *(v5 + 16) = v18;
      if (v19)
      {
        (*(*v19 + 8))(v19);
        v18 = *(v5 + 16);
      }

      if (!v18)
      {
        std::string::basic_string[abi:ne200100]<0>(inURL, "NewAudioCapturer returned null");
        AudioDSPGraph::ThrowException(1852204065, inURL, off_1E83359B8);
      }

      ++v1;
    }

    while (v1 != v2);
  }

  v20 = *(this + 29);
  v70 = *(this + 30);
  if (v20 != v70)
  {
    allocator = *MEMORY[0x1E695E480];
    do
    {
      v21 = *v20;
      v22 = *(*(*v20 + 8) + 120);
      if (*(v22 + 8) == 1718773105)
      {
        v23 = *(v22 + 28);
        std::vector<std::unique_ptr<TimeFreqConverter>>::reserve((v21 + 80), v23);
        if (v23)
        {
          operator new();
        }
      }

      v24 = *(v21 + 71);
      if (v24 < 0)
      {
        v25 = *(v21 + 48);
        v24 = *(v21 + 56);
      }

      else
      {
        v25 = (v21 + 48);
      }

      v26 = CFURLCreateFromFileSystemRepresentation(allocator, v25, v24, 0);
      inURL[0] = v26;
      if (!v26)
      {
        goto LABEL_69;
      }

      v27 = CFGetTypeID(v26);
      if (v27 != CFURLGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (!inURL[0])
      {
LABEL_69:
        std::string::basic_string[abi:ne200100]<0>(v74, "couldn't convert path to CFURLRef");
        AudioDSPGraph::ThrowException(-4960, v74, off_1E8335928);
      }

      outExtAudioFile = 0;
      v28 = ExtAudioFileOpenURL(inURL[0], &outExtAudioFile);
      if (v28)
      {
        std::string::basic_string[abi:ne200100]<0>(v74, "ExtAudioFileOpenURL failed");
        AudioDSPGraph::ThrowException(v28, v74, off_1E8335940);
      }

      v29 = outExtAudioFile;
      outPropertyData = 0;
      v79 = outExtAudioFile;
      ioPropertyDataSize = 8;
      Property = ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
      if (Property)
      {
        std::string::basic_string[abi:ne200100]<0>(v74, "ExtAudioFileGetProperty(FileLengthFrames) failed");
        AudioDSPGraph::ThrowException(Property, v74, off_1E8335958);
      }

      v31 = outPropertyData;
      if ((outPropertyData & 0x8000000000000000) != 0)
      {
        v60 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v60, "numerical cast overflow: could not retain value in conversion type");
        v60->__vftable = (MEMORY[0x1E69E55C0] + 16);
      }

      v32 = *(v21 + 8);
      v33 = *(v32 + 120);
      *(v21 + 36) = *(v33 + 24);
      v34 = *(v32 + 32);
      if (v34)
      {
        v34 = *(*(*(v34 + 16) + 8) + 24);
      }

      v35 = *(v33 + 28);
      v36 = *(v34 + 268);
      if (v36 == 1)
      {
        v36 = *(v34 + 272);
      }

      *(v21 + 40) = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v31);
      v37 = *(v21 + 36);
      v38 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v31 + v36);
      v39 = caulk::numeric::exceptional_mul<unsigned int>(v37, v38);
      AudioDSPGraph::SimpleABL::alloc((v21 + 16), v35, v39, 0);
      v40 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, *(*(v21 + 8) + 120));
      if (v40)
      {
        std::string::basic_string[abi:ne200100]<0>(v74, "ExtAudioFileSetProperty(ClientDataFormat) failed");
        AudioDSPGraph::ThrowException(v40, v74, off_1E8335970);
      }

      ioNumberFrames = *(v21 + 40);
      v41 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, *(v21 + 16));
      if (v41)
      {
        std::string::basic_string[abi:ne200100]<0>(v74, "ExtAudioFileRead failed");
        AudioDSPGraph::ThrowException(v41, v74, off_1E8335988);
      }

      v42 = ioNumberFrames;
      *(v21 + 40) = ioNumberFrames;
      v43 = *(*(v21 + 8) + 32);
      if (v43)
      {
        v43 = *(*(*(v43 + 16) + 8) + 24);
      }

      v44 = *(v43 + 268);
      if (v44 == 1)
      {
        v44 = *(v43 + 272);
      }

      v45 = *(v21 + 16);
      if (v45 && *v45)
      {
        v46 = 0;
        v47 = *(v21 + 36);
        v48 = v47 * v42;
        v49 = (v44 * v47);
        v50 = 4;
        do
        {
          bzero((*&v45[v50] + v48), v49);
          ++v46;
          v45 = *(v21 + 16);
          v50 += 4;
        }

        while (v46 < *v45);
      }

      v79 = 0;
      if (v29)
      {
        ExtAudioFileDispose(v29);
      }

      if (inURL[0])
      {
        CFRelease(inURL[0]);
      }

      *(v21 + 32) = 0;
      ++v20;
    }

    while (v20 != v70);
  }

  (*(*this + 576))(this);
  v51 = *(this + 40);
  v52 = *(this + 41);
  while (v51 != v52)
  {
    v53 = *v51++;
    (*(*v53 + 128))(v53);
  }

  result = (*(*this + 424))(this);
  if ((result & 1) == 0)
  {
    v55 = *(this + 9);
    for (i = *(this + 10); v55 != i; v55 += 32)
    {
      if (*(*(*(v55 + 16) + 120) + 8) == 1718773105)
      {
        v61 = (this + 40);
        if (*(this + 63) < 0)
        {
          v61 = *v61;
        }

        v62 = (*(*this + 16))(this);
        caulk::make_string(&v72, "frequency data is passed through a No Frequency Safe Box-> %s %s", v63, v61, v62);
        AudioDSPGraph::ThrowException(1718773025, &v72, off_1E8334AD0);
      }
    }

    v57 = *(this + 12);
    for (j = *(this + 13); v57 != j; v57 += 32)
    {
      if (*(*(*(v57 + 16) + 120) + 8) == 1718773105)
      {
        v64 = (this + 40);
        if (*(this + 63) < 0)
        {
          v64 = *v64;
        }

        v65 = (*(*this + 16))(this);
        caulk::make_string(&v71, "frequency data is passed through a No Frequency Safe Box-> %s %s", v66, v64, v65);
        AudioDSPGraph::ThrowException(1718773025, &v71, off_1E8334AE8);
      }
    }
  }

  return result;
}

void sub_1C9209F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_free_exception(v37);
  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100]((v38 - 120));
  applesauce::CF::URLRef::~URLRef(&a26);
  _Unwind_Resume(a1);
}

void *AudioDSPGraph::Box::decompileAnalyzers(void *result, char *a2, char a3)
{
  v4 = result[40];
  v3 = result[41];
  if (v4 != v3)
  {
    v7 = result;
    v8 = (result + 5);
    do
    {
      if (a3)
      {
        caulk::make_string(&__p, "analysis %qu", a2, *(*v4 + 88));
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v18 = std::string::append(&v27, " ", 1uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v20, v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        AudioDSPGraph::print4cc(a2, *(*v4 + 24));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
        if ((*(**v4 + 40))())
        {
          AudioDSPGraph::printACD(a2, (*v4 + 32), 0);
        }

        v22 = v8;
        if (*(v7 + 63) < 0)
        {
          v22 = *v8;
        }

        std::string::basic_string[abi:ne200100]<0>(v25, v22);
        AudioDSPGraph::asDecompileString(&v27, v25);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v27;
        }

        else
        {
          v24 = v27.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&__p, "(%s %u)", v23, v24, *(*v4 + 80));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &__p;
        }

        else
        {
          v14 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __p.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        caulk::make_string(&__p, "analysis ", a2);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &__p;
        }

        else
        {
          v9 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v10 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v9, v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        AudioDSPGraph::print4cc(a2, *(*v4 + 24));
        v11 = v8;
        if (*(v7 + 63) < 0)
        {
          v11 = *v8;
        }

        std::string::basic_string[abi:ne200100]<0>(v25, v11);
        AudioDSPGraph::asDecompileString(&v27, v25);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v27;
        }

        else
        {
          v13 = v27.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&__p, " (%s %u)", v12, v13, *(*v4 + 80));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &__p;
        }

        else
        {
          v14 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __p.__r_.__value_.__l.__size_;
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v14, v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
      v4 += 8;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_1C920A3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileAntecedents(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = v2[2];
      v7 = (v6 + 40);
      if (*(v6 + 63) < 0)
      {
        v7 = *v7;
      }

      std::string::basic_string[abi:ne200100]<0>(v17, v7);
      AudioDSPGraph::asDecompileString(&v19, v17);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v19;
      }

      else
      {
        v8 = v19.__r_.__value_.__r.__words[0];
      }

      v9 = v5;
      if (*(a1 + 63) < 0)
      {
        v9 = *v5;
      }

      std::string::basic_string[abi:ne200100]<0>(v14, v9);
      AudioDSPGraph::asDecompileString(&__p, v14);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      caulk::make_string(&v20, "order %s %s\n", v10, v8, p_p);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v20;
      }

      else
      {
        v12 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v12, size);
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_1C920A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompilePropertyTaps(uint64_t a1, void *a2)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  if (v2 != v3)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = (*v2 + 40);
      if (*(*v2 + 63) < 0)
      {
        v7 = *v7;
      }

      std::string::basic_string[abi:ne200100]<0>(v21, v7);
      AudioDSPGraph::asDecompileString(&v23, v21);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v23;
      }

      else
      {
        v8 = v23.__r_.__value_.__r.__words[0];
      }

      v9 = v6;
      if (*(a1 + 63) < 0)
      {
        v9 = *v6;
      }

      v10 = *(v2 + 8);
      v11 = *(v2 + 12);
      v12 = *(v2 + 16);
      std::string::basic_string[abi:ne200100]<0>(v18, v9);
      AudioDSPGraph::asDecompileString(&__p, v18);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v15 = &byte_1C9279A7A;
      if (*(v2 + 36))
      {
        v15 = "true";
      }

      caulk::make_string(&v24, "wireProperty (%s %u %u %u) (%s %u %u %u) %s\n", v13, v8, v10, v11, v12, p_p, *(v2 + 24), *(v2 + 28), *(v2 + 32), v15);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v24;
      }

      else
      {
        v16 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v16, size);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      v2 += 64;
    }

    while (v2 != v3);
  }
}

void sub_1C920A7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileParameterTaps(uint64_t a1, void *a2)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  if (v2 != v3)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = (*v2 + 40);
      if (*(*v2 + 63) < 0)
      {
        v7 = *v7;
      }

      std::string::basic_string[abi:ne200100]<0>(v21, v7);
      AudioDSPGraph::asDecompileString(&v23, v21);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v23;
      }

      else
      {
        v8 = v23.__r_.__value_.__r.__words[0];
      }

      v9 = v6;
      if (*(a1 + 63) < 0)
      {
        v9 = *v6;
      }

      v10 = *(v2 + 8);
      v11 = *(v2 + 12);
      v12 = *(v2 + 16);
      std::string::basic_string[abi:ne200100]<0>(v18, v9);
      AudioDSPGraph::asDecompileString(&__p, v18);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v15 = &byte_1C9279A7A;
      if (*(v2 + 36))
      {
        v15 = "true";
      }

      caulk::make_string(&v24, "wireParam (%s %u %u %u) (%s %u %u %u) %s\n", v13, v8, v10, v11, v12, p_p, *(v2 + 24), *(v2 + 28), *(v2 + 32), v15);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v24;
      }

      else
      {
        v16 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v16, size);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      v2 += 40;
    }

    while (v2 != v3);
  }
}

void sub_1C920AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileWires(uint64_t a1, char *a2)
{
  v102[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  v92 = *(a1 + 104);
  if (v2 != v92)
  {
    v4 = a1;
    v95 = (a1 + 40);
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      v96 = v2;
      v94 = *(v2 + 16);
      v6 = *(v94 + 32);
      if (v6)
      {
        break;
      }

LABEL_229:
      v2 = v96 + 32;
      if (v96 + 32 == v92)
      {
        return;
      }
    }

    while (1)
    {
      v7 = v6[2];
      v8 = *(v7 + 8);
      caulk::make_string(&v101, "wire ", a2);
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v101;
      }

      else
      {
        v9 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v101.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v9, size);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (*(v96 + 24))
      {
        v11 = v95;
        if (*(v4 + 63) < 0)
        {
          v11 = *v95;
        }

        std::string::basic_string[abi:ne200100]<0>(&v99, v11);
        AudioDSPGraph::asDecompileString(&__p, &v99);
        v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string(&v101, "(%s %u) ", v12, v13, *(v96 + 24));
        v14 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v101 : v101.__r_.__value_.__r.__words[0];
        v15 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v101.__r_.__value_.__r.__words[2]) : v101.__r_.__value_.__l.__size_;
      }

      else
      {
        v16 = v95;
        if (*(v4 + 63) < 0)
        {
          v16 = *v95;
        }

        std::string::basic_string[abi:ne200100]<0>(&v99, v16);
        AudioDSPGraph::asDecompileString(&__p, &v99);
        v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string(&v101, "%s ", v17, v18);
        v14 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v101 : v101.__r_.__value_.__r.__words[0];
        v15 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v101.__r_.__value_.__r.__words[2]) : v101.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v14, v15);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      v19 = (v8 + 40);
      if (*(v7 + 24))
      {
        if (*(v8 + 63) < 0)
        {
          v19 = *v19;
        }

        std::string::basic_string[abi:ne200100]<0>(&v99, v19);
        AudioDSPGraph::asDecompileString(&__p, &v99);
        v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string(&v101, "(%s %u) ", v20, v21, *(v7 + 24));
        v22 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v101 : v101.__r_.__value_.__r.__words[0];
        v23 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v101.__r_.__value_.__r.__words[2]) : v101.__r_.__value_.__l.__size_;
      }

      else
      {
        if (*(v8 + 63) < 0)
        {
          v19 = *v19;
        }

        std::string::basic_string[abi:ne200100]<0>(&v99, v19);
        AudioDSPGraph::asDecompileString(&__p, &v99);
        v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string(&v101, "%s ", v24, v25);
        v22 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v101 : v101.__r_.__value_.__r.__words[0];
        v23 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v101.__r_.__value_.__r.__words[2]) : v101.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v22, v23);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      v26 = *(v94 + 120);
      v27 = *(v26 + 40);
      memset(&v97, 0, sizeof(v97));
      v28 = *(v26 + 8);
      if (v28 != 1819304813)
      {
        break;
      }

      if ((~*(v26 + 12) & 0x21) != 0 || *(v26 + 32) != 32)
      {
        memset(&__p, 0, sizeof(__p));
        v61 = 1;
        v62 = *(v26 + 12);
        if ((v62 & 2) != 0)
        {
          std::string::append(&__p, "BE", 2uLL);
          v62 = *(v26 + 12);
        }

        v63 = "F";
        if ((v62 & 1) == 0)
        {
          v63 = "UI";
        }

        if ((v62 & 4) != 0)
        {
          v64 = "I";
        }

        else
        {
          v64 = v63;
        }

        if ((v62 & 5) != 0)
        {
          v65 = 1;
        }

        else
        {
          v65 = 2;
        }

        std::string::append(&__p, v64, v65);
        std::to_string(&v101, *(v26 + 32));
        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v101;
        }

        else
        {
          v66 = v101.__r_.__value_.__r.__words[0];
        }

        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v101.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v66, v67);
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

LABEL_153:
        std::string::push_back(&__p, 64);
        std::to_string(&v101, *v26);
        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &v101;
        }

        else
        {
          v68 = v101.__r_.__value_.__r.__words[0];
        }

        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v69 = v101.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v68, v69);
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
          if ((v61 & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v61)
          {
            goto LABEL_191;
          }

LABEL_163:
          if (*(v26 + 12))
          {
            std::string::append(&__p, "/", 1uLL);
            v70 = *(v26 + 12);
            if (v70)
            {
              memset(&v101, 0, sizeof(v101));
              do
              {
                std::string::push_back(&v101, a0123456789abcd_1[v70 & 0xF]);
                v71 = v70 >= 0x10;
                v70 >>= 4;
              }

              while (v71);
              v72 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
              v73 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
              v75 = v101.__r_.__value_.__l.__size_;
              v74 = v101.__r_.__value_.__r.__words[0];
              if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = &v101;
              }

              else
              {
                v76 = v101.__r_.__value_.__r.__words[0];
              }

              if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v77 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v77 = v101.__r_.__value_.__l.__size_;
              }

              v78 = (v76 + v77 - 1);
              if (v77)
              {
                v79 = v78 > v76;
              }

              else
              {
                v79 = 0;
              }

              if (v79)
              {
                v80 = &v76->__r_.__value_.__s.__data_[1];
                v4 = a1;
                do
                {
                  v81 = *(v80 - 1);
                  *(v80 - 1) = v78->__r_.__value_.__s.__data_[0];
                  v78->__r_.__value_.__s.__data_[0] = v81;
                  v78 = (v78 - 1);
                  v71 = v80++ >= v78;
                }

                while (!v71);
                v72 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
                v75 = v101.__r_.__value_.__l.__size_;
                v74 = v101.__r_.__value_.__r.__words[0];
                v73 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v4 = a1;
              }

              if (v73 >= 0)
              {
                v82 = &v101;
              }

              else
              {
                v82 = v74;
              }

              if (v73 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v75;
              }

              std::string::append(&__p, v82, v83);
              if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v101.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              std::string::append(&__p, "0", 1uLL);
              v4 = a1;
            }
          }
        }

LABEL_191:
        if (*(v26 + 20) != 1)
        {
          std::string::push_back(&__p, 35);
          std::to_string(&v101, *(v26 + 20));
          v84 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v101 : v101.__r_.__value_.__r.__words[0];
          v85 = (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v101.__r_.__value_.__r.__words[2]) : v101.__r_.__value_.__l.__size_;
          std::string::append(&__p, v84, v85);
          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        if (*(v26 + 28) >= 2u)
        {
          std::string::push_back(&__p, 44);
          std::to_string(&v101, *(v26 + 28));
          if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v86 = &v101;
          }

          else
          {
            v86 = v101.__r_.__value_.__r.__words[0];
          }

          if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v87 = v101.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v86, v87);
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (!v61)
            {
              goto LABEL_215;
            }

LABEL_211:
            if ((*(v26 + 12) & 0x20) != 0)
            {
              v88 = 68;
            }

            else
            {
              v88 = 73;
            }

            std::string::push_back(&__p, v88);
            goto LABEL_215;
          }

          operator delete(v101.__r_.__value_.__l.__data_);
          if (v61)
          {
            goto LABEL_211;
          }
        }

LABEL_215:
        v97 = __p;
        goto LABEL_216;
      }

      std::to_string(&v99, *v26);
      v43 = std::string::insert(&v99, 0, "(", 1uLL);
      v44 = *&v43->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&__p, " ", 1uLL);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v98, *(v26 + 28));
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v98;
      }

      else
      {
        v47 = v98.__r_.__value_.__r.__words[0];
      }

      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v98.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v101, v47, v48);
      v50 = v49->__r_.__value_.__r.__words[0];
      v102[0] = v49->__r_.__value_.__l.__size_;
      *(v102 + 7) = *(&v49->__r_.__value_.__r.__words[1] + 7);
      v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v97.__r_.__value_.__r.__words[0] = v50;
      *(&v97.__r_.__value_.__r.__words[1] + 7) = *(v102 + 7);
      v97.__r_.__value_.__l.__size_ = v102[0];
      *(&v97.__r_.__value_.__s + 23) = v51;
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (v27 >= 2)
      {
        std::to_string(&__p, v27);
        v52 = std::string::insert(&__p, 0, " ", 1uLL);
        v53 = *&v52->__r_.__value_.__l.__data_;
        v101.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
        *&v101.__r_.__value_.__l.__data_ = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v101;
        }

        else
        {
          v54 = v101.__r_.__value_.__r.__words[0];
        }

        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = v101.__r_.__value_.__l.__size_;
        }

        std::string::append(&v97, v54, v55);
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_96:
      std::string::append(&v97, ")", 1uLL);
LABEL_216:
      v89 = &v97;
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v89 = v97.__r_.__value_.__r.__words[0];
      }

      caulk::make_string(&v101, "%s\n", v42, v89);
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v101;
      }

      else
      {
        v90 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v91 = v101.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v90, v91);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_229;
      }
    }

    if (v28 == 1718773105)
    {
      std::to_string(&v99, *v26);
      v29 = std::string::insert(&v99, 0, "(freq ", 6uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&__p, " ", 1uLL);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v98, *(v26 + 28));
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v98;
      }

      else
      {
        v33 = v98.__r_.__value_.__r.__words[0];
      }

      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v98.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v101, v33, v34);
      v36 = v35->__r_.__value_.__r.__words[0];
      v102[0] = v35->__r_.__value_.__l.__size_;
      *(v102 + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
      v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v97.__r_.__value_.__r.__words[0] = v36;
      *(&v97.__r_.__value_.__r.__words[1] + 7) = *(v102 + 7);
      v97.__r_.__value_.__l.__size_ = v102[0];
      *(&v97.__r_.__value_.__s + 23) = v37;
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      std::to_string(&__p, v27);
      v38 = std::string::insert(&__p, 0, " ", 1uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v101.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v101.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v101;
      }

      else
      {
        v40 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v101.__r_.__value_.__l.__size_;
      }

      std::string::append(&v97, v40, v41);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_96;
    }

    memset(&__p, 0, sizeof(__p));
    v56 = 24;
    while (1)
    {
      v57 = *(v26 + 8);
      v58 = v57 >> v56;
      v59 = (v57 >> v56);
      if (v59 < 0x80)
      {
        v60 = *(v5 + 4 * (v57 >> v56) + 60);
        if ((v60 & 0x500) != 0 || (v60 & 0x2000) != 0)
        {
          goto LABEL_133;
        }
      }

      else if (__maskrune((v57 >> v56), 0x500uLL) || __maskrune(v59, 0x2000uLL))
      {
        goto LABEL_133;
      }

      std::string::append(&__p, "\\x", 2uLL);
      std::string::push_back(&__p, a0123456789abcd_1[v58 >> 4]);
      LOBYTE(v58) = a0123456789abcd_1[v58 & 0xF];
LABEL_133:
      std::string::push_back(&__p, v58);
      v56 -= 8;
      if (v56 == -8)
      {
        v61 = 0;
        v4 = a1;
        goto LABEL_153;
      }
    }
  }
}

void sub_1C920B584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileBox(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    std::string::basic_string[abi:ne200100]<0>(&v35, v5);
    AudioDSPGraph::asDecompileString(&v36, &v35);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v36;
    }

    else
    {
      v7 = v36.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&__p, "box %s ", v6, v7);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    (*(*a1 + 216))(&__p, a1);
    AudioDSPGraph::printACD(a2, &__p, 0);
    caulk::make_string(&__p, " %u %u\n", v10, (*(a1 + 80) - *(a1 + 72)) >> 5, (*(a1 + 104) - *(a1 + 96)) >> 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v11, v12);
LABEL_74:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v13 = (a1 + 40);
  v14 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v14 = *v13;
  }

  v15 = *(a1 + 64);
  std::string::basic_string[abi:ne200100]<0>(&v35, v14);
  AudioDSPGraph::asDecompileString(&v36, &v35);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  else
  {
    v17 = v36.__r_.__value_.__r.__words[0];
  }

  caulk::make_string(&__p, "box %qu %s ", v16, v15, v17);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v18, v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 216))(&__p, a1);
  AudioDSPGraph::printACD(a2, &__p, 0);
  caulk::make_string(&__p, " %u %u\n", v20, (*(a1 + 80) - *(a1 + 72)) >> 5, (*(a1 + 104) - *(a1 + 96)) >> 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 352))(&__p, a1);
  if (v34 == 1)
  {
    if (*(a1 + 63) < 0)
    {
      v13 = *v13;
    }

    std::string::basic_string[abi:ne200100]<0>(v31, v13);
    AudioDSPGraph::asDecompileString(&v35, v31);
    v23 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v24 = v35.__r_.__value_.__r.__words[0];
    AudioDSPGraph::asDecompileString(&v30, &__p);
    v26 = &v35;
    if (v23 < 0)
    {
      v26 = v24;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v30;
    }

    else
    {
      v27 = v30.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v36, "componentName %s %s\n", v25, v26, v27);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v36;
    }

    else
    {
      v28 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v36.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v28, v29);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (v34)
    {
      goto LABEL_74;
    }
  }
}

void sub_1C920BAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Box::writeDotEdges(void *result, char *a2)
{
  v2 = result[12];
  v13 = result[13];
  if (v2 != v13)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      for (i = *(v5 + 32); i; i = *i)
      {
        caulk::make_string(__p, "B%qu -> B%qu", a2, v4[8], *(*(i[2] + 8) + 64));
        if ((SBYTE7(v16) & 0x80u) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if ((SBYTE7(v16) & 0x80u) == 0)
        {
          v8 = BYTE7(v16);
        }

        else
        {
          v8 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v7, v8);
        if (SBYTE7(v16) < 0)
        {
          operator delete(__p[0]);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [label=", 9);
        v9 = *(v5 + 120);
        *__p = *v9;
        v16 = *(v9 + 16);
        v17 = *(v9 + 32);
        CA::StreamDescription::AsString(&v14, __p, *&v16, v10);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v14;
        }

        else
        {
          v11 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v14.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v11, size);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "];\n", 4);
      }

      v2 += 32;
    }

    while (v2 != v13);
  }

  return result;
}

void sub_1C920BD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::writeDotAttributes(AudioDSPGraph::Box *a1, char *a2)
{
  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  caulk::make_string(&__p, "B%qu [shape=box, label=%s\\n", a2, *(a1 + 8), v4);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 496))(a1, a2, 0);
  v7 = *(a1 + 2);
  v8 = (*(*a1 + 72))(a1) / *(v7 + 848);
  v9 = *(a1 + 2);
  v10 = (*(*a1 + 72))(a1);
  v11 = AudioDSPGraph::Box::upstreamLatencyInTicks(a1);
  caulk::make_string(&__p, "latency %f (%f)", v12, *&v8, (v11 + v10) / *(v9 + 848));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  caulk::make_string(&__p, "];\n", v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C920BF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::getFormatFromUnit(AudioDSPGraph::Box *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "Box::getFormatFromUnit ");
  v2 = (*(*this + 16))(this);
  v3 = strlen(v2);
  v4 = std::string::append(&v5, v2, v3);
  v6 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  AudioDSPGraph::ThrowException(1869640255, &v6, off_1E8334C20);
}

void sub_1C920BFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::isogroupTraceOutputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 96);
  v4 = *(result + 104);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *(v3 + 16);
      if (!v8)
      {
        v13 = v7 + 40;
        if (v7[63] < 0)
        {
          v13 = *v13;
        }

        v14 = (*(*v7 + 16))(v7);
        caulk::make_string(&v16, "box %s %s output port is not connected.", v15, v13, v14);
        AudioDSPGraph::ThrowException(1970168609, &v16, off_1E8334B78);
      }

      for (i = *(v8 + 32); i; i = *i)
      {
        v10 = *(i[2] + 8);
        v11 = (*(*v10 + 272))(v10);
        if (v11)
        {
          v12 = v11;
          v17 = v11;
          std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>((a3 + 136), v11, &v17);
          *(v12 + 840) = a3;
        }

        result = (*(*v10 + 400))(v10, a2, a3);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_1C920C19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::isogroupTraceInputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 72);
  v4 = *(result + 80);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *(v3 + 16);
      if (!v8)
      {
        v12 = v7 + 40;
        if (v7[63] < 0)
        {
          v12 = *v12;
        }

        v13 = (*(*v7 + 16))(v7);
        caulk::make_string(&v15, "box %s %s input port is not connected.", v14, v12, v13);
        AudioDSPGraph::ThrowException(1970168609, &v15, off_1E8334B60);
      }

      v9 = *(*(v8 + 8) + 8);
      v10 = (*(*v9 + 272))(v9);
      if (v10)
      {
        v11 = v10;
        v16 = v10;
        std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>((a3 + 96), v10, &v16);
        v11[106] = a3;
        result = (*(*v11 + 416))(v11, a2, a3);
      }

      else
      {
        result = (*(*v9 + 400))(v9, a2, a3);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_1C920C360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Box::isogroup(AudioDSPGraph::Box *a1, uint64_t *a2, AudioDSPGraph::IsoGroup *a3)
{
  result = std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::find<AudioDSPGraph::Box *>(*a2, a2[1], a1);
  if (!result)
  {
    v8 = a1;
    std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box *>(a2, a1, &v8);
    AudioDSPGraph::IsoGroup::add(a3, a1);
    (*(*a1 + 408))(a1, a2, a3);
    v7 = *(*a1 + 416);

    return v7(a1, a2, a3);
  }

  return result;
}

void *std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::find<AudioDSPGraph::Box *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= a2)
        {
          v10 %= a2;
        }
      }

      else
      {
        v10 &= a2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

float *std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box *>(float *result, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(result + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__rehash<true>(uint64_t a1, size_t __n)
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

void *AudioDSPGraph::Box::sortUpstream(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[9];
  v7 = result[10];
  while (v6 != v7)
  {
    v8 = *(*(*(v6 + 16) + 8) + 8);
    result = (*(*v8 + 384))(v8, v5[3], a2, a3);
    v6 += 32;
  }

  v9 = v5[20];
  v10 = v5[21];
  while (v9 != v10)
  {
    if (v9[36] == 1)
    {
      result = (*(**v9 + 384))(*v9, v5[3], a2, a3);
    }

    v9 += 40;
  }

  v11 = v5[23];
  v12 = v5[24];
  while (v11 != v12)
  {
    if (v11[36] == 1)
    {
      result = (*(**v11 + 384))(*v11, v5[3], a2, a3);
    }

    v11 += 64;
  }

  for (i = v5[17]; i; i = *i)
  {
    result = (*(*i[2] + 384))(i[2], v5[3], a2, a3);
  }

  return result;
}

void AudioDSPGraph::Box::topologicalSort(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (*(a1 + 737) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "Box::topologicalSort, There is a cycle in the graph. The graph must be acyclic.");
    AudioDSPGraph::ThrowException(1953460257, v17, off_1E8334B48);
  }

  if ((*(a1 + 736) & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (v5 == a2)
    {
      *(a1 + 737) = 1;
      (*(*a1 + 392))(a1, a3, a4);
      *(a1 + 737) = 0;
      v8 = *(a3 + 8);
      v7 = *(a3 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a3) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - *a3;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v13);
        }

        *(8 * v10) = a1;
        v9 = 8 * v10 + 8;
        v14 = *(a3 + 8) - *a3;
        v15 = (8 * v10 - v14);
        memcpy(v15, *a3, v14);
        v16 = *a3;
        *a3 = v15;
        *(a3 + 8) = v9;
        *(a3 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = a1;
        v9 = (v8 + 1);
      }

      *(a3 + 8) = v9;
      *(a1 + 736) = 1;
    }

    else
    {

      AudioDSPGraph::IsoGroup::topologicalSort(v5, a4);
    }
  }
}

void AudioDSPGraph::Box::calculateLatencyDelays(AudioDSPGraph::Box *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFC0) != 0)
  {
    v2 = AudioDSPGraph::Box::upstreamLatencyInTicks(this);
    v4 = *(this + 9);
    v3 = *(this + 10);
    if (v4 != v3)
    {
      v5 = v2;
      do
      {
        *(v4 + 28) = 0;
        v6 = *(*(*(v4 + 16) + 8) + 8);
        if (((*(*v6 + 376))(v6) & 1) == 0)
        {
          v7 = *(*(*(v4 + 16) + 8) + 8);
          v8 = (*(*v7 + 72))(v7);
          v9 = AudioDSPGraph::Box::upstreamLatencyInTicks(v7);
          if (v5 <= v9 + v8)
          {
            if (*(v4 + 28))
            {
LABEL_9:
              if (*(*(*(v4 + 16) + 120) + 8) == 1718773105)
              {
                {
                  AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                }

                v11 = AudioDSPGraph::getLog(void)::gLog;
                if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
                {
                  v12 = *(*(*(v4 + 16) + 8) + 8);
                  v13 = (v12 + 40);
                  if (*(v12 + 63) < 0)
                  {
                    v13 = *v13;
                  }

                  v14 = this + 40;
                  if (*(this + 63) < 0)
                  {
                    v14 = *(this + 5);
                  }

                  v15 = *(v4 + 28);
                  *buf = 67109634;
                  v17 = v15;
                  v18 = 2080;
                  v19 = v13;
                  v20 = 2080;
                  v21 = v14;
                  _os_log_debug_impl(&dword_1C91AE000, v11, OS_LOG_TYPE_DEBUG, "Latency compensation of %u samples required at frequency-domain wire : %s -> %s", buf, 0x1Cu);
                }
              }
            }
          }

          else
          {
            v10 = (v5 - (v9 + v8)) * **(*(v4 + 16) + 120) / *(*(this + 2) + 848);
            *(v4 + 28) = v10;
            if (v10)
            {
              goto LABEL_9;
            }
          }
        }

        v4 += 32;
      }

      while (v4 != v3);
    }
  }
}

void *AudioDSPGraph::Box::insertLatencyDelayBoxes(void *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = this[9];
  v1 = this[10];
  v6 = v1;
  if (((v1 - v2) & 0x1FFFFFFFC0) != 0 && v2 != v1)
  {
    do
    {
      v4 = *(*(*(v2 + 16) + 8) + 8);
      this = (*(*v4 + 376))(v4);
      v5 = *(v2 + 28);
      if (this)
      {
        AudioDSPGraph::Boxes::DelayBox::setDelayFrames(v8, v4, v5);
        if ((v8[32] & 1) == 0)
        {
          AudioDSPGraph::Error::~Error(v8);
        }

        this = (*(*v4 + 560))(v4);
      }

      else if (v5)
      {
        if (*(*(*(v2 + 16) + 120) + 8) != 1718773105)
        {
          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(v7, "Latency Boxes cannot be inserted at frequency-domain wires");
        AudioDSPGraph::ThrowException(1869640255, v7, off_1E8334B90);
      }

      v2 += 32;
    }

    while (v2 != v6);
  }

  return this;
}

void sub_1C920D878(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<AudioDSPGraph::Wire *,std::hash<AudioDSPGraph::Wire *>,std::equal_to<AudioDSPGraph::Wire *>,std::allocator<AudioDSPGraph::Wire *>>::__emplace_unique_key_args<AudioDSPGraph::Wire *,AudioDSPGraph::Wire * const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void AudioDSPGraph::Box::getPreset(AudioDSPGraph::Box *this@<X0>, __CFDictionary **a2@<X8>)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = 0;
  v36 = Mutable;
  do
  {
    v6 = _ZGRN13AudioDSPGraphL22kPresetParameterScopesE_[v5];
    v7 = (*(*this + 320))(this, v6);
    if (!v7)
    {
      goto LABEL_16;
    }

    (*(*this + 104))(&v33, this, v6);
    v8 = v33;
    v9 = v34;
    if (v33 == v34)
    {
      v12 = v33;
      if (v33)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v11 = bswap32(v6);
      do
      {
        *bytes = v11;
        *&bytes[4] = bswap32(v10);
        LODWORD(v31) = bswap32((v9 - v8) >> 2);
        CFDataAppendBytes(Mutable, bytes, 12);
        v12 = v33;
        v8 = v34;
        if (v34 == v33)
        {
          v9 = v34;
        }

        else
        {
          v13 = 0;
          do
          {
            (*(*this + 96))(&v37, this, *&v12[4 * v13], v6, v10);
            if ((v40 & 1) == 0)
            {
              AudioDSPGraph::Error::throwException(&v37);
            }

            *v32 = 0;
            *v32 = bswap32(*&v33[4 * v13]);
            *&v32[4] = bswap32(v37);
            CFDataAppendBytes(Mutable, v32, 8);
            if ((v40 & 1) == 0)
            {
              AudioDSPGraph::Error::~Error(&v37);
            }

            ++v13;
            v12 = v33;
            v9 = v34;
          }

          while (v13 < (v34 - v33) >> 2);
          v8 = v33;
        }

        v10 = (v10 + 1);
      }

      while (v10 != v7);
      if (v12)
      {
LABEL_15:
        v34 = v12;
        operator delete(v12);
      }
    }

LABEL_16:
    ++v5;
  }

  while (v5 != 3);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  (*(*this + 216))(&v33, this);
  applesauce::CF::StringRef::from_get(&cf, @"version");
  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v37 = v14;
  LODWORD(valuePtr) = 0;
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::StringRef::from_get(&valuePtr, @"type");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v39, valuePtr, &v33);
  applesauce::CF::StringRef::from_get(&v27, @"subtype");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v40, v27, &v33 + 1);
  applesauce::CF::StringRef::from_get(&v26, @"manufacturer");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v41, v26, &v34);
  applesauce::CF::StringRef::from_get(&v25, @"classname");
  v24 = (*(*this + 16))(this);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v42, v25, &v24);
  *bytes = &v37;
  v31 = 5;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(bytes);
  v16 = 0;
  *v32 = CFDictionaryRef;
  do
  {
    v17 = v42[v16 + 1];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = v42[v16];
    if (v18)
    {
      CFRelease(v18);
    }

    v16 -= 2;
  }

  while (v16 != -10);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (CFDataGetLength(Mutable) < 1)
  {
    CFRetain(CFDictionaryRef);
    *a2 = CFDictionaryRef;
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, CFDictionaryRef);
    CFDictionaryAddValue(MutableCopy, @"data", Mutable);
    *a2 = MutableCopy;
    if (MutableCopy)
    {
      v20 = CFGetTypeID(MutableCopy);
      if (v20 != CFDictionaryGetTypeID())
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not construct");
      }
    }
  }

  CFRelease(CFDictionaryRef);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C920E27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const void **a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, const void *a30, void *__p, uint64_t a32, uint64_t a33, const void *a34, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  __cxa_free_exception(v41);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
  applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(&a34);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1C920E4E8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(void *a1, CFTypeRef cf, char **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  a1[1] = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C920E5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15 + 1);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(v15);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_1C920E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
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

const void **applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t AudioDSPGraph::Box::setPreset(AudioDSPGraph::Box *this, CFTypeRef cf)
{
  if (!cf)
  {
    v35 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_50;
  }

  CFRetain(cf);
  v35 = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
  }

  v5 = v35;
  v6 = applesauce::CF::details::at_key<__CFString const* const&>(v35, @"version");
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find item");
    goto LABEL_50;
  }

  v7 = applesauce::CF::convert_as<int,0>(v6);
  if ((v7 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
LABEL_50:
  }

  if (v7)
  {
    v8 = 4294956445;
LABEL_44:
    CFRelease(v5);
    return v8;
  }

  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(__s1, v35, @"classname");
  v9 = (*(*this + 16))(this);
  v10 = strlen(v9);
  v11 = v10;
  v12 = v34;
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v10 != v34)
    {
      v8 = 4294956445;
      goto LABEL_43;
    }

    v13 = __s1;
LABEL_13:
    if (memcmp(v13, v9, v11))
    {
      v8 = 4294956445;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!v35)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
    }

    v14 = applesauce::CF::details::at_key<__CFString const* const&>(v35, @"data");
    if (v14)
    {
      v15 = v14;
      CFRetain(v14);
      v16 = CFGetTypeID(v15);
      if (v16 == CFDataGetTypeID())
      {
        cfa = v15;
        v32 = 1;
        BytePtr = CFDataGetBytePtr(v15);
        Length = CFDataGetLength(v15);
        if (Length >= 1)
        {
          v19 = BytePtr + Length;
          do
          {
            if ((BytePtr + 1) > v19)
            {
              break;
            }

            if ((BytePtr + 2) > v19)
            {
              break;
            }

            v20 = BytePtr + 3;
            if ((BytePtr + 3) > v19)
            {
              break;
            }

            v21 = BytePtr[2];
            if (v21)
            {
              v22 = bswap32(*BytePtr);
              v23 = bswap32(BytePtr[1]);
              v24 = bswap32(v21);
              while ((v20 + 1) <= v19)
              {
                BytePtr = v20 + 2;
                if ((v20 + 2) > v19)
                {
                  BytePtr = v20 + 1;
                  goto LABEL_36;
                }

                (*(*this + 88))(v29, this, bswap32(*v20), v22, v23, 0, COERCE_FLOAT(bswap32(v20[1])));
                if ((v30 & 1) == 0)
                {
                  AudioDSPGraph::Error::~Error(v29);
                }

                v20 = BytePtr;
                if (!--v24)
                {
                  goto LABEL_36;
                }
              }
            }

            BytePtr = v20;
LABEL_36:
            ;
          }

          while (BytePtr < v19);
        }

        if (cfa)
        {
          CFRelease(cfa);
        }

LABEL_41:
        v8 = 0;
        if ((v34 & 0x80) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      CFRelease(v15);
    }

    LOBYTE(cfa) = 0;
    v32 = 0;
    goto LABEL_41;
  }

  if (v10 == __s1[1])
  {
    if (v10 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v13 = __s1[0];
    goto LABEL_13;
  }

  v8 = 4294956445;
LABEL_42:
  operator delete(__s1[0]);
LABEL_43:
  v5 = v35;
  if (v35)
  {
    goto LABEL_44;
  }

  return v8;
}

void sub_1C920EE30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v22 - 56));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1C920ED0CLL);
}

void *applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
}

uint64_t std::optional<applesauce::CF::DataRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1C925F120);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_1C925F130), xmmword_1C925F140);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

uint64_t AudioDSPGraph::Box::getElementCount(AudioDSPGraph::Box *this, int a2)
{
  switch(a2)
  {
    case 0:
      return 1;
    case 2:
      return (*(this + 13) - *(this + 12)) >> 5;
    case 1:
      return (*(this + 10) - *(this + 9)) >> 5;
  }

  return 0;
}

uint64_t AudioDSPGraph::Box::setProperty(AudioDSPGraph::Box *this, int a2, int a3, unsigned int a4, int a5, _DWORD *a6)
{
  if (a2)
  {
    if (a2 == 21)
    {
      if (a5 == 4)
      {
        if (!a3)
        {
          (*(*this + 56))(this, *a6 != 0);
          return 0;
        }

        return 4294956430;
      }

      return 561211770;
    }

    return 4294956417;
  }

  else
  {
    if (a5 != 8)
    {
      return 561211770;
    }

    if (a3)
    {
      return 4294956430;
    }

    v8 = *(*this + 336);

    return v8();
  }
}

__n128 AudioDSPGraph::Box::getProperty(AudioDSPGraph::Box *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 result)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 > 10)
  {
    if (a2 <= 20)
    {
      if (a2 != 11)
      {
        if (a2 != 12)
        {
          if (a2 == 20 && *a5 == 8 && !a3)
          {
            a6->n128_u64[0] = 0;
          }

          return result;
        }

        if (*a5 != 8 || a3)
        {
          return result;
        }

        v15 = *(this + 2);
        result.n128_f64[0] = (*(*this + 72))(this, result) / *(v15 + 848);
LABEL_71:
        a6->n128_u64[0] = result.n128_u64[0];
        return result;
      }

      if (*a5 != 4)
      {
        return result;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          v21 = *(this + 12);
          v20 = *(this + 13);
        }

        else
        {
          if (a3 != 1)
          {
            return result;
          }

          v21 = *(this + 9);
          v20 = *(this + 10);
        }

        a6->n128_u32[0] = (v20 - v21) >> 5;
        return result;
      }

      v22 = 1;
LABEL_68:
      a6->n128_u32[0] = v22;
      return result;
    }

    if (a2 == 21)
    {
      if (*a5 != 4 || a3)
      {
        return result;
      }

      v16 = (*(*this + 48))(this, result);
    }

    else
    {
      if (a2 != 29)
      {
        if (a2 == 54 && *a5 == 8 && !a3)
        {
          v10 = this + 40;
          if (*(this + 63) < 0)
          {
            v10 = *v10;
          }

          a6->n128_u64[0] = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x8000100u);
        }

        return result;
      }

      if (*a5 != 4 || a3)
      {
        return result;
      }

      v16 = (*(*this + 64))(this, result);
    }

    v22 = v16;
    goto LABEL_68;
  }

  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 2 || *a5 != 8 || !a6)
      {
        return result;
      }

      if (a3 == 2)
      {
        v11 = AudioDSPGraph::Box::out(this, a4);
      }

      else
      {
        if (a3 != 1)
        {
          return result;
        }

        v11 = AudioDSPGraph::Box::in(this, a4);
      }

      result.n128_f64[0] = **(*(v11 + 16) + 120);
      goto LABEL_71;
    }

    if (*a5 == 8 && !a3)
    {
      (*(*this + 344))(v25, this, result);
      v12 = *&v25[0];
      *&v25[0] = 0;
      a6->n128_u64[0] = v12;
      applesauce::CF::DictionaryRef::~DictionaryRef(v25);
    }
  }

  else if (a2 == 3)
  {
    (*(*this + 104))(v25, this, a3, result);
    v17 = *&v25[0];
    v18 = DWORD2(v25[0]) - LODWORD(v25[0]);
    v19 = (DWORD2(v25[0]) - LODWORD(v25[0])) & 0xFFFFFFFC;
    if (*a5 >= v19)
    {
      *a5 = v19;
      memcpy(a6, v17, v18 & 0xFFFFFFFC);
      if (v17)
      {
        *(&v25[0] + 1) = v17;
        operator delete(v17);
      }
    }

    else if (*&v25[0])
    {
      *(&v25[0] + 1) = *&v25[0];
      operator delete(*&v25[0]);
    }
  }

  else if (a2 == 4)
  {
    if (*a5 == 104)
    {
      if (a6)
      {
        (*(*this + 112))(v25, this, a3, a4, result);
        if (v27 == 1)
        {
          a6[6].n128_u64[0] = v26;
          v13 = v25[5];
          a6[4] = v25[4];
          a6[5] = v13;
          v14 = v25[1];
          *a6 = v25[0];
          a6[1] = v14;
          result = v25[3];
          a6[2] = v25[2];
          a6[3] = result;
        }
      }
    }
  }

  else if (a2 == 8 && *a5 == 40 && a6)
  {
    if (a3 == 2)
    {
      v9 = AudioDSPGraph::Box::out(this, a4);
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v9 = AudioDSPGraph::Box::in(this, a4);
    }

    v23 = *(*(v9 + 16) + 120);
    v24 = v23[2].n128_u64[0];
    result = v23[1];
    *a6 = *v23;
    a6[1] = result;
    a6[2].n128_u64[0] = v24;
  }

  return result;
}

uint64_t AudioDSPGraph::Box::getPropertyInfo(AudioDSPGraph::Box *this, int a2, int a3)
{
  if (a2 > 10)
  {
    if (a2 > 20)
    {
      if (a2 != 21)
      {
        if (a2 == 29)
        {
          v3 = 0;
          v5 = a3 == 0;
          v6 = 4;
LABEL_21:
          if (v5)
          {
            v4 = v6;
          }

          else
          {
            v4 = -10866;
          }

          return v3 | v4;
        }

        if (a2 != 54)
        {
LABEL_18:
          v3 = 0;
          v4 = -10879;
          return v3 | v4;
        }

LABEL_15:
        v3 = 0;
        v5 = a3 == 0;
        v6 = 8;
        goto LABEL_21;
      }

      if (a3)
      {
        v3 = 0;
        v4 = -10866;
        return v3 | v4;
      }

      v8 = (*(*this + 40))(this);
      v3 = 0x100000000;
      if (!v8)
      {
        v3 = 0;
      }
    }

    else
    {
      if (a2 != 11)
      {
        if (a2 != 12 && a2 != 20)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v3 = 0;
    }

    v4 = 4;
    return v3 | v4;
  }

  if (a2 <= 2)
  {
    v3 = 0;
    v4 = 8;
    if (a2 && a2 != 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        (*(*this + 104))(&v10);
        v7 = v11 - v10;
        if (v10)
        {
          v11 = v10;
          operator delete(v10);
        }

        v3 = 0;
        v4 = v7 & 0xFFFFFFFC;
        break;
      case 4:
        v3 = 0;
        v4 = 104;
        return v3 | v4;
      case 8:
        v3 = 0;
        v4 = 40;
        break;
      default:
        goto LABEL_18;
    }
  }

  return v3 | v4;
}

uint64_t AudioDSPGraph::Box::getAnalyzer(AudioDSPGraph::Box *this, const char *a2, int a3)
{
  v3 = *(this + 12);
  v4 = *(this + 13) - v3;
  if ((v4 & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  v5 = v4 >> 5;
  if (v5 <= a2)
  {
    v10 = (this + 40);
    if (*(this + 63) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string(&v11, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v10, v5, a2);
    AudioDSPGraph::ThrowException(1919837985, &v11, off_1E8337C78);
  }

  v6 = *(v3 + 32 * a2 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(this + 40);
  v8 = *(this + 41);
  if (v7 != v8)
  {
    while (*(*v7 + 8) != v6 || *(*v7 + 24) != a3)
    {
      v7 += 8;
      if (v7 == v8)
      {
        return 0;
      }
    }
  }

  if (v7 != v8)
  {
    return *v7;
  }

  else
  {
    return 0;
  }
}

void sub_1C920FB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::getAnalyzerList(AudioDSPGraph::Box *this@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(this + 12);
  v5 = *(this + 13) - v4;
  if ((v5 & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_20;
  }

  v6 = v5 >> 5;
  if (v6 <= a2)
  {
    v19 = (this + 40);
    if (*(this + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string(&v20, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v19, v6, a2);
    AudioDSPGraph::ThrowException(1919837985, &v20, off_1E83378B0);
  }

  v7 = *(v4 + 32 * a2 + 16);
  if (v7)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = *(this + 40);
    v9 = *(this + 41);
    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (*(*v8 + 8) == v7)
        {
          v12 = v10 - v11;
          v13 = (v10 - v11) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            a3[1] = v10;
            a3[2] = 0;
            *a3 = v11;
            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          if (-v11 >> 1 > v14)
          {
            v14 = -v11 >> 1;
          }

          if (-v11 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v15);
          }

          v16 = (v10 - v11) >> 2;
          v17 = (4 * v13);
          v18 = (4 * v13 - 4 * v16);
          *v17 = *(*v8 + 24);
          v10 = v17 + 1;
          memcpy(v18, v11, v12);
          if (v11)
          {
            operator delete(v11);
          }

          v11 = v18;
        }

        v8 += 8;
      }

      while (v8 != v9);
      a3[1] = v10;
      a3[2] = 0;
      *a3 = v11;
    }
  }

  else
  {
LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1C920FD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::analyzeEnable(uint64_t this, const char *a2, char a3)
{
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v9 = (this + 40);
      if (*(this + 63) < 0)
      {
        v9 = *v9;
      }

      caulk::make_string(&v10, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v9, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, &v10, off_1E8337C78);
    }

    v6 = *(v3 + 32 * a2 + 16);
    if (v6)
    {
      v7 = *(this + 320);
      v8 = *(this + 328);
      if (v7 != v8)
      {
        while (*(*v7 + 8) != v6)
        {
          v7 += 8;
          if (v7 == v8)
          {
            return this;
          }
        }
      }

      if (v7 != v8)
      {
        *(*v7 + 28) = a3;
      }
    }
  }

  return this;
}

void sub_1C920FE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::stopAnalyzing(AudioDSPGraph::Box *this, unsigned int a2)
{
  std::mutex::lock(this + 4);
  v5 = *(this + 12);
  v6 = *(this + 13) - v5;
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    v7 = v6 >> 5;
    if (v7 <= a2)
    {
      v17 = (this + 40);
      if (*(this + 63) < 0)
      {
        v17 = *v17;
      }

      caulk::make_string(&v18, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v17, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, &v18, off_1E8337C78);
    }

    v8 = *(v5 + 32 * a2 + 16);
    if (v8)
    {
      v9 = *(this + 40);
      v10 = *(this + 41);
      while (1)
      {
        if (v9 == v10)
        {
          v9 = *(this + 41);
          goto LABEL_9;
        }

        if (*(*v9 + 8) == v8)
        {
          break;
        }

        ++v9;
      }

      caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 352, *(*v9 + 24));
      atomic_fetch_add(this + 190, 0xFFFFFFFF);
      if (v9 != v10)
      {
        for (i = v9 + 1; i != v10; ++i)
        {
          v15 = *i;
          if (*(*i + 8) == v8)
          {
            caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 352, *(v15 + 24));
            atomic_fetch_add(this + 190, 0xFFFFFFFF);
          }

          else
          {
            *i = 0;
            v16 = *v9;
            *v9 = v15;
            if (v16)
            {
              (*(*v16 + 8))(v16);
            }

            ++v9;
          }
        }
      }

LABEL_9:
      v11 = *(this + 41);
      if (v9 != v11)
      {
        while (v11 != v9)
        {
          v13 = *--v11;
          v12 = v13;
          *v11 = 0;
          if (v13)
          {
            (*(*v12 + 8))(v12);
          }
        }

        *(this + 41) = v9;
      }
    }
  }

  std::mutex::unlock(this + 4);
}

void sub_1C92100C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v17 + 4);
  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Box::recordEnable(uint64_t this, const char *a2, char a3)
{
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      caulk::make_string(&v13, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v6, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, &v13, off_1E8337C78);
    }
  }

  else
  {
    v3 = *(this + 72);
    v7 = (*(this + 80) - v3) >> 5;
    if (v7 <= a2)
    {
      v12 = (this + 40);
      if (*(this + 63) < 0)
      {
        v12 = *v12;
      }

      caulk::make_string(&v13, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v12, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, &v13, off_1E8337C60);
    }
  }

  v8 = (v3 + 32 * a2 + 16);
  v9 = *(this + 208);
  v10 = *(this + 216);
  if (v9 != v10)
  {
    v11 = *v8;
    while (*(*v9 + 8) != v11)
    {
      v9 += 8;
      if (v9 == v10)
      {
        return this;
      }
    }
  }

  if (v9 != v10)
  {
    *(*v9 + 88) = a3;
  }

  return this;
}

void sub_1C921020C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::stopRecording(uint64_t this, const char *a2)
{
  v2 = this;
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      caulk::make_string(&v17, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v6, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, &v17, off_1E8337C78);
    }
  }

  else
  {
    v3 = *(this + 72);
    v7 = (*(this + 80) - v3) >> 5;
    if (v7 <= a2)
    {
      v16 = (this + 40);
      if (*(this + 63) < 0)
      {
        v16 = *v16;
      }

      caulk::make_string(&v17, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v16, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, &v17, off_1E8337C60);
    }
  }

  v8 = *(v3 + 32 * a2 + 16);
  v9 = *(this + 208);
  v10 = *(this + 216);
  if (v9 != v10)
  {
    while (*(*v9 + 8) != v8)
    {
      if (++v9 == v10)
      {
        v11 = *(this + 216);
        goto LABEL_23;
      }
    }

    atomic_fetch_add((this + 760), 0xFFFFFFFF);
  }

  v11 = v10;
  if (v9 != v10)
  {
    v12 = v9 + 1;
    if (v9 + 1 == v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9;
      do
      {
        v13 = *v12;
        if (*(*v12 + 8) == v8)
        {
          atomic_fetch_add((v2 + 760), 0xFFFFFFFF);
        }

        else
        {
          *v12 = 0;
          this = *v11;
          *v11 = v13;
          if (this)
          {
            this = (*(*this + 8))(this);
          }

          ++v11;
        }

        ++v12;
      }

      while (v12 != v10);
    }
  }

LABEL_23:
  v14 = *(v2 + 216);
  if (v11 != v14)
  {
    while (v14 != v11)
    {
      v15 = *--v14;
      this = v15;
      *v14 = 0;
      if (v15)
      {
        this = (*(*this + 8))(this);
      }
    }

    *(v2 + 216) = v11;
  }

  return this;
}

void sub_1C9210494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::record(uint64_t a1, char *a2, unsigned int a3, char a4, char a5, uint64_t a6)
{
  v6 = *(a1 + 104) - *(a1 + 96);
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    v7 = v6 >> 5;
    if (v7 > a3)
    {
      operator new();
    }

    v11 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v11 = *v11;
    }

    caulk::make_string(&v13, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v11, v7, a3);
    AudioDSPGraph::ThrowException(1919837985, &v13, off_1E8337C78);
  }

  v8 = *(a1 + 72);
  v9 = (*(a1 + 80) - v8) >> 5;
  if (v9 <= a3)
  {
    v12 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string(&v13, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v12, v9, a3);
    AudioDSPGraph::ThrowException(1919837985, &v13, off_1E8337C60);
  }

  v10 = *(**(*(*(v8 + 32 * a3 + 16) + 8) + 8) + 160);

  v10();
}

void sub_1C9210778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::stopInjecting(uint64_t this, const char *a2)
{
  v2 = this;
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      caulk::make_string(&v17, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v6, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, &v17, off_1E8337C78);
    }
  }

  else
  {
    v3 = *(this + 72);
    v7 = (*(this + 80) - v3) >> 5;
    if (v7 <= a2)
    {
      v16 = (this + 40);
      if (*(this + 63) < 0)
      {
        v16 = *v16;
      }

      caulk::make_string(&v17, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v16, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, &v17, off_1E8337C60);
    }
  }

  v8 = *(v3 + 32 * a2 + 16);
  v9 = *(this + 232);
  v10 = *(this + 240);
  if (v9 != v10)
  {
    while (*(*v9 + 8) != v8)
    {
      if (++v9 == v10)
      {
        v11 = *(this + 240);
        goto LABEL_23;
      }
    }

    atomic_fetch_add((this + 760), 0xFFFFFFFF);
  }

  v11 = v10;
  if (v9 != v10)
  {
    v12 = v9 + 1;
    if (v9 + 1 == v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9;
      do
      {
        v13 = *v12;
        if (*(*v12 + 8) == v8)
        {
          atomic_fetch_add((v2 + 760), 0xFFFFFFFF);
        }

        else
        {
          *v12 = 0;
          this = *v11;
          *v11 = v13;
          if (this)
          {
            this = (*(*this + 8))(this);
          }

          ++v11;
        }

        ++v12;
      }

      while (v12 != v10);
    }
  }

LABEL_23:
  v14 = *(v2 + 240);
  if (v11 != v14)
  {
    while (v14 != v11)
    {
      v15 = *--v14;
      this = v15;
      *v14 = 0;
      if (v15)
      {
        this = (*(*this + 8))(this);
      }
    }

    *(v2 + 240) = v11;
  }

  return this;
}

void sub_1C9210A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::inject(AudioDSPGraph::Box *this, char *a2, unsigned int a3, char a4)
{
  v4 = *(this + 13) - *(this + 12);
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 > a3)
    {
      operator new();
    }

    v9 = (this + 40);
    if (*(this + 63) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string(&v11, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v9, v5, a3);
    AudioDSPGraph::ThrowException(1919837985, &v11, off_1E8337C78);
  }

  v6 = *(this + 9);
  v7 = (*(this + 10) - v6) >> 5;
  if (v7 <= a3)
  {
    v10 = (this + 40);
    if (*(this + 63) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string(&v11, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v10, v7, a3);
    AudioDSPGraph::ThrowException(1919837985, &v11, off_1E8337C60);
  }

  v8 = *(**(*(*(v6 + 32 * a3 + 16) + 8) + 8) + 144);

  v8();
}

void sub_1C9210D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::getParameterList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void AudioDSPGraph::Box::getParameter(uint64_t a1@<X8>)
{
  LODWORD(v1) = -10878;
  *(&v1 + 1) = off_1E8334BA8;
  v2 = 0;
  *a1 = v1;
  *(a1 + 16) = 0;
  v3 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v1);
}

void AudioDSPGraph::Box::setParameter(uint64_t a1@<X8>)
{
  LODWORD(v1) = -10878;
  *(&v1 + 1) = off_1E8334BC0;
  v2 = 0;
  *a1 = v1;
  *(a1 + 16) = 0;
  v3 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v1);
}

void AudioDSPGraph::Box::printShort(const char *a1, void *a2, unsigned int a3, int a4)
{
  v7 = (*(*a1 + 16))(a1);
  v8 = a1 + 40;
  if (a1[63] < 0)
  {
    v8 = *v8;
  }

  AudioDSPGraph::printi(a2, a3, "%s '%s' %qu %p ", v7, v8, *(a1 + 8), a1);
}

uint64_t AudioDSPGraph::Box::print(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "graph %p\n", *(v6 + 16));
  }

  return result;
}

uint64_t AudioDSPGraph::Box::Box(uint64_t a1, __int128 *a2, unsigned int a3, unsigned int a4)
{
  *a1 = &unk_1F48CC660;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v7 = *a2;
  *(a1 + 56) = *(a2 + 2);
  *(a1 + 40) = v7;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 208) = 0u;
  v8 = a1 + 208;
  *(a1 + 72) = 0u;
  v9 = (a1 + 72);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 256) = 850045863;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (!qword_1EC392E08 || (v10 = std::__shared_weak_count::lock(qword_1EC392E08)) == 0)
  {
LABEL_5:
    operator new();
  }

  v11 = v10;
  v12 = qword_1EC392E00;
  if (!qword_1EC392E00)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_5;
  }

  v13 = (v8 - 112);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a1 + 592) = v12;
  v14 = *(a1 + 600);
  *(a1 + 600) = v11;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  *(a1 + 608) = &caulk::inplace_function_detail::rt_vtable<void,caulk::concurrent::details::skiplist_node<unsigned int,AudioDSPGraph::Analyzer *>::layout_vk const&>::empty;
  caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
  v15 = 0;
  *(a1 + 352) = 0;
  *(a1 + 364) = 167837706;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  do
  {
    atomic_store(0, (a1 + v15 + 376));
    atomic_store(0, (a1 + v15 + 384));
    v15 += 16;
  }

  while (v15 != 160);
  *(a1 + 536) = 0;
  *(a1 + 548) = 16908289;
  *(a1 + 544) = -1;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  atomic_store(0, (a1 + 560));
  atomic_store(0, (a1 + 568));
  for (i = 376; i != 536; i += 16)
  {
    atomic_store(v8 + 328, (a1 + i));
  }

  __dmb(0xBu);
  *(a1 + 656) = &unk_1F48CC910;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0u;
  v42 = 0;
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v42);
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 656) = &unk_1F48CC8E0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  if (a3 > ((*(a1 + 88) - *(a1 + 72)) >> 5))
  {
    v45 = v9;
    std::allocator<AudioDSPGraph::InputPort>::allocate_at_least[abi:ne200100](a3);
  }

  if (a4 > ((*(a1 + 112) - *(a1 + 96)) >> 5))
  {
    v45 = (v8 - 112);
    std::allocator<AudioDSPGraph::OutputPort>::allocate_at_least[abi:ne200100](a4);
  }

  if (a3)
  {
    v17 = 0;
    v18 = *(a1 + 80);
    do
    {
      v19 = *(a1 + 88);
      if (v18 >= v19)
      {
        v20 = *v9;
        v21 = (v18 - *v9) >> 5;
        v22 = v21 + 1;
        if ((v21 + 1) >> 59)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v23 = v19 - v20;
        if (v23 >> 4 > v22)
        {
          v22 = v23 >> 4;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFE0)
        {
          v24 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v45 = v9;
        if (v24)
        {
          std::allocator<AudioDSPGraph::InputPort>::allocate_at_least[abi:ne200100](v24);
        }

        v25 = 32 * v21;
        v42 = 0;
        v43 = v25;
        *(&v44 + 1) = 0;
        *(v25 + 8) = a1;
        *(v25 + 16) = 0;
        *(v25 + 24) = v17;
        *(v25 + 28) = 0;
        *v25 = &unk_1F48D2320;
        *&v44 = 32 * v21 + 32;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::InputPort>,AudioDSPGraph::InputPort*>(v20, v18, 0);
        v26 = *(a1 + 72);
        *(a1 + 72) = 0;
        v27 = *(a1 + 88);
        v40 = v44;
        *(a1 + 80) = v44;
        *&v44 = v26;
        *(&v44 + 1) = v27;
        v42 = v26;
        v43 = v26;
        std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(&v42);
        v18 = v40;
      }

      else
      {
        *(v18 + 8) = a1;
        *(v18 + 16) = 0;
        *(v18 + 24) = v17;
        *(v18 + 28) = 0;
        *v18 = &unk_1F48D2320;
        v18 += 32;
        *(a1 + 80) = v18;
      }

      *(a1 + 80) = v18;
      ++v17;
    }

    while (a3 != v17);
  }

  if (a4)
  {
    v28 = 0;
    v29 = *(a1 + 104);
    do
    {
      v30 = *(a1 + 112);
      if (v29 >= v30)
      {
        v31 = *v13;
        v32 = (v29 - *v13) >> 5;
        v33 = v32 + 1;
        if ((v32 + 1) >> 59)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v34 = v30 - v31;
        if (v34 >> 4 > v33)
        {
          v33 = v34 >> 4;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFE0)
        {
          v35 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        v45 = (v8 - 112);
        if (v35)
        {
          std::allocator<AudioDSPGraph::OutputPort>::allocate_at_least[abi:ne200100](v35);
        }

        v36 = 32 * v32;
        v42 = 0;
        v43 = v36;
        *(&v44 + 1) = 0;
        *(v36 + 8) = a1;
        *(v36 + 16) = 0;
        *(v36 + 24) = v28;
        *v36 = &unk_1F48D22D8;
        *&v44 = 32 * v32 + 32;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::OutputPort>,AudioDSPGraph::OutputPort*>(v31, v29, 0);
        v37 = *(a1 + 96);
        *(a1 + 96) = 0;
        v38 = *(a1 + 112);
        v41 = v44;
        *(a1 + 104) = v44;
        *&v44 = v37;
        *(&v44 + 1) = v38;
        v42 = v37;
        v43 = v37;
        std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(&v42);
        v29 = v41;
      }

      else
      {
        *(v29 + 8) = a1;
        *(v29 + 16) = 0;
        *(v29 + 24) = v28;
        *v29 = &unk_1F48D22D8;
        v29 += 32;
        *(a1 + 104) = v29;
      }

      *(a1 + 104) = v29;
      ++v28;
    }

    while (a4 != v28);
  }

  return a1;
}

void sub_1C9211788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, AudioDSPGraph::BoxEventHandlerTree *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::mutex *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(va);
  AudioDSPGraph::BoxEventHandlerTree::~BoxEventHandlerTree(a9);
  caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(v18 + 144);
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(v17 + 576);
  a17 = a11;
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::mutex::~mutex(a13);
  a17 = a12;
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = v18;
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = a10;
  std::vector<AudioDSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](&a17);
  v20 = *(v17 + 160);
  if (v20)
  {
    *(v17 + 168) = v20;
    operator delete(v20);
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(a14);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (*(v17 + 63) < 0)
  {
    operator delete(*(v17 + 40));
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  for (i = atomic_load((a1 + 24)); ; i = atomic_load((v3 + 24)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 184 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 14) != 2)
    {
      v4 = atomic_load((v3 + 24));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(a1, *(v3 + 8));
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, i);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(unint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(a1, _X2);
  }

  (*(*(a1 + 32) + 24))(a1 + 40);
  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<AudioDSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(uint64_t a1)
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

void std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<AudioDSPGraph::OutputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::OutputPort>,AudioDSPGraph::OutputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F48D2290;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F48D22D8;
      a3 += 32;
      v5 += 4;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

void std::allocator<AudioDSPGraph::InputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::InputPort>,AudioDSPGraph::InputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F48D2290;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F48D2320;
      *(a3 + 28) = *(v5 + 7);
      v5 += 4;
      a3 += 32;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

caulk::alloc::base_allocator *std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    v4 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v2];
    while (1)
    {
      result = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!result)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
      atomic_fetch_add((a1 + 68), 0x801u);
      v6 = *(a1 + 48);
      if (v6)
      {
        while (v6 + 4 > result || result + v4 > (v6 + 2048))
        {
          v6 = atomic_load(v6);
          if (!v6)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v6 = atomic_load((a1 + 72));
        if (v6)
        {
          v8 = v6 + 4 > result;
        }

        else
        {
          v8 = 1;
        }

        if (v8 || result + v4 > (v6 + 2048))
        {
          caulk::alloc::base_allocator::bad_dealloc(result);
        }
      }

      if (v6 + 4 > result || result + v4 > (v6 + 2048))
      {
        caulk::alloc::base_allocator::bad_dealloc(result);
      }

      atomic_fetch_add((a1 + 68), 0xFFFFFFFF);
    }

    ++v2;
  }

  while (v2 != 10);
  v10 = *(a1 + 48);
  if (v10)
  {
    do
    {
      v11 = atomic_load(v10);
      result = caulk::alloc::details::caching_page_allocator_base::deallocate();
      v10 = v11;
    }

    while (v11);
  }

  return result;
}

void caulk::alloc::base_allocator::bad_dealloc(caulk::alloc::base_allocator *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  caulk::alloc::alloc_error::alloc_error(exception, v2);
}

std::runtime_error *caulk::alloc::alloc_error::alloc_error(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, "deallocate() called for unowned block");
  result->__vftable = &unk_1F48CC990;
  return result;
}

void caulk::alloc::alloc_error::~alloc_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CC940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Box::~Box(AudioDSPGraph::Box *this)
{
  *this = &unk_1F48CC660;
  *(this + 82) = &unk_1F48CC910;
  v3 = (this + 704);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v3);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(this + 672);
  caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(this + 352);
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(this + 576);
  v3 = (this + 320);
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::mutex::~mutex(this + 4);
  v3 = (this + 232);
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 208);
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 184);
  std::vector<AudioDSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 120);
  v3 = (this + 96);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

void std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

void AudioDSPGraph::Box::addEventHandler(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v3 = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::addLeaf((a1 + 656), &v4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  if (v3)
  {
    atomic_fetch_add((a1 + 760), 1u);
  }
}

void sub_1C921258C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AudioDSPGraph::Box::removeEventHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 712);
  v4 = *(a1 + 704);
  v5 = (v3 - v4);
  if (v3 == v4)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 704);
  while (*v7 != *a2)
  {
    v7 += 16;
    if (v7 == v3)
    {
      goto LABEL_21;
    }
  }

  if (v7 != v3)
  {
    v8 = v7 + 16;
    if (v7 + 16 != v3)
    {
      do
      {
        v9 = *v8;
        if (*v8 != *a2)
        {
          v10 = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = 0;
          v11 = *(v7 + 1);
          *v7 = v9;
          *(v7 + 1) = v10;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          v7 += 16;
        }

        v8 += 16;
      }

      while (v8 != v3);
      v3 = *(a1 + 712);
      v4 = *(a1 + 704);
    }
  }

  if (v7 == v3)
  {
LABEL_21:
    v7 = v3;
  }

  else
  {
    while (v3 != v7)
    {
      v12 = *(v3 - 1);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v3 -= 16;
    }

    *(a1 + 712) = v7;
    v4 = *(a1 + 704);
  }

  v13 = v7 - v4;
  if (v5 != v13)
  {
    operator new();
  }

  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v15, v13);
  return std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v15);
}

unint64_t AudioDSPGraph::Box::upstreamTailTimeInTicks(AudioDSPGraph::Box *this)
{
  v1 = *(this + 9);
  v2 = *(this + 10);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *(*(*(v1 + 16) + 8) + 8);
    v5 = (*(*v4 + 80))(v4);
    v6 = AudioDSPGraph::Box::upstreamTailTimeInTicks(v4);
    if (v3 <= v6 + v5)
    {
      v3 = v6 + v5;
    }

    v1 += 32;
  }

  while (v1 != v2);
  return v3;
}

uint64_t std::__split_buffer<AudioDSPGraph::PropertyTap>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioDSPGraph::BoxRegistry::add(uint64_t *a1, __int128 *a2, unsigned int *a3, uint64_t a4)
{
  v8 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v15 + 2, a2))
  {
    goto LABEL_17;
  }

  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator=((v15 + 5), a4);
  v17 = a3[1] + *a3 + a3[2];
  v18 = a1[6];
  if (!*&v18)
  {
    goto LABEL_40;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = a3[1] + *a3 + a3[2];
    if (v17 >= *&v18)
    {
      v20 = v17 % *&v18;
    }
  }

  else
  {
    v20 = (*&v18 - 1) & v17;
  }

  v21 = *(a1[5] + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v23 = v22[1];
    if (v23 != v17)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *&v18)
        {
          v23 %= *&v18;
        }
      }

      else
      {
        v23 &= *&v18 - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v22[2] != *a3 || *(v22 + 6) != a3[2])
    {
LABEL_39:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator=((v22 + 5), a4);
  v26 = a1[11];
  v25 = a1[12];
  if (v26 >= v25)
  {
    v28 = a1[10];
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v28) >> 4);
    if (v29 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v30 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v28) >> 4);
    v31 = 2 * v30;
    if (2 * v30 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x2AAAAAAAAAAAAAALL)
    {
      v32 = 0x555555555555555;
    }

    else
    {
      v32 = v31;
    }

    v48 = a1 + 10;
    if (v32)
    {
      if (v32 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = 48 * v29;
    v44 = 0;
    v45 = v35;
    v36 = 0;
    v46 = v35;
    v47 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v35, *a2, *(a2 + 1));
      v37 = v45;
      v38 = v46;
      v36 = v47;
    }

    else
    {
      *v35 = *a2;
      *(v35 + 16) = *(a2 + 2);
      v37 = v35;
      v38 = v35;
    }

    *(v35 + 24) = *a3;
    *(v35 + 40) = a3[4];
    v34 = v38 + 48;
    v39 = a1[10];
    v40 = a1[11] - v39;
    v41 = v37 - v40;
    memcpy((v37 - v40), v39, v40);
    v42 = a1[10];
    a1[10] = v41;
    a1[11] = v34;
    v43 = a1[12];
    a1[12] = v36;
    v46 = v42;
    v47 = v43;
    v44 = v42;
    v45 = v42;
    std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(&v44);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1[11], *a2, *(a2 + 1));
    }

    else
    {
      v27 = *a2;
      *(v26 + 16) = *(a2 + 2);
      *v26 = v27;
    }

    v33 = *a3;
    *(v26 + 40) = a3[4];
    *(v26 + 24) = v33;
    v34 = v26 + 48;
    a1[11] = v26 + 48;
  }

  a1[11] = v34;
}

void sub_1C92132E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_31::operator()<char const*,int,AudioDSPGraph::Boxes::CalculationBox::OperatorDomain,AudioDSPGraph::Boxes::CalculationBox::OperatorCodomain,AudioDSPGraph::Boxes::CalculationBox::Operator>(uint64_t *a1, char *a2, unsigned int a3, int a4, int a5, int a6)
{
  __p[7] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = 1668183148;
  v8 = a3;
  v9 = 1633841016;
  v10 = 0;
  operator new();
}

void sub_1C9213434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN13AudioDSPGraph11BoxRegistryC1EvENK4__31clIPKciNS2_5Boxes14CalculationBox14OperatorDomainENS9_16OperatorCodomainENS9_8OperatorEEEDaT_T0_T1_T2_T3_EUlNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjjE_NSM_ISP_EEFNS_10unique_ptrINS2_3BoxENS_14default_deleteISS_EEEESO_jjEEclEOSO_OjSZ_(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = *(a2 + 8);
  *(v6 + 7) = *(a2 + 15);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (!*a3)
  {
    if (!*a4)
    {
      operator new();
    }

    caulk::make_string(&__p, "wrong number of output for '%s' box (must be 0)", a2, *(a1 + 8));
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C50);
  }

  caulk::make_string(&__p, "wrong number of inputs for '%s' box (must be 0)", a2, *(a1 + 8));
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C38);
}

void sub_1C9213674(_Unwind_Exception *a1)
{
  if (*v3)
  {
    *(v1 + 792) = *v3;
    if ((*(v1 + 840) & 1) == 0)
    {
      sub_1C921369C();
    }

    *v2 = 0;
  }

  AudioDSPGraph::Box::~Box(v1);
  MEMORY[0x1CCA84AE0](v1, 0x10F3C40ACE73096);
  _Unwind_Resume(a1);
}

void sub_1C92136A0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v16, 0x10F3C40ACE73096, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x1C92136FCLL);
}

void sub_1C92136D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZN13AudioDSPGraph11BoxRegistryC1EvENK4__31clIPKciNS2_5Boxes14CalculationBox14OperatorDomainENS9_16OperatorCodomainENS9_8OperatorEEEDaT_T0_T1_T2_T3_EUlNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjjE_NSM_ISP_EEFNS_10unique_ptrINS2_3BoxENS_14default_deleteISS_EEEESO_jjEE7__cloneEPNS0_6__baseISW_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F48CCA10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_30,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_30>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for SingleRateLPCMConverterBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83354C0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for SingleRateLPCMConverterBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83354A8);
}

void sub_1C9213914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_29,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_29>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (!*a3)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for parameter smoothing box. This box does not produce any meaningful output");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335490);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for parameter smoothing box. Need 1 input to infer sample rate and block size.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335478);
}

void sub_1C9213B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_28,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_28>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for NonFiniteProtectionBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335460);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for NonFiniteProtectionBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335448);
}

void sub_1C9213E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_27,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_27>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = a1[1];
  *(v2 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C921403C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C40223C9748, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_26,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_26>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for MantissaRandomizerBox (must be 1)");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335430);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for MantissaRandomizerBox (must be 1)");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335418);
}

void sub_1C92142B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_25,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_25>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for DenormalEliminatorBox (must be 1)");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335400);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for DenormalEliminatorBox (must be 1)");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353E8);
}

void sub_1C92144F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_24,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_24>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = a1[1];
  *(v2 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C92146D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C400BD6F747, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_23,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_23>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = a1[1];
  *(v3 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C92148B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C40B4C743D6, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_22,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_22>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = a1[1];
  *(v3 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C9214A78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

double AudioDSPGraph::Boxes::DeadEndBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.23042584e175;
  *a1 = xmmword_1C925F1C0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DeadEndBox::~DeadEndBox(AudioDSPGraph::Boxes::DeadEndBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_21,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_21>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = a1[1];
  *(v2 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C9214C74(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C40CAD27F97, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_20,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_20>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = a1[1];
  *(v2 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C9214E2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_19,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_19>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = a1[1];
  *(v3 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C9214FF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_18,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_18>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = a1[1];
  *(v3 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_1C92151B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_17,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_17>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1 && *a3 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "TimeFreqBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353D0);
}

void sub_1C92153C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_16,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_16>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1 && *a3 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "FreqSRCBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353B8);
}

void sub_1C92155D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::FCBox(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Boxes::RingBufferBox::RingBufferBox(a1, __p, 1u, 1u);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D26A8;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 864) = 0u;
  return a1;
}

void sub_1C92156C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::RingBufferBox::RingBufferBox(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, a3, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D31A8;
  *(a1 + 764) = 0;
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_1C9215780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_15,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_15>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1 && *a3 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ReblockerBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353A0);
}

void sub_1C9215948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_14,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_14>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1 && *a3 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "SRCBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335388);
}

void sub_1C9215B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_13,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_13>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, unsigned int *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a3 == 1)
  {
    if (*a2)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "AverageBox number of inputs cannot be 0.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335370);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "AverageBox number of outputs must be 1");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335358);
}

void sub_1C9215DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_12,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_12>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, unsigned int *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a3 == 1)
  {
    if (*a2)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "MixBox number of inputs cannot be zero.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335340);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for MixBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335328);
}

void sub_1C921602C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C92161B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_11,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_11>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, unsigned int *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a3 == 1)
  {
    if (*a2)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "SumBox number of inputs cannot be zero.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335310);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for SumBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352F8);
}

void sub_1C9216390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_10,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_10>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for CopyBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352E0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for CopyBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352C8);
}

void sub_1C92165D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_9,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_9>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for VectorGainBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83352B0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for VectorGainBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335298);
}

void sub_1C9216834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_8,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_8>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic abs box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335280);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic abs box. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335268);
}

void sub_1C9216A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_7,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_7>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic sum box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83351A8);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic sum box. must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335190);
}

void sub_1C9216CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = (v5 - v4) >> 5;
  if (v7 != 2)
  {
    v10 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0x20)
  {
    v7 = 2;
LABEL_27:
    caulk::make_string(&v32, "There must be two inputs and one output, instead of %u and %u.", v3, v7, v10 >> 5);
    AudioDSPGraph::ThrowException(1701602593, &v32, off_1E8335220);
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v20, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  if (((v5 - v4) >> 5) <= 1)
  {
    v21 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v21, v6 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  v11 = *(*(v4 + 16) + 120);
  v12 = *(v11 + 28);
  v13 = *(*(v4 + 48) + 120);
  if (v12 != *(v13 + 28))
  {
    v22 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v23 = AudioDSPGraph::Box::in(a1, 1);
    caulk::make_string(&v31, "The inputs must have the same channel count, but have %u and %u.", v24, v22, *(*(*(v23 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v31, off_1E8335238);
  }

  if (v9 == v8)
  {
    v25 = v10 >> 5;
    v26 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v26, v25, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C78);
  }

  if (v12 != *(*(*(v8 + 16) + 120) + 28))
  {
    v27 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v28 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string(&v30, "The inputs and output must have the same channel count, but have %u and %u.", v29, v27, *(*(*(v28 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v30, off_1E8335250);
  }

  v14 = *(v11 + 8);
  v15 = *(v13 + 8);
  if (v14 == 1819304813 && v15 == 1819304813)
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
  }

  else if (v14 != 1819304813 || v15 == 1819304813)
  {
    if (v14 != 1819304813 && v15 == 1819304813)
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
    }

    else
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v19;
  return result;
}

void sub_1C9217000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvadd(&__A, 1, &__B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvadd(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::Domain)1>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvadd(&__A, 1, a3, 1, &v5, 1, __N);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox>::process(AudioDSPGraph::Box *this, const char *a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v39 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v40 = AudioDSPGraph::Box::in(this, 1);
    caulk::make_string(&v53, "The inputs must have the same channel count, but have %u and %u.", v41, v39, *(*(*(v40 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v53, off_1E83351C0);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v42 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v43 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v52, "The inputs and output must have the same channel count, but have %u and %u.", v44, v42, *(*(*(v43 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v52, off_1E83351D8);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v12 = v6[3];
  if (v12 < v10)
  {
    caulk::make_string(&v51, "The buffer passed for input 0 should be at least %u bytes, but is %u.", v11, v10, v12);
    AudioDSPGraph::ThrowException(1718449215, &v51, off_1E83351F0);
  }

  v13 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v15 = v7[3];
  if (v15 < v13)
  {
    caulk::make_string(&v50, "The buffer passed for input 1 should be at least %u bytes, but is %u.", v14, v13, v15);
    AudioDSPGraph::ThrowException(1718449215, &v50, off_1E8335208);
  }

  v16 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v16)
  {
    v19 = result;
    v20 = v8 + 4;
    v21 = (v7 + 4);
    v22 = (v6 + 4);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      result = (***(this + 96))(*(this + 96), a2, v23, v25, *v20);
      *(v20 - 1) = v19;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  v34 = (*(this + 10) - v33) >> 5;
  if (*(this + 10) == v33)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v47, v34, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v34 <= 1)
  {
    v48 = (this + 40);
    if (*(this + 63) < 0)
    {
      v48 = *v48;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v48, v34, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v35 = *(this + 12);
  if (*(this + 13) == v35)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  *(*(*(v35 + 16) + 56) + 72) = (*(*(*(v33 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v33 + 16) + 56) + 72);
  return result;
}

void sub_1C921777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.73571922e161;
  *a1 = xmmword_1C925F1D0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox::~SumBox(AudioDSPGraph::Boxes::Arithmetic::Binary::SumBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_6,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_6>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic difference box. Must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83350D0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic difference box. Must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83350B8);
}

void sub_1C9217A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = (v5 - v4) >> 5;
  if (v7 != 2)
  {
    v10 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0x20)
  {
    v7 = 2;
LABEL_27:
    caulk::make_string(&v32, "There must be two inputs and one output, instead of %u and %u.", v3, v7, v10 >> 5);
    AudioDSPGraph::ThrowException(1701602593, &v32, off_1E8335148);
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v20, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  if (((v5 - v4) >> 5) <= 1)
  {
    v21 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v21, v6 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  v11 = *(*(v4 + 16) + 120);
  v12 = *(v11 + 28);
  v13 = *(*(v4 + 48) + 120);
  if (v12 != *(v13 + 28))
  {
    v22 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v23 = AudioDSPGraph::Box::in(a1, 1);
    caulk::make_string(&v31, "The inputs must have the same channel count, but have %u and %u.", v24, v22, *(*(*(v23 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v31, off_1E8335160);
  }

  if (v9 == v8)
  {
    v25 = v10 >> 5;
    v26 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v26, v25, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C78);
  }

  if (v12 != *(*(*(v8 + 16) + 120) + 28))
  {
    v27 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v28 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string(&v30, "The inputs and output must have the same channel count, but have %u and %u.", v29, v27, *(*(*(v28 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v30, off_1E8335178);
  }

  v14 = *(v11 + 8);
  v15 = *(v13 + 8);
  if (v14 == 1819304813 && v15 == 1819304813)
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
  }

  else if (v14 != 1819304813 || v15 == 1819304813)
  {
    if (v14 != 1819304813 && v15 == 1819304813)
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
    }

    else
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v19;
  return result;
}

void sub_1C9217D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvsub(&__A, 1, &__B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvsub(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::Domain)1>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  v5 = __N;
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v6.realp = a5;
  v6.imagp = &a5[__N];
  vDSP_zrvsub(&__A, 1, a3, 1, &v6, 1, __N);
  vDSP_zvneg(&v6, 1, &v6, 1, v5);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox>::process(AudioDSPGraph::Box *this, const char *a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v39 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v40 = AudioDSPGraph::Box::in(this, 1);
    caulk::make_string(&v53, "The inputs must have the same channel count, but have %u and %u.", v41, v39, *(*(*(v40 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v53, off_1E83350E8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v42 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v43 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v52, "The inputs and output must have the same channel count, but have %u and %u.", v44, v42, *(*(*(v43 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v52, off_1E8335100);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v12 = v6[3];
  if (v12 < v10)
  {
    caulk::make_string(&v51, "The buffer passed for input 0 should be at least %u bytes, but is %u.", v11, v10, v12);
    AudioDSPGraph::ThrowException(1718449215, &v51, off_1E8335118);
  }

  v13 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v15 = v7[3];
  if (v15 < v13)
  {
    caulk::make_string(&v50, "The buffer passed for input 1 should be at least %u bytes, but is %u.", v14, v13, v15);
    AudioDSPGraph::ThrowException(1718449215, &v50, off_1E8335130);
  }

  v16 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v16)
  {
    v19 = result;
    v20 = v8 + 4;
    v21 = (v7 + 4);
    v22 = (v6 + 4);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      result = (***(this + 96))(*(this + 96), a2, v23, v25, *v20);
      *(v20 - 1) = v19;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  v34 = (*(this + 10) - v33) >> 5;
  if (*(this + 10) == v33)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v47, v34, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v34 <= 1)
  {
    v48 = (this + 40);
    if (*(this + 63) < 0)
    {
      v48 = *v48;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v48, v34, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v35 = *(this + 12);
  if (*(this + 13) == v35)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  *(*(*(v35 + 16) + 56) + 72) = (*(*(*(v33 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v33 + 16) + 56) + 72);
  return result;
}