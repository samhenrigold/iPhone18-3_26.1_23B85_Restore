void kaldi::quasar::EspressoV2Plan::CreateZeroedDataInt32()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "CreateZeroedDataInt32", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 740);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateZeroedDataInt32 from const std::vector<int64> &dim_sizes");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat(void x0_0, uint64_t a1)
{
  std::vector<unsigned long>::vector[abi:ne200100](&__dst, (*(a1 + 8) - *a1) >> 3);
  v3 = *(a1 + 8);
  if (v3 != *a1)
  {
    memmove(__dst, *a1, v3 - *a1);
  }

  operator new();
}

void sub_1C315B5DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1C692AE10](v11, 0x10B3C40ACDA1BA3, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat16(void x0_0, uint64_t **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, v3, v2, v4);
  operator new();
}

void sub_1C315B69C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1C692AE10](v11, 0x10B3C40ACDA1BA3, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::CopyFloat16(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2, kaldi::quasar::ComputeEngineBufferItf *a3)
{
  {
    v6 = 0;
  }

  else
  {
    kaldi::quasar::ComputeEngineItf::CreateCopyFloat(v16, this, a2);
    v6 = v16[0];
  }

  v16[34] = 0;
  v16[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyFloat16", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 770);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v10 = strlen(last_error_message);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, last_error_message, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyFloat16", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 775);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Target type must match engine!", 30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  result = e5rt_tensor_utils_cast_from_fp32_to_fp16();
  if (result)
  {
    v12 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyFloat16", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 780);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v14 = strlen(v12);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_1C315B978(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2Plan::CreateCopyFloat16(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  {
    kaldi::quasar::ComputeEngineItf::CreateCopyFloat(__p, this, a2);
  }

  v11 = 0;
  v12 = 0;
  if (!e5rt_tensor_desc_get_shape())
  {
    memset(__p, 0, 24);
    v5 = std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, v12, &v12[v11], v11);
    kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat16(v5, __p);
  }

  last_error_message = e5rt_get_last_error_message();
  kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "CreateCopyFloat16", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 796);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Espresso V2 failure: ", 21);
  v8 = strlen(last_error_message);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, last_error_message, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n", 1);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
}

void sub_1C315BBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10)
{
  *v11 = 0;
  (*(*v12 + 8))(v12, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Plan::CreateCopyFloat32(void a1, const kaldi::quasar::ComputeEngineBufferItf *lpsrc)
{
  {
    if (!e5rt_tensor_desc_get_shape())
    {
      memset(__p, 0, 24);
      v2 = std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, 0, 0, 0);
      kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat(v2, __p);
    }

    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "CreateCopyFloat32", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 820);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Espresso V2 failure: ", 21);
    v5 = strlen(last_error_message);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, last_error_message, v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\n");
  }

  else
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "CreateCopyFloat32", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 814);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "EspressoV2TensorData expected");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
}

void kaldi::quasar::EspressoV2Plan::CreateConcat()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "CreateConcat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 836);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateConcat");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::EspressoV2Plan::CreateSplit(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "CreateSplit", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 843);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Not implemented CreateSplit");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::quasar::EspressoV2Plan::CreateSlice(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 851);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Not implemented CreateSlice");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(uint64_t a1, uint64_t a2, const std::string **a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      data = v10[1].__r_.__value_.__l.__data_;
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v33, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 873);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v33, "Unsupported input cast: %s");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v33);
      }

      kaldi::quasar::EspressoV2TensorData::BindToInput(v13, a2, v10, v6);
      v10 = (v10 + 32);
    }

    while (v10 != v11);
  }

  if (a5)
  {
    v14 = *a5;
    v15 = a5[1];
    v16 = (v15 - *a5) >> 3;
    v17 = *a4;
    if (v16 == 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3))
    {
      if (v15 == v14)
      {
        goto LABEL_28;
      }

      v18 = 0;
      if (v16 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = (v15 - *a5) >> 3;
      }

      while (1)
      {
        v20 = *(v14 + 8 * v18);
        if (!v20)
        {
          break;
        }

        if (!v21)
        {
          break;
        }

        v22 = *(v21 + 79);
        if (v22 >= 0)
        {
          v23 = *(v21 + 79);
        }

        else
        {
          v23 = v21[8];
        }

        v24 = *(v17 + 23);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v17 + 8);
        }

        if (v23 != v24)
        {
          break;
        }

        v28 = v21[7];
        v26 = v21 + 7;
        v27 = v28;
        if (v22 < 0)
        {
          v26 = v27;
        }

        v29 = v25 >= 0 ? v17 : *v17;
        if (memcmp(v26, v29, v23))
        {
          break;
        }

        ++v18;
        v17 += 24;
        if (v19 == v18)
        {
          goto LABEL_28;
        }
      }
    }

    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a5);
    v14 = *a5;
    v15 = a5[1];
LABEL_28:
    if (v14 == v15)
    {
      if (*a4 != a4[1])
      {
        kaldi::quasar::EspressoV2TensorData::CreateAndBindToOutput();
      }
    }

    else if (v6)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(v14 + 8 * v31);
        if (v32)
        {
        }

        kaldi::quasar::EspressoV2TensorData::BindToOutput(v32, a2, (*a4 + v30));
        ++v31;
        v14 = *a5;
        v30 += 24;
      }

      while (v31 < (a5[1] - *a5) >> 3);
    }
  }
}

std::string *kaldi::quasar::EspressoV2TensorData::BindToInput(uint64_t a1, uint64_t a2, const std::string *a3, int a4)
{
  if (a4)
  {
    goto LABEL_16;
  }

  v6 = (a1 + 56);
  v7 = *(a1 + 79);
  if (v7 >= 0)
  {
    v8 = *(a1 + 79);
  }

  else
  {
    v8 = *(a1 + 64);
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v10 = size;
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (v8 != size || (v7 >= 0 ? (v11 = (a1 + 56)) : (v11 = *v6), v10 >= 0 ? (v12 = a3) : (v12 = a3->__r_.__value_.__r.__words[0]), result = memcmp(v11, v12, v8), result))
  {
    if (v8)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "BindToInput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 283);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Cannot bind to ", 15);
      v27 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v27 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = a3->__r_.__value_.__r.__words[0];
      }

      if (v27 >= 0)
      {
        v29 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = a3->__r_.__value_.__l.__size_;
      }

      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " due to existing binding to ", 28);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v31, v6);
      goto LABEL_24;
    }

LABEL_16:
    if (e5rt_execution_stream_operation_retain_input_port())
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "BindToInput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 292);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Espresso V2 failure: ", 21);
      v16 = strlen(last_error_message);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, last_error_message, v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "\n");
    }

    else if (e5rt_io_port_bind_buffer_object())
    {
      v18 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "BindToInput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 295);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Espresso V2 failure: ", 21);
      v20 = strlen(v18);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v18, v20);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "\n");
    }

    else
    {
      if (!e5rt_io_port_release())
      {
        return std::string::operator=((a1 + 56), a3);
      }

      v22 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "BindToInput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 296);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Espresso V2 failure: ", 21);
      v24 = strlen(v22);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v22, v24);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "\n");
    }

LABEL_24:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

  return result;
}

void kaldi::quasar::EspressoV2TensorData::CreateAndBindToOutput()
{
  v7[34] = 0;
  if (!e5rt_execution_stream_operation_retain_output_port())
  {
    operator new();
  }

  last_error_message = e5rt_get_last_error_message();
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "CreateAndBindToOutput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 322);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Espresso V2 failure: ", 21);
  v5 = strlen(last_error_message);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, last_error_message, v5);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\n");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
}

std::string *kaldi::quasar::EspressoV2TensorData::BindToOutput(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v18[34] = 0;
  if (e5rt_execution_stream_operation_retain_output_port())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "BindToOutput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 306);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Espresso V2 failure: ", 21);
    v8 = strlen(last_error_message);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, last_error_message, v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "\n");
    goto LABEL_8;
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v10 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "BindToOutput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 309);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Espresso V2 failure: ", 21);
    v12 = strlen(v10);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10, v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "\n");
    goto LABEL_8;
  }

  if (e5rt_io_port_release())
  {
    v14 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "BindToOutput", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 311);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Espresso V2 failure: ", 21);
    v16 = strlen(v14);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v14, v16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "\n");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  return std::string::operator=((a1 + 56), a3);
}

void kaldi::quasar::EspressoV2Plan::Run(uint64_t a1, __int128 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v9 = *a2;
  v10 = a2[1];
  while (v9 != v10)
  {
    v11 = *(v9 + 3);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v12 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v12;
    }

    v16 = v11;
    v13 = v18;
    if (v18 >= v19)
    {
      v18 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v17, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = *&__p.__r_.__value_.__l.__data_;
      *(v18 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v13 = v14;
      memset(&__p, 0, sizeof(__p));
      *(v13 + 24) = v16;
      v18 = v13 + 32;
    }

    v9 += 2;
  }

  (*(*a1 + 128))(a1, &v17, a3, a4, a5);
  __p.__r_.__value_.__r.__words[0] = &v17;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C315CC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::Run(uint64_t a1, const std::string **a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (*(a1 + 216))
  {
    goto LABEL_10;
  }

  if (!*(a1 + 256))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "Run", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 940);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "_main_builder != nullptr");
    goto LABEL_16;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    (*(*v9 + 16))(v9, a1 + 48, a3, a4);
  }

  if (e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "Run", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 945);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Espresso V2 failure: ", 21);
    v15 = strlen(last_error_message);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, last_error_message, v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "\n");
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    (*(*v10 + 24))(v10, a1 + 48);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v17, "Run", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 949);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Loaded v2 model during Run", 26);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v17);
  }

LABEL_10:
  if ((*(a1 + 264) & 1) == 0)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      atomic_store(1u, (v11 + 8));
    }

    *(a1 + 264) = 1;
  }

  return kaldi::quasar::EspressoV2Plan::RunOp(a1, *(a1 + 216), a2, a3, a5, a5);
}

uint64_t kaldi::quasar::EspressoV2Plan::RunOp(uint64_t a1, uint64_t a2, const std::string **a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v11 = (a1 + 248);
  v10 = *(a1 + 248);
  if (v10)
  {
    v10 = e5rt_execution_stream_reset();
    if (v10)
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v29, "RunOp", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1000);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Espresso V2 failure: ", 21);
      v23 = strlen(last_error_message);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, last_error_message, v23);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "\n");
      goto LABEL_12;
    }
  }

  kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(v10, a2, a3, a4, a6, 0);
  if (!*v11 && e5rt_execution_stream_create())
  {
    v25 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v29, "RunOp", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1007);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Espresso V2 failure: ", 21);
    v27 = strlen(v25);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v25, v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "\n");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
  }

  if (e5rt_execution_stream_encode_operation())
  {
    v13 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v29, "RunOp", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1012);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Espresso V2 failure: ", 21);
    v15 = strlen(v13);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v13, v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "\n");
    goto LABEL_12;
  }

  result = e5rt_execution_stream_execute_sync();
  if (result)
  {
    v17 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v29, "RunOp", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1015);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Espresso V2 failure: ", 21);
    v19 = strlen(v17);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v17, v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "\n");
    goto LABEL_12;
  }

  return result;
}

void kaldi::quasar::EspressoV2Plan::RunFunction(uint64_t a1, const void **a2, __int128 **a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v10 = *a3;
  v11 = a3[1];
  while (v10 != v11)
  {
    v12 = *(v10 + 3);
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v10, *(v10 + 1));
    }

    else
    {
      v13 = *v10;
      __p.__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&__p.__r_.__value_.__l.__data_ = v13;
    }

    v17 = v12;
    v14 = v19;
    if (v19 >= v20)
    {
      v19 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v18, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v15 = *&__p.__r_.__value_.__l.__data_;
      *(v19 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v14 = v15;
      memset(&__p, 0, sizeof(__p));
      *(v14 + 24) = v17;
      v19 = v14 + 32;
    }

    v10 += 2;
  }

  kaldi::quasar::EspressoV2Plan::RunFunction(a1, a2, &v18, a4, a5, a6);
  __p.__r_.__value_.__r.__words[0] = &v18;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C315D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::RunFunction(uint64_t a1, const void **a2, const std::string **a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  if (*(a1 + 216))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "RunFunction", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 984);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Default function (main) set, use Run");
    goto LABEL_6;
  }

  v15[0] = a2;
  v11 = std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 224), a2, &std::piecewise_construct, v15, &v16)[7];
  if (!v11)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "RunFunction", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 989);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Function not found: ", 20);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, a2);
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  return kaldi::quasar::EspressoV2Plan::RunOp(a1, v11, a3, a4, v12, a6);
}

void kaldi::quasar::EspressoV2Plan::PrepareOpChain(uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X6>, void *a6@<X7>, uint64_t a7@<X8>, void *a8, char a9)
{
  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(*a3, a3[1], &v102, v103, &v95);
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v97 = 0uLL;
  v98 = 0;
  v11 = std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<>(&v99);
  v100 = v11;
  v12 = *a2;
  if (a2[1] != *a2)
  {
    v87 = a7;
    v13 = 0;
    while (1)
    {
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1037, 5);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Initializing model inference chain, position: ", 46);
        MEMORY[0x1C692A960](v14, v13);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v95);
        v12 = *a2;
      }

      v92 = 0;
      v93 = 0;
      v94 = 0;
      memset(v91, 0, sizeof(v91));
      v15 = (*a8 + 24 * v13);
      v16 = *v15;
      v17 = v15[1];
      while (v16 != v17)
      {
        v11 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(&v102, v16);
        v18 = v11;
        if (v103 == v11)
        {
          v11 = std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>((v100 - 3), v16);
          if (v100 - 2 == v11)
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1056);
            v62 = *(v16 + 23);
            if (v62 >= 0)
            {
              v63 = v16;
            }

            else
            {
              v63 = *v16;
            }

            if (v62 >= 0)
            {
              v64 = *(v16 + 23);
            }

            else
            {
              v64 = *(v16 + 1);
            }

            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
            MEMORY[0x1C692A960](v66, v13);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
          }

          v19 = *(v11 + 56);
          if (*(v16 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v95, *v16, *(v16 + 1));
          }

          else
          {
            v20 = *v16;
            v95.__r_.__value_.__r.__words[2] = *(v16 + 2);
            *&v95.__r_.__value_.__l.__data_ = v20;
          }

          v96 = v19;
          v27 = v93;
          if (v93 >= v94)
          {
            v11 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v92, &v95);
            v93 = v11;
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v28 = *&v95.__r_.__value_.__l.__data_;
            *(v93 + 16) = *(&v95.__r_.__value_.__l + 2);
            *v27 = v28;
            memset(&v95, 0, sizeof(v95));
            *(v27 + 24) = v96;
            v93 = v27 + 32;
          }

          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1054, 5);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "  binding input to intermediate output: ", 40);
            v29 = *(v16 + 23);
            if (v29 >= 0)
            {
              v25 = v16;
            }

            else
            {
              v25 = *v16;
            }

            if (v29 >= 0)
            {
              v26 = *(v16 + 23);
            }

            else
            {
              v26 = *(v16 + 1);
            }

            goto LABEL_37;
          }
        }

        else
        {
          if (*(v11 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&v95, *(v11 + 32), *(v11 + 40));
          }

          else
          {
            v95 = *(v11 + 32);
          }

          v96 = *(v18 + 56);
          v21 = v93;
          if (v93 >= v94)
          {
            v11 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v92, &v95);
            v93 = v11;
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v22 = *&v95.__r_.__value_.__l.__data_;
            *(v93 + 16) = *(&v95.__r_.__value_.__l + 2);
            *v21 = v22;
            memset(&v95, 0, sizeof(v95));
            *(v21 + 24) = v96;
            v93 = v21 + 32;
          }

          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1049, 5);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "  binding input to provided input: ", 35);
            v24 = *(v16 + 23);
            if (v24 >= 0)
            {
              v25 = v16;
            }

            else
            {
              v25 = *v16;
            }

            if (v24 >= 0)
            {
              v26 = *(v16 + 23);
            }

            else
            {
              v26 = *(v16 + 1);
            }

