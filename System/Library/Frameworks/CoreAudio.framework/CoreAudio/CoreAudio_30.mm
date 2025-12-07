caulk::rt_safe_memory_resource *std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<caulk::rt::vector<float>>,caulk::rt::vector<float>*>(uint64_t a1, caulk::rt_safe_memory_resource *a2, caulk::rt_safe_memory_resource *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 2);
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      v6 = (v6 + 24);
      a4 += 3;
    }

    while (v6 != a3);
    do
    {
      result = std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](v5);
      v5 = (v5 + 24);
    }

    while (v5 != a3);
  }

  return result;
}

caulk::rt_safe_memory_resource *std::__split_buffer<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v1 = result;
  v3 = *(result + 1);
  for (i = *(result + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 24;
    result = std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100]((i - 24));
  }

  v4 = *v1;
  if (!*v1)
  {
    return v1;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 3) - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
      return v1;
    }
  }

  __break(1u);
  return result;
}

void HALS_IOStackDescription::GetFormat(HALS_IOStackDescription *this, AudioStreamBasicDescription *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2) - v3;
  if (v4)
  {
    if (-1431655765 * (v4 >> 3))
    {
      v6 = *v3;
      if (*(v6 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v11, (v6 + 112));
      }

      else
      {
        v7 = *(v6 + 432);
        v11 = *(v6 + 416);
        v12 = v7;
        v13 = *(v6 + 448);
      }

      v8 = v12;
      *&a2->mSampleRate = v11;
      *&a2->mBytesPerPacket = v8;
      *&a2->mBitsPerChannel = v13;
      if (a2->mFormatID == 1819304813)
      {
        v9 = *this;
        v10 = ((8 * a2->mBytesPerFrame / a2->mChannelsPerFrame) >> 3) * *this;
        a2->mBytesPerFrame = v10;
        a2->mChannelsPerFrame = v9;
        a2->mBytesPerPacket = v10;
      }
    }
  }

  else
  {
    *&a2->mBitsPerChannel = 0;
    *&a2->mSampleRate = 0u;
    *&a2->mBytesPerPacket = 0u;
  }
}

uint64_t std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(AMCP::IOAudio2::Device_Sub_Object *this)
{
  AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5989748;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DE429C90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int16 a10, __int16 a11, int a12)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = "HALS_BufferFactory.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 149;
      a11 = 1024;
      a12 = v12;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_BufferFactory::allocate_shared_buffer: [%u] threw exception from HALB_IOBufferManager_Server.Allocate()", &a9, 0x18u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE429C64);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_BufferFactory::acquire_output_buffers(HALS_BufferFactory *this, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F596E7C8;
  v7[1] = a3;
  v7[3] = v7;
  v6 = v7;
  *&v5 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v5 + 1) = &v6;
  v3 = VisitableVector<HALS_IOStackDescription>::apply<>(this, a2, &v5);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v7);
  return v3;
}

void sub_1DE429DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_BufferFactory::acquire_output_buffers(void)::$_0,std::allocator<HALS_BufferFactory::acquire_output_buffers(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory22acquire_output_buffersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::acquire_output_buffers(void)::$_0,std::allocator<HALS_BufferFactory::acquire_output_buffers(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, HALS_IOStreamInfo *a4)
{
  v5 = HALS_BufferFactory::acquire_buffers_non_dsp(*(a1 + 8), *a2, a3, a4);
  if (!v5)
  {
    HALS_BufferFactory::acquire_buffers_for_dsp(*(a3 + 112), *(a3 + 120));
  }

  return v5;
}

uint64_t HALS_BufferFactory::acquire_buffers_non_dsp(HALS_BufferFactory *this, HALB_IOBufferManager_Server *a2, uint64_t a3, HALS_IOStreamInfo *a4)
{
  IOBuffer = HALB_IOBufferManager_Server::GetIOBuffer(this, *(a3 + 8), a2, (a3 + 64));
  *(a3 + 56) = IOBuffer;
  if (!IOBuffer)
  {
    return 2003329396;
  }

  v6 = IOBuffer;
  result = *(a3 + 96);
  if (result)
  {
    if (HALS_IOProcessor::NeedsIntermediate1Buffer(result))
    {
      Buffer = HALB_IOBufferManager_Server::AllocateBuffer(*(a3 + 48));
    }

    else
    {
      Buffer = 0;
    }

    *(a3 + 32) = Buffer;
    if (HALS_IOProcessor::NeedsIntermediate2Buffer(*(a3 + 96)))
    {
      v9 = HALB_IOBufferManager_Server::AllocateBuffer(*(a3 + 48));
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 40) = v9;
    result = HALS_IOProcessor::NeedsLocalBuffer(*(a3 + 96));
    if (result)
    {
      v10 = HALB_IOBufferManager_Server::AllocateBuffer(*(a3 + 24));
      result = 0;
    }

    else
    {
      v10 = *(a3 + 56);
    }

    *(a3 + 16) = v10;
  }

  else
  {
    *(a3 + 16) = v6;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

HALS_IOStreamInfo *HALS_BufferFactory::acquire_buffers_for_dsp(HALS_IOStreamInfo *this, HALS_IOStreamInfo *a2)
{
  if (this != a2)
  {
    v3 = this;
    do
    {
      *(v3 + 2) = HALB_IOBufferManager_Server::AllocateBuffer(*(v3 + 6));
      this = HALB_IOBufferManager_Server::AllocateBuffer(*(v3 + 10));
      *(v3 + 4) = this;
      v3 = (v3 + 128);
    }

    while (v3 != a2);
  }

  return this;
}

uint64_t std::__function::__func<HALS_BufferFactory::acquire_output_buffers(void)::$_0,std::allocator<HALS_BufferFactory::acquire_output_buffers(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596E7C8;
  a2[1] = v2;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::acquire_input_buffers(void)::$_0>(HALS_BufferFactory ***a1, uint64_t a2, uint64_t a3, HALS_IOStreamInfo *a4)
{
  v5 = HALS_BufferFactory::acquire_buffers_non_dsp(**a1, *(a2 + 8), *a2, a4);
  if (!v5)
  {
    HALS_BufferFactory::acquire_buffers_for_dsp(*(*a2 + 112), *(*a2 + 120));
  }

  return v5;
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0,std::allocator<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory35calculate_shared_output_buffer_sizeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0,std::allocator<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596E748;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0,std::allocator<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory28calculate_output_buffer_sizeEjP17HALS_IOEngineInfoE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0,std::allocator<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, int a2, HALS_BufferFactory **this, HALS_IOEngineInfo *a4)
{
  HALS_BufferFactory::calculate_buffer_size_for_non_dsp(this, *(a1 + 8), *(a1 + 16), a4);
  HALS_BufferFactory::calculate_buffer_size_for_dsp(this[14], this[15], *(a1 + 8), *(a1 + 16));
  return 0;
}

uint64_t HALS_BufferFactory::calculate_buffer_size_for_non_dsp(HALS_BufferFactory *this, HALS_IOStreamInfo *a2, uint64_t a3, HALS_IOEngineInfo *a4)
{
  v5 = a2;
  if (*(this + 27))
  {
    v7 = *(this + 14);
    if (*(this + 15) == v7 || v7 == 0)
    {
      v10 = *(this + 57);
    }

    else
    {
      v10 = *v7;
    }

    if (*(v10 + 88))
    {
      HALS_IODSPInfo::GetClientFormat(v12, this + 14);
      goto LABEL_12;
    }

LABEL_13:
    result = 4096;
    goto LABEL_14;
  }

  v10 = *(this + 57);
  if (!*(v10 + 88))
  {
    goto LABEL_13;
  }

  v9 = *(this + 27);
  v12[0] = *(this + 26);
  v12[1] = v9;
  v13 = *(this + 56);
LABEL_12:
  result = HALS_BufferFactory::get_io_buffer_byte_size(v10, v5, a3, v12);
LABEL_14:
  *(this + 6) = result;
  *(this + 12) = result;
  return result;
}

void HALS_BufferFactory::calculate_buffer_size_for_dsp(HALS_BufferFactory *this, HALS_IOStreamInfo *a2, uint64_t a3, HALS_IOEngineInfo *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    v5 = a3;
    v7 = this;
    v8 = MEMORY[0x1E69E9C10];
    do
    {
      v9 = *v7;
      if (*(*v7 + 88))
      {
        if (*(v7 + 25) == 4)
        {
          v10 = 0;
          *(v7 + 6) = 0;
          *(v7 + 10) = 0;
        }

        else
        {
          v12 = *(v7 + 72);
          *buf = *(v7 + 56);
          *&buf[16] = v12;
          v15 = *(v7 + 11);
          io_buffer_byte_size = HALS_BufferFactory::get_io_buffer_byte_size(v9, v5, a4, buf);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_BufferFactory.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 372;
            *&buf[18] = 1024;
            *&buf[20] = io_buffer_byte_size;
            _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_BufferFactory::calculate_buffer_size_for_dsp(): theIOBufferByteSize = %u", buf, 0x18u);
          }

          *(v7 + 6) = io_buffer_byte_size;
          *(v7 + 10) = io_buffer_byte_size;
          v10 = *(*v7 + 388);
        }

        v11 = 48;
      }

      else
      {
        v10 = 4096;
        *(v7 + 6) = 4096;
        v11 = 40;
      }

      *(v7 + v11) = v10;
      v7 = (v7 + 128);
    }

    while (v7 != a2);
  }
}

uint64_t HALS_BufferFactory::get_io_buffer_byte_size(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    (*(**(a3 + 88) + 344))(*(a3 + 88));
  }

  else
  {
    v7 = *a4;
  }

  if (*(a4 + 8) == 1819304813)
  {
    if ((*(a1 + 377) & 1) != 0 || v7 != *a4)
    {
      a2 *= 24;
    }

    v8 = *(a4 + 24) * a2;
  }

  else
  {
    v8 = *(a4 + 16);
  }

  return (v8 + *(a1 + 388));
}

__n128 std::__function::__func<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0,std::allocator<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596E6B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::calculate_input_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>(unsigned int **a1, HALS_BufferFactory **a2, uint64_t a3, HALS_IOEngineInfo *a4)
{
  v5 = *a1;
  HALS_BufferFactory::calculate_buffer_size_for_non_dsp(*a2, *v5, *(v5 + 1), a4);
  HALS_BufferFactory::calculate_buffer_size_for_dsp(*(*a2 + 14), *(*a2 + 15), *v5, *(v5 + 1));
  return 0;
}

uint64_t std::__function::__func<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory16register_buffersERK24HALS_IOStreamActiveStatejE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(a1 + 16);
  if (*(a3 + 108))
  {
    HALS_BufferFactory::register_buffers_for_dsp(a3, v3);
  }

  else
  {
    HALS_BufferFactory::register_buffers_non_dsp(a3, v3);
  }

  return 0;
}

void *HALS_BufferFactory::register_buffers_for_dsp(void *result, uint64_t a2)
{
  v2 = result[14];
  v3 = result[15];
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      result = *(*v2 + 88);
      if (result)
      {
        if (*(v2 + 16))
        {
          result = (*(*result + 672))(result, *(v5 + 8), *(v2 + 96), a2, *(v2 + 24));
        }
      }

      v2 += 128;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1DE42A720(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_BufferFactory::register_buffers_non_dsp(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 108) || ((v4 = *(a1 + 112), *(a1 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (a1 + 456);
  }

  v6 = *v4;
  result = *(*v4 + 88);
  if (result && *(a1 + 16))
  {
    result = (*(*result + 504))(result, *(a1 + 8), *(a1 + 12));
    if ((result & 1) == 0)
    {
      return (*(**(v6 + 88) + 672))(*(v6 + 88), *(a1 + 8), *(a1 + 12), a2, *(a1 + 24), *(a1 + 16));
    }
  }

  return result;
}

void sub_1DE42A81C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 std::__function::__func<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596E848;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 108);
  v5 = **(v2 + 8);
  if (v4)
  {
    HALS_BufferFactory::register_buffers_for_dsp(v3, v5);
  }

  else
  {
    HALS_BufferFactory::register_buffers_non_dsp(v3, v5);
  }

  return 0;
}

uint64_t std::__function::__func<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory18unregister_buffersERK24HALS_IOStreamActiveStatejE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (*(a3 + 108))
  {
    HALS_BufferFactory::unregister_buffers_for_dsp(a3, v3);
  }

  else
  {
    HALS_BufferFactory::unregister_buffers_non_dsp(a3, v3);
  }

  return 0;
}

void *HALS_BufferFactory::unregister_buffers_for_dsp(void *result, uint64_t a2)
{
  v2 = result[14];
  v3 = result[15];
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      result = *(*v2 + 88);
      if (result)
      {
        if (*(v2 + 16))
        {
          result = (*(*result + 680))(result, *(v5 + 8), *(v2 + 96), a2, *(v2 + 24));
        }
      }

      v2 += 128;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1DE42AA30(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_BufferFactory::unregister_buffers_non_dsp(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 108) || ((v4 = *(a1 + 112), *(a1 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (a1 + 456);
  }

  v6 = *v4;
  result = *(*v4 + 88);
  if (result && *(a1 + 16))
  {
    result = (*(*result + 504))(result, *(a1 + 8), *(a1 + 12));
    if ((result & 1) == 0)
    {
      return (*(**(v6 + 88) + 680))(*(v6 + 88), *(a1 + 8), *(a1 + 12), a2, *(a1 + 24), *(a1 + 16));
    }
  }

  return result;
}

void sub_1DE42AB2C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 std::__function::__func<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596E8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 108);
  v5 = *(v2 + 8);
  if (v4)
  {
    HALS_BufferFactory::unregister_buffers_for_dsp(v3, v5);
  }

  else
  {
    HALS_BufferFactory::unregister_buffers_non_dsp(v3, v5);
  }

  return 0;
}

uint64_t std::__function::__func<HALS_BufferFactory::free_buffers(void)::$_1,std::allocator<HALS_BufferFactory::free_buffers(void)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory12free_buffersEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HALS_BufferFactory::free_buffers_non_dsp(HALS_BufferFactory *this, HALS_IOStreamInfo *a2, unsigned int a3)
{
  v4 = *(this + 2);
  if (v4 != *(this + 7))
  {
    HALB_IOBufferManager_Server::FreeBuffer(v4, *(this + 6));
  }

  HALB_IOBufferManager_Server::FreeBuffer(*(this + 4), *(this + 12));
  HALB_IOBufferManager_Server::FreeBuffer(*(this + 5), *(this + 12));
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
}

void sub_1DE42AD08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::free_buffers(void)::$_0>(uint64_t a1, HALS_BufferFactory **a2, unsigned int a3)
{
  v3 = *a2;
  v4 = *(*a2 + 14);
  v5 = *(*a2 + 15);
  if (v4 != v5)
  {
    do
    {
      HALB_IOBufferManager_Server::FreeBuffer(*(v4 + 16), *(v4 + 24));
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      HALB_IOBufferManager_Server::FreeBuffer(*(v4 + 32), *(v4 + 40));
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      v4 += 128;
    }

    while (v4 != v5);
    v3 = *a2;
  }

  HALS_BufferFactory::free_buffers_non_dsp(v3, a2, a3);
  return 0;
}

uint64_t HALS_MetaDevice::_HandleGroupObjectPropertiesChanged(CFDictionaryRef *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, CAPropertyAddressList *a9, CAPropertyAddressList **a10)
{
  v92 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 5))(a1, a2))
  {
    return 0;
  }

  *v87 = 0;
  if (!a7)
  {
    v20 = 0;
    v79 = 0;
    v83 = 0;
    v84 = v18;
    goto LABEL_21;
  }

  v19 = 0;
  v20 = 0;
  v21 = (a8 + 4);
  v84 = v18;
  v22 = a7;
  while (1)
  {
    v23 = *(v21 - 1);
    if (v23 > 1983996970)
    {
      if (v23 == 1986622324 || v23 == 1983996971)
      {
LABEL_11:
        v84 = *v21;
        v17 = v23 >> 8;
        if ((v20 & 1) == 0)
        {
          v20 = 1;
        }

        v19 = *(v21 - 1);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (v23 == 1934647636)
    {
      goto LABEL_11;
    }

    if (v23 == 1684629094)
    {
      break;
    }

LABEL_14:
    v21 = (v21 + 12);
    if (!--v22)
    {
      v83 = 0;
      goto LABEL_19;
    }
  }

  v83 = 1;
LABEL_19:
  LODWORD(v79) = v19;
  HIDWORD(v79) = v17 << 8;
LABEL_21:
  v85 = a5;
  v26 = a1[197];
  if (!v26)
  {
    v26 = a1[196];
  }

  v80 = v20;
  v27 = 0;
  v81 = a3;
  v82 = a4;
  v28 = 0;
  if (v26 && a4)
  {
    v29 = 0;
    v30 = a8;
    while (1)
    {
      v31 = *(v85 + 4 * v29);
      if (v31 == *(v26 + 4) || v31 == HALS_MetaSubDevice::GetRealDeviceObjectID(v26))
      {
        break;
      }

      v30 += *(a6 + 4 * v29++);
      if (a4 == v29)
      {
        goto LABEL_37;
      }
    }

    v32 = *(a6 + 4 * v29);
    if (!v32)
    {
LABEL_37:
      v27 = 0;
      v28 = 0;
      goto LABEL_38;
    }

    v28 = 0;
    v27 = 0;
    do
    {
      mSelector = v30->mSelector;
      if (HALS_MetaDevice::PassRealNotificationToClient(v30->mSelector, 1))
      {
        CAPropertyAddressList::AppendUniqueItem(a9, v30, v34);
        mSelector = v30->mSelector;
      }

      v27 |= mSelector == 1853059700;
      v28 |= mSelector == 1853059619;
      ++v30;
      --v32;
    }

    while (v32);
  }

  if (v27)
  {
LABEL_39:
    v35 = 0;
    v36 = 1;
    do
    {
      v37 = v36;
      v38 = &a1[3 * v35 + 201];
      for (i = *v38; i != v38[1]; ++i)
      {
        v40 = *i;
        if (!(*(**i + 288))(*i))
        {
          (*(*v40 + 280))(v40);
          v42 = v40[4];
          v43 = *a10;
          while (v43 != a10[1])
          {
            v44 = *(v43 + 3);
            v43 = (v43 + 32);
            if (v44 == v42)
            {
LABEL_51:
              v46 = (v43 - 32);
              if (v27)
              {
                *&v89 = 0x676C6F6270667420;
                DWORD2(v89) = 0;
                CAPropertyAddressList::AppendUniqueItem((v43 - 32), &v89, v41);
                *&v89 = 0x676C6F6273666D74;
                DWORD2(v89) = 0;
                CAPropertyAddressList::AppendUniqueItem(v46, &v89, v47);
              }

              if (v28)
              {
                *&v89 = 0x676C6F6270667461;
                DWORD2(v89) = 0;
                CAPropertyAddressList::AppendUniqueItem(v46, &v89, v41);
                *&v89 = 0x676C6F6273666D61;
                DWORD2(v89) = 0;
                CAPropertyAddressList::AppendUniqueItem(v46, &v89, v48);
              }

              goto LABEL_43;
            }
          }

          v89 = 0uLL;
          v90 = 0;
          v91 = v42;
          std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a10, &v89);
          v43 = *a10;
          while (v43 != a10[1])
          {
            v45 = *(v43 + 3);
            v43 = (v43 + 32);
            if (v45 == v40[4])
            {
              goto LABEL_51;
            }
          }
        }

LABEL_43:
        ;
      }

      v36 = 0;
      v35 = 1;
    }

    while ((v37 & 1) != 0);
  }

  else
  {
LABEL_38:
    if (v28)
    {
      goto LABEL_39;
    }
  }

  if (v82)
  {
    for (j = 0; j != v82; ++j)
    {
      v50 = (*(*a1 + 126))(a1, *(v85 + 4 * j));
      if (v50 || (v50 = (*(*a1 + 127))(a1, *(v85 + 4 * j))) != 0)
      {
        v52 = v50;
        v53 = *(v50 + 16);
        v54 = *a10;
        while (v54 != a10[1])
        {
          v55 = *(v54 + 3);
          v54 = (v54 + 32);
          if (v55 == v53)
          {
LABEL_67:
            v57 = (v54 - 32);
            goto LABEL_69;
          }
        }

        v89 = 0uLL;
        v90 = 0;
        v91 = v53;
        std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a10, &v89);
        v54 = *a10;
        while (v54 != a10[1])
        {
          v56 = *(v54 + 3);
          v54 = (v54 + 32);
          if (v56 == *(v52 + 16))
          {
            goto LABEL_67;
          }
        }

        v57 = 0;
LABEL_69:
        if (*(a6 + 4 * j))
        {
          v58 = 0;
          v59 = a8;
          do
          {
            CAPropertyAddressList::AppendUniqueItem(v57, v59, v51);
            ++v58;
            v60 = *(a6 + 4 * j);
            ++v59;
          }

          while (v58 < v60);
        }

        else
        {
          LODWORD(v60) = 0;
        }
      }

      else
      {
        LODWORD(v60) = *(a6 + 4 * j);
      }

      a8 += 12 * v60;
    }
  }

  v25 = v83;
  if (v83)
  {
    HALS_DeviceState::HALS_DeviceState(&v89);
    HALS_DeviceState::Capture(&v89, a1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(a1 + 184, 0);
    HALS_MetaDevice::_UpdateStreams(a1, v87);
    HALS_DeviceState::HALS_DeviceState(v88);
    HALS_DeviceState::Capture(v88, a1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(&v89, v88, a9, a10);
    *&v86.mSelector = 0x676C6F62616D7374;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v61);
    v25 = v83;
    *&v86.mSelector = 0x676C6F6261706364;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v62);
    *&v86.mSelector = 0x676C6F6267727570;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v63);
    *&v86.mSelector = 0x676C6F6261677270;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v64);
    *&v86.mSelector = 0x676C6F6261746170;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v65);
    *&v86.mSelector = 0x676C6F6274617023;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v66);
    *&v86.mSelector = 0x676C6F6261636F6DLL;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v67);
    *&v86.mSelector = 0x676C6F6273746D23;
    v86.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v86, v68);
    v70 = v87[1];
    if (v87[1] || v87[0])
    {
      *&v86.mSelector = 0x676C6F6273746D23;
      v86.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a9, &v86, v69);
      if (v70)
      {
        *&v86.mSelector = 0x696E707473746D23;
        v86.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a9, &v86, v71);
        if (!v87[0])
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      if (v87[0])
      {
LABEL_83:
        *&v86.mSelector = 0x6F75747073746D23;
        v86.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a9, &v86, v71);
LABEL_84:
        if (*a9 == *(a9 + 1))
        {
          v72 = *a10;
          while (v72 != a10[1])
          {
            v73 = *v72;
            v74 = *(v72 + 1);
            v72 = (v72 + 32);
            if (v73 != v74)
            {
              goto LABEL_88;
            }
          }
        }

        else
        {
LABEL_88:
          *&v86.mSelector = 0x676C6F6264696666;
          v86.mElement = 0;
          CAPropertyAddressList::AppendUniqueItem(a9, &v86, v71);
        }
      }
    }

    HALS_DeviceState::~HALS_DeviceState(v88);
    HALS_DeviceState::~HALS_DeviceState(&v89);
  }

  if (v81 != 0 && (v80 & 1) != 0)
  {
    v76 = HALS_ObjectMap::CopyObjectByObjectID(v81);
    if (v76)
    {
      HALS_MetaDevice::InheritSubdeviceDSPForClient(a1, v84 == 1768845428, v76);
      LODWORD(v89) = HIDWORD(v79) | v79;
      *(&v89 + 4) = v84;
      CAPropertyAddressList::AppendUniqueItem(a9, &v89, v77);
    }

    HALS_ObjectMap::ReleaseObject(v76, v75);
    return v83;
  }

  return v25;
}