LABEL_37:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v95);
          }
        }

        v16 = (v16 + 24);
      }

      if (a9)
      {
        v30 = *(&v97 + 1);
        if (v97 != *(&v97 + 1))
        {
          if (e5rt_execution_stream_operation_bind_dependent_events())
          {
            last_error_message = e5rt_get_last_error_message();
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1063);
            v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso V2 failure: ", 21);
            v85 = strlen(last_error_message);
            v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, last_error_message, v85);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "\n", 1);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
          }

          v30 = *(&v97 + 1);
        }

        if (v30 >= v98)
        {
          v32 = (v30 - v97) >> 3;
          if ((v32 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v33 = (v98 - v97) >> 2;
          if (v33 <= v32 + 1)
          {
            v33 = v32 + 1;
          }

          if (v98 - v97 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(&v97, v34);
          }

          *(8 * v32) = 0;
          v31 = 8 * v32 + 8;
          v35 = (8 * v32 - (*(&v97 + 1) - v97));
          memcpy(v35, v97, *(&v97 + 1) - v97);
          v36 = v97;
          *&v97 = v35;
          *(&v97 + 1) = v31;
          v98 = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v30 = 0;
          v31 = (v30 + 1);
        }

        *(&v97 + 1) = v31;
        if (e5rt_async_event_create())
        {
          v71 = e5rt_get_last_error_message();
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1068);
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso V2 failure: ", 21);
          v73 = strlen(v71);
          v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v71, v73);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
        }

        v11 = e5rt_execution_stream_operation_bind_completion_event();
        if (v11)
        {
          v79 = e5rt_get_last_error_message();
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1069);
          v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso V2 failure: ", 21);
          v81 = strlen(v79);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v79, v81);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
        }
      }

      v37 = *(v12 + 8 * v13);
      if (((a2[1] - *a2) >> 3) - 1 <= v13)
      {
        kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(v11, v37, &v92, a4, a5, 1);
        if (e5rt_execution_stream_encode_operation())
        {
          v67 = e5rt_get_last_error_message();
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1092);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso V2 failure: ", 21);
          v69 = strlen(v67);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v67, v69);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
        }

        v40 = *a4;
        v41 = a4[1];
        if (*a4 != v41)
        {
          v42 = kaldi::g_kaldi_verbose_level;
          do
          {
            if (v42 >= 5)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1095, 5);
              v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "  binding final output: ", 24);
              v44 = *(v40 + 23);
              if (v44 >= 0)
              {
                v45 = v40;
              }

              else
              {
                v45 = *v40;
              }

              if (v44 >= 0)
              {
                v46 = *(v40 + 23);
              }

              else
              {
                v46 = *(v40 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v95);
              v42 = kaldi::g_kaldi_verbose_level;
            }

            v40 += 24;
          }

          while (v40 != v41);
        }
      }

      else
      {
        kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(v11, v37, &v92, (*a6 + 24 * v13), v91, 1);
        if (e5rt_execution_stream_encode_operation())
        {
          v75 = e5rt_get_last_error_message();
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1078);
          v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso V2 failure: ", 21);
          v77 = strlen(v75);
          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v75, v77);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
        }

        v38 = v100;
        if (v100 >= v101)
        {
          v39 = std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<>(&v99);
        }

        else
        {
          v100[2] = 0;
          v38[1] = 0;
          *v38 = v38 + 1;
          v39 = (v38 + 3);
        }

        v100 = v39;
        v47 = *(*a6 + 24 * v13);
        if (*(*a6 + 24 * v13 + 8) != v47)
        {
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = v91[0];
            v105 = v47 + v48;
            v51 = std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v100 - 3, (v47 + v48), &std::piecewise_construct, &v105, &v104);
            v52 = *(v50 + 8 * v49);
            *(v50 + 8 * v49) = 0;
            v53 = v51[7];
            v51[7] = v52;
            if (v53)
            {
              (*(*v53 + 8))(v53);
            }

            if (kaldi::g_kaldi_verbose_level >= 5)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v95, "PrepareOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1084, 5);
              v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "  storing intermediate output: ", 31);
              v55 = *(*a6 + 24 * v13) + v48;
              v56 = *(v55 + 23);
              if (v56 >= 0)
              {
                v57 = *(*a6 + 24 * v13) + v48;
              }

              else
              {
                v57 = *v55;
              }

              if (v56 >= 0)
              {
                v58 = *(v55 + 23);
              }

              else
              {
                v58 = *(v55 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v57, v58);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v95);
            }

            ++v49;
            v47 = *(*a6 + 24 * v13);
            v48 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(*a6 + 24 * v13 + 8) - v47) >> 3) > v49);
        }
      }

      v95.__r_.__value_.__r.__words[0] = v91;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v95);
      v95.__r_.__value_.__r.__words[0] = &v92;
      std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&v95);
      ++v13;
      v12 = *a2;
      if (v13 >= (a2[1] - *a2) >> 3)
      {
        v11 = v100;
        a7 = v87;
        break;
      }
    }
  }

  v59 = v98;
  v60 = v101;
  *a7 = v99;
  *(a7 + 8) = v11;
  *(a7 + 16) = v60;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  *(a7 + 24) = v97;
  *(a7 + 40) = v59;
  v95.__r_.__value_.__r.__words[0] = &v99;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v95);
  std::__tree<std::string>::destroy(&v102, v103[0]);
}

void sub_1C315DD58(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C315DDB4);
}

void sub_1C315DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1C315DDB4);
}

void sub_1C315DDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a17;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a20;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 176);
  if (v25)
  {
    *(v23 - 168) = v25;
    operator delete(v25);
  }

  a23 = (v23 - 152);
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  std::__tree<std::string>::destroy(v23 - 128, *(v23 - 120));
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::RunOpChain(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v14 = (a1 + 248);
  if (*(a1 + 248))
  {
    if (e5rt_execution_stream_reset())
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "RunOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1111);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Espresso V2 failure: ", 21);
      v22 = strlen(last_error_message);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, last_error_message, v22);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, "\n");
      goto LABEL_13;
    }

    if (*v14)
    {
      goto LABEL_5;
    }
  }

  if (e5rt_execution_stream_create())
  {
    v24 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "RunOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1116);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Espresso V2 failure: ", 21);
    v26 = strlen(v24);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v24, v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "\n");
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

LABEL_5:
  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(&v28, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  kaldi::quasar::EspressoV2Plan::PrepareOpChain(&v28, a3, a4, a6, a7, v31, a8, 0);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  v34[0] = v31;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](v34);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  result = e5rt_execution_stream_execute_sync();
  if (result)
  {
    v16 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "RunOpChain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1124);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Espresso V2 failure: ", 21);
    v18 = strlen(v16);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v16, v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "\n");
    goto LABEL_13;
  }

  return result;
}

void sub_1C315E054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::EspressoV2Chain::EspressoV2Chain(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  *a1 = &unk_1F42CCCB0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>(a1 + 1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 4, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  a1[8] = 0;
  a1[7] = a1 + 8;
  a1[11] = 0;
  a1[10] = a1 + 11;
  a1[9] = 0;
  a1[12] = 0;
  a1[14] = 0;
  a1[13] = a1 + 14;
  a1[15] = 0;
  a1[17] = 0;
  a1[16] = a1 + 17;
  a1[20] = 0;
  a1[18] = 0;
  a1[19] = a1 + 20;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  a1[24] = 5000;
  if (a1[2] == a1[1])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "EspressoV2Chain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1132);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "EspressoV2Chain must be initialized with at least one sub-net!", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  if (a4)
  {
    a1[24] = a4;
  }

  return a1;
}

void sub_1C315E20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14)
{
  std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::destroy(v20, *v18);
  std::__tree<std::string>::destroy(v19, *v16);
  std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a10, *v17);
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(a11, *v14);
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(v15, *v21);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = a12;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&a14);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Chain::~EspressoV2Chain(kaldi::quasar::EspressoV2Chain *this)
{
  *this = &unk_1F42CCCB0;
  v2 = this + 128;
  v3 = *(this + 16);
  v4 = this + 136;
  if (v3 != this + 136)
  {
    while (!*(v3 + 7) || !e5rt_execution_stream_release())
    {
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v4)
      {
        goto LABEL_10;
      }
    }

    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "~EspressoV2Chain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1142);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
    v19 = strlen(last_error_message);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, last_error_message, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
LABEL_26:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

LABEL_10:
  v8 = *(this + 19);
  if (v8 != (this + 160))
  {
    do
    {
      v9 = *(v8 + 7);
      v10 = *(v8 + 8);
      while (v9 != v10)
      {
        if (*v9 && e5rt_async_event_release())
        {
          v13 = e5rt_get_last_error_message();
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "~EspressoV2Chain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1148);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
          v15 = strlen(v13);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v13, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
          goto LABEL_26;
        }

        ++v9;
      }

      v11 = *(v8 + 1);
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
          v12 = *(v8 + 2);
          v7 = *v12 == v8;
          v8 = v12;
        }

        while (!v7);
      }

      v8 = v12;
    }

    while (v12 != (this + 160));
  }

  if (*(this + 22) && e5rt_async_event_release())
  {
    v21 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "~EspressoV2Chain", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1153);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
    v23 = strlen(v21);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "\n", 1);
    goto LABEL_26;
  }

  std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::string>::destroy(v2, *(this + 17));
  std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(this + 56, *(this + 8));
  v25[0] = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v25);
  v25[0] = (this + 8);
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](v25);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
}

{
  kaldi::quasar::EspressoV2Chain::~EspressoV2Chain(this);

  JUMPOUT(0x1C692AE10);
}

uint64_t kaldi::quasar::EspressoV2Chain::CreateData(uint64_t a1)
{
  return (*(***(a1 + 8) + 16))();
}

{
  return (*(***(a1 + 8) + 24))();
}

{
  return (*(***(a1 + 8) + 32))();
}

{
  return (*(***(a1 + 8) + 40))();
}

void kaldi::quasar::EspressoV2Chain::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  (*(*a1 + 144))(a1, __p, a2, a3, a4, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  (*(*a1 + 152))(a1, __p, a2, a3, a4, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C315E7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C315E8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2Chain::RunFunction(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v11 = *a3;
  v12 = a3[1];
  while (v11 != v12)
  {
    v13 = *(v11 + 3);
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
    }

    else
    {
      v14 = *v11;
      __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
      *&__p.__r_.__value_.__l.__data_ = v14;
    }

    v18 = v13;
    v15 = v20;
    if (v20 >= v21)
    {
      v20 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v19, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = *&__p.__r_.__value_.__l.__data_;
      *(v20 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v15 = v16;
      memset(&__p, 0, sizeof(__p));
      *(v15 + 24) = v18;
      v20 = v15 + 32;
    }

    v11 += 2;
  }

  (*(*a1 + 152))(a1, a2, &v19, a4, a5, a6);
  __p.__r_.__value_.__r.__words[0] = &v19;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C315EA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Chain::PrepareIntermediates(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (*(a2 + 8) != 4)
    {
      goto LABEL_7;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (v4 != 4)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == 1852399981)
  {
    v36 = *(a1 + 8);
    v37 = *(a1 + 16);
    while (v36 != v37)
    {
      std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](&v71, (*v36 + 216));
      v36 += 16;
    }

    goto LABEL_9;
  }

LABEL_7:
  v6 = *(a1 + 8);
  for (i = *(a1 + 16); v6 != i; v6 += 2)
  {
    v8 = *v6;
    *&__p = a2;
    v9 = std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 224), a2, &std::piecewise_construct, &__p, &v68);
    std::vector<std::vector<float> *,std::allocator<std::vector<float> *>>::push_back[abi:ne200100](&v71, v9 + 7);
  }

LABEL_9:
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v10 = v71;
  for (j = v72; v10 != j; v10 += 8)
  {
    v12 = v66;
    if (v66 >= v67)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v67 - v65) >> 3) > v15)
      {
        v15 = 0x5555555555555556 * ((v67 - v65) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v67 - v65) >> 3) >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      v63 = &v65;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(&v65, v16);
      }

      v17 = (8 * ((v66 - v65) >> 3));
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      v13 = 24 * v14 + 24;
      v18 = v17 - (v66 - v65);
      memcpy(v18, v65, v66 - v65);
      v19 = v65;
      v20 = v67;
      v65 = v18;
      v66 = v13;
      v67 = 0;
      v61 = v19;
      v62 = v20;
      *&__p = v19;
      *(&__p + 1) = v19;
      std::__split_buffer<std::vector<std::string>>::~__split_buffer(&__p);
    }

    else
    {
      *v66 = 0;
      *(v12 + 1) = 0;
      v13 = (v12 + 24);
      *(v12 + 2) = 0;
    }

    v66 = v13;
    v64 = 0;
    if (e5rt_execution_stream_operation_get_num_outputs())
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "PrepareIntermediates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1266);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v44 = strlen(last_error_message);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, last_error_message, v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    std::vector<char const*>::vector[abi:ne200100](&v58, v64);
    if (e5rt_execution_stream_operation_get_output_names())
    {
      v38 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "PrepareIntermediates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1269);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v40 = strlen(v38);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v38, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v22 = v58;
    v21 = v59;
    while (v22 != v21)
    {
      v23 = v66;
      std::string::basic_string[abi:ne200100]<0>(&__p, *v22);
      std::vector<std::string>::push_back[abi:ne200100]((v23 - 24), &__p);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }

      ++v22;
    }

    v24 = v69;
    if (v69 >= v70)
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3);
      v27 = v26 + 1;
      if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v70 - v68) >> 3) > v27)
      {
        v27 = 0x5555555555555556 * ((v70 - v68) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v70 - v68) >> 3) >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v27;
      }

      v63 = &v68;
      if (v28)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(&v68, v28);
      }

      v29 = (8 * ((v69 - v68) >> 3));
      *v29 = 0;
      v29[1] = 0;
      v29[2] = 0;
      v25 = 24 * v26 + 24;
      v30 = v29 - (v69 - v68);
      memcpy(v30, v68, v69 - v68);
      v31 = v68;
      v32 = v70;
      v68 = v30;
      v69 = v25;
      v70 = 0;
      v61 = v31;
      v62 = v32;
      *&__p = v31;
      *(&__p + 1) = v31;
      std::__split_buffer<std::vector<std::string>>::~__split_buffer(&__p);
    }

    else
    {
      *v69 = 0;
      *(v24 + 1) = 0;
      v25 = (v24 + 24);
      *(v24 + 2) = 0;
    }

    v69 = v25;
    v57 = 0;
    if (e5rt_execution_stream_operation_get_num_inputs())
    {
      v46 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "PrepareIntermediates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1277);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v48 = strlen(v46);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v46, v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    std::vector<char const*>::vector[abi:ne200100](&v55, v57);
    if (e5rt_execution_stream_operation_get_input_names())
    {
      v50 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "PrepareIntermediates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1279);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v52 = strlen(v50);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v50, v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v34 = v55;
    v33 = v56;
    if (v55 != v56)
    {
      do
      {
        v35 = v69;
        std::string::basic_string[abi:ne200100]<0>(&__p, *v34);
        std::vector<std::string>::push_back[abi:ne200100]((v35 - 24), &__p);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }

        ++v34;
      }

      while (v34 != v33);
      v34 = v55;
    }

    if (v34)
    {
      v56 = v34;
      operator delete(v34);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIP31e5rt_execution_stream_operationNS_9allocatorIS5_EEEENS3_INS3_INS_12basic_stringIcNS_11char_traitsIcEENS6_IcEEEENS6_ISD_EEEENS6_ISF_EEEESH_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_SH_SH_EJEJEJRS8_RSH_SL_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(a3, &v71, &v68, &v65);
  *&__p = &v65;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *&__p = &v68;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_1C315F098(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C315F0B4);
}

void sub_1C315F0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  a15 = (v23 - 160);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a15);
  *(v23 - 160) = v23 - 136;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v23 - 160));
  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Chain::RunFunction(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  kaldi::quasar::EspressoV2Chain::PrepareIntermediates(a1, a2, &v15);
  v10 = **(a1 + 8);
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(&__p, v15, v16, (v16 - v15) >> 3);
  kaldi::quasar::EspressoV2Plan::RunOpChain(v10, &__p, a3, a4, v11, a6, v18, v17);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v19 = v18;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = v17;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1C315F1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<e5rt_execution_stream_operation *>,std::vector<std::vector<std::string>>,std::vector<std::vector<std::string>>>::~tuple(va);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::vector<e5rt_execution_stream_operation *>,std::vector<std::vector<std::string>>,std::vector<std::vector<std::string>>>::~tuple(uint64_t a1)
{
  v4 = (a1 + 48);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 24);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void kaldi::quasar::EspressoV2Chain::PrepareRun(uint64_t a1, std::string *a2, __int128 ***a3, uint64_t *a4, uint64_t a5, uint64_t **a6)
{
  if (std::__tree<std::string>::__count_unique<std::string>(a1 + 56, &a2->__r_.__value_.__l.__data_) || std::__tree<std::string>::__count_unique<std::string>(a1 + 80, &a2->__r_.__value_.__l.__data_) || std::__tree<std::string>::__count_unique<std::string>(a1 + 128, &a2->__r_.__value_.__l.__data_))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v47, "PrepareRun", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1306);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v47, "Rebinding buffers for EspressoV2Chain is not supported!");
    goto LABEL_33;
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 56), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v47, &v40);
  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = v11[8];
  v11[7] = v13;
  v11[8] = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  v15 = std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v47, &v40);
  v17 = *a6;
  v16 = a6[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = v15[8];
  v15[7] = v17;
  v15[8] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v47, &v40);
  if (e5rt_execution_stream_create())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v47, "PrepareRun", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1311);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Espresso V2 failure: ", 21);
    v31 = strlen(last_error_message);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, last_error_message, v31);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v32, "\n");