uint64_t HALS_MetaDevice::PassRealNotificationToClient(HALS_MetaDevice *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 0;
  if (v2 > 1935762291)
  {
    if (v2 <= 1935960433)
    {
      if (v2 == 1935762292 || v2 == 1935763060)
      {
        return 1;
      }

      v4 = 1935894638;
    }

    else
    {
      if (v2 <= 1936092531)
      {
        if (v2 != 1935960434)
        {
          v4 = 1936092513;
          goto LABEL_20;
        }

        return 1;
      }

      if (v2 == 1936092532)
      {
        return 1;
      }

      v4 = 1952805485;
    }

LABEL_20:
    if (v2 != v4)
    {
      return result;
    }

    return 1;
  }

  if (v2 > 1853059699)
  {
    if (v2 == 1853059700)
    {
      return a2;
    }

    if (v2 == 1885762592)
    {
      return 1;
    }

    v4 = 1885762657;
    goto LABEL_20;
  }

  if (v2 == 1684629094 || v2 == 1819569763)
  {
    return 1;
  }

  if (v2 == 1853059619)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void HALS_MetaDevice::_UpdateStreams(const __CFDictionary **this, BOOL *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  if (HALS_MetaDeviceDescription::IsStackRequested(this + 184))
  {
    goto LABEL_2;
  }

  v6 = this[188];
  v7 = this[187];
  if (v6 - v7 == 24 && (v7[1] - *v7) > 8)
  {
    goto LABEL_2;
  }

  if (v7 == v6)
  {
    goto LABEL_49;
  }

  v8 = (v7 + 3);
  do
  {
    v9 = *(v8 - 2) - *(v8 - 3);
    v10 = v9 > 8 || v8 == v6;
    v8 = (v8 + 24);
  }

  while (!v10);
  if (v9 > 8)
  {
LABEL_2:
    updated = HALS_MetaDevice::_UpdateStreams_Output_Stacked(this);
    goto LABEL_3;
  }

  if (this[196] && v7 != v6)
  {
    updated = 0;
    v11 = 0;
    do
    {
      v12 = *v7;
      if (*v7 != v7[1] && *v12)
      {
        v13 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v12);
        v15 = v13;
        if (v13)
        {
          v72 = 0;
          v73 = 0;
          v74 = 0;
          HALS_Device::CopyStreamList(v13, 0, &v72);
          if (v73 != v72)
          {
            v17 = 0;
            do
            {
              v18 = (*(*this + 50))(this, 0, v11);
              v19 = v18;
              if (!v18)
              {
                operator new();
              }

              (*(*v18 + 240))(v18, 0, v15, v17);
              HALS_ObjectMap::ReleaseObject(v19, v20);
              v11 = (v11 + 1);
              v17 = (v17 + 1);
            }

            while (v17 < (v73 - v72) >> 3);
          }

          HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v72, v16);
        }

        HALS_ObjectMap::ReleaseObject(v15, v14);
      }

      v7 += 3;
    }

    while (v7 != v6);
    v21 = v11;
    goto LABEL_50;
  }

LABEL_49:
  updated = 0;
  v21 = 0;
LABEL_50:
  v35 = this[201];
  if (v21 < (this[202] - v35) >> 3)
  {
    v36 = 8 * v21;
    do
    {
      v37 = *(v35 + v21);
      (*(*v37 + 8))(v37);
      HALS_ObjectMap::ObjectIsDead(v37, v38);
      v35 = this[201];
      v39 = v35 + v36;
      v40 = (v35 + v36 + 8);
      v41 = this[202];
      v42 = v41 - v40;
      if (v41 != v40)
      {
        memmove(v35 + v36, v40, v41 - v40);
        v35 = this[201];
      }

      this[202] = &v39[v42];
    }

    while (v21 < (&v39[v42] - v35) >> 3);
    updated = 1;
  }

LABEL_3:
  *a2 = updated & 1;
  v4 = this[196];
  if (HALS_MetaDeviceDescription::GetStackedChannelPolicy(this + 184))
  {
    v5 = 0;
  }

  else
  {
    v5 = HALS_MetaDeviceDescription::IsStackRequested(this + 184);
  }

  v22 = 0;
  v23 = 0;
  if (v4 && (v5 & 1) == 0)
  {
    v24 = this[187];
    v70 = this[188];
    if (v24 == v70)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v25 = *v24;
        v26 = *(v24 + 1);
        v71 = v24;
        while (v25 != v26)
        {
          v27 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v25);
          v29 = v27;
          if (v27)
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            HALS_Device::CopyStreamList(v27, 1, &v72);
            if (v73 != v72)
            {
              v31 = 0;
              do
              {
                v32 = (*(*this + 50))(this, 1, v23);
                v33 = v32;
                if (!v32)
                {
                  operator new();
                }

                (*(*v32 + 240))(v32, 1, v29, v31);
                HALS_ObjectMap::ReleaseObject(v33, v34);
                v23 = (v23 + 1);
                v31 = (v31 + 1);
              }

              while (v31 < (v73 - v72) >> 3);
            }

            HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v72, v30);
          }

          HALS_ObjectMap::ReleaseObject(v29, v28);
          ++v25;
        }

        v24 = (v71 + 24);
      }

      while ((v71 + 24) != v70);
    }
  }

  v43 = this[193];
  for (i = this[194]; v43 != i; v43 = (v43 + 8))
  {
    v45 = *v43;
    v46 = (*(*this + 50))(this, 1, v23);
    v47 = v46;
    if (!v46)
    {
      operator new();
    }

    (*(*v46 + 256))(v46, *(v45 + 72));
    HALS_ObjectMap::ReleaseObject(v47, v48);
    v23 = (v23 + 1);
  }

  v49 = v23;
  v50 = this[204];
  if (v23 < ((this[205] - v50) >> 3))
  {
    v51 = 8 * v23;
    do
    {
      v52 = *(v50 + v49);
      (*(*v52 + 8))(v52);
      HALS_ObjectMap::ObjectIsDead(v52, v53);
      v50 = this[204];
      v54 = v50 + v51;
      v55 = (v50 + v51 + 8);
      v56 = this[205];
      v57 = v56 - v55;
      if (v56 != v55)
      {
        memmove(v50 + v51, v55, v56 - v55);
        v50 = this[204];
      }

      this[205] = &v54[v57];
    }

    while (v49 < (&v54[v57] - v50) >> 3);
    v22 = 1;
  }

  v58 = 0;
  a2[1] = v22 & 1;
  v59 = 1;
  do
  {
    v60 = v59;
    NumberStreams = HALS_IODevice::GetNumberStreams(this, v58 & 1);
    if (NumberStreams)
    {
      v62 = NumberStreams;
      v63 = 0;
      v64 = 1;
      do
      {
        v65 = (*(*this + 50))(this, v58 & 1, v63);
        (*(*v65 + 272))();
        NumberChannels = HALS_Stream::GetNumberChannels(v65);
        HALS_ObjectMap::ReleaseObject(v65, v67);
        v64 += NumberChannels;
        v63 = (v63 + 1);
      }

      while (v62 != v63);
    }

    v59 = 0;
    v58 = 1;
  }

  while ((v60 & 1) != 0);
  v68 = this[202] == this[201] && this[205] != this[204];
  *(this + 440) = v68;
}

void sub_1DE42C004(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(va, a2);
  HALS_ObjectMap::ReleaseObject(v10, v12);
  _Unwind_Resume(a1);
}

void HALS_MetaDevice::InheritSubdeviceDSPForClient(HALS_MetaDevice *this, char a2, HALS_Client *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN15HALS_MetaDevice28InheritSubdeviceDSPForClientEbP11HALS_Client_block_invoke;
  v4[3] = &__block_descriptor_tmp_143;
  v5 = a2;
  v4[4] = this;
  v4[5] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

uint64_t ___ZN15HALS_MetaDevice28InheritSubdeviceDSPForClientEbP11HALS_Client_block_invoke(uint64_t result)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(result + 48) == 1)
  {
    v2 = *(result + 32);
    v1 = *(result + 40);
    result = HALS_Device::GetNumberStreamsExcludingReferenceStreams(v2, 1);
    if (result)
    {
      v33 = 0x696E707476697374;
      v34 = 0;
      v3 = *(v2 + 1496);
      v4 = *(v2 + 1504);
      if (v3 == v4)
      {
        goto LABEL_11;
      }

      v5 = 0;
      do
      {
        v7 = *v3;
        v6 = v3[1];
        v3 += 3;
        v5 += (v6 - v7) >> 3;
      }

      while (v3 != v4);
      if (!v5)
      {
LABEL_11:
        v10 = v1 != 0;
      }

      else
      {
        v8 = 0;
        while (1)
        {
          result = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(v2 + 1496), *(v2 + 1504), v8);
          if (result)
          {
            v9 = result;
            result = (*(*result + 96))(result, 0, &v33, v1);
            if (result)
            {
              break;
            }
          }

          if (v5 == ++v8)
          {
            goto LABEL_11;
          }
        }

        *buf = 0;
        v31 = 4;
        result = (*(*v9 + 120))(v9, 0, &v33, 4, &v31, buf, 0, 0, v1);
        v18 = *buf;
        v32 = *buf;
        v10 = v1 != 0;
        if (v1 && *buf)
        {
          v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v19 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(result);
          }

          v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *v21;
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          else
          {
            v22 = *v21;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v30 = *(v2 + 16);
            *buf = 136315906;
            v36 = "HALS_MetaDevice.cpp";
            v37 = 1024;
            v38 = 3620;
            v39 = 1024;
            v40 = v30;
            v41 = 1024;
            v42 = v18;
            _os_log_debug_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) inheriting VI Type %d from subdevice.", buf, 0x1Eu);
          }

          result = (*(*v2 + 128))(v2, 0, &v33, 4, &v32, 0, 0, v1);
          v10 = 1;
        }
      }

      v33 = 0x696E70747641642BLL;
      v34 = 0;
      v11 = *(v2 + 1496);
      v12 = *(v2 + 1504);
      if (v11 != v12)
      {
        v13 = 0;
        do
        {
          v15 = *v11;
          v14 = v11[1];
          v11 += 3;
          v13 += (v14 - v15) >> 3;
        }

        while (v11 != v12);
        if (v13)
        {
          v16 = 0;
          while (1)
          {
            result = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(v2 + 1496), *(v2 + 1504), v16);
            if (result)
            {
              v17 = result;
              result = (*(*result + 96))(result, 0, &v33, v1);
              if (result)
              {
                break;
              }
            }

            if (v13 == ++v16)
            {
              return result;
            }
          }

          *buf = 0;
          v31 = 4;
          result = (*(*v17 + 120))(v17, 0, &v33, 4, &v31, buf, 0, 0, v1);
          v23 = *buf;
          v32 = *buf;
          if (*buf)
          {
            v24 = v10;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v25 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(result);
            }

            v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              v28 = *v27;
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            else
            {
              v28 = *v27;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = *(v2 + 16);
              *buf = 136315906;
              v36 = "HALS_MetaDevice.cpp";
              v37 = 1024;
              v38 = 3649;
              v39 = 1024;
              v40 = v29;
              v41 = 1024;
              v42 = v23;
              _os_log_debug_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) inheriting Voice Activity enablement %d from subdevice.", buf, 0x1Eu);
            }

            return (*(*v2 + 128))(v2, 0, &v33, 4, &v32, 0, 0, v1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t HALS_MetaDevice::_UpdateStreams_Output_Stacked(const __CFDictionary **this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!this[196] || (v2 = this[187], v3 = this[188], v2 == v3))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*v2 != *(v2 + 1))
      {
        FirstDeviceWithDirection = HALS_MetaDeviceDescription::FindFirstDeviceWithDirection(v2);
        if (FirstDeviceWithDirection)
        {
          v7 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(FirstDeviceWithDirection);
          v9 = v7;
          if (v7)
          {
            TotalNumberChannels = HALS_Device::GetTotalNumberChannels(v7, 0);
            if (HALS_MetaDeviceDescription::GetStackedChannelPolicy(this + 184))
            {
              v11 = TotalNumberChannels;
            }

            else
            {
              v11 = 2;
            }

            v12 = (*(*this + 50))(this, 0, v5);
            v13 = v12;
            if (!v12)
            {
              operator new();
            }

            (*(*v12 + 248))(v12, 0, v11);
            HALS_ObjectMap::ReleaseObject(v13, v14);
            v5 = (v5 + 1);
          }

          HALS_ObjectMap::ReleaseObject(v9, v8);
        }
      }

      v2 = (v2 + 24);
    }

    while (v2 != v3);
    v5 = v5;
  }

  v15 = this[201];
  if (v5 < (this[202] - v15) >> 3)
  {
    v16 = 8 * v5;
    do
    {
      v17 = *(v15 + v5);
      (*(*v17 + 8))(v17);
      HALS_ObjectMap::ObjectIsDead(v17, v18);
      v15 = this[201];
      v19 = v15 + v16;
      v20 = (v15 + v16 + 8);
      v21 = this[202];
      v22 = v21 - v20;
      if (v21 != v20)
      {
        memmove(v15 + v16, v20, v21 - v20);
        v15 = this[201];
      }

      this[202] = &v19[v22];
    }

    while (v5 < (&v19[v22] - v15) >> 3);
    v4 = 1;
  }

  return v4 & 1;
}

void sub_1DE42C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va);
  HALB_FormatList::~HALB_FormatList(v6);
  HALS_Stream::~HALS_Stream(v7);
  MEMORY[0x1E12C1730](v7, 0x10E1C4014714525);
  HALS_ObjectMap::ReleaseObject(0, v9);
  HALS_ObjectMap::ReleaseObject(v5, v10);
  _Unwind_Resume(a1);
}

uint64_t HALS_Stream::GetNumberChannels(HALS_Stream *this)
{
  v1 = *(this + 4);
  v5 = 0x676C6F6270667420;
  v6 = 0;
  (*(*this + 120))(this, v1, &v5, 40, &v6 + 4, v3, 0, 0, 0);
  return v4;
}

HALS_MetaSubDevice *HALS_MetaDeviceDescription::FindFirstDeviceWithDirection(HALS_MetaSubDevice ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (!HALS_MetaSubDevice::GetNumberStreams(*v1, 0))
    {
      if (++v1 == v2)
      {
        v1 = v2;
        break;
      }
    }

    v2 = a1[1];
  }

  if (v1 == v2)
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t HALS_MetaDevice::_HandleObjectPropertiesChanged(HALS_MetaSubDevice **a1, HALS_MetaSubDevice *a2, unsigned int a3, unsigned int a4, AudioObjectPropertyAddress *a5, CAPropertyAddressList *a6, CAPropertyAddressList **a7)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 5))(a1))
  {
    v24 = 0;
    return v24 & 1;
  }

  *v71 = 0;
  if (!a4)
  {
    v18 = 0;
    v64 = 0;
    v16 = 0;
    v69 = v15;
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  p_mScope = &a5->mScope;
  v69 = v15;
  v20 = a4;
  do
  {
    v21 = *(p_mScope - 1);
    if (v21 <= 1934647635)
    {
      if (v21 == 1684629094)
      {
        v16 = 1;
        goto LABEL_18;
      }

      if (v21 != 1752122448)
      {
        goto LABEL_18;
      }
    }

    else if (v21 != 1934647636 && v21 != 1986622324 && v21 != 1983996971)
    {
      goto LABEL_18;
    }

    v69 = *p_mScope;
    v14 = v21 >> 8;
    if ((v18 & 1) == 0)
    {
      v18 = 1;
    }

    v17 = *(p_mScope - 1);
LABEL_18:
    p_mScope += 3;
    --v20;
  }

  while (v20);
  LODWORD(v64) = v17;
  HIDWORD(v64) = v14 << 8;
LABEL_23:
  v68 = v16;
  v25 = a1[197];
  v67 = a1;
  v66 = a3;
  if (!v25)
  {
    v25 = a1[196];
    if (!v25)
    {
      goto LABEL_35;
    }
  }

  if (v25 != a2)
  {
    v26 = *(a2 + 4);
    v27 = 0;
    v28 = 0;
    if (v26 != HALS_MetaSubDevice::GetRealDeviceObjectID(v25) || !a4)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!a4)
  {
LABEL_35:
    v27 = 0;
    v28 = 0;
    goto LABEL_36;
  }

LABEL_30:
  v28 = 0;
  v27 = 0;
  v29 = a4;
  do
  {
    mSelector = a5->mSelector;
    if (HALS_MetaDevice::PassRealNotificationToClient(a5->mSelector, 1))
    {
      CAPropertyAddressList::AppendUniqueItem(a6, a5, v31);
      mSelector = a5->mSelector;
    }

    v28 |= mSelector == 1853059700;
    v27 |= mSelector == 1853059619;
    ++a5;
    --v29;
  }

  while (v29);
LABEL_36:
  v65 = a6;
  if (v28 & 1) != 0 || (v27)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = v33;
      v35 = v67 + 24 * v32 + 1608;
      for (i = *v35; i != *(v35 + 8); ++i)
      {
        v37 = *i;
        if (!(*(**i + 288))(*i))
        {
          (*(*v37 + 280))(v37);
          v39 = v37[4];
          v40 = *a7;
          while (v40 != a7[1])
          {
            v41 = *(v40 + 3);
            v40 = (v40 + 32);
            if (v41 == v39)
            {
LABEL_50:
              v43 = (v40 - 32);
              if (v28)
              {
                *&v73 = 0x676C6F6270667420;
                DWORD2(v73) = 0;
                CAPropertyAddressList::AppendUniqueItem((v40 - 32), &v73, v38);
                *&v73 = 0x676C6F6273666D74;
                DWORD2(v73) = 0;
                CAPropertyAddressList::AppendUniqueItem(v43, &v73, v44);
              }

              if (v27)
              {
                *&v73 = 0x676C6F6270667461;
                DWORD2(v73) = 0;
                CAPropertyAddressList::AppendUniqueItem(v43, &v73, v38);
                *&v73 = 0x676C6F6273666D61;
                DWORD2(v73) = 0;
                CAPropertyAddressList::AppendUniqueItem(v43, &v73, v45);
              }

              goto LABEL_42;
            }
          }

          v73 = 0uLL;
          v74 = 0;
          v75 = v39;
          std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a7, &v73);
          v40 = *a7;
          while (v40 != a7[1])
          {
            v42 = *(v40 + 3);
            v40 = (v40 + 32);
            if (v42 == v37[4])
            {
              goto LABEL_50;
            }
          }
        }

LABEL_42:
        ;
      }

      v33 = 0;
      v32 = 1;
    }

    while ((v34 & 1) != 0);
  }

  v24 = v68;
  if (v68)
  {
    HALS_DeviceState::HALS_DeviceState(&v73);
    HALS_DeviceState::Capture(&v73, v67, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v67 + 184, 0);
    HALS_MetaDevice::_UpdateStreams(v67, v71);
    HALS_DeviceState::HALS_DeviceState(v72);
    HALS_DeviceState::Capture(v72, v67, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(&v73, v72, a6, a7);
    *&v70.mSelector = 0x676C6F62616D7374;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v46);
    *&v70.mSelector = 0x676C6F6261706364;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v47);
    *&v70.mSelector = 0x676C6F6267727570;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v48);
    *&v70.mSelector = 0x676C6F6261677270;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v49);
    *&v70.mSelector = 0x676C6F6261746170;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v50);
    *&v70.mSelector = 0x676C6F6274617023;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v51);
    *&v70.mSelector = 0x676C6F6261636F6DLL;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v52);
    *&v70.mSelector = 0x676C6F6273746D23;
    v70.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v70, v53);
    v55 = v71[1];
    if (v71[1] || v71[0])
    {
      *&v70.mSelector = 0x676C6F6273746D23;
      v70.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a6, &v70, v54);
      if (v55)
      {
        *&v70.mSelector = 0x696E707473746D23;
        v70.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a6, &v70, v56);
        if (!v71[0])
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (v71[0])
      {
LABEL_62:
        *&v70.mSelector = 0x6F75747073746D23;
        v70.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a6, &v70, v56);
LABEL_63:
        if (*a6 == *(a6 + 1))
        {
          v57 = *a7;
          while (v57 != a7[1])
          {
            v58 = *v57;
            v59 = *(v57 + 1);
            v57 = (v57 + 32);
            if (v58 != v59)
            {
              goto LABEL_67;
            }
          }
        }

        else
        {
LABEL_67:
          *&v70.mSelector = 0x676C6F6264696666;
          v70.mElement = 0;
          CAPropertyAddressList::AppendUniqueItem(a6, &v70, v56);
        }
      }
    }

    HALS_DeviceState::~HALS_DeviceState(v72);
    HALS_DeviceState::~HALS_DeviceState(&v73);
    v24 = v68;
  }

  if (v66 != 0 && (v18 & 1) != 0)
  {
    v61 = HALS_ObjectMap::CopyObjectByObjectID(v66);
    if (v61)
    {
      HALS_MetaDevice::InheritSubdeviceDSPForClient(v67, v69 == 1768845428, v61);
      LODWORD(v73) = HIDWORD(v64) | v64;
      *(&v73 + 4) = v69;
      CAPropertyAddressList::AppendUniqueItem(v65, &v73, v62);
    }

    HALS_ObjectMap::ReleaseObject(v61, v60);
    v24 = v68;
  }

  return v24 & 1;
}

uint64_t HALS_MetaDevice::_GetStreamByRealStreamID(HALS_MetaDevice *this, int a2)
{
  v3 = 0;
  v4 = this + 1608;
  v5 = 1;
  do
  {
    v6 = &v4[24 * v3];
    v7 = *v6;
    if (*v6 == *(v6 + 1))
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v10 = *v7++;
        v9 = v10;
        if ((*(*v10 + 296))(v10) == a2)
        {
          v8 = v9;
        }
      }

      while (v7 != *(v6 + 1));
    }

    v11 = (v8 == 0) & v5;
    v3 = 1;
    v5 = 0;
  }

  while ((v11 & 1) != 0);
  return v8;
}

uint64_t HALS_MetaDevice::_GetStreamByStreamID(HALS_MetaDevice *this, int a2)
{
  v2 = 0;
  v3 = this + 1608;
  v4 = 1;
  do
  {
    v5 = &v3[24 * v2];
    v6 = *v5;
    v7 = *(v5 + 1);
    if (v6 == v7)
    {
      result = 0;
    }

    else
    {
      result = 0;
      do
      {
        v10 = *v6++;
        v9 = v10;
        if (*(v10 + 16) == a2)
        {
          result = v9;
        }
      }

      while (v6 != v7);
    }

    v11 = (result == 0) & v4;
    v2 = 1;
    v4 = 0;
  }

  while ((v11 & 1) != 0);
  return result;
}