LABEL_33:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v47);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v19 = *a3;
  v20 = **a3;
  v21 = v19[1];
  while (v20 != v21)
  {
    v22 = *(v20 + 3);
    if (*(v20 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, *v20, *(v20 + 1));
    }

    else
    {
      v23 = *v20;
      v47.__r_.__value_.__r.__words[2] = *(v20 + 2);
      *&v47.__r_.__value_.__l.__data_ = v23;
    }

    *&v48 = v22;
    v24 = v45;
    if (v45 >= v46)
    {
      v45 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v44, &v47);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v25 = *&v47.__r_.__value_.__l.__data_;
      *(v45 + 16) = *(&v47.__r_.__value_.__l + 2);
      *v24 = v25;
      memset(&v47, 0, sizeof(v47));
      *(v24 + 24) = v48;
      v45 = v24 + 32;
    }

    v20 += 2;
  }

  kaldi::quasar::EspressoV2Chain::PrepareIntermediates(a1, a2, &v40);
  v51 = a2;
  std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v51, &v50);
  v38 = 0;
  v39 = 0;
  __p = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(&__p, v40, v41, (v41 - v40) >> 3);
  kaldi::quasar::EspressoV2Plan::PrepareOpChain(&__p, &v44, a4, *a6, v43, &v47, v42, 1);
  v51 = a2;
  v26 = std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 104), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v51, &v50);
  v51 = a2;
  v27 = std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 152), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v51, &v50);
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate(v26 + 7);
  *(v26 + 7) = *&v47.__r_.__value_.__l.__data_;
  v28 = v27[7];
  v26[9] = v47.__r_.__value_.__r.__words[2];
  memset(&v47, 0, sizeof(v47));
  if (v28)
  {
    v27[8] = v28;
    operator delete(v28);
    v27[7] = 0;
    v27[8] = 0;
    v27[9] = 0;
  }

  *(v27 + 7) = v48;
  v27[9] = v49;
  v49 = 0;
  v48 = 0uLL;
  v51 = &v47;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v51);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  v51 = a2;
  std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v51, &v50);
  e5rt_execution_stream_prewire_in_use_allocations();
  if (!*(a1 + 176) && e5rt_async_event_create())
  {
    v33 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v47, "PrepareRun", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1329);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Espresso V2 failure: ", 21);
    v35 = strlen(v33);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v33, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v47);
  }

  v47.__r_.__value_.__r.__words[0] = v43;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v47);
  v47.__r_.__value_.__r.__words[0] = v42;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  v47.__r_.__value_.__r.__words[0] = &v44;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&v47);
}

void sub_1C315F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::pair<std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::vector<e5rt_async_event *>>::~pair(va);
  JUMPOUT(0x1C315F764);
}

void sub_1C315F798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  v34 = &v33;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&v34);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Chain::RunFunction(uint64_t **a1, const void **a2)
{
  v25[0] = a2;
  v4 = std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 19, a2, &std::piecewise_construct, v25, &v26);
  if (v4[7] == v4[8])
  {
    v25[0] = a2;
    std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2, &std::piecewise_construct, v25, &v26);
    result = e5rt_execution_stream_execute_sync();
    if (!result)
    {
      return result;
    }

    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "RunFunction", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1335);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
    v23 = strlen(last_error_message);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, last_error_message, v23);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "\n");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  a1[23] = (a1[23] + 1);
  v25[0] = a2;
  v5 = std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 19, a2, &std::piecewise_construct, v25, &v26);
  v6 = v5[7];
  v7 = v5[8];
  while (v6 != v7)
  {
    if (e5rt_async_event_set_active_future_value())
    {
      v13 = e5rt_get_last_error_message();
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "RunFunction", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1340);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
      v15 = strlen(v13);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v13, v15);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "\n");
      goto LABEL_12;
    }

    v6 += 8;
  }

  v25[0] = a2;
  std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2, &std::piecewise_construct, v25, &v26);
  if (e5rt_execution_stream_submit_async())
  {
    v17 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "RunFunction", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1352);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
    v19 = strlen(v17);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v17, v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "\n");
    goto LABEL_12;
  }

  result = e5rt_async_event_sync_wait();
  if (result)
  {
    v9 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "RunFunction", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1355);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
    v11 = strlen(v9);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9, v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "\n");
    goto LABEL_12;
  }

  return result;
}

uint64_t ___ZN5kaldi6quasar15EspressoV2Chain11RunFunctionERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "RunFunction_block_invoke", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1349);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Espresso V2 failure during async call: ", 39);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, last_error_message);
    goto LABEL_6;
  }

  result = e5rt_async_event_signal();
  if (result)
  {
    v7 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "RunFunction_block_invoke", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 1351);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Espresso V2 failure: ", 21);
    v9 = strlen(v7);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7, v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "\n");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  return result;
}

void kaldi::quasar::EspressoV2TensorData::CopyToMatrix(kaldi::quasar::EspressoV2TensorData *a1, uint64_t a2)
{
  v16[34] = 0;
  v17 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyToMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 82);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v14 = strlen(last_error_message);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, last_error_message, v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  v4 = *v17;
  v5 = v17[1];
  kaldi::Matrix<float>::Resize(a2, *v17, v5, 1, 0);
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = *a2 + 4 * *(a2 + 16) * i;
        do
        {
          *(v11 + (v9 >> 30)) = *(v6 + 4 * v10++);
          v9 += 0x100000000;
          v8 -= 4;
        }

        while (v5 != v10);
        v6 -= v8;
      }
    }
  }
}

float kaldi::quasar::EspressoV2TensorData::CopyToVector(kaldi::quasar::EspressoV2TensorData *a1, uint64_t a2)
{
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  v4 = v3;
  v15[34] = 0;
  v15[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "CopyToVector", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 133);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Espresso V2 failure: ", 21);
    v13 = strlen(last_error_message);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, last_error_message, v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  kaldi::CuVector<float>::Resize(a2, 1, 1u, v5, v6);
  v7 = 0;
  v8 = 0;
  v9 = *(a2 + 8);
  do
  {
    result = *(v4 + 4 * v8);
    *(v9 + (v7 >> 30)) = result;
    ++v8;
    v7 += 0x100000000;
  }

  while (v8 != 1);
  return result;
}

void kaldi::quasar::EspressoV2TensorData::CopyToStdVector(kaldi::quasar::EspressoV2TensorData *a1, int **a2)
{
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  v4 = v3;
  v20[34] = 0;
  v20[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CopyToStdVector", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 145);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Espresso V2 failure: ", 21);
    v18 = strlen(last_error_message);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, last_error_message, v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v5 = *a2;
  a2[1] = *a2;
  v6 = 1;
  do
  {
    v7 = *v4;
    v8 = a2[2];
    if (v5 >= v8)
    {
      v9 = *a2;
      v10 = v5 - *a2;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = v8 - v9;
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v14);
      }

      *(4 * v11) = v7;
      v5 = (4 * v11 + 4);
      memcpy(0, v9, v10);
      v15 = *a2;
      *a2 = 0;
      a2[1] = v5;
      a2[2] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v5++ = v7;
    }

    a2[1] = v5;
    ++v4;
    --v6;
  }

  while (v6);
}

void kaldi::quasar::EspressoV2TensorData::CopyToStdVector(kaldi::quasar::EspressoV2TensorData *a1, void *a2)
{
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  v4 = v3;
  v19[34] = 0;
  v19[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CopyToStdVector", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 157);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Espresso V2 failure: ", 21);
    v17 = strlen(last_error_message);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, last_error_message, v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  v5 = *a2;
  a2[1] = *a2;
  v6 = 1;
  do
  {
    v7 = a2[2];
    if (v5 >= v7)
    {
      v8 = *a2;
      v9 = v5 - *a2;
      v10 = v9 >> 2;
      v11 = (v9 >> 2) + 1;
      if (v11 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v7 - v8;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v13);
      }

      *(4 * v10) = *v4;
      v5 = (4 * v10 + 4);
      memcpy(0, v8, v9);
      v14 = *a2;
      *a2 = 0;
      a2[1] = v5;
      a2[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v5++ = *v4;
    }

    a2[1] = v5;
    ++v4;
    --v6;
  }

  while (v6);
}

uint64_t kaldi::quasar::EspressoV2TensorData::CopyFromImpl(kaldi::quasar::EspressoV2TensorData *this, const kaldi::quasar::ComputeEngineBufferItf *lpsrc)
{
  {
    __cxa_bad_cast();
  }

  result = e5rt_tensor_utils_copy_tensor();
  if (result)
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "CopyFromImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 167);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Espresso V2 failure: ", 21);
    v5 = strlen(last_error_message);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, last_error_message, v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  return result;
}

void *kaldi::quasar::EspressoV2TensorData::FlatRangeCopy(kaldi::quasar::EspressoV2TensorData *this, const kaldi::quasar::ComputeEngineBufferItf *a2, int a3, int a4, int a5)
{
  v9 = (*(*a2 + 152))(a2);
  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  if (a4 - a3 < 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 200);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "srcend - srcstart >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v11 = (v10 + 4 * a5);

  return memcpy(v11, (v9 + 4 * a3), 4 * (a4 - a3));
}

float kaldi::quasar::EspressoV2TensorData::FlatRangeCopy(kaldi::quasar::EspressoV2TensorData *this, int *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 205);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "length >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  if (a3)
  {
    v9 = (v7 + 4 * a4);
    v10 = a3;
    do
    {
      v11 = *a2++;
      result = v11;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *kaldi::quasar::EspressoV2TensorData::FlatRangeCopy(kaldi::quasar::EspressoV2TensorData *this, const float *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 213);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "length >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  v8 = (v7 + 4 * a4);

  return memcpy(v8, a2, 4 * a3);
}

float kaldi::quasar::EspressoV2TensorData::AssignScalar(kaldi::quasar::EspressoV2TensorData *this, int a2, int a3)
{
  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  result = a2;
  *(v6 + 4 * a3) = a2;
  return result;
}

void kaldi::quasar::ComputeEngineBufferItf::GetFloat16Scalar(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetFloat16Scalar", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 60);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetFloatScalarFloat16 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetWritableDataFloat16(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetWritableDataFloat16", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 61);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetWritableDataFloat16 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetDataFloat16(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetDataFloat16", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 62);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetDataFloatFloat16 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(kaldi::quasar::EspressoV2TensorData *this)
{
  v13 = 0;
  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "GetWritableDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 253);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Espresso V2 failure: ", 21);
    v3 = strlen(last_error_message);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, last_error_message, v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "\n");
  }

  else if (e5rt_tensor_desc_dtype_get_component_pack())
  {
    v5 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "GetWritableDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 255);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Espresso V2 failure: ", 21);
    v7 = strlen(v5);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5, v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "\n");
  }

  else
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "GetWritableDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 257);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Not implemented GetWritableDataFloat from non-E5RT_TENSOR_DESC_COMPONENT_DTYPE_FLOAT, non-fp32 types", 100);
    v10 = MEMORY[0x1C692A960](v9, v13);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
    MEMORY[0x1C692A960](v11, 0);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
}

void kaldi::quasar::EspressoV2TensorData::GetDataFloat(kaldi::quasar::EspressoV2TensorData *this)
{
  v7 = 0;
  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "GetDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 268);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Espresso V2 failure: ", 21);
    v3 = strlen(last_error_message);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, last_error_message, v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "\n");
  }

  else
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "GetDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 270);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not implemented GetDataFloat const from non-E5RT_TENSOR_DESC_COMPONENT_DTYPE_FLOAT types", 88);
    MEMORY[0x1C692A960](v5, v7);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
}

void kaldi::quasar::ComputeEngineBufferItf::GetDataInt32(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetDataInt32", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 66);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetDataInt32 not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::isDataFloat16(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "isDataFloat16", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 68);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "isDataFloat16 not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

uint64_t kaldi::quasar::EspressoV2TensorData::GetNumDims(kaldi::quasar::EspressoV2TensorData *this)
{
  v7 = 0;
  v8 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "GetNumDims", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 240);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Espresso V2 failure: ", 21);
    v4 = strlen(last_error_message);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, last_error_message, v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return v7;
}

uint64_t kaldi::quasar::EspressoV2TensorData::GetDimSize(kaldi::quasar::EspressoV2TensorData *this, int a2)
{
  v8[34] = 0;
  v9 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "GetDimSize", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 247);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Espresso V2 failure: ", 21);
    v6 = strlen(last_error_message);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, last_error_message, v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return *(v9 + 8 * a2);
}

void kaldi::quasar::EspressoV2TensorData::Reshape()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "Reshape", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 219);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented TODO");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::BNNSGraphNetworkConfig::~BNNSGraphNetworkConfig(void **this)
{
  *this = &unk_1F42CCDC8;
  v2 = this + 16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(this);
}

{
  kaldi::quasar::BNNSGraphNetworkConfig::~BNNSGraphNetworkConfig(this);

  JUMPOUT(0x1C692AE10);
}

kaldi::quasar::EspressoV2NetworkConfig *kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig(kaldi::quasar::EspressoV2NetworkConfig *this, const kaldi::quasar::EspressoV2NetworkConfig *a2)
{
  *this = &unk_1F42CDA38;
  *(this + 8) = *(a2 + 8);
  *(this + 2) = *(a2 + 2);
  v4 = *(a2 + 3);
  *(this + 3) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 16) = *(a2 + 16);
  *this = &unk_1F42CCB88;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 8, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  std::map<std::string,std::string>::map[abi:ne200100](this + 11, a2 + 88);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 14, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v6 = *(a2 + 136);
    *(this + 19) = *(a2 + 19);
    *(this + 136) = v6;
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 20, *(a2 + 20), *(a2 + 21), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 21) - *(a2 + 20)) >> 3));
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 23, *(a2 + 23), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 23)) >> 3));
  return this;
}

void sub_1C3161150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3 + 88, *(v3 + 96));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 63) < 0)
  {
    operator delete(*(v3 + 40));
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(v3);
  _Unwind_Resume(a1);
}

uint64_t *std::map<std::string,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t *result, const void ***a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

kaldi::quasar::ComputeEngineBufferItf *kaldi::quasar::EspressoV2TensorData::EspressoV2TensorData(kaldi::quasar::ComputeEngineBufferItf *a1, void *a2)
{
  v3 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *(v3 + 2) = 0u;
  *v3 = &unk_1F42CCAB0;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  if (e5rt_io_port_retain_tensor_desc())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 56);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Espresso V2 failure: ", 21);
    v7 = strlen(last_error_message);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, last_error_message, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (e5rt_tensor_desc_retain_dtype())
  {
    v9 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 57);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Espresso V2 failure: ", 21);
    v11 = strlen(v9);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v13 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 58);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Espresso V2 failure: ", 21);
    v15 = strlen(v13);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v13, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  return a1;
}

void sub_1C31614D8(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::vector<e5rt_async_event *>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIP31e5rt_execution_stream_operationNS_9allocatorIS5_EEEENS3_INS3_INS_12basic_stringIcNS_11char_traitsIcEENS6_IcEEEENS6_ISD_EEEENS6_ISF_EEEESH_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_SH_SH_EJEJEJRS8_RSH_SL_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(a1 + 3, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(a1 + 6, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  return a1;
}

void sub_1C3161604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C316169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void kaldi::quasar::EspressoV2TensorData::EspressoV2TensorData(kaldi::quasar::EspressoV2TensorData *this, const kaldi::quasar::EspressoV2TensorData *a2)
{
  v2 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(this);
  *v2 = &unk_1F42CCAB0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "EspressoV2TensorData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 52);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Copies of espressoV2 Tensors are not supported", 46);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

void sub_1C3161894(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__assign_with_size[abi:ne200100]<std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = v12[-1].__r_.__value_.__s.__data_[15];
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (__str + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **>*>(a1, v13, a3, v12);
  }
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,e5rt_execution_stream_operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,e5rt_execution_stream_operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,e5rt_execution_stream_operation *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1C3161EB8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string::value_type *std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__emplace_back_slow_path<std::string const&,e5rt_execution_stream_operation **>(uint64_t a1, __int128 *a2, std::string::size_type *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v25 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>>(a1, v9);
  }

  v10 = (32 * v3);
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = *a3;
  v15 = &v14[1].__r_.__value_.__s.__data_[8];
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy(v13 - v16, *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v15;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(&v21);
  return v15;
}

void sub_1C3161FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C31620FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

kaldi::quasar::ComputeEngineBufferItf *kaldi::quasar::EspressoV2TensorData::EspressoV2TensorData(kaldi::quasar::ComputeEngineBufferItf *a1, uint64_t a2, int a3)
{
  v6 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *v6 = &unk_1F42CCAB0;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  kaldi::quasar::EspressoV2TensorData::InitWithShape(v6, a2, a3);
  return a1;
}

void sub_1C3162184(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2TensorData::InitWithShape(uint64_t a1, uint64_t a2, int a3)
{
  if (e5rt_tensor_desc_dtype_create())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "InitWithShape", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 70);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v6 = strlen(last_error_message);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, last_error_message, v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "\n");
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_create())
  {
    v8 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "InitWithShape", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 71);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v10 = strlen(v8);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8, v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "\n");
    goto LABEL_8;
  }

  result = e5rt_tensor_desc_alloc_buffer_object();
  if (result)
  {
    v12 = e5rt_get_last_error_message();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "InitWithShape", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/es-v2-model.cc", 72);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v14 = strlen(v12);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "\n");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  return result;
}

uint64_t std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(&v16);
  return v15;
}

void sub_1C3162484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

double std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a1;
  *&v11 = a3;
  for (*(&v11 + 1) = a4; v5 != a2; v5 += 32)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
    }

    else
    {
      __p = *v5;
    }

    v10 = *(v5 + 24);
    std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::operator=[abi:ne200100](&v11, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *a5 = v5;
  result = *&v11;
  *(a5 + 8) = v11;
  return result;
}

void sub_1C316267C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::operator=[abi:ne200100](uint64_t ***a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,kaldi::quasar::ComputeEngineBufferItf const&>>(*a1, a1[1], a2, a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,kaldi::quasar::ComputeEngineBufferItf const&>>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>::__construct_node<std::pair<std::string const,kaldi::quasar::ComputeEngineBufferItf const&>>();
  }

  return result;
}

void sub_1C3162824(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(a1, v4);
  }

  v5 = 24 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *(v5 + 16) = 0;
  *(24 * v1 + 8) = 0;
  *v5 = 24 * v1 + 8;
  *&v14 = 24 * v1 + 24;
  v6 = a1[1];
  v7 = 24 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v12);
  return v11;
}

void sub_1C3162AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
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
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::vector<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3162EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<e5rt_async_event *>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<e5rt_async_event *>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1C3163188(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<e5rt_async_event *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<e5rt_async_event *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<e5rt_async_event *>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 24;
        std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy((v3 - 24), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t kaldi::quasar::BNNSGraphNetworkConfig::BNNSGraphNetworkConfig(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F42CCDC8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v6;
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 88), "main");
  *(a1 + 112) = 1;
  *(a1 + 114) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  return a1;
}

void sub_1C3163654(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphNetworkConfig::Read(char *a1, uint64_t *a2, uint64_t a3, const void **a4, const char *a5)
{
  v6 = a3;
  v9 = a2 + 4;
  v56 = a1 + 121;
  v57 = a1 + 114;
  v58 = a1 + 152;
  v59 = a1 + 120;
  v10 = a1 + 113;
  v11 = a1 + 112;
  while ((*(v9 + *(*a2 - 24)) & 2) == 0)
  {
    memset(v61, 0, 24);
    kaldi::ReadToken(a2, v6, v61, a4, a5);
    v12 = *(a4 + 23);
    if (v12 >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = a4[1];
    }

    v14 = HIBYTE(v61[2]);
    if (!v13)
    {
      goto LABEL_17;
    }

    v15 = v61[1];
    if (SHIBYTE(v61[2]) >= 0)
    {
      v15 = HIBYTE(v61[2]);
    }

    if (v15 == v13 && (SHIBYTE(v61[2]) >= 0 ? (v16 = v61) : (v16 = v61[0]), v12 >= 0 ? (v17 = a4) : (v17 = *a4), !memcmp(v16, v17, v13)))
    {
      v33 = 0;
      if ((v14 & 0x80) != 0)
      {
        goto LABEL_142;
      }

LABEL_140:
      if ((v33 & 1) == 0)
      {
        return;
      }
    }

    else
    {
LABEL_17:
      if ((v14 & 0x80) != 0)
      {
        if (v61[1] != 11)
        {
          if (v61[1] == 14)
          {
            if (*v61[0] == 0x6F6974636E75463CLL && *(v61[0] + 6) == 0x3E656D614E6E6F69)
            {
LABEL_78:
              kaldi::ReadToken(a2, v6, (a1 + 88), a4, a5);
              goto LABEL_139;
            }

            v23 = *v61[0] == 0x54656C676E69533CLL && *(v61[0] + 6) == 0x3E64616572685465;
            v20 = v11;
            if (v23)
            {
              goto LABEL_138;
            }
          }

          v27 = v61[1];
          if (v61[1] == 25)
          {
LABEL_60:
            if (*v61[0] != 0x696665646572503CLL || *(v61[0] + 1) != 0x6D6974704F64656ELL || *(v61[0] + 2) != 0x736E6F6974617A69 || *(v61[0] + 24) != 62)
            {
LABEL_144:
              kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 95);
              v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unknown BNNS Graph configuration: ", 34);
              if (SHIBYTE(v61[2]) >= 0)
              {
                v54 = v61;
              }

              else
              {
                v54 = v61[0];
              }

              if (SHIBYTE(v61[2]) >= 0)
              {
                v55 = HIBYTE(v61[2]);
              }

              else
              {
                v55 = v61[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            kaldi::ReadBasicType<unsigned int>(a2, v6, (a1 + 116));
            goto LABEL_139;
          }

          goto LABEL_72;
        }

        v21 = v61[0];
      }

      else
      {
        if (v14 != 11)
        {
          if (v14 == 14)
          {
            if (v61[0] == 0x6F6974636E75463CLL && *(v61 + 6) == 0x3E656D614E6E6F69)
            {
              goto LABEL_78;
            }

            v19 = v61[0] == 0x54656C676E69533CLL && *(v61 + 6) == 0x3E64616572685465;
            v20 = v11;
            if (v19)
            {
              goto LABEL_138;
            }
          }

          if (v14 == 19)
          {
            v29 = v61[0] == 0x7A696D6974704F3CLL && v61[1] == 0x69535249726F4665 && *(&v61[1] + 3) == 0x3E657A6953524972;
            v20 = v59;
            if (!v29)
            {
              goto LABEL_144;
            }

            goto LABEL_138;
          }

          v27 = v61[1];
          goto LABEL_80;
        }

        v21 = v61;
      }

      v24 = *v21;
      v25 = *(v21 + 3);
      v26 = v24 == 0x6E4967756265443CLL && v25 == 0x3E6F666E49677562;
      v20 = v10;
      if (v26)
      {
        goto LABEL_138;
      }

      v27 = v61[1];
      if ((v14 & 0x80) != 0 && v61[1] == 25)
      {
        goto LABEL_60;
      }

      if ((v14 & 0x80) == 0)
      {
        goto LABEL_144;
      }

LABEL_72:
      if (v27 == 17)
      {
        v36 = v61[0];
        v40 = *v61[0] == 0x65766E6F4370553CLL && *(v61[0] + 1) == 0x323370466F547472 && *(v61[0] + 16) == 62;
        v20 = v57;
        if (v40)
        {
          goto LABEL_138;
        }

        v27 = 17;
        if ((v14 & 0x80) != 0)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      if (v27 != 19)
      {
        if (v27 == 24)
        {
LABEL_117:
          v47 = *v61[0] == 0x656C69706D6F433CLL && *(v61[0] + 1) == 0x5374756F68746957 && *(v61[0] + 2) == 0x3E5249676E697661;
          v20 = v56;
          if (!v47)
          {
            goto LABEL_144;
          }

          goto LABEL_138;
        }

LABEL_128:
        if (v27 != 20)
        {
          goto LABEL_144;
        }

        v36 = v61[0];
LABEL_130:
        v48 = *v36;
        v49 = v36[1];
        v50 = *(v36 + 4);
        v52 = v48 == 0x63696D616E79443CLL && v49 == 0x6E49646570616853 && v50 == 1047819632;
        v20 = v58;
        if (!v52)
        {
          goto LABEL_144;
        }

LABEL_138:
        kaldi::ReadBasicType<BOOL>(a2, v6, v20);
        goto LABEL_139;
      }

      v38 = *v61[0] == 0x7A696D6974704F3CLL && *(v61[0] + 1) == 0x69535249726F4665 && *(v61[0] + 11) == 0x3E657A6953524972;
      v20 = v59;
      if (v38)
      {
        goto LABEL_138;
      }

      if ((v14 & 0x80) != 0)
      {
        goto LABEL_144;
      }

      v27 = 19;
LABEL_80:
      if (v14 == 17)
      {
        v35 = v61[0] == 0x65766E6F4370553CLL && v61[1] == 0x323370466F547472 && LOBYTE(v61[2]) == 62;
        v20 = v57;
        if (v35)
        {
          goto LABEL_138;
        }

        v36 = v61;
        goto LABEL_108;
      }

LABEL_106:
      v36 = v61;
      if (v14 == 20)
      {
        goto LABEL_130;
      }

      if (v14 != 17)
      {
        goto LABEL_144;
      }

LABEL_108:
      v41 = *v36;
      v42 = v36[1];
      v43 = *(v36 + 16);
      if (v41 != 0x416465726168533CLL || v42 != 0x4F49737365726464 || v43 != 62)
      {
        if ((v14 & 0x80) != 0 && v27 == 24)
        {
          goto LABEL_117;
        }

        if ((v14 & 0x80) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_128;
      }

      memset(__p, 0, 24);
      kaldi::ReadToken(a2, v6, __p, a4, a5);
      kaldi::SplitStringToStringPair(__p, "|", (a1 + 128));
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

LABEL_139:
      std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
      v33 = 1;
      if ((HIBYTE(v61[2]) & 0x80) == 0)
      {
        goto LABEL_140;
      }

LABEL_142:
      operator delete(v61[0]);
      if ((v33 & 1) == 0)
      {
        return;
      }
    }
  }
}

uint64_t kaldi::ReadBasicType<unsigned int>(void *a1, int a2, uint64_t a3)
{
  v16[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = std::istream::get();
    if (v4 == -1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 72);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    v5 = v4;
    if (v4 << 24 != -67108864)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 76);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ReadBasicType: did not get expected integer type, ", 50);
      v12 = MEMORY[0x1C692A960](v11, v5);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs. ", 5);
      v14 = MEMORY[0x1C692A960](v13, 4294967292);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    result = std::istream::read();
  }

  else
  {
    result = MEMORY[0x1C692A890](a1, a3, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 92);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v8 = MEMORY[0x1C692A9A0](v7, v16[50]);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", next char is ", 15);
    v10 = std::istream::peek();
    MEMORY[0x1C692A960](v9, v10);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  return result;
}

void sub_1C3163F44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphNetworkConfig::CompiledBNNSGraph(kaldi::quasar::BNNSGraphNetworkConfig *this@<X0>, uint64_t a2@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  BNNSGraphCompileOptionsMakeDefault();
  BNNSGraphCompileOptionsSetTargetSingleThread();
  BNNSGraphCompileOptionsSetGenerateDebugInfo();
  v4 = BNNSGraphCompileOptionsSetPredefinedOptimizations();
  if (*(this + 120) == 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 131);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Set IR size optimization preference", 35);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
    }

    v4 = BNNSGraphCompileOptionsSetOptimizationPreference();
  }

  if ((*(this + 114) & 1) != 0 || kaldi::quasar::isDeviceFp32Compute(v4))
  {
    BNNSGraphCompileOptionsSetUpconvertMode();
  }

  v5 = *(this + 16);
  for (i = *(this + 17); v5 != i; v5 += 48)
  {
    BNNSGraphCompileOptionShareIOPointer();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if ((*(this + 121) & 1) == 0)
  {
    if ((*(this + 87) & 0x8000000000000000) != 0)
    {
      if (!*(this + 9))
      {
        goto LABEL_86;
      }
    }

    else if (!*(this + 87))
    {
      goto LABEL_86;
    }

    std::random_device::random_device[abi:ne200100](&v83);
    if (*(this + 87) >= 0)
    {
      v7 = *(this + 87);
    }

    else
    {
      v7 = *(this + 9);
    }

    v8 = &v85;
    std::string::basic_string[abi:ne200100](&v85, v7 + 1);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v85.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(this + 87) >= 0)
      {
        v9 = this + 64;
      }

      else
      {
        v9 = *(this + 8);
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 46;
    v10 = MEMORY[0x1C692A9E0](&v83);
    std::to_string(&v82, v10);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v82;
    }

    else
    {
      v11 = v82.__r_.__value_.__r.__words[0];
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v82.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v85, v11, size);
    v14 = v13->__r_.__value_.__r.__words[0];
    v86.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
    *(v86.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v14;
    __p.__r_.__value_.__l.__size_ = v86.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v86.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v15;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 148);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Using temp BNNSIR path: ", 24);
      v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 150);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Enabling BNNSIR atomic write", 28);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
      }
    }

    BNNSGraphCompileOptionsSetFileWriteFSyncBarrier();
    v19 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v86, (this + 64));
    std::__fs::filesystem::path::parent_path[abi:ne200100](v19, &v85);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v82, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v82 = v85;
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    v20 = &v82;
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v82.__r_.__value_.__r.__words[0];
    }

    *&v81.__val_ = v20;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v85, &v81);
    std::__fs::filesystem::__status(&v85, 0);
    v21 = v86.__r_.__value_.__s.__data_[0];
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (v21 == 255 || !v21)
    {
      v81.__val_ = 0;
      v81.__cat_ = std::system_category();
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 157);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Creating base folder for bnnsIr: ", 33);
        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v82;
        }

        else
        {
          v23 = v82.__r_.__value_.__r.__words[0];
        }

        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v82.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
      }

      v25 = &v82;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v82.__r_.__value_.__r.__words[0];
      }

      v86.__r_.__value_.__r.__words[0] = v25;
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v85, &v86);
      v26 = std::__fs::filesystem::__create_directories(&v85, &v81);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      v27 = kaldi::g_kaldi_verbose_level < 0 || v26;
      if ((v27 & 1) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 160);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "creation for bnnsIr base directory not successful with err: ", 60);
        std::error_code::message(&v86, &v81);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v86;
        }

        else
        {
          v29 = v86.__r_.__value_.__r.__words[0];
        }

        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v86.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
      }
    }

    BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    std::random_device::~random_device(&v83);
  }

LABEL_86:
  if ((_get_cpu_capabilities() & 0x78000000) == 0x8000000)
  {
    BNNSGraphCompileOptionsSetTarget();
  }

  std::string::basic_string[abi:ne200100]<0>(&v82, "");
  *&v81.__val_ = 0;
  v81.__cat_ = &v82;
  BNNSGraphCompileOptionsSetMessageLogMask();
  BNNSGraphCompileOptionsSetMessageLogCallback();
  v32 = BNNSGraphCompileFromFile_v2();
  if (!v32 || (v33 = v31) == 0)
  {
    v58 = *__error();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_134;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        goto LABEL_134;
      }

      p_p = &__p;
    }

    remove(p_p, v57);
LABEL_134:
    v60 = strerror(v58);
    std::string::basic_string[abi:ne200100]<0>(&v86, v60);
    BNNSGraphCompileOptionsDestroy();
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 202);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Failed to compile MIL: ", 23);
    v62 = *(this + 63);
    if (v62 >= 0)
    {
      v63 = this + 40;
    }

    else
    {
      v63 = *(this + 5);
    }

    if (v62 >= 0)
    {
      v64 = *(this + 63);
    }

    else
    {
      v64 = *(this + 6);
    }

    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " to BNNS IR: ", 13);
    v69 = *(this + 8);
    v68 = this + 64;
    v67 = v69;
    v70 = v68[23];
    if (v70 >= 0)
    {
      v71 = v68;
    }

    else
    {
      v71 = v67;
    }

    if (v70 >= 0)
    {
      v72 = v68[23];
    }

    else
    {
      v72 = *(v68 + 1);
    }

    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v71, v72);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " no graph, errno error: ", 24);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v86;
    }

    else
    {
      v75 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v86.__r_.__value_.__l.__size_;
    }

    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, ", bnns error message: ", 22);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v82;
    }

    else
    {
      v79 = v82.__r_.__value_.__r.__words[0];
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v82.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v79, v80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v85);
  }

  if (*(this + 121) == 1)
  {
    BNNSGraphCompileOptionsDestroy();
    *a2 = v32;
    *(a2 + 8) = v33;
    *(a2 + 16) = 0;
    goto LABEL_123;
  }

  BNNSGraphCompileOptionsDestroy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_)
    {
      v34 = __p.__r_.__value_.__r.__words[0];
LABEL_97:
      v86.__r_.__value_.__r.__words[0] = 67589;
      if (fsctl(v34, 0xC0084A44uLL, &v86, 0))
      {
        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v85, "markPurgeablePath", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 113);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Fail to mark ", 13);
          v36 = strlen(v34);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v34, v36);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "as purgeable: error: ", 21);
          v39 = __error();
          v40 = strerror(*v39);
          v41 = strlen(v40);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " flags: 0x", 10);
          *(v43 + *(*v43 - 24) + 8) = *(v43 + *(*v43 - 24) + 8) & 0xFFFFFFB5 | 8;
          MEMORY[0x1C692A9B0]();
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v85);
          goto LABEL_102;
        }
      }

      else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "markPurgeablePath", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 117);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Marked ", 7);
        v45 = strlen(v34);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v34, v45);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " as purgeable: flags: 0x", 24);
        *(v47 + *(*v47 - 24) + 8) = *(v47 + *(*v47 - 24) + 8) & 0xFFFFFFB5 | 8;
        MEMORY[0x1C692A9B0]();
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
LABEL_102:
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(&v85, "CompiledBNNSGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 222);
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v85, "Moving compiled BNNSIR from ", 28);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &__p;
          }

          else
          {
            v49 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = __p.__r_.__value_.__l.__size_;
          }

          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " to ", 4);
          v53 = *(this + 87);
          if (v53 >= 0)
          {
            v54 = this + 64;
          }

          else
          {
            v54 = *(this + 8);
          }

          if (v53 >= 0)
          {
            v55 = *(this + 87);
          }

          else
          {
            v55 = *(this + 9);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v54, v55);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v85);
        }
      }

      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v85, &__p);
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v86, (this + 64));
      std::__fs::filesystem::__rename(&v85, &v86, 0);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    v34 = &__p;
    goto LABEL_97;
  }

  v56 = *(this + 87);
  if (v56 < 0)
  {
    v56 = *(this + 9);
  }

  *a2 = v32;
  *(a2 + 8) = v33;
  *(a2 + 16) = v56 != 0;