uint64_t *HALS_MetaDevice::CopyDSPSettingsForClient@<X0>(HALS_MetaDevice *this@<X0>, HALS_Client *a2@<X2>, char a3@<W1>, uint64_t *a4@<X8>)
{
  HALS_MetaDeviceDescription::GetDSPInputSettingsOverride(&v10, this + 1472);
  v8 = v10;
  if (v10)
  {
    v10 = 0;
    *a4 = v8;
  }

  else
  {
    HALS_Device::CopyDSPSettingsForClient(this, a2, a3, a4);
  }

  return std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v10, 0);
}

void sub_1DE42D3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void HALS_MetaDevice::HandleHostedDSPConfigurationChange(HALS_MetaDevice *this, uint64_t a2)
{
  v3 = *(this + 4);
  *&v4.mSelector = 0x676C6F62686F4450;
  v4.mElement = 0;
  HALS_Object::PropertiesChanged(this, v3, a2, 1, &v4);
}

HALS_PlatformBehaviors *HALS_MetaDevice::HasInternalIOContext(HALS_MetaDevice *this)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  result = (*(*platform_behaviors + 16))(platform_behaviors);
  if (result != 1)
  {
    v3 = HALS_PlatformBehaviors::get_platform_behaviors(result);
    return ((*(*v3 + 16))(v3) == 2);
  }

  return result;
}

uint64_t HALS_MetaDevice::IsInputMutedForClient(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = atomic_load((a2 + 720));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

CFDictionaryRef HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_MetaDevice *this, HALS_Client *a2)
{
  v208 = *MEMORY[0x1E69E9840];
  v169.__r_.__value_.__r.__words[0] = &v169.__r_.__value_.__l.__size_;
  *&v169.__r_.__value_.__r.__words[1] = 0uLL;
  LOBYTE(v173[0]) = 0;
  v177 = 0;
  v170 = 0;
  v171 = 0;
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    v172 = *(this + 78);
    v4 = *(this + 208);
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      buf.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v202) = 0;
      *&v203[6] = 0;
      v203[14] = 1;
      v204 = 0;
      v205 = &v204;
      v206 = 0x2000000000;
      p_buf = &buf;
      v5 = *v4;
      v192.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      v192.__r_.__value_.__l.__size_ = 0x40000000;
      v192.__r_.__value_.__r.__words[2] = ___ZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEb_block_invoke;
      v193 = &unk_1E8673040;
      v194 = &v204;
      v195 = v4;
      v196.n128_u8[0] = 1;
      v6 = (*(*v5 + 64))(v5);
      HALB_CommandGate::ExecuteCommand(v6, &v192);
      v7 = *(v205 + 3);
      __p.__r_.__value_.__s.__data_[0] = 0;
      v168 = 0;
      if (v7 && v203[14] == 1)
      {
        v166 = 0;
        if (v202 == 1)
        {
          __p = buf;
          memset(&buf, 0, sizeof(buf));
          v166 = 1;
        }

        cf = *&v203[6];
        *&v203[6] = 0;
        v168 = 1;
      }

      _Block_object_dispose(&v204, 8);
      if (v203[14] == 1)
      {
        if (*&v203[6])
        {
          CFRelease(*&v203[6]);
        }

        if (v202 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      v168 = 0;
    }

    std::__optional_storage_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>>(v173, &__p);
    if (v168 == 1)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      if (v166 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v192.__r_.__value_.__r.__words[0] = &v192.__r_.__value_.__l.__size_;
    *&v192.__r_.__value_.__r.__words[1] = 0uLL;
    v196.n128_u8[0] = 0;
    v200 = 0;
    v193 = 0;
    v194 = 0;
    HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(&buf, this + 648, 1, a2);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v192.__r_.__value_.__l.__size_);
    size = buf.__r_.__value_.__l.__size_;
    v192 = buf;
    if (buf.__r_.__value_.__r.__words[2])
    {
      *(buf.__r_.__value_.__l.__size_ + 16) = &v192.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
      *&buf.__r_.__value_.__r.__words[1] = 0uLL;
      size = 0;
    }

    else
    {
      v192.__r_.__value_.__r.__words[0] = &v192.__r_.__value_.__l.__size_;
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(size);
    v9 = *(this + 79);
    if (v9)
    {
      HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&buf, v9, 1, a2);
      v9 = buf.__r_.__value_.__r.__words[0];
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v193, v9);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&buf, 0);
    v10 = *(this + 79);
    if (v10)
    {
      HALS_Device_HostedDSP::CopyDSPSettingsForClient(&buf, *v10, 1, a2);
      v11 = buf.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = 0;
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v194, v11);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&buf, 0);
    if (v193)
    {
      v184 = 0;
      v12 = CFStringCreateWithBytes(0, "dsp offload bypass override", 27, 0x8000100u, 0);
      __p.__r_.__value_.__r.__words[0] = v12;
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(*(this + 186), v12))
      {
        goto LABEL_36;
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&buf, *(this + 186), v12);
      if (buf.__r_.__value_.__l.__size_)
      {
        operator new();
      }

      OS::CF::UntypedObject::~UntypedObject(&buf);
      v12 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
LABEL_36:
        CFRelease(v12);
      }

      std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v184, 0);
    }

    HALS_MetaDeviceDescription::GetDSPInputSettingsOverride(&v204, this + 1472);
    if (v204)
    {
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
      }

      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v16;
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v17 = *v16;
      }

      v13 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v18 = v204;
      if (v13)
      {
        v19 = *(this + 4);
        DSP_Host_OffloadDictionary::get_debug_string(&__p, v204);
        v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 967;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v19;
        v202 = 2080;
        *v203 = v20;
        _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][settings] (Device ID: %d) Aggregate device description overrides dsp input settings with %s", &buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = v194;
      v194 = v18;
      v204 = v21;
    }

    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v118 = *(a2 + 4);
      }

      else
      {
        v118 = 0;
      }

      v150 = *(this + 4);
      if (v193)
      {
        DSP_Host_OffloadDictionary::get_debug_string(&__p, v193);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 976;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v118;
        v202 = 1024;
        *v203 = v150;
        *&v203[4] = 2080;
        *&v203[6] = p_p;
        _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][offloads] (Client ID: %d) (Device ID: %d) Aggregate context description has %s for offloads.", &buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 976;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v118;
        v202 = 1024;
        *v203 = v150;
        *&v203[4] = 2080;
        *&v203[6] = "NOTHING";
        _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][offloads] (Client ID: %d) (Device ID: %d) Aggregate context description has %s for offloads.", &buf, 0x28u);
      }
    }

    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v204, 0);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v169.__r_.__value_.__l.__size_);
    v169 = v192;
    if (v192.__r_.__value_.__r.__words[2])
    {
      *(v192.__r_.__value_.__l.__size_ + 16) = &v169.__r_.__value_.__l.__size_;
      v192.__r_.__value_.__r.__words[0] = &v192.__r_.__value_.__l.__size_;
      *&v192.__r_.__value_.__r.__words[1] = 0uLL;
    }

    else
    {
      v169.__r_.__value_.__r.__words[0] = &v169.__r_.__value_.__l.__size_;
    }

    v26 = v193;
    v193 = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v170, v26);
    v27 = v194;
    v194 = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v171, v27);
    v172 = v195;
    std::__optional_storage_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>>(v173, &v196);
    if (v200 == 1)
    {
      if (v199)
      {
        CFRelease(v199);
      }

      if (v198 == 1 && v197 < 0)
      {
        operator delete(v196.n128_u64[0]);
      }
    }

    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v194, 0);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v193, 0);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v192.__r_.__value_.__l.__size_);
    v172 = 0;
    std::__optional_destruct_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::reset[abi:ne200100](v173);
  }

  v28 = *(this + 4);
  v191[0] = &unk_1F596EDE8;
  v191[1] = this;
  v191[3] = v191;
  OS::CF::MutableDictionary::MutableDictionary(v180);
  OS::CF::Number::Number<unsigned int>(&v192, v28);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"device id", v192.__r_.__value_.__l.__size_);
  OS::CF::UntypedObject::~UntypedObject(&v192);
  v29 = *(this + 196);
  if (v29)
  {
    v30 = HALS_MetaSubDevice::CopyRealDeviceUID(v29);
  }

  else
  {
    v30 = 0;
  }

  v179[0] = &unk_1F5991188;
  v179[1] = v30;
  if (v30)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"master uid", v30);
  }

  v31 = *(this + 197);
  if (v31)
  {
    v32 = HALS_MetaSubDevice::CopyRealDeviceUID(v31);
  }

  else
  {
    v32 = 0;
  }

  v178[0] = &unk_1F5991188;
  v178[1] = v32;
  if (v32)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"clock device uid", v32);
  }

  else
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v192, *(this + 186), @"clock");
    if (v192.__r_.__value_.__l.__size_)
    {
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"clock device uid", v192.__r_.__value_.__l.__size_);
    }

    OS::CF::UntypedObject::~UntypedObject(&v192);
  }

  v33 = this;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v192, *(this + 186), @"LDCM");
  v34 = OS::CF::Boolean::AsBool(v192.__r_.__value_.__l.__size_);
  OS::CF::UntypedObject::~UntypedObject(&v192);
  OS::CF::Boolean::Boolean(&v192, v34);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(theDict, @"LDCM", v192.__r_.__value_.__l.__size_);
  OS::CF::UntypedObject::~UntypedObject(&v192);
  if (OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(*(this + 186), @"VAD power assertion category"))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v192, *(this + 186), @"VAD power assertion category");
    v35 = v192.__r_.__value_.__l.__size_;
    if (v192.__r_.__value_.__l.__size_)
    {
      CFRetain(v192.__r_.__value_.__l.__size_);
      OS::CF::UntypedObject::~UntypedObject(&v192);
      v192.__r_.__value_.__r.__words[0] = &unk_1F5991138;
      v192.__r_.__value_.__l.__size_ = v35;
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"VAD power assertion category", v35);
    }

    OS::CF::UntypedObject::~UntypedObject(&v192);
    v33 = this;
  }

  StackedChannelPolicy = HALS_MetaDeviceDescription::GetStackedChannelPolicy(v33 + 184);
  if (HALS_MetaDeviceDescription::IsStackRequested(this + 184))
  {
    goto LABEL_85;
  }

  v56 = *(this + 188);
  v57 = *(this + 187);
  if (v56 - v57 == 24 && *(v57 + 1) - *v57 > 8uLL)
  {
    goto LABEL_85;
  }

  if (v57 == v56)
  {
    goto LABEL_124;
  }

  v58 = v57 + 24;
  do
  {
    v59 = *(v58 - 2) - *(v58 - 3);
    v60 = v59 > 8 || v58 == v56;
    v58 += 24;
  }

  while (!v60);
  if (v59 > 8)
  {
LABEL_85:
    OS::CF::MutableArray::MutableArray(v182);
    v36 = *(this + 187);
    v37 = *(this + 188);
    v156 = v37;
    while (v36 != v37)
    {
      if (*v36 != *(v36 + 8))
      {
        if (StackedChannelPolicy == 1 && (FirstDeviceWithDirection = HALS_MetaDeviceDescription::FindFirstDeviceWithDirection(v36)) != 0)
        {
          TotalNumberChannels = HALS_MetaSubDevice::GetTotalNumberChannels(FirstDeviceWithDirection, 0);
        }

        else
        {
          TotalNumberChannels = 2;
        }

        OS::CF::MutableDictionary::MutableDictionary(&v192);
        OS::CF::Number::Number<unsigned int>(&buf, TotalNumberChannels);
        OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v192.__r_.__value_.__l.__size_, @"channels", buf.__r_.__value_.__l.__size_);
        OS::CF::UntypedObject::~UntypedObject(&buf);
        OS::CF::MutableArray::MutableArray(v40);
        v41 = v36;
        v42 = *v36;
        v157 = v41;
        v43 = *(v41 + 8);
        v158 = v43;
        while (v42 != v43)
        {
          v44 = HALS_MetaSubDevice::CopyRealDeviceUID(*v42);
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991188;
          __p.__r_.__value_.__l.__size_ = v44;
          IsSynchPaddingOn = HALS_MetaSubDevice::IsSynchPaddingOn(*v42);
          IsDriftCorrectionOn = HALS_MetaSubDevice::IsDriftCorrectionOn(*v42);
          ExtraLatency = HALS_MetaSubDevice::GetExtraLatency(*v42, 0);
          OS::CF::MutableArray::MutableArray(&v204);
          NumberStreams = HALS_MetaSubDevice::GetNumberStreams(*v42, 0);
          if (TotalNumberChannels)
          {
            v47 = NumberStreams;
            if (NumberStreams)
            {
              v48 = 0;
              v49 = 0;
              do
              {
                v51 = HALS_MetaSubDevice::CopyStreamByIndex(*v42, 0, v48);
                if (v51)
                {
                  OS::CF::MutableDictionary::MutableDictionary(&v184);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(v185, @"uid", __p.__r_.__value_.__l.__size_);
                  OS::CF::Number::Number<unsigned int>(&v189, v48);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v185, @"index", v190);
                  OS::CF::UntypedObject::~UntypedObject(&v189);
                  OS::CF::Boolean::Boolean(&v189, IsSynchPaddingOn);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v185, @"synch padding", v190);
                  OS::CF::UntypedObject::~UntypedObject(&v189);
                  OS::CF::Boolean::Boolean(&v189, IsDriftCorrectionOn);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v185, @"drift", v190);
                  OS::CF::UntypedObject::~UntypedObject(&v189);
                  OS::CF::Number::Number<unsigned int>(&v189, ExtraLatency);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v185, @"extra latency", v190);
                  OS::CF::UntypedObject::~UntypedObject(&v189);
                  OS::CF::MutableArray::MutableArray(&v189);
                  NumberChannels = HALS_Stream::GetNumberChannels(v51);
                  v53 = v49;
                  for (i = NumberChannels; i; --i)
                  {
                    if (v53 >= TotalNumberChannels)
                    {
                      OS::CF::Number::Number<int>(&v187, -1);
                    }

                    else
                    {
                      OS::CF::Number::Number<unsigned int>(&v187, v53);
                    }

                    OS::CF::MutableArray::AppendValue<OS::CF::Number>(v190, v188);
                    OS::CF::UntypedObject::~UntypedObject(&v187);
                    ++v53;
                  }

                  v49 += NumberChannels;
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v185, @"channel map", v190);
                  OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v205, v185);
                  OS::CF::UntypedObject::~UntypedObject(&v189);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                }

                HALS_ObjectMap::ReleaseObject(v51, v50);
                if (v49 >= TotalNumberChannels)
                {
                  break;
                }

                ++v48;
              }

              while (v48 < v47);
            }
          }

          OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(buf.__r_.__value_.__l.__size_, v205);
          OS::CF::UntypedObject::~UntypedObject(&v204);
          OS::CF::UntypedObject::~UntypedObject(&__p);
          ++v42;
          v43 = v158;
        }

        if (OS::CF::ArrayBase<__CFArray *>::GetSize(buf.__r_.__value_.__l.__size_))
        {
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v192.__r_.__value_.__l.__size_, @"stream groups", buf.__r_.__value_.__l.__size_);
        }

        OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v183, v192.__r_.__value_.__l.__size_);
        OS::CF::UntypedObject::~UntypedObject(&buf);
        OS::CF::UntypedObject::~UntypedObject(&v192);
        v36 = v157;
      }

      v36 += 24;
      v37 = v156;
    }

    if (OS::CF::ArrayBase<__CFArray *>::GetSize(v183))
    {
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"grid-out", v183);
    }

    v55 = v182;
  }

  else
  {
LABEL_124:
    OS::CF::MutableArray::MutableArray(&v187);
    v61 = *(this + 187);
    v62 = *(this + 188);
    *v163 = v62;
    while (v61 != v62)
    {
      v63 = *v61;
      if (*v61 != *(v61 + 8))
      {
        v64 = *v63;
        if (*v63)
        {
          v65 = HALS_MetaSubDevice::CopyRealDeviceUID(*v63);
          v192.__r_.__value_.__r.__words[0] = &unk_1F5991188;
          v192.__r_.__value_.__l.__size_ = v65;
          v66 = HALS_MetaSubDevice::IsSynchPaddingOn(v64);
          v67 = HALS_MetaSubDevice::IsDriftCorrectionOn(v64);
          DriftCorrectionAlgorithm = HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(v64);
          DriftCorrectionQuality = HALS_MetaSubDevice::GetDriftCorrectionQuality(v64);
          v70 = HALS_MetaSubDevice::GetExtraLatency(v64, 0);
          v71 = HALS_MetaSubDevice::GetNumberStreams(v64, 0);
          if (v71)
          {
            for (j = 0; j != v71; ++j)
            {
              v74 = HALS_MetaSubDevice::CopyStreamByIndex(v64, 0, j);
              if (v74)
              {
                OS::CF::MutableDictionary::MutableDictionary(&buf);
                v75 = HALS_Stream::GetNumberChannels(v74);
                OS::CF::Number::Number<unsigned int>(&__p, v75);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(buf.__r_.__value_.__l.__size_, @"channels", __p.__r_.__value_.__l.__size_);
                OS::CF::UntypedObject::~UntypedObject(&__p);
                OS::CF::MutableArray::MutableArray(&__p);
                OS::CF::MutableArray::MutableArray(&v204);
                OS::CF::MutableDictionary::MutableDictionary(&v184);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(v185, @"uid", v192.__r_.__value_.__l.__size_);
                OS::CF::Number::Number<unsigned int>(&v189, j);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v185, @"index", v190);
                OS::CF::UntypedObject::~UntypedObject(&v189);
                OS::CF::Boolean::Boolean(&v189, v66);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v185, @"synch padding", v190);
                OS::CF::UntypedObject::~UntypedObject(&v189);
                OS::CF::Boolean::Boolean(&v189, v67);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v185, @"drift", v190);
                OS::CF::UntypedObject::~UntypedObject(&v189);
                OS::CF::Number::Number<unsigned int>(&v189, DriftCorrectionAlgorithm);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v185, @"drift algorithm", v190);
                OS::CF::UntypedObject::~UntypedObject(&v189);
                OS::CF::Number::Number<unsigned int>(&v189, DriftCorrectionQuality);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v185, @"drift quality", v190);
                OS::CF::UntypedObject::~UntypedObject(&v189);
                OS::CF::Number::Number<unsigned int>(&v189, v70);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v185, @"extra latency", v190);
                OS::CF::UntypedObject::~UntypedObject(&v189);
                OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v205, v185);
                OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(__p.__r_.__value_.__l.__size_, v205);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(buf.__r_.__value_.__l.__size_, @"stream groups", __p.__r_.__value_.__l.__size_);
                OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v188, buf.__r_.__value_.__l.__size_);
                OS::CF::UntypedObject::~UntypedObject(&v184);
                OS::CF::UntypedObject::~UntypedObject(&v204);
                OS::CF::UntypedObject::~UntypedObject(&__p);
                OS::CF::UntypedObject::~UntypedObject(&buf);
              }

              HALS_ObjectMap::ReleaseObject(v74, v73);
            }
          }

          OS::CF::UntypedObject::~UntypedObject(&v192);
        }
      }

      v61 += 24;
      v62 = *v163;
    }

    if (OS::CF::ArrayBase<__CFArray *>::GetSize(v188))
    {
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"grid-out", v188);
    }

    v55 = &v187;
  }

  OS::CF::UntypedObject::~UntypedObject(v55);
  std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::__value_func[abi:ne200100](&v204, v191);
  OS::CF::MutableArray::MutableArray(&v189);
  if (StackedChannelPolicy || (HALS_MetaDeviceDescription::IsStackRequested(this + 184) & 1) == 0)
  {
    v76 = v169.__r_.__value_.__r.__words[0];
    if (v169.__r_.__value_.__l.__data_ != &v169.__r_.__value_.__r.__words[1])
    {
      while (1)
      {
        v77 = *(v76 + 28);
        if ((v77 - 2) < 2)
        {
          break;
        }

        if (v77 == 6)
        {
          OS::CF::Number::Number<unsigned int>(&v192, 1);
          v78 = theDict;
          v79 = v192.__r_.__value_.__l.__size_;
          v80 = @"voice activity detection enable";
          goto LABEL_145;
        }

LABEL_146:
        v81 = *(v76 + 8);
        if (v81)
        {
          do
          {
            v82 = v81;
            v81 = v81->__r_.__value_.__r.__words[0];
          }

          while (v81);
        }

        else
        {
          do
          {
            v82 = *(v76 + 16);
            v60 = v82->__r_.__value_.__r.__words[0] == v76;
            v76 = v82;
          }

          while (!v60);
        }

        v76 = v82;
        if (v82 == &v169.__r_.__value_.__r.__words[1])
        {
          goto LABEL_152;
        }
      }

      OS::CF::Number::Number<unsigned int>(&v192, v77);
      v78 = theDict;
      v79 = v192.__r_.__value_.__l.__size_;
      v80 = @"vocal isolation type";
LABEL_145:
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v78, v80, v79);
      OS::CF::UntypedObject::~UntypedObject(&v192);
      goto LABEL_146;
    }

LABEL_152:
    v83 = v170;
    if (v170)
    {
      v84 = *(v170 + 2);
      if (v84)
      {
        if (CFDictionaryGetCount(v84) && !DSP_Host_OffloadDictionary::has_all_id(v83))
        {
          DSP_Host_OffloadDictionary::deep_copy_to(v170, v180, "device dsp offloads input");
        }
      }
    }

    v85 = v171;
    if (!v171)
    {
      goto LABEL_163;
    }

    std::string::basic_string[abi:ne200100]<0>(&v192, "content creation recording");
    has_id = DSP_Host_OffloadDictionary::has_id(v85, &v192);
    v87 = has_id;
    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v192.__r_.__value_.__l.__data_);
      if (!v87)
      {
        goto LABEL_163;
      }
    }

    else if (!has_id)
    {
LABEL_163:
      v192.__r_.__value_.__r.__words[0] = a2;
      v192.__r_.__value_.__l.__size_ = &v189;
      std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::__value_func[abi:ne200100](&v192.__r_.__value_.__r.__words[2], &v204);
      v88 = *(this + 187);
      v89 = *(this + 188);
      v159 = v89;
      while (v88 != v89)
      {
        v91 = *v88;
        v90 = *(v88 + 8);
        *v161 = v88;
        *v164 = v90;
        while (v91 != v90)
        {
          v92 = *v91;
          v93 = HALS_MetaSubDevice::CopyRealDeviceUID(*v91);
          buf.__r_.__value_.__r.__words[0] = &unk_1F5991188;
          buf.__r_.__value_.__l.__size_ = v93;
          v94 = HALS_MetaSubDevice::IsSynchPaddingOn(v92);
          v95 = HALS_MetaSubDevice::IsDriftCorrectionOn(v92);
          v96 = HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(v92);
          v97 = HALS_MetaSubDevice::GetDriftCorrectionQuality(v92);
          v98 = HALS_MetaSubDevice::GetExtraLatency(v92, 1);
          v99 = HALS_MetaSubDevice::GetNumberStreams(v92, 1);
          if (v99)
          {
            for (k = 0; k != v99; ++k)
            {
              v101 = HALS_MetaSubDevice::CopyStreamByIndex(v92, 1, k);
              v103 = v101;
              if (v101)
              {
                __p.__r_.__value_.__r.__words[0] = v101;
                v184 = v192.__r_.__value_.__r.__words[0];
                if (!v195)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                if ((*(*v195 + 48))(v195, &__p, &v184))
                {
                  OS::CF::MutableDictionary::MutableDictionary(&__p);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(__p.__r_.__value_.__l.__size_, @"uid", buf.__r_.__value_.__l.__size_);
                  OS::CF::Number::Number<unsigned int>(&v184, k);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"index", v185);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                  OS::CF::Boolean::Boolean(&v184, v94);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(__p.__r_.__value_.__l.__size_, @"synch padding", v185);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                  OS::CF::Boolean::Boolean(&v184, v95);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(__p.__r_.__value_.__l.__size_, @"drift", v185);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                  OS::CF::Number::Number<unsigned int>(&v184, v96);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"drift algorithm", v185);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                  OS::CF::Number::Number<unsigned int>(&v184, v97);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"drift quality", v185);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                  OS::CF::Number::Number<unsigned int>(&v184, v98);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"extra latency", v185);
                  OS::CF::UntypedObject::~UntypedObject(&v184);
                  OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(*(v192.__r_.__value_.__l.__size_ + 8), __p.__r_.__value_.__l.__size_);
                  OS::CF::UntypedObject::~UntypedObject(&__p);
                }
              }

              HALS_ObjectMap::ReleaseObject(v103, v102);
            }
          }

          OS::CF::UntypedObject::~UntypedObject(&buf);
          ++v91;
          v90 = *v164;
        }

        v89 = v159;
        v88 = *v161 + 24;
      }

      std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](&v192.__r_.__value_.__r.__words[2]);
      goto LABEL_177;
    }

    DSP_Host_OffloadDictionary::deep_copy_to(v171, v180, "dsp input settings");
    goto LABEL_163;
  }