LABEL_123:
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C3164A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, int a18, std::random_device arg34, std::random_device a19, int _3C, std::random_device a20, void *a21, void *a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C3164CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void kaldi::quasar::BNNSGraphNetworkConfig::MapBNNSIRFile(char *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = open(a1, 0);
  if (v4 == -1)
  {
    if (kaldi::g_kaldi_verbose_level < 0)
    {
LABEL_24:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return;
    }

    kaldi::KaldiLogMessage::KaldiLogMessage(v47, "MapBNNSIRFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 236);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Could not read open() BNNSIR: ", 30);
    v16 = v2[23];
    if (v16 >= 0)
    {
      v17 = v2;
    }

    else
    {
      v17 = *v2;
    }

    if (v16 >= 0)
    {
      v18 = v2[23];
    }

    else
    {
      v18 = *(v2 + 1);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
    v21 = __error();
    v22 = strerror(*v21);
    v23 = strlen(v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_23:
    kaldi::KaldiLogMessage::~KaldiLogMessage(v47);
    goto LABEL_24;
  }

  v5 = v4;
  if (fstat(v4, &v46))
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v47, "MapBNNSIRFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 242);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Could not fstat() BNNSIR: ", 26);
      v7 = v2[23];
      if (v7 >= 0)
      {
        v8 = v2;
      }

      else
      {
        v8 = *v2;
      }

      if (v7 >= 0)
      {
        v9 = v2[23];
      }

      else
      {
        v9 = *(v2 + 1);
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
      v12 = __error();
      v13 = strerror(*v12);
      v14 = strlen(v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v47);
    }

    close(v5);
LABEL_14:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return;
  }

  st_size = v46.st_size;
  v25 = mmap(0, v46.st_size, 1, 1, v5, 0);
  close(v5);
  if (v25 == -1)
  {
    if (kaldi::g_kaldi_verbose_level < 0)
    {
      goto LABEL_24;
    }

    kaldi::KaldiLogMessage::KaldiLogMessage(v47, "MapBNNSIRFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 254);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Could not mmap() BNNSIR: ", 25);
    v28 = v2[23];
    if (v28 >= 0)
    {
      v29 = v2;
    }

    else
    {
      v29 = *v2;
    }

    if (v28 >= 0)
    {
      v30 = v2[23];
    }

    else
    {
      v30 = *(v2 + 1);
    }

    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ": ", 2);
    v33 = __error();
    v34 = strerror(*v33);
    v35 = strlen(v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
    goto LABEL_23;
  }

  if (!BNNSGraphContextMake())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v47, "MapBNNSIRFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 259);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "BNNSGraphContextCreate failed for bnnsir: ", 42);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, v2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v47);
  }

  WorkspaceSize_v2 = BNNSGraphContextGetWorkspaceSize_v2();
  BNNSGraphContextDestroy_v2();
  if (WorkspaceSize_v2 == -1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v47, "MapBNNSIRFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 265);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Could not BNNSGraphContextGetWorkspaceSize() BNNSIR: ", 53);
      v37 = v2[23];
      if (v37 >= 0)
      {
        v38 = v2;
      }

      else
      {
        v38 = *v2;
      }

      if (v37 >= 0)
      {
        v39 = v2[23];
      }

      else
      {
        v39 = *(v2 + 1);
      }

      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ": ", 2);
      v42 = __error();
      v43 = strerror(*v42);
      v44 = strlen(v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v47);
    }

    munmap(v25, st_size);
    goto LABEL_14;
  }

  *a2 = v25;
  a2[1] = st_size;
  a2[2] = WorkspaceSize_v2;
}

kaldi::quasar::BNNSGraphNetworkPlan *kaldi::quasar::BNNSGraphNetworkPlan::BNNSGraphNetworkPlan(kaldi::quasar::BNNSGraphNetworkPlan *this, const kaldi::quasar::BNNSGraphNetworkConfig *a2)
{
  *this = &unk_1F42CCE08;
  kaldi::quasar::BNNSGraphNetworkConfig::BNNSGraphNetworkConfig((this + 8), a2);
  *(this + 28) = 0;
  *(this + 27) = this + 224;
  *(this + 29) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 193) = 0u;
  kaldi::quasar::BNNSGraphNetworkPlan::CompileAndLoadGraph(this);
  return this;
}

void sub_1C316521C(_Unwind_Exception *a1)
{
  v4 = v2;
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(v4, *v3);
  kaldi::quasar::BNNSGraphNetworkConfig::~BNNSGraphNetworkConfig(v1);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BNNSGraphNetworkPlan::CompileAndLoadGraph(kaldi::quasar::BNNSGraphNetworkPlan *this)
{
  v2 = this + 72;
  if ((*(this + 95) & 0x8000000000000000) != 0)
  {
    if (!*(this + 10))
    {
      goto LABEL_16;
    }
  }

  else if (!*(this + 95))
  {
    goto LABEL_16;
  }

  if ((*(this + 129) & 1) == 0)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v13, "CompileAndLoadGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 333);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "loading model from bnnsIr path: ", 32);
      v4 = *(this + 95);
      if (v4 >= 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = *(this + 9);
      }

      if (v4 >= 0)
      {
        v6 = *(this + 95);
      }

      else
      {
        v6 = *(this + 10);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v13);
    }

    v13 = 0uLL;
    v14 = 0;
    kaldi::quasar::BNNSGraphNetworkConfig::MapBNNSIRFile(v2, &v13);
    *(this + 168) = v13;
    *(this + 25) = v14;
    if (*(this + 21))
    {
      *(this + 208) = 1;
    }
  }

LABEL_16:
  if (!*(this + 21))
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v13, "CompileAndLoadGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 340);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "No graph is loaded, compiling to bnnsIr", 39);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v13);
    }

    kaldi::quasar::BNNSGraphNetworkConfig::CompiledBNNSGraph((this + 8), &v13);
    *(this + 168) = v13;
    *(this + 208) = v14;
    if (!*(this + 21))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v13, "CompileAndLoadGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 345);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Could not load or compile ", 26);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, this + 6);
LABEL_28:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v13);
    }
  }

  v7 = BNNSGraphContextMake();
  *(this + 23) = v7;
  *(this + 24) = v8;
  if (!v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v13, "CompileAndLoadGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 350);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "BNNSGraphContextCreate failed for ", 34);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, this + 6);
    goto LABEL_28;
  }

  if (*(this + 160) == 1)
  {
    BNNSGraphContextSetArgumentType();
    BNNSGraphContextSetWorkspaceAllocationCallback_v2();
    BNNSGraphContextSetOutputAllocationCallback_v2();
  }

  result = BNNSGraphContextGetWorkspaceSize_v2();
  *(this + 25) = result;
  if (result == -1)
  {
    BNNSGraphContextDestroy_v2();
    kaldi::quasar::releaseGraph(this + 168, *(this + 208));
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v13, "CompileAndLoadGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 370);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "getting workspace size with error on bnnsir: ", 45);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, v2);
    goto LABEL_28;
  }

  return result;
}

void kaldi::quasar::BNNSGraphNetworkPlan::~BNNSGraphNetworkPlan(kaldi::quasar::BNNSGraphNetworkPlan *this)
{
  *this = &unk_1F42CCE08;
  BNNSGraphContextDestroy_v2();
  kaldi::quasar::releaseGraph(this + 168, *(this + 208));
  if (*(this + 208) == 1)
  {
    *(this + 208) = 0;
  }

  if (*(this + 29))
  {
    kaldi::quasar::BNNSGraphNetworkPlan::WorkSpaceFreeCallback(this + 27, 0x18);
  }

  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(this + 216, *(this + 28));
  kaldi::quasar::BNNSGraphNetworkConfig::~BNNSGraphNetworkConfig(this + 1);

  kaldi::CuMatrixBase<float>::~CuMatrixBase();
}

{
  kaldi::quasar::BNNSGraphNetworkPlan::~BNNSGraphNetworkPlan(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::releaseGraph(uint64_t a1, int a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3 != -1)
    {
      munmap(v3, *(a1 + 8));
      *a1 = -1;
      *(a1 + 8) = 0;
    }
  }

  else if (v3)
  {
    free(v3);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void kaldi::quasar::BNNSGraphNetworkPlan::WorkSpaceFreeCallback(kaldi::quasar::BNNSGraphNetworkPlan **this, void *a2)
{
  if (a2 != 24)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "WorkSpaceFreeCallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 323);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "sizeof(MemoryCallbackContext) == user_memory_context_size");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  v3 = (this + 1);
  v4 = *this;
  if (*this != (this + 1))
  {
    do
    {
      munmap(*(v4 + 4), *(v4 + 6));
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(this, this[1]);
  this[1] = 0;
  this[2] = 0;
  *this = v3;
}

uint64_t kaldi::quasar::BNNSGraphNetworkPlan::WorkSpaceAllocationCallback(uint64_t **this, void *a2, void **a3, size_t a4, uint64_t a5)
{
  if (!a3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "WorkSpaceAllocationCallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 288);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "memptr");
    goto LABEL_14;
  }

  if (a2 != 24)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "WorkSpaceAllocationCallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 294);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "sizeof(MemoryCallbackContext) == user_memory_context_size");
    goto LABEL_14;
  }

  if (!this)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "WorkSpaceAllocationCallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 296);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "space_info != nullptr");
    goto LABEL_14;
  }

  v8 = a5 + a4;
  v9 = *a3;
  if (!*a3)
  {
LABEL_18:
    v18 = (a4 + v8 - 1) & -a4;
    v19 = mmap(0, v18 + a4, 3, 4098, -1, 0);
    v26 = v19;
    if (v19 != -1)
    {
      *a3 = v19;
      v27[0] = &v26;
      std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(this, &v26, &std::piecewise_construct, v27)[5] = v18;
      v27[0] = &v26;
      std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(this, &v26, &std::piecewise_construct, v27)[6] = v18 + a4;
      mprotect(*a3 + v18, a4, 0);
      return 0;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "WorkSpaceAllocationCallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 311);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Could not mmap ", 15);
    v22 = MEMORY[0x1C692A9B0](v21, v18);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "bytes: ", 7);
    v24 = __error();
    v25 = strerror(*v24);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, v25);
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v10 = this[1];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = this + 1;
  do
  {
    v12 = v10[4];
    v13 = v12 >= v9;
    v14 = v12 < v9;
    if (v13)
    {
      v11 = v10;
    }

    v10 = v10[v14];
  }

  while (v10);
  if (v11 == this + 1 || v9 < v11[4])
  {
LABEL_13:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "WorkSpaceAllocationCallback", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 299);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "space_info->find(*memptr) != space_info->end()");
    goto LABEL_14;
  }

  v15 = std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(this, a3);
  v16 = *a3;
  if (*v15 < v8)
  {
    v17 = std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(this, a3);
    munmap(v16, v17[1]);
    std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__erase_unique<void *>(this, a3);
    *a3 = 0;
    goto LABEL_18;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  return 0;
}

void *std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void kaldi::quasar::BNNSGraphNetworkPlan::CreateData(void x0_0, void *a1, int a2)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    v4 = 1;
    std::vector<long long>::push_back[abi:ne200100](__p, &v4);
  }

  v4 = (a1[1] - *a1) >> 2;
  std::vector<long long>::push_back[abi:ne200100](__p, &v4);
  operator new();
}

{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    v4 = 1;
    std::vector<long long>::push_back[abi:ne200100](__p, &v4);
  }

  v4 = (a1[1] - *a1) >> 2;
  std::vector<long long>::push_back[abi:ne200100](__p, &v4);
  operator new();
}

void sub_1C3165B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void kaldi::quasar::BNNSGraphData::CopyFromStdVector<int>(uint64_t a1, int **a2)
{
  if (*(a1 + 64) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CopyFromStdVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 232);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "CopyFromStdVector(const std::vector<T> &vec) not implemented for fp16");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  if (*(a1 + 56) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(a1 + 40) = *(a1 + 32);
  std::vector<float>::reserve((a1 + 32), a2[1] - *a2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = *(a1 + 40);
    do
    {
      v7 = *v4;
      v8 = *(a1 + 48);
      if (v6 >= v8)
      {
        v9 = *(a1 + 32);
        v10 = v6 - v9;
        v11 = (v6 - v9) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 32, v14);
        }

        v15 = (v6 - v9) >> 2;
        v16 = (4 * v11);
        v17 = (4 * v11 - 4 * v15);
        *v16 = v7;
        v6 = v16 + 1;
        memcpy(v17, v9, v10);
        v18 = *(a1 + 32);
        *(a1 + 32) = v17;
        *(a1 + 40) = v6;
        *(a1 + 48) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a1 + 40) = v6;
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1C3165EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::BNNSGraphData::CopyFromStdVector<float>(uint64_t a1, int **a2)
{
  if (*(a1 + 64) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CopyFromStdVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 232);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "CopyFromStdVector(const std::vector<T> &vec) not implemented for fp16");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  if (*(a1 + 56) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(a1 + 40) = *(a1 + 32);
  std::vector<float>::reserve((a1 + 32), a2[1] - *a2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = *(a1 + 40);
    do
    {
      v7 = *v4;
      v8 = *(a1 + 48);
      if (v6 >= v8)
      {
        v9 = *(a1 + 32);
        v10 = v6 - v9;
        v11 = (v6 - v9) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 32, v14);
        }

        v15 = (v6 - v9) >> 2;
        v16 = (4 * v11);
        v17 = (4 * v11 - 4 * v15);
        *v16 = v7;
        v6 = (v16 + 1);
        memcpy(v17, v9, v10);
        v18 = *(a1 + 32);
        *(a1 + 32) = v17;
        *(a1 + 40) = v6;
        *(a1 + 48) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v6 = v7;
        v6 += 4;
      }

      *(a1 + 40) = v6;
      ++v4;
    }

    while (v4 != v5);
  }
}

void kaldi::quasar::BNNSGraphNetworkPlan::CreateData(void x0_0, uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4[0] = *(a1 + 20);
  v4[1] = v2;
  memset(__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, v4, &v5, 2uLL);
  operator new();
}

{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = kaldi::MatrixBase<float>::NumRows(a1);
  v4[1] = kaldi::MatrixBase<float>::NumCols(a1);
  memset(__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, v4, &v5, 2uLL);
  operator new();
}

void sub_1C31661D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C3166330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphNetworkPlan::CreateConcat()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "CreateConcat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 429);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::BNNSGraphNetworkPlan::CreateSlice(kaldi::quasar::BNNSGraphNetworkPlan *this, const kaldi::quasar::ComputeEngineBufferItf *lpsrc, int a3, int a4)
{
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 436);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "bnns_graph_data");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  kaldi::quasar::BNNSGraphData::Slice(v6, a3, a4);
}

void kaldi::quasar::BNNSGraphData::Slice(kaldi::quasar::BNNSGraphData *this, int a2, int a3)
{
  if ((*(*this + 168))(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Slice", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 289);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "std::unique_ptr<ComputeEngineBufferItf> Slice(int start, int end) not implemented for fp16");
    goto LABEL_17;
  }

  if (*(this + 14) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Slice", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 293);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "Slice(int start, int end) fail - data not assigned with std::vector<float>");
LABEL_17:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v8 = *(this + 9);
  v9 = *(this + 10);
  if (v9 == v8)
  {
    kaldi::KaldiAssertFailure_("Slice", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 0x128, "dims_.size() >= 1", v7);
  }

  if (a2 < 0)
  {
    kaldi::KaldiAssertFailure_("Slice", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 0x129, "0 <= start", v7);
  }

  if (a3 < a2)
  {
    kaldi::KaldiAssertFailure_("Slice", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 0x12A, "start <= end", v7);
  }

  v10 = *v8;
  if (*v8 < a3)
  {
    kaldi::KaldiAssertFailure_("Slice", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 0x12C, "end <= num_split", v7);
  }

  if (!v10)
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    operator new();
  }

  if (a2 || v10 != a3)
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v8, v9, (v9 - v8) >> 3);
    *__p = a3 - a2;
    operator new();
  }

  v11 = *(*this + 16);

  v11(this);
}