LABEL_177:
  if (OS::CF::ArrayBase<__CFArray *>::GetSize(v190))
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"grid-in", v190);
  }

  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && v172)
  {
    if (a2)
    {
      v104 = *(a2 + 4);
    }

    else
    {
      v104 = 0;
    }

    v105 = *(this + 186);
    HALS_DSPHostPerClientConfiguration::configuration_for (&__p, v172, v104);
    if (__p.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0] + 8;
      buf.__r_.__value_.__l.__size_ = __p.__r_.__value_.__l.__size_;
      v106 = &__p;
    }

    else
    {
      v106 = &buf;
    }

    v106->__r_.__value_.__r.__words[0] = 0;
    v106->__r_.__value_.__l.__size_ = 0;
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    v107 = buf.__r_.__value_.__r.__words[0];
    if (buf.__r_.__value_.__r.__words[0])
    {
      if (v105)
      {
        CFRetain(v105);
        v184 = v105;
        v108 = CFGetTypeID(v105);
        if (v108 != CFDictionaryGetTypeID())
        {
          v109 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v109, "Could not construct");
          __cxa_throw(v109, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v184 = 0;
      }

      __p.__r_.__value_.__r.__words[0] = &unk_1F5974508;
      __p.__r_.__value_.__l.__size_ = &v184;
      (*(*v107 + 24))(v107, &__p);
      if (v184)
      {
        CFRelease(v184);
      }
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
    }

    if (v177 == 1)
    {
      if (v176)
      {
        v110 = v172;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v173);
        HALS_DSPHostPerClientConfiguration::set_offloads_requested(v110, v104, &v176, &__p);
        if (v166 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    HALS_DSPHostPerClientConfiguration::serialize_to_description(v172, v104, theDict);
  }

  v111 = HALS_MetaDeviceDescription::IsolatedUseCaseID(this + 184);
  v112 = theDict;
  if (!theDict || (v112 = CFDictionaryContainsKey(theDict, @"device id"), !v112))
  {
    v115 = 0;
    goto LABEL_222;
  }

  buf.__r_.__value_.__r.__words[0] = &unk_1F5991138;
  buf.__r_.__value_.__l.__size_ = 0;
  v113 = theDict;
  if (theDict)
  {
    v184 = 0;
    if (!CFDictionaryGetValueIfPresent(theDict, @"device id", &v184))
    {
      goto LABEL_220;
    }

    v114 = v184 ? CFGetTypeID(v184) : 0;
    if (v114 != CFNumberGetTypeID())
    {
      goto LABEL_220;
    }

    v116 = v184;
    if (v184)
    {
      CFRetain(v184);
      v117 = buf.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__l.__size_ = v116;
      if (v117)
      {
        goto LABEL_219;
      }
    }

    else
    {
      v117 = buf.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__l.__size_ = 0;
      if (v117)
      {
LABEL_219:
        CFRelease(v117);
      }
    }

LABEL_220:
    v113 = buf.__r_.__value_.__l.__size_;
  }

  v115 = OS::CF::Number::GetValue<unsigned int>(v113, 0);
  OS::CF::UntypedObject::~UntypedObject(&buf);
LABEL_222:
  if (HIDWORD(v111))
  {
    v123 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v123 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v112);
    }

    v125 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v124 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
      v126 = *v125;
      std::__shared_weak_count::__release_shared[abi:ne200100](v124);
    }

    else
    {
      v126 = *v125;
    }

    v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
    if (v127)
    {
      v128.i32[0] = bswap32(v111);
      v129 = vzip1_s8(v128, v128);
      v130.i64[0] = 0x1F0000001FLL;
      v130.i64[1] = 0x1F0000001FLL;
      v131.i64[0] = 0x5F0000005FLL;
      v131.i64[1] = 0x5F0000005FLL;
      v186 = 4;
      v132 = vbsl_s8(vmovn_s32(vcgtq_u32(v131, vsraq_n_s32(v130, vshlq_n_s32(vmovl_u16(v129), 0x18uLL), 0x18uLL))), v129, 0x2E002E002E002ELL);
      LODWORD(v184) = vuzp1_s8(v132, v132).u32[0];
      BYTE4(v184) = 0;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316163;
      *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 1225;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v115;
      v202 = 2081;
      *v203 = "has isolated audio use case";
      *&v203[8] = 2081;
      *&v203[10] = &v184;
      _os_log_impl(&dword_1DE1F9000, v126, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][iso] (Device ID: %d) %{private}s %{private}s.", &buf, 0x2Cu);
      if (v186 < 0)
      {
        operator delete(v184);
      }
    }

    v133 = v169.__r_.__value_.__l.__size_;
    if (v169.__r_.__value_.__l.__size_)
    {
      v134 = &v169.__r_.__value_.__r.__words[1];
      do
      {
        v135 = v133;
        v136 = v134;
        v137 = *(v133 + 28);
        if (v137 >= 6)
        {
          v134 = v133;
        }

        v133 = *(v133 + 8 * (v137 < 6));
      }

      while (v133);
      if (v134 != &v169.__r_.__value_.__r.__words[1])
      {
        if (v137 < 6)
        {
          v135 = v136;
        }

        if (*(v135 + 28) <= 6u)
        {
          v138 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v138 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v127);
          }

          v140 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v139 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v139)
          {
            atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
            v141 = *v140;
            std::__shared_weak_count::__release_shared[abi:ne200100](v139);
          }

          else
          {
            v141 = *v140;
          }

          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 1227;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v115;
            _os_log_impl(&dword_1DE1F9000, v141, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][iso][mtd] (Device ID: %d) has DSP type property for mtd.", &buf, 0x18u);
          }
        }
      }
    }
  }

  else if (!v169.__r_.__value_.__r.__words[2])
  {
    v119 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v119 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v112);
    }

    v121 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v120 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v120)
    {
      atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
      v122 = *v121;
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    else
    {
      v122 = *v121;
    }

    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315907;
      *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 1232;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v115;
      v202 = 2081;
      *v203 = "Has no isolated audio use case nor any DSP Types";
      _os_log_debug_impl(&dword_1DE1F9000, v122, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][iso] (Device ID: %d) %{private}s.", &buf, 0x22u);
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v189);
  std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](&v204);
  v142 = HALS_MetaDeviceDescription::IsPrivate(this + 184);
  v143 = HALS_MetaDeviceDescription::CopyTapList(*(this + 186));
  buf.__r_.__value_.__r.__words[0] = &unk_1F59910D0;
  buf.__r_.__value_.__l.__size_ = v143;
  if (v143)
  {
    OS::CF::MutableArray::MutableArray(&__p);
    for (m = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(buf.__r_.__value_.__l.__size_) > m; ++m)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&v192, &buf, m);
      if (v192.__r_.__value_.__l.__size_)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v184, v192.__r_.__value_.__l.__size_, @"uid");
        v187 = 0;
        v188 = 0;
        HALS_System::GetInstance(&v189, 0, &v187);
        v146 = HALS_System::CopyTapByUUID(v189, v185);
        if (v190)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v190);
        }

        if (v146 && v142 & 1 | ((*(v146 + 91) & 1) == 0))
        {
          OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(__p.__r_.__value_.__l.__size_, v192.__r_.__value_.__l.__size_);
        }

        HALS_ObjectMap::ReleaseObject(v146, v145);
        OS::CF::UntypedObject::~UntypedObject(&v184);
      }

      OS::CF::UntypedObject::~UntypedObject(&v192);
    }

    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"taps", __p.__r_.__value_.__l.__size_);
    if (HALS_MetaDeviceDescription::IsPrivate(this + 184))
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v192, *(this + 186), @"tapautostart");
      if (OS::CF::Boolean::AsBool(v192.__r_.__value_.__l.__size_))
      {
        v147 = HALS_MetaDeviceDescription::IsPrivate(this + 184);
      }

      else
      {
        v147 = 0;
      }

      OS::CF::UntypedObject::~UntypedObject(&v192);
      OS::CF::Boolean::Boolean(&v192, v147);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(theDict, @"tapautostart", v192.__r_.__value_.__l.__size_);
      OS::CF::UntypedObject::~UntypedObject(&v192);
    }

    OS::CF::UntypedObject::~UntypedObject(&__p);
  }

  OS::CF::UntypedObject::~UntypedObject(&buf);
  v148 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

  OS::CF::UntypedObject::~UntypedObject(v178);
  OS::CF::UntypedObject::~UntypedObject(v179);
  OS::CF::UntypedObject::~UntypedObject(v180);
  std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](v191);
  if (v177 == 1)
  {
    if (v176)
    {
      CFRelease(v176);
    }

    if (v175 == 1 && v174 < 0)
    {
      operator delete(v173[0]);
    }
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v171, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v170, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v169.__r_.__value_.__l.__size_);
  return v148;
}

void sub_1DE42F1F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__optional_storage_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 40) == a2[2].n128_u8[8])
  {
    if (*(a1 + 40))
    {
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1, a2);
      v4 = *(a1 + 32);
      *(a1 + 32) = a2[2].n128_u64[0];
      a2[2].n128_u64[0] = v4;
    }
  }

  else if (*(a1 + 40))
  {

    std::__optional_destruct_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::reset[abi:ne200100](a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (a2[1].n128_u8[8] == 1)
    {
      v5 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = v5;
      *(a2 + 8) = 0uLL;
      a2->n128_u64[0] = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 32) = a2[2].n128_u64[0];
    a2[2].n128_u64[0] = 0;
    *(a1 + 40) = 1;
  }
}

void std::__optional_destruct_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 40) = 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HostedDSPContextBuildArguments::~HostedDSPContextBuildArguments(HostedDSPContextBuildArguments *this)
{
  if (*(this + 88) == 1)
  {
    v2 = *(this + 10);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(this + 72) == 1 && *(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 4, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 3, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 1));
}

OS::CF::MutableDictionary *OS::CF::MutableDictionary::MutableDictionary(OS::CF::MutableDictionary *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  *this = &unk_1F598E458;
  *(this + 1) = Mutable;
  return this;
}

void *OS::CF::Number::Number<unsigned int>(void *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

void OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

void OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

const __CFArray *OS::CF::ArrayBase<__CFArray *>::GetSize(const __CFArray *result)
{
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

void OS::CF::MutableArray::AppendValue<OS::CF::Number>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

void *OS::CF::Number::Number<int>(void *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

void OS::CF::MutableDictionary::~MutableDictionary(OS::CF::MutableDictionary *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0,std::allocator<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0>,BOOL ()(HALS_Stream *,HALS_Client *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK15HALS_MetaDevice33_CreateLegacyIOContextDescriptionEP11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0,std::allocator<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0>,BOOL ()(HALS_Stream *,HALS_Client *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596EDE8;
  a2[1] = v2;
  return result;
}

BOOL HALS_MetaDevice::_ClientCanUseStream(HALS_MetaDevice *this, HALS_Stream *a2, HALS_Client *a3)
{
  if (a2)
  {
    if ((*(*a2 + 216))(a2))
    {
      if (!*(a2 + 52) || *(a2 + 14) != 1 && !HALS_Stream::IsHardwareReferenceStream(a2))
      {
        return 1;
      }

      v6 = (*(*a2 + 288))(a2);
      v7 = HALS_ObjectMap::CopyObjectByObjectID(v6);
      v9 = v7;
      ReferenceStreamStateForClient = 1;
      if (v7 && a3 && (*(this + 536) & 1) == 0)
      {
        ReferenceStreamStateForClient = HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v7 + 448), *(a3 + 4));
      }

LABEL_17:
      HALS_ObjectMap::ReleaseObject(v9, v8);
      return ReferenceStreamStateForClient;
    }

    if (*(a2 + 52) && (*(a2 + 14) == 1 || HALS_Stream::IsHardwareReferenceStream(a2)))
    {
      v11 = HALS_ObjectMap::CopyObjectByObjectID(*(a2 + 7));
      v9 = v11;
      ReferenceStreamStateForClient = 1;
      if (a3 && (*(this + 536) & 1) == 0)
      {
        ReferenceStreamStateForClient = HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v11 + 448), *(a3 + 4));
      }

      goto LABEL_17;
    }
  }

  return HALS_Device::_ClientCanUseStream(this, a2, a3);
}

uint64_t HALS_MetaDevice::_GetNumberStreamsForClient(std::mutex *this, uint64_t a2, HALS_Client *a3)
{
  std::mutex::lock(this + 11);
  if (a3)
  {
    v6 = *(a3 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
LABEL_17:
      std::mutex::unlock(this + 11);
      v16 = (*(this->__m_.__sig + 392))(this, a2);
      if (!v16)
      {
        return 0;
      }

      v17 = v16;
      LODWORD(v18) = 0;
      v19 = 0;
      do
      {
        v20 = (*(this->__m_.__sig + 400))(this, a2, v19);
        v21 = (*(this->__m_.__sig + 616))(this, v20, a3);
        HALS_ObjectMap::ReleaseObject(v20, v22);
        v18 = (v18 + v21);
        v19 = (v19 + 1);
      }

      while (v17 != v19);
      return v18;
    }

    v6 = 0;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v6);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = 6;
  if (a2)
  {
    v8 = 0;
  }

  v9 = &v7[v8];
  v10 = v9[3];
  v11 = v9 + 4;
  if (v10 == v11)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v12 = *(v10 + 7) - 2;
    if (v12 < 9 && ((0x14Fu >> v12) & 1) != 0)
    {
      break;
    }

    v13 = v10[1];
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
      do
      {
        v14 = v10[2];
        v15 = *v14 == v10;
        v10 = v14;
      }

      while (!v15);
    }

    v10 = v14;
    if (v14 == v11)
    {
      goto LABEL_17;
    }
  }

  std::mutex::unlock(this + 11);
  return 1;
}

void HALS_MetaDevice::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1616) - *(v4 + 1608)) >> 3);
  v6 = *(v4 + 1608);
  for (i = *(v4 + 1616); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

uint64_t HALS_MetaDevice::_GetTotalNumberChannels(HALS_MetaDevice *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 201);
  if (v3 == *(v2 + 202))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1608;
  do
  {
    v6 = *v3++;
    v4 = HALS_Stream::GetNumberChannels(v6) + v4;
  }

  while (v3 != *(v5 + 1));
  return v4;
}

uint64_t HALS_MetaDevice::_CopyDefaultElementName(HALS_MetaDevice *this, int a2, unsigned int a3)
{
  if (a2 != 1869968496 && a2 != 1768845428)
  {
    return 0;
  }

  v18[7] = v3;
  v18[8] = v4;
  v6 = a3;
  if (a3)
  {
    v8 = *(this + 187);
    for (i = *(this + 188); v8 != i; v8 += 24)
    {
      v10 = *v8;
      if (*(v8 + 8) != *v8)
      {
        v11 = *v10;
        TotalNumberChannels = HALS_MetaSubDevice::GetTotalNumberChannels(*v10, a2 == 1768845428);
        if (v6 <= TotalNumberChannels)
        {
          if (v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v6 -= TotalNumberChannels;
        }
      }
    }

    return 0;
  }

  v11 = *(this + 196);
  if (!v11)
  {
    return 0;
  }

  v6 = 0;
LABEL_16:
  v16[0] = 1818454126;
  v16[1] = a2;
  v16[2] = v6;
  v14 = (*(*v11 + 96))(v11, *(v11 + 4), v16, 0);
  result = 0;
  if (v14)
  {
    v15 = *(v11 + 4);
    v18[0] = 0;
    v17 = 0;
    (*(*v11 + 120))(v11, v15, v16, 8, &v17, v18, 0, 0, 0);
    return v18[0];
  }

  return result;
}

BOOL HALS_MetaDevice::CanBeSeenByProcess(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 1592));
  result = 1;
  if (a2 && (v3 & 1) != 0)
  {
    v5 = *(a2 + 240);
    if (v5 != -1)
    {
      return v5 == *(a1 + 1464);
    }
  }

  return result;
}

HALS_ObjectMap *HALS_MetaDevice::_CopyStreamByIndex(HALS_MetaDevice *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 202);
  v5 = *(v3 + 201);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

uint64_t HALS_MetaDevice::DoAnyQueuesHaveWorkAfterFlush(HALS_MetaDevice *this)
{
  v1 = atomic_load(this + 817);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 1153), (v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(this + 1705);
  }

  return v3 & 1;
}

void HALS_MetaDevice::FlushAllQueues(HALS_MetaDevice *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1672));
}

void HALS_MetaDevice::HandleGroupObjectPropertiesChanged(HALS_Device *a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, dispatch_object_t *a11)
{
  v49 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x4802000000;
  v44 = __Block_byref_object_copy__6128;
  v45 = __Block_byref_object_dispose__6129;
  v46 = 0u;
  v47 = 0u;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4002000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__2;
  memset(v40, 0, sizeof(v40));
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v17 = *a11;
  if (*a11)
  {
    v18 = a7;
    dispatch_retain(*a11);
    dispatch_group_enter(v17);
    a7 = v18;
  }

  v30 = v17;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = ___ZN15HALS_MetaDevice34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke;
  v25[3] = &unk_1E8674AA8;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v25[8] = a5;
  v25[9] = a6;
  v29 = a7;
  v25[10] = a8;
  v25[4] = &v31;
  v25[5] = &v41;
  v25[6] = &v35;
  v25[7] = a1;
  v19 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v19, v25);
  if (*(v32 + 24) == 1)
  {
    HALS_Device::UpdateInternalIOContext(a1);
  }

  v20 = *(a1 + 4);
  v21 = v42;
  v22 = v36;
  v23 = *((*(*a1 + 56))(a1) + 72);
  if (v23 == pthread_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_Object.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 682;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Object::GroupPropertiesChanged: Notifications are being sent from inside the command gate.", buf, 0x12u);
  }

  memset(buf, 0, sizeof(buf));
  HALS_NotificationManager::GroupPropertiesChanged(a9, v20, a3, (v21 + 5), v22 + 5, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v17)
  {
    dispatch_group_leave(v17);
    dispatch_release(v17);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  v31 = v40;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v31);
  _Block_object_dispose(&v41, 8);
  if (v46)
  {
    *(&v46 + 1) = v46;
    operator delete(v46);
  }
}

void sub_1DE4306E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, dispatch_object_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  applesauce::dispatch::v1::group_session::~group_session(&a25);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  a26 = a11;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Block_object_dispose((v29 - 200), 8);
  v32 = *(v29 - 160);
  if (v32)
  {
    *(v29 - 152) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t *__Block_byref_object_copy__6128(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(a1 + 5, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  v3[3] = *(a2 + 64);
  return result;
}

void __Block_byref_object_dispose__6129(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  std::vector<CAPropertyAddressList>::__init_with_size[abi:ne200100]<CAPropertyAddressList*,CAPropertyAddressList*>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 5);
}

uint64_t ___ZN15HALS_MetaDevice34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 56) + 1032))(*(a1 + 56), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 64), *(a1 + 72), *(a1 + 100), *(a1 + 80), *(*(a1 + 40) + 8) + 40, *(*(a1 + 48) + 8) + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE430894(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void applesauce::dispatch::v1::group_session::~group_session(dispatch_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*this)
    {
      dispatch_release(*this);
    }
  }
}

void HALS_MetaDevice::HandleObjectPropertiesChanged(HALS_MetaDevice *this, const HALS_Object *a2, uint64_t a3, int a4, const AudioObjectPropertyAddress *a5)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x4802000000;
  v40 = __Block_byref_object_copy__6128;
  v41 = __Block_byref_object_dispose__6129;
  v42 = 0u;
  v43 = 0u;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__2;
  memset(v36, 0, sizeof(v36));
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___ZN15HALS_MetaDevice29HandleObjectPropertiesChangedEPK11HALS_ObjectjjPK26AudioObjectPropertyAddress_block_invoke;
  v24[3] = &unk_1E8674A80;
  v25 = a3;
  v26 = a4;
  v24[8] = a2;
  v24[9] = a5;
  v24[4] = &v27;
  v24[5] = &v37;
  v24[6] = &v31;
  v24[7] = this;
  v7 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v7, v24);
  if (*(v28 + 24) == 1)
  {
    HALS_Device::UpdateInternalIOContext(this);
  }

  v8 = v38[5];
  v9 = v38[6];
  v10 = v8 != v9;
  if (v8 != v9)
  {
    HALS_Object::PropertiesChanged(this, *(this + 4), a3, -1431655765 * ((v9 - v8) >> 2), v8);
  }

  v11 = v32[5];
  v12 = v32[6] - v11;
  if ((v12 & 0x1FFFFFFFE0) != 0)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 >= v12 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = v11 + v13;
      v16 = HALS_ObjectMap::CopyObjectByObjectID(*(v11 + v13 + 24));
      v18 = v16;
      v19 = *(v15 + 8);
      if (*v15 != v19 && v16 != 0)
      {
        HALS_Object::PropertiesChanged(this, *(v16 + 16), 0, -1431655765 * ((v19 - *v15) >> 2), *v15);
        v10 = 1;
      }

      HALS_ObjectMap::ReleaseObject(v18, v17);
      ++v14;
      v11 = v32[5];
      v12 = v32[6] - v11;
      v13 += 32;
    }

    while (v14 < (v12 >> 5));
  }

  if (v10)
  {
    v21[0] = 0;
    v21[1] = 0;
    HALS_System::GetInstance(&v22, 0, v21);
    HALS_System::CheckForDefaultDeviceChanges(v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  v27 = v36;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v27);
  _Block_object_dispose(&v37, 8);
  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }
}

void sub_1DE430BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Block_object_dispose((v27 - 152), 8);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN15HALS_MetaDevice29HandleObjectPropertiesChangedEPK11HALS_ObjectjjPK26AudioObjectPropertyAddress_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 56) + 1024))(*(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 84), *(a1 + 72), *(*(a1 + 40) + 8) + 40, *(*(a1 + 48) + 8) + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE430CBC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_MetaDevice::SetPropertyData(HALS_MetaDevice *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, unsigned int a4, float *a5, unsigned int a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v223 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v155 = 2003332927;
LABEL_226:
    exception[2] = v155;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v15))
  {
    v17 = atomic_load(this + 40);
    if (a8)
    {
      v18 = a8[20].mSelector;
    }

    else
    {
      v18 = getpid();
    }

    if (v17 != -1 && v17 != v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v155 = 560492391;
      goto LABEL_226;
    }

    mSelector = a3->mSelector;
  }

  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v191 = 0;
  v190 = 0;
  v192 = 0;
  if (mSelector > 1735554415)
  {
    if (mSelector <= 1853059699)
    {
      if (mSelector == 1735554416)
      {
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_251;
          }

          *v207 = 136315394;
          *&v207[4] = "HALS_MetaDevice.cpp";
          *&v207[12] = 1024;
          *&v207[14] = 2500;
          v156 = MEMORY[0x1E69E9C10];
          v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyFullSubDeviceList";
          goto LABEL_250;
        }

        HALS_DeviceState::HALS_DeviceState(v207);
        HALS_DeviceState::Capture(v207, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        v196 = 0;
        v197 = &v196;
        v198 = 0x2000000000;
        LODWORD(v199) = 0;
        v187[0] = MEMORY[0x1E69E9820];
        v187[1] = 0x40000000;
        v187[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_110;
        v187[3] = &unk_1E8674EE8;
        v187[6] = a5;
        v187[7] = &v195;
        v187[5] = this;
        v187[4] = &v196;
        v80 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v80, v187);
        if (*(v197 + 24))
        {
          v170 = __cxa_allocate_exception(0x10uLL);
          v171 = *(v197 + 24);
          *v170 = off_1F5991DD8;
          v170[2] = v171;
        }

        HALS_DeviceState::HALS_DeviceState(&buf);
        HALS_DeviceState::Capture(v81, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        HALS_DeviceState::Compare(v207, &buf, &v193, &v190);
        *&v206[0] = 0x676C6F62616D7374;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v82);
        *&v206[0] = 0x676C6F6261706364;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v83);
        *&v206[0] = 0x676C6F6267727570;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v84);
        *&v206[0] = 0x676C6F6261677270;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v85);
        *&v206[0] = 0x676C6F6261636F6DLL;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v86);
        goto LABEL_102;
      }

      if (mSelector != 1819173229 && mSelector != 1851878764)
      {
        goto LABEL_68;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_251;
        }

        *v207 = 136315394;
        *&v207[4] = "HALS_MetaDevice.cpp";
        *&v207[12] = 1024;
        *&v207[14] = 2463;
        v156 = MEMORY[0x1E69E9C10];
        v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioObjectPropertyName";
        goto LABEL_250;
      }

      *v207 = 0;
      *&v207[8] = v207;
      *&v207[16] = 0x2000000000;
      *&v207[24] = 0;
      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 0x40000000;
      v189[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
      v189[3] = &unk_1E8674E98;
      v189[6] = a5;
      v189[5] = this;
      v189[4] = v207;
      v30 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v30, v189);
      if (*(*&v207[8] + 24))
      {
        v158 = __cxa_allocate_exception(0x10uLL);
        v159 = *(*&v207[8] + 24);
        *v158 = off_1F5991DD8;
        v158[2] = v159;
      }

      strcpy(&buf, "manlbolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v31);
    }

    else
    {
      if (mSelector > 1983996970)
      {
        if (mSelector == 1983996971)
        {
          v72 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          if (v72)
          {
            HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
            v72 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          }

          mScope = a3->mScope;
          v74 = mScope == 1768845428;
          if (mScope != 1768845428)
          {
            v118 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v118 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v120 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v119 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v119)
            {
              atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
              v121 = *v120;
              std::__shared_weak_count::__release_shared[abi:ne200100](v119);
            }

            else
            {
              v121 = *v120;
            }

            if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2767;
              *&v207[18] = 2080;
              *&v207[20] = "isInput == false";
              _os_log_error_impl(&dword_1DE1F9000, v121, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: only valid for input scope kAudioDevicePropertyVoiceActivityDetectionEnable", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2767;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          atomic_load(this + 1592);
          if (!a5)
          {
            v122 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v122 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v124 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v123 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v123)
            {
              atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
              v125 = *v124;
              std::__shared_weak_count::__release_shared[abi:ne200100](v123);
            }

            else
            {
              v125 = *v124;
            }

            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2769;
              *&v207[18] = 2080;
              *&v207[20] = "inData == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v125, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inData is nullptr for kAudioDevicePropertyVoiceActivityDetectionEnable", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2769;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          if (a4 != 4)
          {
            v130 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v130 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v132 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v131 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v131)
            {
              atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
              v133 = *v132;
              std::__shared_weak_count::__release_shared[abi:ne200100](v131);
            }

            else
            {
              v133 = *v132;
            }

            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2770;
              *&v207[18] = 2080;
              *&v207[20] = "inDataSize != sizeof(UInt32)";
              _os_log_error_impl(&dword_1DE1F9000, v133, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVoiceActivityDetectionEnable", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2770;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          if (!a8)
          {
            v138 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v138 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v140 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v139 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v139)
            {
              atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
              v141 = *v140;
              std::__shared_weak_count::__release_shared[abi:ne200100](v139);
            }

            else
            {
              v141 = *v140;
            }

            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2771;
              *&v207[18] = 2080;
              *&v207[20] = "inClient == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v141, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inClient is null for kAudioDevicePropertyVoiceActivityDetectionEnable", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2771;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          v75 = *a5;
          HALS_DeviceState::HALS_DeviceState(v207);
          HALS_DeviceState::Capture(v207, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
          v176[0] = MEMORY[0x1E69E9820];
          v176[1] = 0x40000000;
          v176[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_130;
          v176[3] = &__block_descriptor_tmp_131_6165;
          v177 = v75;
          v178 = v74;
          v176[4] = this;
          v176[5] = a8;
          v176[6] = &v195;
          v76 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v76, v176);
          v67 = v195;
          if (v195 == 1)
          {
            HALS_DeviceState::HALS_DeviceState(&buf);
            HALS_DeviceState::Capture(v77, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
            HALS_DeviceState::Compare(v207, &buf, &v193, &v190);
            v196 = 0x676C6F6261677270;
            LODWORD(v197) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v193, &v196, v78);
            v196 = 0x676C6F6261636F6DLL;
            LODWORD(v197) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v193, &v196, v79);
            HALS_DeviceState::~HALS_DeviceState(&buf);
          }

          HALS_DeviceState::~HALS_DeviceState(v207);
          goto LABEL_99;
        }

        if (mSelector == 1986622324)
        {
          v39 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          if (v39)
          {
            HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
            v39 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          }

          v40 = a3->mScope;
          v41 = v40 == 1768845428;
          if (v40 != 1768845428)
          {
            v114 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v114 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v39);
            }

            v116 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v115 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
              v117 = *v116;
              std::__shared_weak_count::__release_shared[abi:ne200100](v115);
            }

            else
            {
              v117 = *v116;
            }

            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2703;
              *&v207[18] = 2080;
              *&v207[20] = "isInput == false";
              _os_log_error_impl(&dword_1DE1F9000, v117, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: only valid for input scope kAudioDevicePropertyVocalIsolationType", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2703;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
          if (!NumberStreamsExcludingReferenceStreams)
          {
            v126 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v126 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v128 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v127 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v127)
            {
              atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
              v129 = *v128;
              std::__shared_weak_count::__release_shared[abi:ne200100](v127);
            }

            else
            {
              v129 = *v128;
            }

            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2705;
              *&v207[18] = 2080;
              *&v207[20] = "hasNonTapInputStream == false";
              _os_log_error_impl(&dword_1DE1F9000, v129, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: Device does not have non-tap input streams for  kAudioDevicePropertyVocalIsolationType", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2705;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          atomic_load(this + 1592);
          if (!a5)
          {
            v134 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v134 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v136 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v135 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v135)
            {
              atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
              v137 = *v136;
              std::__shared_weak_count::__release_shared[abi:ne200100](v135);
            }

            else
            {
              v137 = *v136;
            }

            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2707;
              *&v207[18] = 2080;
              *&v207[20] = "inData == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v137, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inData is nullptr for kAudioDevicePropertyVocalIsolationType", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2707;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          if (a4 != 4)
          {
            v142 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v142 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v144 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v143 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v143)
            {
              atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
              v145 = *v144;
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
            }

            else
            {
              v145 = *v144;
            }

            if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2708;
              *&v207[18] = 2080;
              *&v207[20] = "inDataSize != sizeof(UInt32)";
              _os_log_error_impl(&dword_1DE1F9000, v145, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVocalIsolationType", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2708;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          if (!a8)
          {
            v146 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v146 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v148 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v147 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v147)
            {
              atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
              v149 = *v148;
              std::__shared_weak_count::__release_shared[abi:ne200100](v147);
            }

            else
            {
              v149 = *v148;
            }

            if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2709;
              *&v207[18] = 2080;
              *&v207[20] = "inClient == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v149, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inClient is null for kAudioDevicePropertyVocalIsolationType", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2709;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          v43 = *a5;
          if (*a5 >= 3u)
          {
            v150 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v150 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v152 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v151 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v151)
            {
              atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
              v153 = *v152;
              std::__shared_weak_count::__release_shared[abi:ne200100](v151);
            }

            else
            {
              v153 = *v152;
            }

            if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
            {
              *v207 = 136315650;
              *&v207[4] = "HALS_MetaDevice.cpp";
              *&v207[12] = 1024;
              *&v207[14] = 2711;
              *&v207[18] = 2080;
              *&v207[20] = "dataValue > kAudioDevicePropertyVocalIsolationTypeBasic";
              _os_log_error_impl(&dword_1DE1F9000, v153, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData inData is an invalid value for kAudioDevicePropertyVocalIsolationType", v207, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v182);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v219 = 0;
            v220 = 0;
            LODWORD(v221) = -1;
            *&buf = &unk_1F598E5D8;
            v217 = &unk_1F598E600;
            v218 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v207, &buf);
            v208 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v209 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v210) = 2711;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v206);
          }

          HALS_DeviceState::HALS_DeviceState(v207);
          HALS_DeviceState::Capture(v207, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
          v179[0] = MEMORY[0x1E69E9820];
          v179[1] = 0x40000000;
          v179[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_127;
          v179[3] = &__block_descriptor_tmp_128;
          v180 = v43;
          v179[4] = this;
          v179[5] = a8;
          v181 = v41;
          v179[6] = &v195;
          v44 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v44, v179);
          if (v195 == 1)
          {
            memset(v206, 0, sizeof(v206));
            strcpy(&buf, "#mtsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v206, &buf, v45);
            strcpy(&buf, "tmfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v206, &buf, v46);
            strcpy(&buf, "#mfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v206, &buf, v47);
            strcpy(&buf, "yalsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v206, &buf, v48);
            v49 = *&v206[0];
            HALS_Object::PropertiesChanged(this, *(this + 4), a8[1].mScope, -1431655765 * ((*(&v206[0] + 1) - *&v206[0]) >> 2), *&v206[0]);
            __p = 0u;
            v205 = 0u;
            strcpy(&buf, "tmfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v50);
            strcpy(&buf, "amfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v51);
            strcpy(&buf, " tfpbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v52);
            strcpy(&buf, "atfpbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v53);
            *&buf = 0;
            *(&buf + 1) = &buf;
            v217 = 0x4002000000;
            v218 = __Block_byref_object_copy__139;
            v219 = __Block_byref_object_dispose__140;
            v220 = 0;
            v221 = 0;
            v222 = 0;
            v196 = MEMORY[0x1E69E9820];
            v197 = 0x40000000;
            v198 = ___ZN15HALS_MetaDevice25NotifyDSPChangedForClientEbP11HALS_Client_block_invoke;
            v199 = &unk_1E8675090;
            v203 = 1;
            v202 = a8;
            v201 = this;
            p_buf = &buf;
            v54 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v54, &v196);
            v55 = *(*(&buf + 1) + 40);
            v56 = *(*(&buf + 1) + 48);
            if (v55 != v56)
            {
              v57 = __p;
              v58 = -1431655765 * ((*(&__p + 1) - __p) >> 2);
              do
              {
                HALS_Object::PropertiesChanged(this, *v55++, a8[1].mScope, v58, v57);
              }

              while (v55 != v56);
            }

            _Block_object_dispose(&buf, 8);
            if (v220)
            {
              v221 = v220;
              operator delete(v220);
            }

            if (__p)
            {
              operator delete(__p);
            }

            if (v49)
            {
              operator delete(v49);
            }

            HALS_DeviceState::HALS_DeviceState(&buf);
            HALS_DeviceState::Capture(v59, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
            HALS_DeviceState::Compare(v207, &buf, &v193, &v190);
            v196 = 0x676C6F6261677270;
            LODWORD(v197) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v193, &v196, v60);
            v196 = 0x676C6F6261636F6DLL;
            LODWORD(v197) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v193, &v196, v61);
            HALS_DeviceState::~HALS_DeviceState(&buf);
            goto LABEL_73;
          }

          HALS_DeviceState::~HALS_DeviceState(v207);
          goto LABEL_98;
        }

        goto LABEL_68;
      }

      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_251;
          }

          *v207 = 136315394;
          *&v207[4] = "HALS_MetaDevice.cpp";
          *&v207[12] = 1024;
          *&v207[14] = 2482;
          v156 = MEMORY[0x1E69E9C10];
          v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate";
          goto LABEL_250;
        }

        *v207 = 0;
        *&v207[8] = v207;
        *&v207[16] = 0x2000000000;
        *&v207[24] = 0;
        v188[0] = MEMORY[0x1E69E9820];
        v188[1] = 0x40000000;
        v188[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_108;
        v188[3] = &unk_1E8674EC0;
        v188[6] = a5;
        v188[7] = a8;
        v188[5] = this;
        v188[4] = v207;
        v70 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v70, v188);
        if (*(*&v207[8] + 24))
        {
          v166 = __cxa_allocate_exception(0x10uLL);
          v167 = *(*&v207[8] + 24);
          *v166 = off_1F5991DD8;
          v166[2] = v167;
        }

        goto LABEL_80;
      }

      if (mSelector != 1952542755)
      {
LABEL_68:
        HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
LABEL_98:
        v67 = 0;
LABEL_99:
        v66 = 0;
        goto LABEL_103;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_251;
        }

        *v207 = 136315394;
        *&v207[4] = "HALS_MetaDevice.cpp";
        *&v207[12] = 1024;
        *&v207[14] = 2814;
        v156 = MEMORY[0x1E69E9C10];
        v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyTapList";
        goto LABEL_250;
      }

      HALS_MetaDevice::UnregisterTaps(this);
      *v207 = 0;
      *&v207[8] = v207;
      *&v207[16] = 0x2000000000;
      *&v207[24] = 0;
      v175[0] = MEMORY[0x1E69E9820];
      v175[1] = 0x40000000;
      v175[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_132;
      v175[3] = &unk_1E8674FF0;
      v175[6] = a5;
      v175[7] = &v195;
      v175[4] = v207;
      v175[5] = this;
      v24 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v24, v175);
      if (*(*&v207[8] + 24))
      {
        v168 = __cxa_allocate_exception(0x10uLL);
        v169 = *(*&v207[8] + 24);
        *v168 = off_1F5991DD8;
        v168[2] = v169;
      }

      strcpy(&buf, "patabolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v25);
      strcpy(&buf, "#patbolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v26);
      HALS_MetaDevice::RegisterTaps(this);
    }

    _Block_object_dispose(v207, 8);
LABEL_74:
    v66 = 0;
    v67 = 1;
    goto LABEL_103;
  }

  if (mSelector > 1667461732)
  {
    if ((mSelector - 1685278561) <= 0x11 && ((1 << (mSelector - 97)) & 0x20003) != 0 || mSelector == 1667461733)
    {
      v33 = *(this + 208);
      if (v33 && (mSelector == 1685278578 || mSelector == 1685278561))
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v217 = 0x2000000000;
        LOBYTE(v218) = 0;
        v34 = *v33;
        *v207 = MEMORY[0x1E69E9820];
        *&v207[8] = 0x40000000;
        *&v207[16] = ___ZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        *&v207[24] = &unk_1E8673018;
        v210 = a3;
        v211 = a5;
        v214 = a4;
        v215 = a6;
        v212 = a7;
        v213 = a8;
        v209 = v33;
        v208 = &buf;
        v35 = (*(*v34 + 64))(v34);
        HALB_CommandGate::ExecuteCommand(v35, v207);
        if (*(*(&buf + 1) + 24) == 1)
        {
          v36 = *v33;
          v37 = *(*v33 + 16);
          if (a8)
          {
            v38 = a8[1].mScope;
          }

          else
          {
            v38 = 0;
          }

          mElement = a3->mElement;
          v196 = *&a3->mSelector;
          LODWORD(v197) = mElement;
          HALS_Object::PropertiesChanged(v36, v37, v38, 1, &v196);
        }

        v71 = &buf;
        goto LABEL_97;
      }
    }

    else if (mSelector == 1685087596)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_251;
        }

        *v207 = 136315394;
        *&v207[4] = "HALS_MetaDevice.cpp";
        *&v207[12] = 1024;
        *&v207[14] = 2681;
        v156 = MEMORY[0x1E69E9C10];
        v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioDevicePropertyEnableListening";
        goto LABEL_250;
      }

      *v207 = 0;
      *&v207[8] = v207;
      *&v207[16] = 0x2000000000;
      *&v207[24] = 0;
      v183[0] = MEMORY[0x1E69E9820];
      v183[1] = 0x40000000;
      v183[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_118;
      v183[3] = &unk_1E8674F88;
      v183[5] = this;
      v183[6] = a5;
      v183[4] = v207;
      v27 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v27, v183);
      if (*(*&v207[8] + 24))
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        v29 = *(*&v207[8] + 24);
        *v28 = off_1F5991DD8;
        v28[2] = v29;
      }

LABEL_80:
      v71 = v207;
LABEL_97:
      _Block_object_dispose(v71, 8);
      goto LABEL_98;
    }

    goto LABEL_68;
  }

  if (mSelector != 1633906541)
  {
    if (mSelector == 1634562932)
    {
      if (a4 > 7)
      {
        HALS_DeviceState::HALS_DeviceState(v207);
        HALS_DeviceState::Capture(v207, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        v196 = 0;
        v197 = &v196;
        v198 = 0x2000000000;
        LODWORD(v199) = 0;
        v185[0] = MEMORY[0x1E69E9820];
        v185[1] = 0x40000000;
        v185[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_114;
        v185[3] = &unk_1E8674F38;
        v185[6] = a5;
        v185[7] = &v195;
        v185[4] = &v196;
        v185[5] = this;
        v62 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v62, v185);
        if (*(v197 + 24))
        {
          v162 = __cxa_allocate_exception(0x10uLL);
          v163 = *(v197 + 24);
          *v162 = off_1F5991DD8;
          v162[2] = v163;
        }

        HALS_DeviceState::HALS_DeviceState(&buf);
        HALS_DeviceState::Capture(v63, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        HALS_DeviceState::Compare(v207, &buf, &v193, &v190);
        *&v206[0] = 0x676C6F62616D7374;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v64);
        *&v206[0] = 0x676C6F6261636F6DLL;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v65);
        goto LABEL_72;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v207 = 136315394;
        *&v207[4] = "HALS_MetaDevice.cpp";
        *&v207[12] = 1024;
        *&v207[14] = 2609;
        v156 = MEMORY[0x1E69E9C10];
        v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyMainSubDevice";
        goto LABEL_250;
      }

LABEL_251:
      v172 = __cxa_allocate_exception(0x10uLL);
      *v172 = off_1F5991DD8;
      v172[2] = 561211770;
    }

    if (mSelector == 1634755428)
    {
      if (a4 > 7)
      {
        HALS_DeviceState::HALS_DeviceState(v207);
        HALS_DeviceState::Capture(v207, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        v196 = 0;
        v197 = &v196;
        v198 = 0x2000000000;
        LODWORD(v199) = 0;
        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 0x40000000;
        v184[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_116;
        v184[3] = &unk_1E8674F60;
        v184[6] = a5;
        v184[7] = &v195;
        v184[4] = &v196;
        v184[5] = this;
        v20 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v20, v184);
        if (*(v197 + 24))
        {
          v160 = __cxa_allocate_exception(0x10uLL);
          v161 = *(v197 + 24);
          *v160 = off_1F5991DD8;
          v160[2] = v161;
        }

        HALS_DeviceState::HALS_DeviceState(&buf);
        HALS_DeviceState::Capture(v21, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        HALS_DeviceState::Compare(v207, &buf, &v193, &v190);
        *&v206[0] = 0x676C6F6261706364;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v22);
        *&v206[0] = 0x676C6F6261636F6DLL;
        DWORD2(v206[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v193, v206, v23);
        HALS_Device::UpdateInternalIOContext(this);
LABEL_72:
        HALS_DeviceState::~HALS_DeviceState(&buf);
        _Block_object_dispose(&v196, 8);
LABEL_73:
        HALS_DeviceState::~HALS_DeviceState(v207);
        goto LABEL_74;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v207 = 136315394;
        *&v207[4] = "HALS_MetaDevice.cpp";
        *&v207[12] = 1024;
        *&v207[14] = 2645;
        v156 = MEMORY[0x1E69E9C10];
        v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyClockDevice";
LABEL_250:
        _os_log_impl(&dword_1DE1F9000, v156, OS_LOG_TYPE_ERROR, v157, v207, 0x12u);
        goto LABEL_251;
      }

      goto LABEL_251;
    }

    goto LABEL_68;
  }

  if (a4 <= 7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_251;
    }

    *v207 = 136315394;
    *&v207[4] = "HALS_MetaDevice.cpp";
    *&v207[12] = 1024;
    *&v207[14] = 2540;
    v156 = MEMORY[0x1E69E9C10];
    v157 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition";
    goto LABEL_250;
  }

  v68 = pthread_self();
  if (AMCP::Utility::is_thread_configured_for_realtime(v68, v69))
  {
    std::vector<void *>::vector[abi:ne200100](&v196);
  }

  HALS_DeviceState::HALS_DeviceState(v207);
  HALS_DeviceState::Capture(v207, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
  HALS_MetaDevice::UnregisterTaps(this);
  v196 = 0;
  v197 = &v196;
  v198 = 0x2000000000;
  LODWORD(v199) = 0;
  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 0x40000000;
  v186[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_112;
  v186[3] = &unk_1E8674F10;
  v186[6] = a5;
  v186[7] = &v195;
  v186[4] = &v196;
  v186[5] = this;
  v88 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v88, v186);
  if (*(v197 + 24))
  {
    v164 = __cxa_allocate_exception(0x10uLL);
    v165 = *(v197 + 24);
    *v164 = off_1F5991DD8;
    v164[2] = v165;
  }

  HALS_DeviceState::HALS_DeviceState(&buf);
  HALS_DeviceState::Capture(v89, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
  HALS_DeviceState::Compare(v207, &buf, &v193, &v190);
  *&v206[0] = 0x676C6F62616D7374;
  DWORD2(v206[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v193, v206, v90);
  *&v206[0] = 0x676C6F6261706364;
  DWORD2(v206[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v193, v206, v91);
  *&v206[0] = 0x676C6F6267727570;
  DWORD2(v206[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v193, v206, v92);
  *&v206[0] = 0x676C6F6261746170;
  DWORD2(v206[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v193, v206, v93);
  *&v206[0] = 0x676C6F6261636F6DLL;
  DWORD2(v206[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v193, v206, v94);
  *&v206[0] = 0x676C6F6274617023;
  DWORD2(v206[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v193, v206, v95);
  HALS_MetaDevice::RegisterTaps(this);
LABEL_102:
  HALS_DeviceState::~HALS_DeviceState(&buf);
  _Block_object_dispose(&v196, 8);
  HALS_DeviceState::~HALS_DeviceState(v207);
  v67 = 1;
  v66 = 1;
LABEL_103:
  if ((v195 & 0x100) != 0 || v195 == 1)
  {
    strcpy(&buf, "#mtsbolg");
    BYTE9(buf) = 0;
    WORD5(buf) = 0;
    CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v32);
    if ((v195 & 0x100) != 0)
    {
      strcpy(&buf, "#mtstpni");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v32);
    }
  }

  if (v195 == 1)
  {
    strcpy(&buf, "#mtsptuo");
    BYTE9(buf) = 0;
    WORD5(buf) = 0;
    CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v32);
  }

  if ((v195 & 0x100) != 0 || v195 == 1)
  {
    if (v193 == *(&v193 + 1))
    {
      v96 = v190;
      while (v96 != v191)
      {
        v97 = *v96;
        v98 = *(v96 + 1);
        v96 = (v96 + 32);
        if (v97 != v98)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
LABEL_115:
      strcpy(&buf, "ffidbolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v193, &buf, v32);
    }
  }

  v99 = v193;
  if (v193 != *(&v193 + 1))
  {
    if (a8)
    {
      v100 = a8[1].mScope;
    }

    else
    {
      v100 = 0;
    }

    HALS_Object::PropertiesChanged(this, *(this + 4), v100, -1431655765 * ((*(&v193 + 1) - v193) >> 2), v193);
  }

  v101 = v190;
  v102 = v191 - v190;
  if (((v191 - v190) & 0x1FFFFFFFE0) != 0)
  {
    v103 = 0;
    v104 = 0;
    do
    {
      if (v104 >= v102 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v105 = v101 + v103;
      v106 = HALS_ObjectMap::CopyObjectByObjectID(*(v101 + v103 + 24));
      v108 = v106;
      v109 = *(v105 + 1);
      if (*v105 != v109 && v106 != 0)
      {
        if (a8)
        {
          v111 = a8[1].mScope;
        }

        else
        {
          v111 = 0;
        }

        HALS_Object::PropertiesChanged(this, *(v106 + 16), v111, -1431655765 * ((v109 - *v105) >> 2), *v105);
      }

      HALS_ObjectMap::ReleaseObject(v108, v107);
      ++v104;
      v101 = v190;
      v102 = v191 - v190;
      v103 += 32;
    }

    while (v104 < ((v191 - v190) >> 5));
  }

  if (((v67 | v66) & 1) != 0 && ((v195 & 0x100) != 0 || v195 == 1))
  {
    v112 = *(*(this + 182) + 16);
    v113 = a8 ? a8[1].mScope : 0;
    strcpy(v207, "#vedbolg");
    v207[9] = 0;
    *&v207[10] = 0;
    HALS_Object::PropertiesChanged(this, v112, v113, 1, v207);
    v174[0] = 0;
    v174[1] = 0;
    HALS_System::GetInstance(v207, 0, v174);
    HALS_System::CheckForDefaultDeviceChanges(*v207);
    if (*&v207[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v207[8]);
    }
  }

  *v207 = &v190;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v207);
  if (v99)
  {
    operator delete(v99);
  }
}

void sub_1DE4343C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x380]);
  MEMORY[0x1E12C15F0](a12);
  v14 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v14;
    operator delete(v14);
  }

  *(v12 - 208) = &STACK[0x2B8];
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v12 - 208));
  if (STACK[0x2D0])
  {
    operator delete(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(a1 + 48);
  OS::CF::MutableDictionary::MutableDictionary(&v4, *(v1 + 1488));
  if (v2)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"name", v2);
  }

  else
  {
    OS::CF::MutableDictionary::RemoveKey(theDict, @"name");
  }

  Copy = theDict;
  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  OS::CF::UntypedObject::operator=(v1 + 1480, Copy);
  OS::CF::UntypedObject::~UntypedObject(&v4);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_108(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  v3 = **(a1 + 48);
  v4 = *(a1 + 56);
  v5 = v2[187];
  v6 = v2[188];
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    while (v7 != v8)
    {
      v9 = HALS_MetaSubDevice::CopyRealIODevice(*v7);
      v11 = v9;
      if (v9)
      {
        (*(*v9 + 280))(v9, v4, v3);
      }

      HALS_ObjectMap::ReleaseObject(v11, v10);
      ++v7;
    }

    v5 += 3;
  }

  v12 = v2[193];
  for (i = v2[194]; v12 != i; v12 += 8)
  {
    v14 = HALS_ObjectMap::CopyObjectByObjectID(*(*v12 + 72));
    v16 = v14;
    if (v14)
    {
      v17 = *(v14 + 264);
      v18 = *(v16 + 34);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v3 != 0.0)
        {
          v19 = *(v17 + 40);
          v25 = *(v17 + 24);
          v26 = v19;
          v27 = *(v17 + 56);
          *&v25 = v3;
          HALS_MultiTap::set_format(v17, &v25, 0);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      else if (v3 != 0.0)
      {
        v20 = *(v17 + 40);
        v25 = *(v17 + 24);
        v26 = v20;
        v27 = *(v17 + 56);
        *&v25 = v3;
        HALS_MultiTap::set_format(v17, &v25, 0);
      }
    }

    HALS_ObjectMap::ReleaseObject(v16, v15);
  }

  v21 = v2[197];
  if (v21)
  {
    v22 = HALS_MetaSubDevice::CopyRealIODevice(v21);
    v24 = v22;
    if (v22)
    {
      (*(*v22 + 280))(v22, v4, v3);
    }

    HALS_ObjectMap::ReleaseObject(v24, v23);
  }
}

void sub_1DE4349C8(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = a2;
  HALS_ObjectMap::ReleaseObject(v27, a2);
  v30 = __cxa_begin_catch(a1);
  if (v28 == 2)
  {
    v31 = v30[2];
  }

  else
  {
    v31 = 2003329396;
  }

  *(*(*(v26 + 32) + 8) + 24) = v31;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_110(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2)
  {
    CFRetain(*v2);
  }

  v14 = &unk_1F59910D0;
  v15 = v4;
  OS::CF::MutableArray::MutableArray(&v12);
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v15);
  if (Size)
  {
    v6 = Size;
    for (i = 0; i != v6; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::String>(&v10, &v14, i);
      if (v11)
      {
        v16[0] = @"uid";
        v16[1] = v11;
        OS::CF::Dictionary::Dictionary(v9, v16, 1uLL);
        OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v13, v9[1]);
        OS::CF::UntypedObject::~UntypedObject(v9);
      }

      OS::CF::UntypedObject::~UntypedObject(&v10);
    }
  }

  OS::CF::MutableDictionary::MutableDictionary(&v10, v3[186]);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v11, @"subdevices", v13);
  Copy = v11;
  if (v11)
  {
    Copy = CFDictionaryCreateCopy(0, v11);
  }

  OS::CF::UntypedObject::operator=((v3 + 185), Copy);
  HALS_MetaDeviceDescription::UpdateSubDeviceList(v3 + 184, 0);
  HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 184));
  OS::CF::UntypedObject::~UntypedObject(&v10);
  OS::CF::UntypedObject::~UntypedObject(&v12);
  OS::CF::UntypedObject::~UntypedObject(&v14);
  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1E12C1140](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1DE434E24(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DE434DE4);
  }

  __cxa_rethrow();
}