void sub_1C3166914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphNetworkPlan::CreateSplit(const kaldi::quasar::ComputeEngineBufferItf *lpsrc@<X1>, const void **a2@<X8>)
{
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "CreateSplit", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 443);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "bnns_graph_data");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  kaldi::quasar::BNNSGraphData::Split(v4, v8, a2, v5, v6, v7);
}

void kaldi::quasar::BNNSGraphData::Split(kaldi::quasar::BNNSGraphData *this@<X0>, const char *a2@<X4>, const void **a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X2>, uint64_t a6@<X3>)
{
  v7 = *(this + 9);
  v8 = *(this + 10);
  if (v7 == v8)
  {
    kaldi::KaldiAssertFailure_("Split", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 0xFD, "!dims_.empty()", a2);
  }

  if (*(this + 64) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Split", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 256);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "std::vector<std::unique_ptr<ComputeEngineBufferItf>> Split() not implemented for fp16");
    goto LABEL_14;
  }

  if (*(this + 14) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Split", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 260);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Split() fail - data not assigned with std::vector<float>");
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (v8 - v7 == 8)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    (*(*this + 16))(__p, this, a4, a5, a6, a2);
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a3, __p);
    v10 = __p[0];
    __p[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    v11 = *v7;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::reserve(a3, v11);
    if (v11)
    {
      if (*(this + 14) == 1)
      {
        v12 = *(this + 10);
        v13 = (*(this + 9) + 8);
        memset(__p, 0, 24);
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, v13, v12, v12 - v13);
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }
}

void sub_1C3166D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphNetworkPlan::Run(uint64_t a1, __int128 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v9 = *a2;
  v10 = a2[1];
  while (v9 != v10)
  {
    v11 = *(v9 + 3);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v12 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v12;
    }

    v16 = v11;
    v13 = v18;
    if (v18 >= v19)
    {
      v18 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v17, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = *&__p.__r_.__value_.__l.__data_;
      *(v18 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v13 = v14;
      memset(&__p, 0, sizeof(__p));
      *(v13 + 24) = v16;
      v18 = v13 + 32;
    }

    v9 += 2;
  }

  (*(*a1 + 128))(a1, &v17, a3, a4, a5);
  __p.__r_.__value_.__r.__words[0] = &v17;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C3166F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphNetworkPlan::RunApple(uint64_t a1, uint64_t *a2, const void ***a3, void *a4, const void **a5)
{
  if (*a4 != a4[1])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 548);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v114, "Target node names must be empty");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
  }

  InputCount = BNNSGraphGetInputCount();
  std::vector<char const*>::vector[abi:ne200100](v113, InputCount);
  BNNSGraphGetInputNames_v2();
  OutputCount = BNNSGraphGetOutputCount();
  std::vector<char const*>::vector[abi:ne200100](v112, OutputCount);
  BNNSGraphGetOutputNames_v2();
  v109 = 0;
  v110 = 0;
  v111 = 0;
  std::vector<std::unique_ptr<kaldi::quasar::BNNSGraphData>>::vector[abi:ne200100](v108, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
  v95 = InputCount;
  memset(__src, 0, sizeof(__src));
  std::vector<std::unique_ptr<BNNSTensor>>::vector[abi:ne200100](&v106, OutputCount);
  v105[0] = 0;
  v105[1] = 0;
  v103 = 0;
  v104 = v105;
  v94 = OutputCount;
  if (OutputCount)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(v112[0] + v8);
      TensorDescriptor_v2 = BNNSGraphContextGetTensorDescriptor_v2();
      if (TensorDescriptor_v2)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 577);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "BNNSGraphContextGetTensorDescriptor output failed: ", 51);
        v66 = MEMORY[0x1C692A960](v65, TensorDescriptor_v2);
        v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " on ", 4);
        v68 = strlen(v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v9, v68);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
      }

      v11 = v102 == 65552 || v102 == 65568;
      if (!v11)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 580);
        v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "Unsupported output type: ", 25);
        MEMORY[0x1C692A970](v79, v102);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
      }

      if (v101 != 1)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 584);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "Unsupported output stride", 25);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
      }

      if (*(a1 + 136) == *(a1 + 144))
      {
        if (*(a1 + 160) == 1)
        {
LABEL_43:
          operator new();
        }

LABEL_45:
        v22 = 0;
        __p = 0;
        v98 = 0;
        v99 = 0;
        do
        {
          if (!v100[v22 + 1])
          {
            break;
          }

          v114.__r_.__value_.__r.__words[0] = v100[v22 + 1];
          std::vector<long long>::push_back[abi:ne200100](&__p, &v114);
          ++v22;
        }

        while (v22 != 8);
        if (v102 == 65552)
        {
          operator new();
        }

        operator new();
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v9);
      v12 = *(a1 + 136);
      v13 = *(a1 + 144);
      if (v12 == v13)
      {
LABEL_27:
        std::string::basic_string[abi:ne200100]<0>(&v114, "");
      }

      else
      {
        v14 = v99 >= 0 ? HIBYTE(v99) : v98;
        v15 = v99 >= 0 ? &__p : __p;
        while (1)
        {
          v16 = *(v12 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v12 + 8);
          }

          if (v14 == v16)
          {
            v18 = v17 >= 0 ? v12 : *v12;
            if (!memcmp(v15, v18, v14))
            {
              break;
            }
          }

          v12 += 48;
          if (v12 == v13)
          {
            goto LABEL_27;
          }
        }

        if (*(v12 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v114, *(v12 + 24), *(v12 + 32));
        }

        else
        {
          v114 = *(v12 + 24);
        }
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(__p);
      }

      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      if (v114.__r_.__value_.__l.__size_)
      {
        goto LABEL_36;
      }

      v19 = 0;
      v20 = 0;
LABEL_41:
      operator delete(v114.__r_.__value_.__l.__data_);
LABEL_42:
      if (*(a1 + 160))
      {
        goto LABEL_43;
      }

      if (!v20)
      {
        goto LABEL_45;
      }

      v114.__r_.__value_.__r.__words[0] = v20;
      v114.__r_.__value_.__l.__size_ = v19;
      std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](&v109, &v114);
      v8 = v103 + 1;
      v103 = v8;
      if (v8 >= OutputCount)
      {
        goto LABEL_53;
      }
    }

    if (!*(&v114.__r_.__value_.__s + 23))
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_42;
    }

LABEL_36:
    v20 = kaldi::quasar::DataFloatForInput(a2, &v114.__r_.__value_.__l.__data_);
    v19 = v21;
    if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_53:
  std::vector<std::unique_ptr<BNNSTensor>>::vector[abi:ne200100](&__p, v95);
  if (!v95)
  {
    goto LABEL_89;
  }

  for (i = 0; i != v95; ++i)
  {
    v24 = *(v113[0] + i);
    v25 = BNNSGraphContextGetTensorDescriptor_v2();
    if (v25)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 655);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "BNNSGraphContextGetTensorDescriptor input failed: ", 50);
      v72 = MEMORY[0x1C692A960](v71, v25);
      v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " on ", 4);
      v74 = strlen(v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, v24, v74);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
    }

    if (v102 != 65552 && v102 != 65568)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 658);
      v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "Unsupported input type: ", 24);
      MEMORY[0x1C692A970](v80, v102);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
    }

    v28 = *a2;
    v27 = a2[1];
    if (*a2 == v27)
    {
LABEL_71:
      v32 = 0;
      goto LABEL_80;
    }

    v29 = strlen(v24);
    while (1)
    {
      v30 = *(v28 + 23);
      if ((v30 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v29 == *(v28 + 8))
      {
        if (v29 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v31 = *v28;
        goto LABEL_69;
      }

LABEL_70:
      v28 += 32;
      if (v28 == v27)
      {
        goto LABEL_71;
      }
    }

    v31 = v28;
    if (v29 != v30)
    {
      goto LABEL_70;
    }

LABEL_69:
    if (memcmp(v31, v24, v29))
    {
      goto LABEL_70;
    }

    v33 = *(v28 + 24);
    v34 = (*(*v33 + 168))(v33);
    if (v102 == 65552)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    if (v35 == 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 665);
      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "input specified as fp16: ", 25);
      v82 = *(v28 + 23);
      if (v82 >= 0)
      {
        v83 = v28;
      }

      else
      {
        v83 = *v28;
      }

      if (v82 >= 0)
      {
        v84 = *(v28 + 23);
      }

      else
      {
        v84 = *(v28 + 8);
      }

      v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v83, v84);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " type and data type does not match", 34);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
    }

    if (((*(*v33 + 168))(v33) & 1) == 0 && v102 != 65568 && v102 != 131104)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 668);
      v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "input not specified as fp16: ", 29);
      v87 = *(v28 + 23);
      if (v87 >= 0)
      {
        v88 = v28;
      }

      else
      {
        v88 = *v28;
      }

      if (v87 >= 0)
      {
        v89 = *(v28 + 23);
      }

      else
      {
        v89 = *(v28 + 8);
      }

      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, v88, v89);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, " type and data type does not match", 34);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
    }

    kaldi::quasar::ComputeEngineBufferItf::GetShape(&v114.__r_.__value_.__l.__data_, v33);
    v32 = v114.__r_.__value_.__r.__words[0];
LABEL_80:
    if (v101 != 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 676);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "Unsupported input stride", 24);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
    }

    std::string::basic_string[abi:ne200100]<0>(&v114, v24);
    v36 = kaldi::quasar::DataFloatForInput(a2, &v114.__r_.__value_.__l.__data_);
    v38 = v37;
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }

    if (!v36)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 691);
      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "Missing input: ", 15);
      v70 = strlen(v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v24, v70);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
    }

    if (*(a1 + 160) == 1)
    {
      operator new();
    }

    v114.__r_.__value_.__r.__words[0] = v36;
    v114.__r_.__value_.__l.__size_ = v38;
    std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](&v109, &v114);
    if (v32)
    {
      operator delete(v32);
    }
  }

LABEL_89:
  if (v95 != (a2[1] - *a2) >> 5)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 696);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "Unknown inputs", 14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
  }

  v100[0] = 0;
  v39 = v94;
  if ((*(a1 + 160) & 1) == 0)
  {
    v40 = sysconf(29);
    if (*(a1 + 232))
    {
      v100[0] = *(*(a1 + 216) + 32);
    }

    kaldi::quasar::BNNSGraphNetworkPlan::WorkSpaceAllocationCallback((a1 + 216), 0x18, v100, v40, *(a1 + 200));
    std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(a1 + 216, v100);
  }

  v41 = BNNSGraphContextExecute_v2();
  if (v41)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 716);
    v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "BNNSGraphContextExecute failed: ", 32);
    MEMORY[0x1C692A960](v91, v41);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a5);
  if (*(a1 + 160) != 1)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<kaldi::quasar::BNNSGraphData> *,std::unique_ptr<kaldi::quasar::BNNSGraphData> *,std::back_insert_iterator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(&v103, v108[0], v108[1], a5);
    goto LABEL_131;
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::resize(a5, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
  v103 = 0;
  if (!v94)
  {
    goto LABEL_131;
  }

  v42 = 0;
  while (2)
  {
    v43 = v105[0];
    if (!v105[0])
    {
      goto LABEL_106;
    }

    v44 = v105;
    do
    {
      v45 = v43[4];
      v46 = v45 >= v42;
      v47 = v45 < v42;
      if (v46)
      {
        v44 = v43;
      }

      v43 = v43[v47];
    }

    while (v43);
    if (v44 != v105 && v42 >= v44[4])
    {
      v59 = std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(&v104, &v103);
      v42 = v103;
      v48 = v106 + 8 * v103;
      if (*v59)
      {
        v60 = *(*v48 + 144);
        if (v59[1] < v60)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 733);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, "data_size >= tensor->data_size_in_bytes", 39);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
        }

        memcpy(*v59, *(*v48 + 136), v60);
        goto LABEL_128;
      }
    }

    else
    {
LABEL_106:
      v48 = v106 + 8 * v42;
    }

    v49 = a3[1];
    if (*a3 == v49)
    {
      v52 = *a3;
      goto LABEL_120;
    }

    v50 = *(v112[0] + v42);
    v51 = strlen(v50);
    v52 = *a3;
    while (2)
    {
      v53 = *(v52 + 23);
      if (v53 < 0)
      {
        if (v51 != v52[1])
        {
          goto LABEL_116;
        }

        if (v51 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v54 = *v52;
      }

      else
      {
        v54 = v52;
        if (v51 != v53)
        {
          goto LABEL_116;
        }
      }

      if (!memcmp(v54, v50, v51))
      {
        goto LABEL_118;
      }

LABEL_116:
      v52 += 3;
      if (v52 != v49)
      {
        continue;
      }

      break;
    }

    v52 = v49;
LABEL_118:
    v39 = v94;
LABEL_120:
    if (v49 != v52)
    {
      std::vector<long long>::vector[abi:ne200100](&v114, *(*v48 + 4));
      v55 = *(*v48 + 4);
      if (*(*v48 + 4))
      {
        v56 = (*v48 + 8);
        v57 = v114.__r_.__value_.__r.__words[0];
        do
        {
          v58 = *v56++;
          *v57++ = v58;
          --v55;
        }

        while (v55);
      }

      operator new();
    }

LABEL_128:
    v42 = v103 + 1;
    v103 = v42;
    if (v42 < v39)
    {
      continue;
    }

    break;
  }

LABEL_131:
  v61 = *(a1 + 216);
  v62 = (a1 + 224);
  if (v61 != v62)
  {
    do
    {
      if (madvise(v61[4], v61[5], 7))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v114, "RunApple", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-model.cc", 759);
        v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, " Could not madvise work space: ", 31);
        v76 = __error();
        v77 = strerror(*v76);
        v78 = strlen(v77);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v114);
      }

      v63 = v61[1];
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = v61[2];
          v11 = *v64 == v61;
          v61 = v64;
        }

        while (!v11);
      }

      v61 = v64;
    }

    while (v64 != v62);
  }

  v114.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::unique_ptr<BNNSTensor>>::__destroy_vector::operator()[abi:ne200100](&v114);
  std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::destroy(&v104, v105[0]);
  v114.__r_.__value_.__r.__words[0] = &v106;
  std::vector<std::unique_ptr<BNNSTensor>>::__destroy_vector::operator()[abi:ne200100](&v114);
  v114.__r_.__value_.__r.__words[0] = __src;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v114);
  v114.__r_.__value_.__r.__words[0] = v108;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v114);
  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  if (v113[0])
  {
    v113[1] = v113[0];
    operator delete(v113[0]);
  }
}

uint64_t kaldi::quasar::DataFloatForInput(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v2 + 8);
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 : *v2;
      if (!memcmp(v9, v6, v5))
      {
        break;
      }
    }

    v2 += 32;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v11 = *(v2 + 24);
  v12 = (*(*v11 + 168))(v11);
  v13 = *(v11 + 14);
  if (v12)
  {
    if (v13)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  else if (v13 != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "GetDataFloat", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 151);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "*GetDataFloat() fail - data is not assigned as std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v10 = *(v11 + 4);
  kaldi::quasar::ComputeEngineBufferItf::GetSize(v11);
  return v10;
}

void std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_argument_t>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t kaldi::quasar::BNNSGraphData::GetWritableDataFloat16(kaldi::quasar::BNNSGraphData *this)
{
  if (*(this + 14))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return *(this + 4);
}

uint64_t kaldi::quasar::BNNSGraphData::GetWritableDataFloat(kaldi::quasar::BNNSGraphData *this)
{
  if (*(this + 14) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "GetWritableDataFloat", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 144);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "*GetWritableDataFloat() fail - data is not assigned as std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(this + 4);
}

void std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__append(result, v5);
  }
}

uint64_t *kaldi::quasar::BNNSGraphNetworkPlan::GetSharedInputOutputNames@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(a1, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
}

uint64_t kaldi::quasar::BNNSGraphNetworkConfig::CompiledBNNSGraph(void)const::$_0::__invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == 8 && a2 && a4)
  {
    result = *(a4 + 8);
    if (result)
    {
      JUMPOUT(0x1C692A640);
    }
  }

  return result;
}