void HALS_MetaDevice::UnregisterTaps(HALS_MetaDevice *this)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3802000000;
  v24 = __Block_byref_object_copy__134;
  v25 = __Block_byref_object_dispose__135;
  v26[0] = &unk_1F59910D0;
  v26[1] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN15HALS_MetaDevice14UnregisterTapsEv_block_invoke;
  v20[3] = &unk_1E8675040;
  v20[4] = &v21;
  v20[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v20);
  v3 = v22[6];
  if (v3)
  {
    for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v3) > i; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v18, (v22 + 5), i);
      if (theDict)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v16, theDict, @"uid");
        v13[0] = 0;
        v13[1] = 0;
        HALS_System::GetInstance(&v14, 0, v13);
        v6 = HALS_System::CopyTapByUUID(v14, v17);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (v6)
        {
          v7 = *(v6 + 33);
          v8 = *(v6 + 34);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            HALS_MultiTap::unregister_meta_device(v7, *(this + 4));
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          else
          {
            HALS_MultiTap::unregister_meta_device(v7, *(this + 4));
          }

          v12[0] = 0;
          v12[1] = 0;
          HALS_System::GetInstance(&v14, 0, v12);
          v9 = v14;
          v10 = *(v6 + 34);
          v11[0] = *(v6 + 33);
          v11[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_System::RemoveTapFromAllContexts(v9, v11);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        HALS_ObjectMap::ReleaseObject(v6, v5);
        OS::CF::UntypedObject::~UntypedObject(v16);
      }

      OS::CF::UntypedObject::~UntypedObject(v18);
      v3 = v22[6];
    }
  }

  _Block_object_dispose(&v21, 8);
  OS::CF::UntypedObject::~UntypedObject(v26);
}

void sub_1DE435100(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 120), 8);
  OS::CF::UntypedObject::~UntypedObject(v1);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_112(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2)
  {
    CFRetain(*v2);
    v5 = v3 + 1480;
    v6 = v4;
  }

  else
  {
    v5 = v3 + 1480;
    v6 = 0;
  }

  OS::CF::UntypedObject::operator=(v5, v6);
  HALS_MetaDeviceDescription::UpdateSubDeviceList((v3 + 1472), 0);
  HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 1472));
  atomic_store(HALS_MetaDeviceDescription::IsPrivate((v3 + 1472)), (v3 + 1592));
  atomic_store(HALS_MetaDeviceDescription::IsolatedUseCaseID((v3 + 1472)), (v3 + 1600));
  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
}

void sub_1DE43521C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void HALS_MetaDevice::RegisterTaps(HALS_MetaDevice *this)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3802000000;
  v20 = __Block_byref_object_copy__134;
  v21 = __Block_byref_object_dispose__135;
  v22[0] = &unk_1F59910D0;
  v22[1] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN15HALS_MetaDevice12RegisterTapsEv_block_invoke;
  v16[3] = &unk_1E8675018;
  v16[4] = &v17;
  v16[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v16);
  v3 = v18[6];
  if (v3)
  {
    for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v3) > i; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v14, (v18 + 5), i);
      if (theDict)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v12, theDict, @"uid");
        v9[0] = 0;
        v9[1] = 0;
        HALS_System::GetInstance(&v10, 0, v9);
        v6 = HALS_System::CopyTapByUUID(v10, v13);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v6 && *(v6 + 256) == 1)
        {
          v7 = *(v6 + 264);
          v8 = *(v6 + 272);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            HALS_MultiTap::register_meta_device(v7, *(this + 4));
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          else
          {
            HALS_MultiTap::register_meta_device(v7, *(this + 4));
          }

          HALS_Tap::AddTapToAllContexts(v6);
        }

        HALS_ObjectMap::ReleaseObject(v6, v5);
        OS::CF::UntypedObject::~UntypedObject(v12);
      }

      OS::CF::UntypedObject::~UntypedObject(v14);
      v3 = v18[6];
    }
  }

  _Block_object_dispose(&v17, 8);
  OS::CF::UntypedObject::~UntypedObject(v22);
}

void sub_1DE43547C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  OS::CF::UntypedObject::~UntypedObject(v23);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_114(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2 && HALS_MetaDeviceDescription::IsDeviceInRawDescription(v3 + 184, *v2))
  {
    OS::CF::MutableDictionary::MutableDictionary(&v6, v3[186]);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"master", v4);
    Copy = theDict;
    if (theDict)
    {
      Copy = CFDictionaryCreateCopy(0, theDict);
    }

    OS::CF::UntypedObject::operator=((v3 + 185), Copy);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v3 + 184, 0);
    HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 184));
    OS::CF::UntypedObject::~UntypedObject(&v6);
  }

  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
}

void sub_1DE435594(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OS::CF::UntypedObject::~UntypedObject(&v21);
  v19 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v20 = v19[2];
  }

  else
  {
    v20 = 2003329396;
  }

  *(*(*(v16 + 32) + 8) + 24) = v20;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_116(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  v3 = **(a1 + 48);
  if (v3)
  {
    OS::CF::MutableDictionary::MutableDictionary(v41, *(v2 + 1488));
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"clock", v3);
    applesauce::CF::StringRef::from_get(&cf, v3);
    ClockSubDevice = HALS_MetaDeviceDescription::AllocateClockSubDevice((v2 + 1472), &cf);
    v32 = v1;
    v33 = v2;
    if (cf)
    {
      CFRelease(cf);
    }

    v34 = ClockSubDevice;
    if (ClockSubDevice)
    {
      ClockDomain = HALS_MetaSubDevice::GetClockDomain(ClockSubDevice);
      v6 = *(v2 + 1496);
      v35 = *(v2 + 1504);
      if (v6 != v35)
      {
        v7 = ClockDomain;
        v36 = ClockDomain;
        while (1)
        {
          v8 = *v6;
          v39 = v6[1];
          v37 = v6;
          if (*v6 != v39)
          {
            break;
          }

LABEL_48:
          v6 += 3;
          if (v6 == v35)
          {
            goto LABEL_49;
          }
        }

        while (1)
        {
          v45 = 0x676C6F6264726674;
          v46 = 0;
          v9 = HALS_MetaSubDevice::GetClockDomain(*v8);
          v10 = v9 && v9 == v7;
          v11 = !v10;
          v44 = v11;
          (*(**v8 + 128))(*v8, *(*v8 + 4), &v45, 4, &v44, 0, 0, 0);
          if (v44)
          {
            break;
          }

LABEL_47:
          if (++v8 == v39)
          {
            goto LABEL_48;
          }
        }

        v12 = HALS_MetaSubDevice::CopyRealDeviceUID(*v8);
        v13 = v12;
        v43 = v12;
        if (v12)
        {
          v14 = CFGetTypeID(v12);
          if (v14 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        v60 = &unk_1F59910D0;
        v61 = 0;
        if (theDict)
        {
          value = 0;
          if (CFDictionaryGetValueIfPresent(theDict, @"subdevices", &value))
          {
            v15 = value ? CFGetTypeID(value) : 0;
            if (v15 == CFArrayGetTypeID())
            {
              v16 = value;
              if (value)
              {
                CFRetain(value);
                v17 = v61;
                v61 = v16;
                if (!v17)
                {
LABEL_29:
                  v38 = v8;
                  OS::CF::MutableArray::MutableArray(&value);
                  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v61);
                  if (Size)
                  {
                    v19 = Size;
                    v20 = 0;
                    v21 = 0;
                    for (i = 0; i < v19; v20 = ++i)
                    {
                      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Array>(v56, &v60, v20);
                      OS::CF::MutableArray::MutableArray(v54);
                      v23 = OS::CF::ArrayBase<__CFArray const*>::GetSize(v57);
                      if (v23)
                      {
                        v24 = v23;
                        v25 = 0;
                        v26 = 1;
                        do
                        {
                          OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v52, v56, v25);
                          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v50, v53, @"uid");
                          if (v13)
                          {
                            CFRetain(v13);
                          }

                          v48 = &unk_1F5991188;
                          v49 = v13;
                          v27 = OS::CF::operator==(theString1, v13);
                          OS::CF::UntypedObject::~UntypedObject(&v48);
                          if (v27)
                          {
                            OS::CF::MutableDictionary::MutableDictionary(&v48, v53);
                            v21 = 1;
                            OS::CF::Number::Number<int>(v47, 1);
                            OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v49, @"drift", v47[1]);
                            OS::CF::UntypedObject::~UntypedObject(v47);
                            OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v55, v49);
                            OS::CF::UntypedObject::~UntypedObject(&v48);
                          }

                          else
                          {
                            OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v59, v53);
                          }

                          OS::CF::UntypedObject::~UntypedObject(v50);
                          OS::CF::UntypedObject::~UntypedObject(v52);
                          v25 = v26;
                        }

                        while (v24 > v26++);
                      }

                      if (v21)
                      {
                        OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(v59, v55);
                      }

                      OS::CF::UntypedObject::~UntypedObject(v54);
                      OS::CF::UntypedObject::~UntypedObject(v56);
                    }

                    v7 = v36;
                    v6 = v37;
                    if (v21)
                    {
                      OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"subdevices", v59);
                    }
                  }

                  OS::CF::UntypedObject::~UntypedObject(&value);
                  v8 = v38;
                  goto LABEL_45;
                }
              }

              else
              {
                v17 = v61;
                v61 = 0;
                if (!v17)
                {
                  goto LABEL_45;
                }
              }

              CFRelease(v17);
            }
          }

          if (v61)
          {
            goto LABEL_29;
          }
        }

LABEL_45:
        OS::CF::UntypedObject::~UntypedObject(&v60);
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_47;
      }
    }

LABEL_49:
    Copy = theDict;
    if (theDict)
    {
      Copy = CFDictionaryCreateCopy(0, theDict);
    }

    v1 = v32;
    v2 = v33;
    OS::CF::UntypedObject::operator=(v33 + 1480, Copy);
    HALS_MetaDeviceDescription::UpdateSubDeviceList((v33 + 1472), 0);
    HALS_MetaDeviceDescription::UpdateSubTapList((v33 + 1472));
    HALS_ObjectMap::ReleaseObject(v34, v30);
    OS::CF::UntypedObject::~UntypedObject(v41);
  }

  HALS_MetaDevice::_UpdateStreams(v2, *(v1 + 56));
}

void sub_1DE435AA4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v57 = a2;
  HALS_ObjectMap::ReleaseObject(v62, a2);
  OS::CF::UntypedObject::~UntypedObject(&v63);
  v59 = __cxa_begin_catch(a1);
  if (v57 == 2)
  {
    v60 = v59[2];
  }

  else
  {
    v60 = 2003329396;
  }

  *(*(*(v61 + 32) + 8) + 24) = v60;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_118(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 1496);
  v3 = *(v1 + 1504);
  if (v2 != v3)
  {
    v4 = **(result + 48) != 0;
    do
    {
      v5 = *v2;
      v6 = v2[1];
      while (v5 != v6)
      {
        v7 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v5);
        v9 = v7;
        if (v7)
        {
          v10 = v7[4];
          v11 = 0x676C6F626470656CLL;
          v12 = 0;
          v13 = v4;
          (*(*v7 + 128))(v7, v10, &v11, 4, &v13, 0, 0, 0);
        }

        HALS_ObjectMap::ReleaseObject(v9, v8);
        ++v5;
      }

      v2 += 3;
    }

    while (v2 != v3);
  }
}

void sub_1DE435CA8(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = a2;
  HALS_ObjectMap::ReleaseObject(v23, a2);
  v26 = __cxa_begin_catch(a1);
  if (v24 == 2)
  {
    v27 = v26[2];
  }

  else
  {
    v27 = 2003329396;
  }

  *(*(*(v22 + 32) + 8) + 24) = v27;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_127(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  if (v3 == 2)
  {
    LODWORD(v24[0]) = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v19, v24, 1);
    HALS_MetaDeviceDescription::SetSubDSPTypesForClient(&v2[23], v19);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v19[1]);
    v8 = *(a1 + 60);
    v9 = *(a1 + 40);
    LODWORD(v24[0]) = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v18, v24, 1);
    v20 = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v17, &v20, 1);
    v6 = HALS_Device::_ConfigureDSPTypesForClient(v2, v8, v9, v18, v17);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v17[1]);
    v7 = v18[1];
  }

  else if (v3 == 1)
  {
    LODWORD(v24[0]) = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v23, v24, 1);
    HALS_MetaDeviceDescription::SetSubDSPTypesForClient(&v2[23], v23);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v23[1]);
    v4 = *(a1 + 60);
    v5 = *(a1 + 40);
    LODWORD(v24[0]) = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v22, v24, 1);
    v20 = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v21, &v20, 1);
    v6 = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v5, v22, v21);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v21[1]);
    v7 = v22[1];
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    HALS_MetaDeviceDescription::SetSubDSPTypesForClient(&v2[23], &v15);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v16[0]);
    v10 = *(a1 + 60);
    v11 = *(a1 + 40);
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    v24[0] = 0x200000003;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v12, v24, 2);
    v6 = HALS_Device::_ConfigureDSPTypesForClient(v2, v10, v11, &v13, v12);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v12[1]);
    v7 = v14[0];
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v7);
  **(a1 + 48) = v6;
}

void sub_1DE435F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a2)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a19);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a22);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE435F14);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_130(uint64_t a1)
{
  v2 = *(a1 + 60);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 56))
  {
    v12 = 6;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v13, &v12, 1);
    v11[0] = 0;
    v11[1] = 0;
    v10 = v11;
    v5 = HALS_Device::_ConfigureDSPTypesForClient(v4, v2, v3, v13, &v10);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v11[0]);
    v6 = v13[1];
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v8 = v9;
    v12 = 6;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v7, &v12, 1);
    v5 = HALS_Device::_ConfigureDSPTypesForClient(v4, v2, v3, &v8, v7);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v7[1]);
    v6 = v9[0];
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v6);
  **(a1 + 48) = v5;
}

void sub_1DE4360D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a11);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a14);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4360C4);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_132(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2)
  {
    CFRetain(*v2);
  }

  v14 = &unk_1F59910D0;
  v15 = v4;
  OS::CF::MutableArray::MutableArray(&v12);
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v15);
  if (Size)
  {
    v6 = Size;
    for (i = 0; i != v6; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::String>(&v10, &v14, i);
      if (v11)
      {
        v16[0] = @"uid";
        v16[1] = v11;
        OS::CF::Dictionary::Dictionary(v9, v16, 1uLL);
        OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v13, v9[1]);
        OS::CF::UntypedObject::~UntypedObject(v9);
      }

      OS::CF::UntypedObject::~UntypedObject(&v10);
    }
  }

  OS::CF::MutableDictionary::MutableDictionary(&v10, v3[186]);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v11, @"taps", v13);
  Copy = v11;
  if (v11)
  {
    Copy = CFDictionaryCreateCopy(0, v11);
  }

  OS::CF::UntypedObject::operator=((v3 + 185), Copy);
  HALS_MetaDeviceDescription::UpdateSubDeviceList(v3 + 184, 0);
  HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 184));
  OS::CF::UntypedObject::~UntypedObject(&v10);
  OS::CF::UntypedObject::~UntypedObject(&v12);
  OS::CF::UntypedObject::~UntypedObject(&v14);
  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
}

uint64_t **std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(a1, v4, *a2, a2);
      ++a2;
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

__n128 __Block_byref_object_copy__139(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__140(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN15HALS_MetaDevice25NotifyDSPChangedForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 576))(v2, *(a1 + 56), *(a1 + 48));
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = (*(*v2 + 600))(v2, *(a1 + 56), v5, *(a1 + 48));
      v8 = v6;
      if (v6 && *(v6 + 56) == 2)
      {
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v6 + 16);
        v12 = v9[6];
        v11 = v9[7];
        if (v12 >= v11)
        {
          v14 = v9[5];
          v15 = v12 - v14;
          v16 = (v12 - v14) >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v19);
          }

          v20 = (v12 - v14) >> 2;
          v21 = (4 * v16);
          v22 = (4 * v16 - 4 * v20);
          *v21 = v10;
          v13 = v21 + 1;
          memcpy(v22, v14, v15);
          v23 = v9[5];
          v9[5] = v22;
          v9[6] = v13;
          v9[7] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12 = v10;
          v13 = v12 + 4;
        }

        v9[6] = v13;
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }
}

uint64_t __Block_byref_object_copy__134(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F59910D0;
  return result;
}

uint64_t ___ZN15HALS_MetaDevice12RegisterTapsEv_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyTapList(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

uint64_t ___ZN15HALS_MetaDevice14UnregisterTapsEv_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyTapList(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

void HALS_MetaDevice::GetPropertyData(HALS_MetaDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, char *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  v152 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  mScope = a3->mScope;
  if (a3->mSelector <= 1735356004)
  {
    if (mSelector > 1684107363)
    {
      if (mSelector <= 1685278560)
      {
        if (mSelector > 1684893795)
        {
          if (mSelector == 1684893796)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_MetaDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2397;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyMaximumPastData", buf, 0x12u);
              }

              v86 = __cxa_allocate_exception(0x10uLL);
              *v86 = off_1F5991DD8;
              v86[2] = 561211770;
            }

            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 0x40000000;
            v97[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_103;
            v97[3] = &__block_descriptor_tmp_104;
            v97[4] = this;
            v97[5] = a6;
            v54 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v54, v97);
            goto LABEL_170;
          }

          if (mSelector == 1685087596)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_MetaDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2406;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyEnableListening", buf, 0x12u);
              }

              v80 = __cxa_allocate_exception(0x10uLL);
              *v80 = off_1F5991DD8;
              v80[2] = 561211770;
            }

            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 0x40000000;
            v96[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_105;
            v96[3] = &__block_descriptor_tmp_106;
            v96[4] = this;
            v96[5] = a6;
            v38 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v38, v96);
            goto LABEL_170;
          }
        }

        else
        {
          if (mSelector == 1684107364)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_MetaDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2388;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAvailablePastData", buf, 0x12u);
              }

              v85 = __cxa_allocate_exception(0x10uLL);
              *v85 = off_1F5991DD8;
              v85[2] = 561211770;
            }

            v98[0] = MEMORY[0x1E69E9820];
            v98[1] = 0x40000000;
            v98[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_101;
            v98[3] = &__block_descriptor_tmp_102_6203;
            v98[4] = this;
            v98[5] = a6;
            v53 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v53, v98);
            goto LABEL_170;
          }

          if (mSelector == 1684434036)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_MetaDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2088;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
              }

              v79 = __cxa_allocate_exception(0x10uLL);
              *v79 = off_1F5991DD8;
              v79[2] = 561211770;
            }

            v126[0] = MEMORY[0x1E69E9820];
            v126[1] = 0x40000000;
            v126[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_65;
            v126[3] = &__block_descriptor_tmp_66;
            v126[4] = this;
            v126[5] = a6;
            v127 = mScope == 1768845428;
            v126[6] = a9;
            v33 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v33, v126);
            goto LABEL_170;
          }
        }

        goto LABEL_115;
      }

      if ((mSelector - 1685278561) > 0x11 || ((1 << (mSelector - 97)) & 0x20003) == 0)
      {
        if (mSelector == 1685287012)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2379;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsPastData", buf, 0x12u);
            }

            v91 = __cxa_allocate_exception(0x10uLL);
            *v91 = off_1F5991DD8;
            v91[2] = 561211770;
          }

          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 0x40000000;
          v99[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_99;
          v99[3] = &__block_descriptor_tmp_100_6201;
          v99[4] = this;
          v99[5] = a6;
          v62 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v62, v99);
          goto LABEL_170;
        }

        if (mSelector != 1735354734)
        {
          goto LABEL_115;
        }

        goto LABEL_118;
      }

      goto LABEL_111;
    }

    if (mSelector > 1634755427)
    {
      if (mSelector > 1667461732)
      {
        if (mSelector != 1667461733)
        {
          if (mSelector != 1668049764)
          {
            goto LABEL_115;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2357;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_GetPropertyData: bad property data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
            }

            v84 = __cxa_allocate_exception(0x10uLL);
            *v84 = off_1F5991DD8;
            v84[2] = 561211770;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v143 = 0;
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 0x40000000;
          v100[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_97;
          v100[3] = &unk_1E8674DF0;
          v100[4] = buf;
          v100[5] = this;
          v41 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v41, v100);
          v42 = *(*&buf[8] + 24);
          if (v42)
          {
            (*(*v42 + 120))(v42, 0, a3, a4, a5, a6, a7, a8, a9);
LABEL_132:
            _Block_object_dispose(buf, 8);
            return;
          }

          *a6 = 0;
          goto LABEL_83;
        }

LABEL_111:
        v43 = *(this + 208);
        if (v43 && (mSelector == 1685278578 || mSelector == 1685278561))
        {
          v44 = *v43;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
          v143 = &__block_descriptor_tmp_5;
          v144 = v43;
          v145 = a3;
          v146 = a5;
          v147 = a6;
          v150 = a4;
          v151 = a7;
          v148 = a8;
          v149 = a9;
          v45 = (*(*v44 + 64))(v44);
          HALB_CommandGate::ExecuteCommand(v45, buf);
          return;
        }

        goto LABEL_115;
      }

      if (mSelector == 1634755428)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2294;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyClockDevice", buf, 0x12u);
          }

          v93 = __cxa_allocate_exception(0x10uLL);
          *v93 = off_1F5991DD8;
          v93[2] = 561211770;
        }

        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 0x40000000;
        v102[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_92;
        v102[3] = &__block_descriptor_tmp_94;
        v102[4] = this;
        v102[5] = a6;
        v64 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v64, v102);
        goto LABEL_167;
      }

      if (mSelector != 1635017072)
      {
        goto LABEL_115;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v143) = 0;
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 0x40000000;
      v105[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
      v105[3] = &unk_1E8674D40;
      v105[4] = buf;
      v105[5] = this;
      v106 = a4;
      v105[6] = a6;
      v34 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v34, v105);
    }

    else
    {
      if (mSelector > 1634429293)
      {
        if (mSelector == 1634429294)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2068;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyRelatedDevices", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 561211770;
          }

          v131[0] = MEMORY[0x1E69E9820];
          v131[1] = 0x40000000;
          v131[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_63;
          v131[3] = &__block_descriptor_tmp_64;
          v131[4] = this;
          v131[5] = a6;
          v66 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v66, v131);
          goto LABEL_170;
        }

        if (mSelector == 1634562932)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2285;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyMainSubDevice", buf, 0x12u);
            }

            v83 = __cxa_allocate_exception(0x10uLL);
            *v83 = off_1F5991DD8;
            v83[2] = 561211770;
          }

          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 0x40000000;
          v103[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_90;
          v103[3] = &__block_descriptor_tmp_91_6194;
          v103[4] = this;
          v103[5] = a6;
          v40 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v40, v103);
          goto LABEL_167;
        }

        goto LABEL_115;
      }

      if (mSelector == 1633906541)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2276;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition", buf, 0x12u);
          }

          v92 = __cxa_allocate_exception(0x10uLL);
          *v92 = off_1F5991DD8;
          v92[2] = 561211770;
        }

        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 0x40000000;
        v104[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_88;
        v104[3] = &__block_descriptor_tmp_89;
        v104[4] = this;
        v104[5] = a6;
        v63 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v63, v104);
        goto LABEL_167;
      }

      if (mSelector != 1634169456)
      {
        goto LABEL_115;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v143) = 0;
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 0x40000000;
      v107[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_85;
      v107[3] = &unk_1E8674D18;
      v107[5] = this;
      v107[4] = buf;
      v108 = a4;
      v107[6] = a6;
      v21 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v21, v107);
    }

LABEL_130:
    v36 = 4 * *(*&buf[8] + 24);
    goto LABEL_131;
  }

  if (mSelector <= 1853059618)
  {
    if (mSelector > 1769302371)
    {
      if (mSelector > 1819173228)
      {
        if (mSelector == 1819173229)
        {
LABEL_9:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2041;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
            }

            v75 = __cxa_allocate_exception(0x10uLL);
            *v75 = off_1F5991DD8;
            v75[2] = 561211770;
          }

          v132[0] = MEMORY[0x1E69E9820];
          v132[1] = 0x40000000;
          v132[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58;
          v132[3] = &__block_descriptor_tmp_59_6172;
          v132[4] = this;
          v132[5] = a6;
          v19 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v19, v132);
LABEL_167:
          v65 = 8;
LABEL_171:
          *a5 = v65;
          return;
        }

        if (mSelector != 1819569763)
        {
          if (mSelector == 1851878764)
          {
            goto LABEL_9;
          }

          goto LABEL_115;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2106;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
          }

          v89 = __cxa_allocate_exception(0x10uLL);
          *v89 = off_1F5991DD8;
          v89[2] = 561211770;
        }

        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 0x40000000;
        v122[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_69;
        v122[3] = &__block_descriptor_tmp_70;
        v122[4] = this;
        v122[5] = a6;
        v123 = mScope == 1768845428;
        v122[6] = a9;
        v57 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v57, v122);
LABEL_170:
        v65 = 4;
        goto LABEL_171;
      }

      if (mSelector != 1769302372)
      {
        if (mSelector == 1819107691)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2050;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
            }

            v81 = __cxa_allocate_exception(0x10uLL);
            *v81 = off_1F5991DD8;
            v81[2] = 561211770;
          }

          *a6 = @"Apple Inc.";
          goto LABEL_167;
        }

        goto LABEL_115;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2415;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyUseCaseID", buf, 0x12u);
        }

        v87 = __cxa_allocate_exception(0x10uLL);
        *v87 = off_1F5991DD8;
        v87[2] = 561211770;
      }

      v55 = (*(*this + 472))(this);
      if ((v55 & 0x100000000) != 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = 0;
      }

LABEL_141:
      *a6 = v20;
      goto LABEL_170;
    }

    if (mSelector <= 1751412336)
    {
      if (mSelector != 1735356005)
      {
        if (mSelector == 1735554416)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2178;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyFullSubDeviceList", buf, 0x12u);
            }

            v77 = __cxa_allocate_exception(0x10uLL);
            *v77 = off_1F5991DD8;
            v77[2] = 561211770;
          }

          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
          LOWORD(v137) = 257;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3802000000;
          v143 = __Block_byref_object_copy__78;
          v144 = __Block_byref_object_dispose__79;
          v145 = 0;
          LOWORD(v146) = 1;
          v115[0] = MEMORY[0x1E69E9820];
          v115[1] = 0x40000000;
          v115[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_80;
          v115[3] = &unk_1E8674CF0;
          v115[5] = this;
          v115[4] = buf;
          v22 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v22, v115);
          if (*(*&buf[8] + 40))
          {
            theArray = 0;
            LOWORD(v130) = 1;
            CACFDictionary::GetCACFArray((*&buf[8] + 40), @"subdevices", &theArray);
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              if (Count)
              {
                for (i = 0; i != Count; ++i)
                {
                  v113 = 0;
                  v114 = 1;
                  CACFArray::GetCACFDictionary(&theArray, i, &v113);
                  if (v113)
                  {
                    value = 0;
                    LOBYTE(v112) = 1;
                    CACFDictionary::GetCACFString(&v113, @"uid", &value);
                    if (value && Mutable && BYTE1(v137) == 1)
                    {
                      CFArrayAppendValue(Mutable, value);
                    }

                    CACFString::~CACFString(&value);
                  }

                  else
                  {
                    value = 0;
                    v112 = 1;
                    cf = 0;
                    CFType = CACFArray::GetCFType(&theArray, i, &cf);
                    v26 = cf;
                    if (cf)
                    {
                      v27 = CFType;
                    }

                    else
                    {
                      v27 = 0;
                    }

                    if (v27 == 1)
                    {
                      v28 = CFGetTypeID(cf);
                      if (v28 == CFArrayGetTypeID())
                      {
                        CACFArray::operator=(&value, v26);
                      }
                    }

                    if (value)
                    {
                      v29 = CFArrayGetCount(value);
                      if (v29)
                      {
                        for (j = 0; j != v29; ++j)
                        {
                          CACFArray::GetCACFDictionary(&value, j, &v113);
                          if (v113)
                          {
                            cf = 0;
                            v110 = 1;
                            CACFDictionary::GetCACFString(&v113, @"uid", &cf);
                            if (cf && Mutable && BYTE1(v137) == 1)
                            {
                              CFArrayAppendValue(Mutable, cf);
                            }

                            CACFString::~CACFString(&cf);
                          }
                        }
                      }
                    }

                    CACFArray::~CACFArray(&value);
                  }

                  CACFDictionary::~CACFDictionary(&v113);
                }
              }
            }

            CACFArray::~CACFArray(&theArray);
          }

          if (Mutable)
          {
            CFRetain(Mutable);
            v31 = Mutable;
          }

          else
          {
            v31 = 0;
          }

          *a6 = v31;
          *a5 = 8;
          _Block_object_dispose(buf, 8);
LABEL_182:
          CACFDictionary::~CACFDictionary(&v145);
          CACFArray::~CACFArray(&Mutable);
          return;
        }

        goto LABEL_115;
      }

LABEL_118:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2078;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
        }

        v74 = __cxa_allocate_exception(0x10uLL);
        *v74 = off_1F5991DD8;
        v74[2] = 561211770;
      }

      v46 = *(this + 4);
      v128[1] = 0;
      v128[0] = 0;
      HALS_System::GetInstance(&theArray, 0, v128);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4002000000;
      v143 = __Block_byref_object_copy__46;
      v144 = __Block_byref_object_dispose__47;
      v145 = 0;
      v146 = 0;
      v147 = 0;
      Mutable = MEMORY[0x1E69E9820];
      v137 = 0x40000000;
      v138 = ___ZN11HALS_System37IsUnderlyingIOContextRunningForDeviceEj_block_invoke;
      v139 = &unk_1E8675DF0;
      v140 = buf;
      v141 = theArray;
      v47 = (*(*theArray + 64))(theArray);
      HALB_CommandGate::ExecuteCommand(v47, &Mutable);
      v48 = *(*&buf[8] + 40);
      v49 = *(*&buf[8] + 48);
      while (1)
      {
        if (v48 == v49)
        {
          v50 = 0;
          goto LABEL_126;
        }

        if (*v48 && (*(**(*v48 + 104) + 768))(*(*v48 + 104)) == v46 && ((*(**(*v48 + 104) + 160))(*(*v48 + 104)) & 1) != 0)
        {
          break;
        }

        v48 += 8;
      }

      v50 = 1;
LABEL_126:
      _Block_object_dispose(buf, 8);
      v113 = &v145;
      std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v113);
      *a6 = v50;
      if (v130)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v130);
      }

      goto LABEL_170;
    }

    if (mSelector != 1751412337 && mSelector != 1751737454)
    {
      goto LABEL_115;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_MetaDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2165;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
      }

      v73 = __cxa_allocate_exception(0x10uLL);
      *v73 = off_1F5991DD8;
      v73[2] = 561211770;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LOBYTE(v143) = 0;
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 0x40000000;
    v116[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_76;
    v116[3] = &unk_1E8674CC8;
    v116[5] = this;
    v116[4] = buf;
    v35 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v35, v116);
    *a6 = *(*&buf[8] + 24);
LABEL_83:
    v36 = 4;
LABEL_131:
    *a5 = v36;
    goto LABEL_132;
  }

  if (mSelector <= 1935763059)
  {
    if (mSelector <= 1870098019)
    {
      if (mSelector != 1853059619)
      {
        if (mSelector == 1853059700)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2147;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
            }

            v78 = __cxa_allocate_exception(0x10uLL);
            *v78 = off_1F5991DD8;
            v78[2] = 561211770;
          }

          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 0x40000000;
          v119[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_73;
          v119[3] = &__block_descriptor_tmp_74_6185;
          v119[4] = this;
          v119[5] = a6;
          v32 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v32, v119);
          goto LABEL_167;
        }

        goto LABEL_115;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v143) = a4 >> 4;
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 0x40000000;
      v117[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v117[3] = &unk_1E8674CA0;
      v118 = a4;
      v117[5] = this;
      v117[4] = buf;
      v117[6] = a6;
      v51 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v51, v117);
      v36 = 16 * *(*&buf[8] + 24);
      goto LABEL_131;
    }

    if (mSelector != 1870098020)
    {
      if (mSelector == 1919512167)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2115;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
          }

          v37 = __cxa_allocate_exception(0x10uLL);
          *v37 = off_1F5991DD8;
          v37[2] = 561211770;
        }

        goto LABEL_170;
      }

      goto LABEL_115;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v143) = 0;
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 0x40000000;
    v133[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v133[3] = &unk_1E8674B98;
    v133[5] = this;
    v133[4] = buf;
    v134 = a4 >> 2;
    v135 = a7 >> 2;
    v133[6] = a8;
    v133[7] = a6;
    v52 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v52, v133);
    goto LABEL_130;
  }

  if (mSelector <= 1936876643)
  {
    if (mSelector == 1935763060)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2124;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        *v88 = off_1F5991DD8;
        v88[2] = 561211770;
      }

      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 0x40000000;
      v120[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_71;
      v120[3] = &__block_descriptor_tmp_72;
      v120[4] = this;
      v120[5] = a6;
      v121 = mScope == 1768845428;
      v56 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v56, v120);
      goto LABEL_170;
    }

    if (mSelector == 1936092276)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2097;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
        }

        v82 = __cxa_allocate_exception(0x10uLL);
        *v82 = off_1F5991DD8;
        v82[2] = 561211770;
      }

      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 0x40000000;
      v124[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_67;
      v124[3] = &__block_descriptor_tmp_68;
      v124[4] = this;
      v124[5] = a6;
      v125 = mScope == 1768845428;
      v124[6] = a9;
      v39 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v39, v124);
      goto LABEL_170;
    }

    goto LABEL_115;
  }

  if (mSelector != 1936876644)
  {
    if (mSelector == 1952542755)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2317;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyFullSubDeviceList", buf, 0x12u);
        }

        v90 = __cxa_allocate_exception(0x10uLL);
        *v90 = off_1F5991DD8;
        v90[2] = 561211770;
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
      LOWORD(v137) = 257;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v143 = __Block_byref_object_copy__78;
      v144 = __Block_byref_object_dispose__79;
      v145 = 0;
      LOWORD(v146) = 1;
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 0x40000000;
      v101[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_95;
      v101[3] = &unk_1E8674DC8;
      v101[4] = buf;
      v101[5] = this;
      v58 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v58, v101);
      if (*(*&buf[8] + 40))
      {
        theArray = 0;
        LOWORD(v130) = 1;
        CACFDictionary::GetCACFArray((*&buf[8] + 40), @"taps", &theArray);
        if (theArray)
        {
          v59 = CFArrayGetCount(theArray);
          if (v59)
          {
            for (k = 0; k != v59; ++k)
            {
              v113 = 0;
              v114 = 1;
              CACFArray::GetCACFDictionary(&theArray, k, &v113);
              if (v113)
              {
                value = 0;
                LOBYTE(v112) = 1;
                CACFDictionary::GetCACFString(&v113, @"uid", &value);
                if (value && Mutable && BYTE1(v137) == 1)
                {
                  CFArrayAppendValue(Mutable, value);
                }

                CACFString::~CACFString(&value);
              }

              CACFDictionary::~CACFDictionary(&v113);
            }
          }
        }

        CACFArray::~CACFArray(&theArray);
      }

      if (Mutable)
      {
        CFRetain(Mutable);
        v61 = Mutable;
      }

      else
      {
        v61 = 0;
      }

      *a6 = v61;
      *a5 = 8;
      _Block_object_dispose(buf, 8);
      goto LABEL_182;
    }

    if (mSelector == 1953653102)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2059;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyTransportType", buf, 0x12u);
        }

        v76 = __cxa_allocate_exception(0x10uLL);
        *v76 = off_1F5991DD8;
        v76[2] = 561211770;
      }

      v20 = 1735554416;
      goto LABEL_141;
    }

LABEL_115:

    HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
  v68 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
  v69 = caulk::numeric::exceptional_add<unsigned int>(v68);
  if (v69 > a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_MetaDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2135;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", buf, 0x12u);
    }

    v95 = __cxa_allocate_exception(0x10uLL);
    *v95 = off_1F5991DD8;
    v95[2] = 561211770;
  }

  *a6 = 0;
  *(a6 + 2) = TotalNumberChannelsForClient;
  if (TotalNumberChannelsForClient)
  {
    v70 = TotalNumberChannelsForClient;
    v71 = a6 + 16;
    do
    {
      *(v71 - 1) = -1;
      *v71 = 0;
      *(v71 + 1) = 0;
      v71 += 20;
      --v70;
    }

    while (v70);
  }

  *a5 = v69;
}

void sub_1DE4390F4(_Unwind_Exception *a1)
{
  CACFArray::~CACFArray(&STACK[0x448]);
  _Block_object_dispose((v2 - 192), 8);
  CACFDictionary::~CACFDictionary((v1 + 40));
  CACFArray::~CACFArray((v2 - 240));
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, HALS_Object *a4)
{
  v5 = *(result + 40);
  if (*(*(*(result + 32) + 8) + 24) < *(result + 64))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(v5, v6 & 1);
      v9 = NumberStreams;
      v10 = *(*(*(result + 32) + 8) + 24);
      v11 = *(result + 64);
      if (v10 < v11 && NumberStreams != 0)
      {
        v13 = 1;
        do
        {
          v16 = (*(*v5 + 400))(v5, v6 & 1, v13 - 1);
          if (v16 && HALS_Object::IsObjectClassInClassIDList(*(result + 68), *(result + 48), v16, v15))
          {
            *(*(result + 56) + 4 * (*(*(*(result + 32) + 8) + 24))++) = *(v16 + 16);
          }

          HALS_ObjectMap::ReleaseObject(v16, v14);
          v10 = *(*(*(result + 32) + 8) + 24);
          v11 = *(result + 64);
        }

        while (v10 < v11 && v13++ < v9);
      }

      v18 = (v10 < v11) & v7;
      v6 = 1;
      v7 = 0;
    }

    while ((v18 & 1) != 0);
  }

  v19 = *(v5 + 187);
  v20 = *(v5 + 188);
  if (v19 != v20)
  {
    v21 = 0;
    v22 = *(v5 + 187);
    do
    {
      v24 = *v22;
      v23 = v22[1];
      v22 += 3;
      v21 += (v23 - v24) >> 3;
    }

    while (v22 != v20);
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        SubDeviceByIndex = HALS_MetaDeviceDescription::GetSubDeviceByIndex(v19, v20, i);
        if (HALS_Object::IsObjectClassInClassIDList(*(result + 68), *(result + 48), SubDeviceByIndex, v27))
        {
          *(*(result + 56) + 4 * (*(*(*(result + 32) + 8) + 24))++) = *(SubDeviceByIndex + 16);
        }
      }
    }
  }

  v28 = *(v5 + 194);
  v29 = *(v5 + 193);
  v30 = (v28 - v29) >> 3;
  if (!v30)
  {
    return;
  }

  v31 = 0;
  do
  {
    if (v29 == v28)
    {
      goto LABEL_37;
    }

    v32 = 0;
    v33 = v29;
    while (1)
    {
      if (v32 != v31)
      {
        ++v32;
        goto LABEL_33;
      }

      v34 = *v33;
      v32 = v31;
      if (*v33)
      {
        break;
      }

LABEL_33:
      if (++v33 == v28)
      {
        goto LABEL_37;
      }
    }

    if (HALS_Object::IsObjectClassInClassIDList(*(result + 68), *(result + 48), *v33, a4))
    {
      *(*(result + 56) + 4 * (*(*(*(result + 32) + 8) + 24))++) = v34[4];
    }

LABEL_37:
    ++v31;
  }

  while (v31 != v30);
}