kaldi::quasar::BNNSGraphNetworkConfig *kaldi::quasar::BNNSGraphNetworkConfig::BNNSGraphNetworkConfig(kaldi::quasar::BNNSGraphNetworkConfig *this, const kaldi::quasar::BNNSGraphNetworkConfig *a2)
{
  *this = &unk_1F42CDA38;
  *(this + 8) = *(a2 + 8);
  v4 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 16) = *(a2 + 16);
  *this = &unk_1F42CCDC8;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  v8 = *(a2 + 14);
  v9 = *(a2 + 60);
  *(this + 16) = 0;
  *(this + 60) = v9;
  *(this + 14) = v8;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(this + 16, *(a2 + 16), *(a2 + 17), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 17) - *(a2 + 16)) >> 4));
  *(this + 152) = *(a2 + 152);
  return this;
}

void sub_1C31689FC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphData::CopyFromMatrixT<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  v15[32] = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 168))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__src, "CopyFromMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 348);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "CopyFromMatrixT(const MatType &mat) not implemented for fp16");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__src, "CopyFromMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 352);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "CopyFromMatrixT(const MatType &mat) fail - data not assigned with std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  __src = v5;
  v14 = v4;
  std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>((a1 + 72), &__src, v15, 2uLL);
  if (*(a1 + 56) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  std::vector<float>::resize((a1 + 32), v4 * v5);
  if (*(a2 + 24) == *(a2 + 16))
  {
    memcpy(*(a1 + 32), *(a2 + 8), *(a1 + 40) - *(a1 + 32));
  }

  else if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 4 * v4;
    do
    {
      if (v8 >= *(a2 + 20))
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v6);
      }

      v10 = *(a1 + 32);
      v11 = *(a2 + 16);
      v12 = *(a2 + 32);
      v14 = (*(a2 + 8) + 4 * v8 * *(a2 + 24));
      __src = &unk_1F42BFF30;
      v15[0] = v11;
      v15[1] = v12;
      memcpy((v10 + v7), v14, v9);
      ++v8;
      v7 += v9;
    }

    while (v5 != v8);
  }
}

void sub_1C3168C8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void **std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *kaldi::quasar::BNNSGraphData::CopyFromMatrixT<kaldi::MatrixBase<float>>(uint64_t a1, const void **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 168))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__src, "CopyFromMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 348);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__src, "CopyFromMatrixT(const MatType &mat) not implemented for fp16");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__src);
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__src, "CopyFromMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 352);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__src, "CopyFromMatrixT(const MatType &mat) fail - data not assigned with std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__src);
  }

  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  v6 = v5;
  __src[0] = v4;
  __src[1] = v5;
  std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>((a1 + 72), __src, v15, 2uLL);
  if (*(a1 + 56) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  std::vector<float>::resize((a1 + 32), v6 * v4);
  v7 = kaldi::MatrixBase<float>::Stride(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v7 == result)
  {
    return memcpy(*(a1 + 32), *a2, *(a1 + 40) - *(a1 + 32));
  }

  if (v4 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 4 * v6;
    do
    {
      v13 = *(a1 + 32);
      kaldi::MatrixBase<float>::Row(a2, v11, v9, __src);
      result = memcpy((v13 + v10), __src[0], v12);
      ++v11;
      v10 += v12;
    }

    while (v4 != v11);
  }

  return result;
}

void sub_1C3168FC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BNNSGraphData::GetDataFloat(kaldi::quasar::BNNSGraphData *this)
{
  if (*(this + 14) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "GetDataFloat", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 151);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "*GetDataFloat() fail - data is not assigned as std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(this + 4);
}

kaldi::quasar::ComputeEngineBufferItf *kaldi::quasar::BNNSGraphData::BNNSGraphData(kaldi::quasar::ComputeEngineBufferItf *a1, uint64_t a2, char a3)
{
  v6 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *v6 = &unk_1F42CCF20;
  v6[4] = 0;
  v7 = (v6 + 4);
  v6[5] = 0;
  v6[6] = 0;
  *(v6 + 14) = 0;
  v6[9] = 0;
  v6[10] = 0;
  v6[11] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v6 + 9, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v8 = *a2;
  v9 = 1;
  while (v8 != *(a2 + 8))
  {
    v10 = *v8++;
    v9 *= v10;
  }

  if (a3)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100Em(&__p, v9);
    _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm0ES6_S6_EEvRNS0_5__altIXT_ET0_EEOT1_(v7, v7, &__p);
  }

  else
  {
    std::vector<float>::vector[abi:ne200100](&__p, v9);
    _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_S8_EEvRNS0_5__altIXT_ET0_EEOT1_(v7, v7, &__p);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  return a1;
}

void sub_1C316914C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v2);
  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BNNSGraphData::~BNNSGraphData(kaldi::quasar::BNNSGraphData *this)
{
  kaldi::quasar::BNNSGraphData::~BNNSGraphData(this);

  JUMPOUT(0x1C692AE10);
}

{
  *this = &unk_1F42CCF20;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(this + 32);

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(this);
}

void *kaldi::quasar::BNNSGraphData::CopyToVector(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 168))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "CopyToVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 68);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "CopyToVector(CuVector<BaseFloat> *out) not implemented for fp16");
    goto LABEL_10;
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "CopyToVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 71);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "CopyToVector(CuVector<BaseFloat> *out) fail - data is not assigned as std::vector<float>");
    goto LABEL_10;
  }

  kaldi::CuVector<float>::Resize(a2, (*(a1 + 40) - *(a1 + 32)) >> 2, 1u, v4, v5);
  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "GetDataFloat", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 151);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "*GetDataFloat() fail - data is not assigned as std::vector<float>");
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v6 = *(a2 + 8);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40) - v7;

  return memmove(v6, v7, v8);
}

void kaldi::quasar::BNNSGraphData::CopyToStdVector(uint64_t a1, std::vector<int> *a2)
{
  if ((*(*a1 + 168))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyToStdVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 80);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "CopyToStdVector(std::vector<int32> *out) not implemented for fp16");
    goto LABEL_22;
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyToStdVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 83);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "CopyToStdVector(std::vector<int32> *out) fail - data is not assigned as std::vector<float>");
LABEL_22:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  a2->__end_ = a2->__begin_;
  std::vector<float>::reserve(a2, (*(a1 + 40) - *(a1 + 32)) >> 2);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 != v5)
  {
    end = a2->__end_;
    do
    {
      v7 = *v4;
      value = a2->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a2->__begin_;
        v10 = end - a2->__begin_;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = value - begin;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v14);
        }

        *(4 * v11) = v7;
        end = (4 * v11 + 4);
        memcpy(0, begin, v10);
        v15 = a2->__begin_;
        a2->__begin_ = 0;
        a2->__end_ = end;
        a2->__end_cap_.__value_ = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *end++ = v7;
      }

      a2->__end_ = end;
      ++v4;
    }

    while (v4 != v5);
  }
}

uint64_t *kaldi::quasar::BNNSGraphData::CopyToStdVector(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 168))(a1);
  if (result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "CopyToStdVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 95);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "CopyToStdVector(std::vector<BaseFloat> *out) not implemented for fp16");
    goto LABEL_10;
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "CopyToStdVector", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 98);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "CopyToStdVector(std::vector<BaseFloat> *out) fail - data is not assigned as std::vector<float>");
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  if ((a1 + 32) != a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v5, v6, (v6 - v5) >> 2);
  }

  return result;
}

uint64_t kaldi::quasar::BNNSGraphData::CopyFromImpl(kaldi::quasar::BNNSGraphData *this, const kaldi::quasar::ComputeEngineBufferItf *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  return _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentIS9_LNS0_6_TraitE1EEEEEvOT_(this + 32, v3 + 32);
}

void *kaldi::quasar::BNNSGraphData::FlatRangeCopy(kaldi::quasar::BNNSGraphData *this, const kaldi::quasar::ComputeEngineBufferItf *a2, int a3, int a4, int a5)
{
  if ((*(*this + 168))(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 110);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "FlatRangeCopy(const ComputeEngineBufferItf *srcBuffer, int srcstart, int srcend, int deststart) not implemented for fp16");
    goto LABEL_10;
  }

  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 115);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "bnns_buffer != nullptr");
    goto LABEL_10;
  }

  if (v10[14] != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "GetDataFloat", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 151);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "*GetDataFloat() fail - data is not assigned as std::vector<float>");
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v11 = *(v10 + 4);
  WritableDataFloat = kaldi::quasar::BNNSGraphData::GetWritableDataFloat(this);
  if (a4 - a3 < 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 118);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "srcend - srcstart >= 0");
    goto LABEL_10;
  }

  v13 = (WritableDataFloat + 4 * a5);

  return memcpy(v13, (v11 + 4 * a3), 4 * (a4 - a3));
}

float kaldi::quasar::BNNSGraphData::FlatRangeCopy(kaldi::quasar::BNNSGraphData *this, int *a2, unsigned int a3, int a4)
{
  if ((*(*this + 168))(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 124);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "FlatRangeCopy(const int32 *ptr, int length, int destStart) not implemented for fp16");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 126);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "length >= 0");
    goto LABEL_8;
  }

  WritableDataFloat = kaldi::quasar::BNNSGraphData::GetWritableDataFloat(this);
  if (a3)
  {
    v10 = (WritableDataFloat + 4 * a4);
    v11 = a3;
    do
    {
      v12 = *a2++;
      result = v12;
      *v10++ = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

void *kaldi::quasar::BNNSGraphData::FlatRangeCopy(kaldi::quasar::BNNSGraphData *this, const float *a2, unsigned int a3, int a4)
{
  if ((*(*this + 168))(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 135);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "FlatRangeCopy(const float *ptr, int length, int destStart) not implemented for fp16");
LABEL_7:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "FlatRangeCopy", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 137);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "length >= 0");
    goto LABEL_7;
  }

  v8 = (kaldi::quasar::BNNSGraphData::GetWritableDataFloat(this) + 4 * a4);

  return memcpy(v8, a2, 4 * a3);
}

float kaldi::quasar::BNNSGraphData::AssignScalar(kaldi::quasar::BNNSGraphData *this, int a2, int a3)
{
  v6 = (*(*this + 168))(this);
  v8 = *(this + 14);
  if (v6)
  {
    if (!v8)
    {
      *&result = a2;
      *(*(this + 4) + 2 * a3) = a2;
      return result;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "AssignScalar", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 168);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "AssignScalar(int32 val, int flatOffset) fail - data not assigned as std::vector<float16>");
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  if (v8 != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "AssignScalar", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 176);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "AssignScalar(int32 val, int flatOffset) fail - data not assigned as std::vector<float>");
    goto LABEL_9;
  }

  result = a2;
  *(*(this + 4) + 4 * a3) = a2;
  return result;
}

uint64_t kaldi::quasar::BNNSGraphData::AssignScalar(kaldi::quasar::BNNSGraphData *this, float a2, int a3)
{
  _S8 = a2;
  result = (*(*this + 168))(this);
  v7 = *(this + 14);
  if (result)
  {
    if (!v7)
    {
      __asm { FCVT            H0, S8 }

      *(*(this + 4) + 2 * a3) = _H0;
      return result;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AssignScalar", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 186);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "AssignScalar(float val, int flatOffset) fail - data not assigned as std::vector<float16>");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  if (v7 != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AssignScalar", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 194);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "AssignScalar(float val, int flatOffset) fail - data not assigned as std::vector<float>");
    goto LABEL_8;
  }

  *(*(this + 4) + 4 * a3) = _S8;
  return result;
}

float kaldi::quasar::BNNSGraphData::GetFloatScalar(kaldi::quasar::BNNSGraphData *this, int a2)
{
  v4 = (*(*this + 168))(this);
  v5 = *(this + 14);
  if (v4)
  {
    if (!v5)
    {
      _H0 = *(*(this + 4) + 2 * a2);
      __asm { FCVT            S0, H0 }

      return result;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "GetFloatScalar", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 204);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "GetFloatScalar(int flatOffset) fail - data not assigned as std::vector<float16>");
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  if (v5 != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "GetFloatScalar", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 212);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "GetFloatScalar(int flatOffset) fail - data not assigned as std::vector<float>");
    goto LABEL_9;
  }

  return *(*(this + 4) + 4 * a2);
}

__int16 kaldi::quasar::BNNSGraphData::GetFloat16Scalar@<H0>(kaldi::quasar::BNNSGraphData *this@<X0>, int a2@<W1>)
{
  if (*(this + 14))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return *(*(this + 4) + 2 * a2);
}

uint64_t *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100Em(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1C316A02C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm0ES6_S6_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 24))
  {
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v5 = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 24) = 0;
  }

  else
  {

    v5.n128_u64[0] = _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE13__move_assignERS3_NS_17integral_constantIbLb1EEE(a2, a3).n128_u64[0];
  }

  return v5.n128_f64[0];
}

__n128 _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE13__move_assignERS3_NS_17integral_constantIbLb1EEE(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F42CCFE8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS8_IfNS9_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS8_IfNS9_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

__n128 _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_S8_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 24) == 1)
  {

    result.n128_u64[0] = _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE13__move_assignERS3_NS_17integral_constantIbLb1EEE(a2, a3).n128_u64[0];
  }

  else
  {
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentIS9_LNS0_6_TraitE1EEEEEvOT_(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F42CCFF8[v4])(v6);
    }
  }

  return result;
}

void _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm0ES6_RKS6_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t result, uint64_t *a2, char **a3)
{
  if (*(result + 24))
  {
    v6[0] = result;
    v6[1] = a3;
    _ZZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm0ES6_RKS6_EEvRNS0_5__altIXT_ET0_EEOT1_ENKUt_clENS_17integral_constantIbLb0EEE(v6);
  }

  else if (a2 != a3)
  {
    v5 = *a3;
    v4 = a3[1];

    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(a2, v5, v4, (v4 - v5) >> 1);
  }
}

double _ZZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm0ES6_RKS6_EEvRNS0_5__altIXT_ET0_EEOT1_ENKUt_clENS_17integral_constantIbLb0EEE(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5 = 0;
  v4 = 0uLL;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE16__init_with_sizeB8ne200100IPDF16_S5_EEvT_T0_m(&v4, *v1, *(v1 + 8), (*(v1 + 8) - *v1) >> 1);
  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v2);
  result = *&v4;
  *v2 = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = 0;
  return result;
}

uint64_t *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE16__init_with_sizeB8ne200100IPDF16_S5_EEvT_T0_m(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C316A41C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_RKS8_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t result, uint64_t *a2, char **a3)
{
  if (*(result + 24) == 1)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v5 = a3[1];

      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v6, v5, (v5 - v6) >> 2);
    }
  }

  else
  {
    v8[2] = v3;
    v8[3] = v4;
    v8[0] = result;
    v8[1] = a3;
    return _ZZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_RKS8_EEvRNS0_5__altIXT_ET0_EEOT1_ENKUt_clENS_17integral_constantIbLb0EEE(v8);
  }

  return v7;
}

double _ZZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEEE12__assign_altB8ne200100ILm1ES8_RKS8_EEvRNS0_5__altIXT_ET0_EEOT1_ENKUt_clENS_17integral_constantIbLb0EEE(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5 = 0;
  v4 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4, *v1, *(v1 + 8), (*(v1 + 8) - *v1) >> 2);
  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v2);
  result = *&v4;
  *v2 = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = 1;
  return result;
}

void *kaldi::quasar::BNNSGraphData::CopyToMatrixT<kaldi::Matrix<float>>(uint64_t a1, void **a2)
{
  if ((*(*a1 + 168))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "CopyToMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 324);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "CopyToMatrixT(MatType *out) const not implemented for fp16");
    goto LABEL_13;
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "CopyToMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 328);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "CopyToMatrixT(MatType *out) fail - data not assigned with std::vector<float>");
    goto LABEL_13;
  }

  v4 = *(a1 + 72);
  v5 = (*(a1 + 80) - v4) >> 3;
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v7 = *v4;
      v4 += 2;
      v6 = v7;
      goto LABEL_7;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "CopyToMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 339);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unsupported BNNSGraph data shape: ", 34);
    MEMORY[0x1C692A980](v12, (*(a1 + 80) - *(a1 + 72)) >> 3);
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v6 = 1;
LABEL_7:
  kaldi::Matrix<float>::Resize(a2, v6, *v4, 1, 1);
  if (*(a1 + 56) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v8 = *a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) - v9;

  return memcpy(v8, v9, v10);
}

void *kaldi::quasar::BNNSGraphData::CopyToMatrixT<kaldi::CuMatrix<float>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 168))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "CopyToMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 324);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "CopyToMatrixT(MatType *out) const not implemented for fp16");
    goto LABEL_13;
  }

  if (*(a1 + 56) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "CopyToMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 328);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "CopyToMatrixT(MatType *out) fail - data not assigned with std::vector<float>");
    goto LABEL_13;
  }

  v4 = *(a1 + 72);
  v5 = (*(a1 + 80) - v4) >> 3;
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v7 = *v4;
      v4 += 2;
      v6 = v7;
      goto LABEL_7;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "CopyToMatrixT", "../engine/common/libquasar/libkaldi/src/bnns-graph-bridge/bnns-graph-data.h", 339);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unsupported BNNSGraph data shape: ", 34);
    MEMORY[0x1C692A980](v12, (*(a1 + 80) - *(a1 + 72)) >> 3);
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v6 = 1;
LABEL_7:
  kaldi::CuMatrix<float>::Resize(a2, v6, *v4, 1, 1);
  if (*(a1 + 56) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v8 = *(a2 + 8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) - v9;

  return memcpy(v8, v9, v10);
}