void sub_1DE4394A8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

CFTypeRef ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::CopyDeviceName(*(*(a1 + 32) + 1488));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_65(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = ((*v2)[72])(v2, *(a1 + 56), *(a1 + 48));
  if (result)
  {
    result = HALS_MetaDeviceDescription::CanBeDefaultDevice(v2 + 184, *(a1 + 56), 0);
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE439598(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_67(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = ((*v2)[72])(v2, *(a1 + 56), *(a1 + 48));
  if (result)
  {
    result = HALS_MetaDeviceDescription::CanBeDefaultDevice(v2 + 184, *(a1 + 56), 1);
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE439630(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_69(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = *(v2 + 1576);
  if (v5 || (v5 = *(v2 + 1568)) != 0)
  {
    v6 = HALS_MetaSubDevice::CopyRealIODevice(v5);
    v8 = v6;
    if (v6)
    {
      v9 = (*(*v6 + 312))(v6, v3);
    }

    else
    {
      v9 = 0;
    }

    HALS_ObjectMap::ReleaseObject(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  result = HALS_Device_HostedDSP_ClientInfo::get_dsp_latency_for_client(v2 + 648, v3, v4);
  if ((result & 0x100000000) != 0)
  {
    v11 = result;
  }

  else
  {
    v11 = 0;
  }

  **(a1 + 40) = v11 + v9;
  return result;
}

void sub_1DE43971C(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HALS_ObjectMap::ReleaseObject(v16, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_71(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = v3[197];
  if (v5 || (v5 = v3[196]) != 0)
  {
    v6 = HALS_MetaSubDevice::CopyRealIODevice(v5);
    v8 = v6;
    if (v6)
    {
      v9 = (*(*v6 + 320))(v6, v4);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v3[194];
    v11 = v3[193];
    if (((v10 - v11) & 0x7FFFFFFF8) == 0 || v4 == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v13 = HALS_ObjectMap::CopyObjectByObjectID(*(*v11 + 72));
    v8 = v13;
    if (v13)
    {
      v15 = *(v13 + 264);
      v14 = *(v13 + 272);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v15 + 68);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      else
      {
        v9 = *(v15 + 68);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  HALS_ObjectMap::ReleaseObject(v8, v7);
LABEL_7:
  **(a1 + 40) = v9;
}

void sub_1DE439874(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HALS_ObjectMap::ReleaseObject(v14, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE4398EC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56) >> 4;
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 24) = 0;
  v4 = (v3 + 24);
  v5 = *(a1 + 48);
  v6 = *(v2 + 1576);
  if (v6 || (v6 = *(v2 + 1568)) != 0)
  {
    v7 = HALS_MetaSubDevice::CopyRealIODevice(v6);
    v9 = v7;
    if (v7)
    {
      (*(*v7 + 296))(v7, v1, v4, v5);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }

  else if (((*(v2 + 1552) - *(v2 + 1544)) & 0x7FFFFFFF8) != 0)
  {
    get_tap_sample_rate_range(v17);
    v10 = v17[0];
    v11 = (v17[1] - v17[0]) >> 4;
    if (v11 >= v1)
    {
      LODWORD(v11) = v1;
    }

    *v4 = v11;
    v12 = HALS_ObjectMap::CopyObjectByObjectID(*(**(v2 + 1544) + 72));
    if (v12)
    {
      v14 = *v4;
      if (v14)
      {
        v15 = v10;
        do
        {
          v16 = *v15++;
          *v5++ = v16;
          --v14;
        }

        while (v14);
      }
    }

    HALS_ObjectMap::ReleaseObject(v12, v13);
    if (v10)
    {
      operator delete(v10);
    }
  }
}

void sub_1DE439A34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

const __CFBoolean *___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_76(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::IsHidden((*(a1 + 40) + 1472));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFTypeRef __Block_byref_object_copy__78(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  *(a1 + 49) = *(a2 + 49);
  if (v4 == 1 && result != 0)
  {
    return CFRetain(result);
  }

  return result;
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_80(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 40) + 1472));
  v3 = *(v1 + 40);
  if (v3 != v2)
  {
    if (v3 && (*(v1 + 48) & 1) != 0)
    {
      CFRelease(v3);
    }

    *(v1 + 40) = v2;
    *(v1 + 49) = 0;
  }

  *(v1 + 48) = 1;
}

void sub_1DE439B60(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_85(uint64_t result)
{
  v2 = *(result + 40);
  v3 = *(result + 56);
  v4 = *(v2 + 1496);
  v5 = *(v2 + 1504);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v4;
      v7 = v4[1];
      v4 += 3;
      v6 += (v7 - v8) >> 3;
    }

    while (v4 != v5);
  }

  if (v6 >= v3 >> 2)
  {
    v9 = v3 >> 2;
  }

  else
  {
    v9 = v6;
  }

  *(*(*(result + 32) + 8) + 24) = v9;
  if (*(*(*(result + 32) + 8) + 24))
  {
    v10 = 0;
    do
    {
      SubDeviceByIndex = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(v2 + 1496), *(v2 + 1504), v10);
      v12 = HALS_MetaSubDevice::CopyRealIODevice(SubDeviceByIndex);
      *(*(result + 48) + 4 * v10) = *(v12 + 4);
      HALS_ObjectMap::ReleaseObject(v12, v13);
      ++v10;
    }

    while (v10 < *(*(*(result + 32) + 8) + 24));
  }
}

void sub_1DE439C4C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3(uint64_t result, unsigned int a2)
{
  v2 = *(result + 40);
  v3 = (*(v2 + 1552) - *(v2 + 1544)) >> 3;
  v4 = *(result + 56);
  v5 = v3 >= v4 >> 2;
  v6 = v4 >> 2;
  if (v5)
  {
    LODWORD(v3) = v6;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  if (*(*(*(result + 32) + 8) + 24))
  {
    for (i = 0; i < *(*(*(result + 32) + 8) + 24); ++i)
    {
      v9 = 0;
      v10 = *(v2 + 1544);
      while (v9 != i)
      {
        ++v9;
LABEL_11:
        v10 += 8;
      }

      v9 = i;
      if (!*v10)
      {
        goto LABEL_11;
      }

      v11 = HALS_ObjectMap::CopyObjectByObjectID(*(*v10 + 72));
      *(*(result + 48) + 4 * i) = *(v11 + 4);
      HALS_ObjectMap::ReleaseObject(v11, v12);
    }
  }
}

void sub_1DE439D3C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

CFDictionaryRef ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_88(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 32) + 1472));
  **(a1 + 40) = result;
  return result;
}

void sub_1DE439D94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_MetaSubDevice *___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_90(uint64_t a1)
{
  result = *(*(a1 + 32) + 1568);
  if (result)
  {
    result = HALS_MetaSubDevice::CopyRealDeviceUID(result);
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE439DEC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_92(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1576);
  if (v2)
  {
    v3 = HALS_MetaSubDevice::CopyRealDeviceUID(v2);
    cf = v3;
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (cf)
      {
        **(a1 + 40) = PropertyListDeepImmutableCopy(cf);
        goto LABEL_8;
      }
    }
  }

  else
  {
    cf = 0;
  }

  v6 = CFStringCreateWithCString(0, "", 0x600u);
  v7 = 0;
  **(a1 + 40) = v6;
  CACFString::~CACFString(&v6);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE439EF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE439EA4);
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_95(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 40) + 1472));
  v3 = *(v1 + 40);
  if (v3 != v2)
  {
    if (v3 && (*(v1 + 48) & 1) != 0)
    {
      CFRelease(v3);
    }

    *(v1 + 40) = v2;
    *(v1 + 49) = 0;
  }

  *(v1 + 48) = 1;
}

void sub_1DE439F9C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_97(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 1576);
  if (!v2)
  {
    v2 = *(v1 + 1568);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_99(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  if (v3 == v4)
  {
    v11 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      while (v6 != v7)
      {
        v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
        v10 = v8;
        if (v8)
        {
          v5 |= (*(*v8 + 416))(v8);
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        ++v6;
      }

      v3 += 3;
    }

    while (v3 != v4);
    v11 = v5 & 1;
  }

  **(result + 40) = v11;
}

void sub_1DE43A0AC(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_101(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      while (v6 != v7)
      {
        v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
        v10 = v8;
        if (v8)
        {
          v11 = (*(*v8 + 424))(v8);
          if (v5 <= v11)
          {
            v5 = v11;
          }
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        ++v6;
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  **(result + 40) = v5;
}

void sub_1DE43A1C8(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_103(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      while (v6 != v7)
      {
        v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
        v10 = v8;
        if (v8)
        {
          v11 = (*(*v8 + 432))(v8);
          if (v5 <= v11)
          {
            v5 = v11;
          }
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        ++v6;
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  **(result + 40) = v5;
}

void sub_1DE43A2E4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_105(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      v7 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v5);
      HALS_ObjectMap::ReleaseObject(v7, v8);
      ++v5;
    }

    v3 += 3;
  }

  **(result + 40) = 0;
}

void sub_1DE43A3A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaDevice::GetPropertyDataSize(HALS_MetaDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  v13 = 4;
  if (a3->mSelector <= 1685087595)
  {
    if (mSelector <= 1634755427)
    {
      if (mSelector > 1634429293)
      {
        if (mSelector == 1634429294)
        {
          return v13;
        }

        if (mSelector != 1634562932)
        {
          goto LABEL_39;
        }

        return 8;
      }

      if (mSelector == 1633906541)
      {
        return 8;
      }

      if (mSelector != 1634169456)
      {
        goto LABEL_39;
      }

      *buf = 0;
      v36 = buf;
      v37 = 0x2000000000;
      LODWORD(v38) = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v27[3] = &unk_1E8674B48;
      v27[4] = buf;
      v27[5] = this;
      v17 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v17, v27);
    }

    else
    {
      if (mSelector > 1667461732)
      {
        if (mSelector == 1667461733)
        {
          goto LABEL_25;
        }

        if (mSelector == 1684107364)
        {
          return v13;
        }

        v15 = 1684893796;
        goto LABEL_38;
      }

      if (mSelector == 1634755428)
      {
        return 8;
      }

      if (mSelector != 1635017072)
      {
        goto LABEL_39;
      }

      *buf = 0;
      v36 = buf;
      v37 = 0x2000000000;
      LODWORD(v38) = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v26[3] = &unk_1E8674B70;
      v26[4] = buf;
      v26[5] = this;
      v22 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v22, v26);
    }

LABEL_35:
    v13 = (4 * *(v36 + 24));
LABEL_44:
    v21 = buf;
    goto LABEL_45;
  }

  if (mSelector > 1735554415)
  {
    if (mSelector > 1853059618)
    {
      if (mSelector == 1853059619)
      {
        *buf = 0;
        v36 = buf;
        v37 = 0x2000000000;
        LODWORD(v38) = 0;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 0x40000000;
        v28[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
        v28[3] = &unk_1E8674B20;
        v28[4] = buf;
        v28[5] = this;
        v24 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v24, v28);
        v13 = (16 * *(v36 + 24));
        goto LABEL_44;
      }

      if (mSelector != 1952542755)
      {
        if (mSelector != 1870098020)
        {
          goto LABEL_39;
        }

        *buf = 0;
        v36 = buf;
        v37 = 0x2000000000;
        LODWORD(v38) = 0;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 0x40000000;
        v29[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
        v29[3] = &unk_1E8674AF8;
        v30 = a4 >> 2;
        v29[5] = this;
        v29[6] = a5;
        v29[4] = buf;
        v16 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v16, v29);
        goto LABEL_35;
      }

      return 8;
    }

    if (mSelector == 1735554416)
    {
      return 8;
    }

    v15 = 1769302372;
LABEL_38:
    if (mSelector != v15)
    {
      goto LABEL_39;
    }

    return v13;
  }

  if ((mSelector - 1685278561) > 0x11 || ((1 << (mSelector - 97)) & 0x20003) == 0)
  {
    if (mSelector == 1685087596)
    {
      return v13;
    }

    v15 = 1685287012;
    goto LABEL_38;
  }

LABEL_25:
  v18 = *(this + 208);
  if (v18 && (mSelector == 1685278578 || mSelector == 1685278561))
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v19 = *v18;
    *buf = MEMORY[0x1E69E9820];
    v36 = 0x40000000;
    v37 = ___ZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
    v38 = &unk_1E8672FD0;
    v44 = a4;
    v41 = a3;
    v42 = a5;
    v43 = a6;
    v39 = &v31;
    v40 = v18;
    v20 = (*(*v19 + 64))(v19);
    HALB_CommandGate::ExecuteCommand(v20, buf);
    v13 = *(v32 + 6);
    v21 = &v31;
LABEL_45:
    _Block_object_dispose(v21, 8);
    return v13;
  }

LABEL_39:

  return HALS_Device::GetPropertyDataSize(this, v11, a3, a4, a5, a6);
}

void ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 40);
  v4 = 1;
  do
  {
    v5 = v4;
    v7 = (*(*v3 + 392))(v3, v2 & 1);
    if (v7)
    {
      v8 = 0;
      do
      {
        v11 = (*(*v3 + 400))(v3, v2 & 1, v8);
        if (v11 && HALS_Object::IsObjectClassInClassIDList(*(a1 + 56), *(a1 + 48), v11, v10))
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }

        HALS_ObjectMap::ReleaseObject(v11, v9);
        v8 = (v8 + 1);
      }

      while (v7 != v8);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = v3[187];
  v13 = v3[188];
  if (v12 != v13)
  {
    v14 = 0;
    v15 = v3[187];
    do
    {
      v17 = *v15;
      v16 = v15[1];
      v15 += 3;
      v14 += (v16 - v17) >> 3;
    }

    while (v15 != v13);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        SubDeviceByIndex = HALS_MetaDeviceDescription::GetSubDeviceByIndex(v12, v13, i);
        if (HALS_Object::IsObjectClassInClassIDList(*(a1 + 56), *(a1 + 48), SubDeviceByIndex, v20))
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }
      }
    }
  }

  v21 = v3[194];
  v22 = v3[193];
  v23 = (v21 - v22) >> 3;
  if (!v23)
  {
    return;
  }

  v24 = 0;
  do
  {
    if (v22 == v21)
    {
      goto LABEL_29;
    }

    v25 = 0;
    v26 = v22;
    while (1)
    {
      if (v25 != v24)
      {
        ++v25;
        goto LABEL_25;
      }

      v25 = v24;
      if (*v26)
      {
        break;
      }

LABEL_25:
      if (++v26 == v21)
      {
        goto LABEL_29;
      }
    }

    if (HALS_Object::IsObjectClassInClassIDList(*(a1 + 56), *(a1 + 48), *v26, v6))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

LABEL_29:
    ++v24;
  }

  while (v24 != v23);
}

void sub_1DE43AD20(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[197];
  if (v3 || (v3 = v2[196]) != 0)
  {
    v4 = HALS_MetaSubDevice::CopyRealIODevice(v3);
    v6 = v4;
    if (v4)
    {
      LODWORD(v7) = (*(*v4 + 288))(v4);
    }

    else
    {
      LODWORD(v7) = 0;
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
  }

  else if (((v2[194] - v2[193]) & 0x7FFFFFFF8) != 0)
  {
    get_tap_sample_rate_range(v8);
    v7 = (v8[1] - v8[0]) >> 4;
    if (v8[0])
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
}

void sub_1DE43AE30(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 1496);
  v3 = *(v1 + 1504);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v6 = *v2;
      v5 = v2[1];
      v2 += 3;
      v4 += (v5 - v6) >> 3;
    }

    while (v2 != v3);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  return result;
}

uint64_t HALS_MetaDevice::IsPropertySettable(HALS_MetaDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  v9 = 1;
  if (a3->mSelector <= 1685278560)
  {
    if (mSelector <= 1635017071)
    {
      if (mSelector <= 1634562931)
      {
        if (mSelector == 1633906541)
        {
          return v9 & 1;
        }

        v11 = 1634169456;
        goto LABEL_23;
      }

      if (mSelector == 1634562932)
      {
        return v9 & 1;
      }

      v10 = 1634755428;
    }

    else
    {
      if (mSelector <= 1684107363)
      {
        if (mSelector != 1635017072)
        {
          if (mSelector != 1667461733)
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }

        goto LABEL_41;
      }

      if (mSelector == 1684107364 || mSelector == 1684893796)
      {
        goto LABEL_41;
      }

      v10 = 1685087596;
    }

    if (mSelector != v10)
    {
      goto LABEL_43;
    }

    return v9 & 1;
  }

  if (mSelector > 1819173228)
  {
    if (mSelector <= 1952542754)
    {
      if (mSelector == 1819173229 || mSelector == 1851878764)
      {
        return v9 & 1;
      }

      v11 = 1869180523;
LABEL_23:
      if (mSelector != v11)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (mSelector == 1952542755)
    {
      return v9 & 1;
    }

    if (mSelector != 1983996971 && mSelector != 1986622324 || AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      goto LABEL_43;
    }

    if (a3->mScope == 1768845428)
    {
      atomic_load(this + 1592);
      return v9 & 1;
    }

LABEL_41:
    v9 = 0;
    return v9 & 1;
  }

  if (mSelector > 1685287011)
  {
    if (mSelector != 1685287012)
    {
      if (mSelector == 1735554416)
      {
        return v9 & 1;
      }

      v11 = 1769302372;
      goto LABEL_23;
    }

    goto LABEL_41;
  }

  if ((mSelector - 1685278561) <= 0x11 && ((1 << (mSelector - 97)) & 0x20003) != 0)
  {
LABEL_37:
    v12 = *(this + 208);
    if (!v12 || mSelector != 1685278578 && mSelector != 1685278561)
    {
      goto LABEL_43;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = *v12;
    *buf = MEMORY[0x1E69E9820];
    v22 = 0x40000000;
    v23 = ___ZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v24 = &unk_1E8672FA8;
    v27 = a3;
    v28 = a4;
    v25 = &v17;
    v26 = v12;
    v14 = (*(*v13 + 64))(v13);
    HALB_CommandGate::ExecuteCommand(v14, buf);
    v9 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    return v9 & 1;
  }

LABEL_43:

  return HALS_Device::IsPropertySettable(this, v7, a3, a4);
}

uint64_t HALS_MetaDevice::HasProperty(HALS_MetaDevice *this, int a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v19[0] = this;
  v19[1] = &v21;
  v19[2] = a3;
  v19[3] = &v20;
  v20 = a4;
  v18 = 0;
  if (!(*(*this + 184))(this, a3, a4))
  {
    goto LABEL_56;
  }

  mSelector = a3->mSelector;
  HasProperty = 1;
  if (a3->mSelector > 1685287011)
  {
    if (mSelector > 1851878763)
    {
      if (mSelector > 1952542754)
      {
        if (mSelector != 1952542755)
        {
          if (mSelector != 1983996971 && mSelector != 1986622324)
          {
            goto LABEL_45;
          }

          if (HALS_MetaDevice::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v19, &v18))
          {
            HasProperty = v18;
            return HasProperty & 1;
          }

          if (a3->mScope == 1768845428)
          {
            atomic_load(this + 1592);
            return HasProperty & 1;
          }

          goto LABEL_56;
        }

        return HasProperty & 1;
      }

      if (mSelector != 1851878764)
      {
        if (mSelector == 1852793963)
        {
          goto LABEL_56;
        }

        v9 = 1869180523;
        goto LABEL_21;
      }
    }

    else
    {
      if (mSelector <= 1769302371)
      {
        if (mSelector == 1685287012)
        {
          return HasProperty & 1;
        }

        if (mSelector == 1685414763)
        {
          goto LABEL_56;
        }

        v10 = 1735554416;
        goto LABEL_44;
      }

      if (mSelector == 1769302372)
      {
        HasProperty = a3->mScope == 1735159650 && a3->mElement == 0;
        return HasProperty & 1;
      }

      if (mSelector == 1819107691)
      {
        return HasProperty & 1;
      }

      if (mSelector != 1819173229)
      {
LABEL_45:
        HasProperty = HALS_Device::HasProperty(this, v6, a3, v20);
        return HasProperty & 1;
      }
    }

    *buf = 0;
    v27 = buf;
    v28 = 0x3802000000;
    v29 = __Block_byref_object_copy__49;
    v30 = __Block_byref_object_dispose__50;
    v31 = &unk_1F5991188;
    v32 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZNK15HALS_MetaDevice11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v17[3] = &unk_1E8674AD0;
    v17[4] = buf;
    v17[5] = this;
    v11 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v11, v17);
    HasProperty = *(v27 + 48) != 0;
    _Block_object_dispose(buf, 8);
    OS::CF::UntypedObject::~UntypedObject(&v31);
    return HasProperty & 1;
  }

  if (mSelector > 1667461732)
  {
    if (mSelector <= 1685087595)
    {
      if (mSelector != 1667461733)
      {
        if (mSelector == 1684107364)
        {
          return HasProperty & 1;
        }

        v10 = 1684893796;
        goto LABEL_44;
      }
    }

    else if ((mSelector - 1685278561) > 0x11 || ((1 << (mSelector - 97)) & 0x20003) == 0)
    {
      v10 = 1685087596;
      goto LABEL_44;
    }

    v12 = *(this + 208);
    if (!v12 || mSelector != 1685278578 && mSelector != 1685278561)
    {
      goto LABEL_45;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v13 = *v12;
    *buf = MEMORY[0x1E69E9820];
    v27 = 0x40000000;
    v28 = ___ZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v29 = &unk_1E8672F80;
    v32 = a3;
    v33 = v20;
    v30 = &v22;
    v31 = v12;
    v14 = (*(*v13 + 64))(v13);
    HALB_CommandGate::ExecuteCommand(v14, buf);
    HasProperty = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
    return HasProperty & 1;
  }

  if (mSelector <= 1634755427)
  {
    if (mSelector == 1633906541 || mSelector == 1634169456)
    {
      return HasProperty & 1;
    }

    v10 = 1634562932;
    goto LABEL_44;
  }

  if (mSelector > 1634758773)
  {
    if (mSelector == 1634758774)
    {
      goto LABEL_56;
    }

    v10 = 1635017072;
LABEL_44:
    if (mSelector == v10)
    {
      return HasProperty & 1;
    }

    goto LABEL_45;
  }

  if (mSelector != 1634755428)
  {
    v9 = 1634758765;
LABEL_21:
    if (mSelector != v9)
    {
      goto LABEL_45;
    }

LABEL_56:
    HasProperty = 0;
  }

  return HasProperty & 1;
}