const void **std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

const void **std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C316AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1C316ABAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__erase_unique<void *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::vector<std::unique_ptr<kaldi::quasar::BNNSGraphData>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t *std::vector<std::unique_ptr<BNNSTensor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::unique_ptr<BNNSTensor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<BNNSTensor>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<BNNSTensor>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1C692AE10](result, 0x10D0C40E3B58404);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_argument_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::pair<void *,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<void *,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<void *,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(v14);
  }
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<kaldi::quasar::BNNSGraphData> *,std::unique_ptr<kaldi::quasar::BNNSGraphData> *,std::back_insert_iterator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v10 = v7;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::push_back[abi:ne200100](a4, &v10);
      v8 = v10;
      v10 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1C316B2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    kaldi::quasar::BNNSGraphData::Split(a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ComputeEngineBufferItf::CopyFromImpl(kaldi::quasar::ComputeEngineBufferItf *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "CopyFromImpl", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 49);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "CopyFromImpl not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(char *a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void **std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t kaldi::quasar::isLowEndDevice(kaldi::quasar *this)
{
  {
    kaldi::quasar::isLowEndDevice(void)::ret = MGGetSInt64Answer() < 32;
  }

  return kaldi::quasar::isLowEndDevice(void)::ret;
}

uint64_t kaldi::quasar::IsVirtualMachine(kaldi::quasar *this)
{
  {
    kaldi::quasar::IsVirtualMachine(void)::ret = MGGetBoolAnswer();
  }

  return kaldi::quasar::IsVirtualMachine(void)::ret;
}

uint64_t kaldi::quasar::onDeviceCompile(uint64_t *a1, unsigned __int16 **a2, std::locale::__imp **a3)
{
  if (kaldi::quasar::checkCompiledCacheWithProgramLibrary(a1, a2, a3))
  {
    if (*a3 == a3[1])
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(v17, "onDeviceCompile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 61);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Already compiled v2 model: ", 27);
        v13 = *(a1 + 23);
        if (v13 >= 0)
        {
          v14 = a1;
        }

        else
        {
          v14 = *a1;
        }

        if (v13 >= 0)
        {
          v15 = *(a1 + 23);
        }

        else
        {
          v15 = a1[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
        goto LABEL_20;
      }
    }

    else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v17, "onDeviceCompile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 63);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Already compiled v2 model: ", 27);
      v7 = *(a1 + 23);
      if (v7 >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      if (v7 >= 0)
      {
        v9 = *(a1 + 23);
      }

      else
      {
        v9 = a1[1];
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " for specified functions", 24);
LABEL_20:
      kaldi::KaldiLogMessage::~KaldiLogMessage(v17);
    }

    return 1;
  }

  v17[0].__locale_ = 0;
  v11 = kaldi::quasar::compileWithProgramLibrary(a1, a2, v17, 1, a3);
  e5rt_program_library_release();
  return v11;
}

uint64_t kaldi::quasar::checkCompiledCacheWithProgramLibrary(uint64_t *a1, unsigned __int16 **a2, std::locale::__imp **a3)
{
  v48 = 0;
  v49[0] = 0;
  if (e5rt_e5_compiler_create())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 183);
      last_error_message = e5rt_get_last_error_message();
      v6 = strlen(last_error_message);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, last_error_message, v6);
LABEL_65:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v44);
      goto LABEL_66;
    }

    goto LABEL_66;
  }

  isLowEndDevice = e5rt_e5_compiler_options_create();
  if (isLowEndDevice)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 189);
      v8 = e5rt_get_last_error_message();
      v9 = strlen(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v8, v9);
      goto LABEL_65;
    }

LABEL_66:
    kaldi::quasar::releaseE5OptionsAndHandles(&v48, v49);
    return 0;
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v12 = 0;
    while (1)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 196);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Setting compilation options computeDeviceType to: ", 50);
        v14 = *(v10 + 23);
        if (v14 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = *v10;
        }

        if (v14 >= 0)
        {
          v16 = *(v10 + 23);
        }

        else
        {
          v16 = *(v10 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v44);
      }

      if ((*(v10 + 23) & 0x80000000) == 0)
      {
        break;
      }

      if (*(v10 + 1) == 3 && **v10 == 20547 && *(*v10 + 2) == 85)
      {
        goto LABEL_57;
      }

      if (*(v10 + 1) == 7 && **v10 == 1599426627 && *(*v10 + 3) == 1414283615)
      {
        goto LABEL_57;
      }

      if (*(v10 + 1) == 3 && **v10 == 20033 && *(*v10 + 2) == 69)
      {
LABEL_60:
        v12 |= 4uLL;
        isLowEndDevice = kaldi::quasar::isLowEndDevice(isLowEndDevice);
        if (isLowEndDevice)
        {
          isLowEndDevice = e5rt_e5_compiler_options_set_force_classic_aot_old_hw();
        }

        goto LABEL_58;
      }

      if (*(v10 + 1) == 3)
      {
        v22 = *v10;
LABEL_51:
        v25 = bswap32(*v22 | (*(v22 + 2) << 16));
        v26 = v25 >= 0x47505500;
        v27 = v25 > 0x47505500;
        v28 = !v26;
        if (v27 == v28)
        {
          v12 |= 2uLL;
        }
      }

LABEL_58:
      v10 += 12;
      if (v10 == v11)
      {
        goto LABEL_62;
      }
    }

    v17 = *(v10 + 23);
    if (v17 == 3)
    {
      if (*v10 != 20547 || *(v10 + 2) != 85)
      {
        v24 = *v10 == 20033 && *(v10 + 2) == 69;
        v22 = v10;
        if (v24)
        {
          goto LABEL_60;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v17 != 7)
      {
        goto LABEL_58;
      }

      if (*v10 != 1599426627 || *(v10 + 3) != 1414283615)
      {
        goto LABEL_58;
      }
    }

LABEL_57:
    v12 |= 1uLL;
    goto LABEL_58;
  }

LABEL_62:
  if (e5rt_e5_compiler_options_set_compute_device_types_mask())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 213);
      v29 = e5rt_get_last_error_message();
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v29, v30);
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v32 = *a3;
  v33 = a3[1];
  if (*a3 == v33)
  {
    goto LABEL_84;
  }

  do
  {
    v34 = v32;
    if (*(v32 + 23) < 0)
    {
      v34 = *v32;
    }

    v44[0].__locale_ = v34;
    std::vector<char const*>::push_back[abi:ne200100](&v45, v44);
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 222, 5);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Adding function to compile: ", 28);
      v36 = *(v32 + 23);
      if (v36 >= 0)
      {
        v37 = v32;
      }

      else
      {
        v37 = *v32;
      }

      if (v36 >= 0)
      {
        v38 = *(v32 + 23);
      }

      else
      {
        v38 = *(v32 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v44);
    }

    v32 += 24;
  }

  while (v32 != v33);
  if (!e5rt_e5_compiler_options_set_mil_entry_points())
  {
LABEL_84:
    is_new_compile_required = e5rt_e5_compiler_is_new_compile_required();
    kaldi::quasar::releaseE5OptionsAndHandles(&v48, v49);
    if (is_new_compile_required && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 238);
      v42 = e5rt_get_last_error_message();
      v43 = strlen(v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v42, v43);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v44);
    }
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v44, "checkCompiledCacheWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 227);
      v39 = e5rt_get_last_error_message();
      v40 = strlen(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v39, v40);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v44);
    }

    kaldi::quasar::releaseE5OptionsAndHandles(&v48, v49);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return 0;
}

void sub_1C316BD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *(v12 - 128);
  if (v14)
  {
    *(v12 - 120) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::compileWithProgramLibrary(uint64_t **a1, unsigned __int16 **a2, void *a3, uint64_t a4, std::locale::__imp **a5)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 80);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Starting to compile v2 model: ", 30);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = a1[1];
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " behavior: ", 11);
    MEMORY[0x1C692A960](v15, a4);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
  }

  v101 = 0;
  v102 = 0;
  v16 = e5rt_e5_compiler_create();
  if (v16)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v17 = v16;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 87);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_create error, code: ", 37);
      v19 = MEMORY[0x1C692A960](v18, v17);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " last_error_message: ", 21);
      last_error_message = e5rt_get_last_error_message();
      v22 = strlen(last_error_message);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, last_error_message, v22);
LABEL_73:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      goto LABEL_74;
    }

    goto LABEL_74;
  }

  isLowEndDevice = e5rt_e5_compiler_options_create();
  if (isLowEndDevice)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v24 = isLowEndDevice;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 94);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_create error, code: ", 45);
      v26 = MEMORY[0x1C692A960](v25, v24);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " last_error_message: ", 21);
      v28 = e5rt_get_last_error_message();
      v29 = strlen(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      goto LABEL_73;
    }

LABEL_74:
    kaldi::quasar::releaseE5OptionsAndHandles(&v101, &v102);
    return 0;
  }

  v97 = a3;
  v31 = *a2;
  v30 = a2[1];
  if (*a2 != v30)
  {
    v32 = 0;
    while (1)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 102);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Setting compilation options computeDeviceType to: ", 50);
        v34 = *(v31 + 23);
        if (v34 >= 0)
        {
          v35 = v31;
        }

        else
        {
          v35 = *v31;
        }

        if (v34 >= 0)
        {
          v36 = *(v31 + 23);
        }

        else
        {
          v36 = *(v31 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
      }

      if ((*(v31 + 23) & 0x80000000) == 0)
      {
        break;
      }

      if (*(v31 + 1) == 3 && **v31 == 20547 && *(*v31 + 2) == 85)
      {
        goto LABEL_65;
      }

      if (*(v31 + 1) == 7 && **v31 == 1599426627 && *(*v31 + 3) == 1414283615)
      {
        goto LABEL_65;
      }

      if (*(v31 + 1) == 3 && **v31 == 20033 && *(*v31 + 2) == 69)
      {
LABEL_68:
        v32 |= 4uLL;
        isLowEndDevice = kaldi::quasar::isLowEndDevice(isLowEndDevice);
        if (isLowEndDevice)
        {
          isLowEndDevice = e5rt_e5_compiler_options_set_force_classic_aot_old_hw();
        }

        goto LABEL_66;
      }

      if (*(v31 + 1) == 3)
      {
        v42 = *v31;
LABEL_59:
        v45 = bswap32(*v42 | (*(v42 + 2) << 16));
        v46 = v45 >= 0x47505500;
        v47 = v45 > 0x47505500;
        v48 = !v46;
        if (v47 == v48)
        {
          v32 |= 2uLL;
        }
      }

LABEL_66:
      v31 += 12;
      if (v31 == v30)
      {
        goto LABEL_70;
      }
    }

    v37 = *(v31 + 23);
    if (v37 == 3)
    {
      if (*v31 != 20547 || *(v31 + 2) != 85)
      {
        v44 = *v31 == 20033 && *(v31 + 2) == 69;
        v42 = v31;
        if (v44)
        {
          goto LABEL_68;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (v37 != 7)
      {
        goto LABEL_66;
      }

      if (*v31 != 1599426627 || *(v31 + 3) != 1414283615)
      {
        goto LABEL_66;
      }
    }

LABEL_65:
    v32 |= 1uLL;
    goto LABEL_66;
  }

LABEL_70:
  v49 = e5rt_e5_compiler_options_set_compute_device_types_mask();
  if (v49)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v50 = v49;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 119);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_compute_device_types_mask error, code: ", 68);
      v52 = MEMORY[0x1C692A960](v51, v50);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " last_error_message: ", 21);
      v54 = e5rt_get_last_error_message();
      v55 = strlen(v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
      goto LABEL_73;
    }

    goto LABEL_74;
  }

  __p = 0;
  v99 = 0;
  v100 = 0;
  v58 = *a5;
  v59 = a5[1];
  if (*a5 != v59)
  {
    do
    {
      v60 = v58;
      if (*(v58 + 23) < 0)
      {
        v60 = *v58;
      }

      v103[0].__locale_ = v60;
      std::vector<char const*>::push_back[abi:ne200100](&__p, v103);
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 129);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Adding function to compile: ", 28);
        v62 = *(v58 + 23);
        if (v62 >= 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = *v58;
        }

        if (v62 >= 0)
        {
          v64 = *(v58 + 23);
        }

        else
        {
          v64 = *(v58 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
      }

      v58 += 24;
    }

    while (v58 != v59);
    v65 = e5rt_e5_compiler_options_set_mil_entry_points();
    if (v65)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 134);
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_mil_entry_points error, code: ", 59);
        v67 = MEMORY[0x1C692A960](v66, v65);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " last_error_message: ", 21);
        v69 = e5rt_get_last_error_message();
        v70 = strlen(v69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      }

LABEL_99:
      kaldi::quasar::releaseE5OptionsAndHandles(&v101, &v102);
      goto LABEL_100;
    }
  }

  if (a4 == 2)
  {
    v77 = e5rt_e5_compiler_options_set_force_fetch_from_cache();
    if (v77)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 152);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_force_fetch_from_cache error, code: ", 65);
        v79 = MEMORY[0x1C692A960](v78, v77);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, " last_error_message: ", 21);
        v81 = e5rt_get_last_error_message();
        v82 = strlen(v81);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v81, v82);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      }

      goto LABEL_99;
    }
  }

  else if (a4 == 1)
  {
    v71 = e5rt_e5_compiler_options_set_force_recompilation();
    if (v71)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 144);
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_force_recompilation error, code: ", 62);
        v73 = MEMORY[0x1C692A960](v72, v71);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " last_error_message: ", 21);
        v75 = e5rt_get_last_error_message();
        v76 = strlen(v75);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      }

      goto LABEL_99;
    }
  }

  v83 = e5rt_e5_compiler_compile();
  kaldi::quasar::releaseE5OptionsAndHandles(&v101, &v102);
  if (v83)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 163);
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_compile error, code: ", 38);
      v85 = MEMORY[0x1C692A960](v84, v83);
      v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " last_error_message: ", 21);
      v87 = e5rt_get_last_error_message();
      v88 = strlen(v87);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, v87, v88);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
    }
  }

  else
  {
    if (*v97)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 171);
        v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Ondevice compilation succeeded for v2 model path: ", 50);
        v90 = *(a1 + 23);
        if (v90 >= 0)
        {
          v91 = a1;
        }

        else
        {
          v91 = *a1;
        }

        if (v90 >= 0)
        {
          v92 = *(a1 + 23);
        }

        else
        {
          v92 = a1[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, v91, v92);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
      }

      v56 = 1;
      goto LABEL_101;
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103, "compileWithProgramLibrary", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 168);
      v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Program library NULL, Ondevice compilation fail for v2 model path: ", 67);
      v94 = *(a1 + 23);
      if (v94 >= 0)
      {
        v95 = a1;
      }

      else
      {
        v95 = *a1;
      }

      if (v94 >= 0)
      {
        v96 = *(a1 + 23);
      }

      else
      {
        v96 = a1[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, v95, v96);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
    }
  }

LABEL_100:
  v56 = 0;
LABEL_101:
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  return v56;
}

void sub_1C316C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::releaseE5OptionsAndHandles(void *result, void *a2)
{
  if (*result)
  {
    result = e5rt_e5_compiler_options_release();
  }

  if (*a2)
  {

    return MEMORY[0x1EEE03278](a2);
  }

  return result;
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

uint64_t kaldi::quasar::purgeE5BundlesForMil(uint64_t **a1)
{
  v16[34].__locale_ = 0;
  if (e5rt_e5_compiler_create())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16, "purgeE5BundlesForMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 311);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "purgeE5BundlesForMil failed for: ", 33);
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
        v5 = a1[1];
      }

LABEL_17:
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " - ", 3);
      last_error_message = e5rt_get_last_error_message();
      v10 = strlen(last_error_message);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, last_error_message, v10);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v16);
      return 0;
    }

    return 0;
  }

  if (e5rt_e5_compiler_purge_e5_bundles_for_input_model())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16, "purgeE5BundlesForMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 316);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "purgeE5BundlesForMil failed for : ", 34);
      v6 = *(a1 + 23);
      if (v6 >= 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = *a1;
      }

      if (v6 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = a1[1];
      }

      goto LABEL_17;
    }

    return 0;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v16, "purgeE5BundlesForMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 319);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "purged E5 bundles for: ", 23);
    v13 = *(a1 + 23);
    if (v13 >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    if (v13 >= 0)
    {
      v15 = *(a1 + 23);
    }

    else
    {
      v15 = a1[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v16);
  }

  return 1;
}