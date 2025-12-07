void sub_1BA6A71E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

id AVAudioPlayerNodeImpl::ScheduleSegment(id *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    operator new();
  }

  v11 = [a1[32] objectForKey:a2];
  if (v11)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
LABEL_5:
      [a1[22] sampleRate];
      [objc_msgSend(v11 "fileFormat")];
      goto LABEL_6;
    }

LABEL_4:
    [v11 length];
    goto LABEL_5;
  }

  result = [[AVAudioFile alloc] initSecondaryReader:a2 format:a1[22] error:0];
  if (result)
  {
    v11 = result;
    [a1[32] setObject:result forKey:a2];

    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a7)
  {
    operator new();
  }

  return result;
}

uint64_t AVAudioPlayerNodeImpl::Command::Command(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, const void *a6)
{
  *a1 = &unk_1F3849448;
  *(a1 + 8) = a2;
  v10 = a4;
  *(a1 + 48) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0;
  *(a1 + 40) = a5;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (a6)
  {
    operator new();
  }

  return a1;
}

void sub_1BA6A7500(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v3, 0x80C40B8603338);
  if (*(v1 + 80) == 1)
  {
    std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100]((v1 + 72), 0);
  }

  std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

void AVAudioPlayerNodeImpl::CommandQueue::AddCommand(atomic_ullong *a1, unint64_t a2)
{
  do
  {
    v2 = *a1;
    *(a2 + 24) = *a1;
    v3 = v2;
    atomic_compare_exchange_strong(a1, &v3, a2);
  }

  while (v3 != v2);
  v4 = a1[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue10WakeWorkerEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v4, block);
}

void AVAudioPlayerNodeImpl::CommandQueue::PerformWork(atomic_ullong *this, int a2)
{
  while (1)
  {
    v4 = *this;
    if (!*this)
    {
      break;
    }

    v5 = *this;
    atomic_compare_exchange_strong(this, &v5, 0);
    if (v5 == v4)
    {
      v6 = 0;
      do
      {
        v7 = v6;
        v6 = v4;
        v4 = *(v4 + 24);
        *(v6 + 24) = v7;
      }

      while (v4);
      operator new();
    }
  }

  for (i = this[4]; i; i = this[4])
  {
    v9 = this[3];
    v10 = v9[2];
    if (a2)
    {
      if (v10)
      {
        (*(*v10 + 8))(v9[2]);
        v9 = this[3];
        i = this[4];
      }

      v12 = *v9;
      v11 = v9[1];
      *(v12 + 8) = v11;
      *v11 = v12;
      this[4] = i - 1;
      operator delete(v9);
    }

    else
    {
      if (!(*(*v10 + 16))(v9[2]))
      {
        return;
      }

      v13 = (*(*v10 + 24))(v10, this);
      v15 = v14;
      if (v13)
      {
        v16 = this[3];
        v17 = this[4];
        v19 = *v16;
        v18 = v16[1];
        *(v19 + 8) = v18;
        *v18 = v19;
        this[4] = v17 - 1;
        operator delete(v16);
      }

      if (v15)
      {
        operator new();
      }
    }
  }
}

void AVAudioPlayerNodeImpl::Command::~Command(AVAudioPlayerNodeImpl::Command *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *this = &unk_1F3849448;
  v2 = *(this + 1);
  v3 = *(this + 8);
  v4 = *(this + 36);
  v5 = *(this + 5);
  v6 = (this + 48);
  v7 = *(this + 6);
  *(this + 6) = 0;
  if (!v3 && (*(v2 + 49) & 1) == 0)
  {
    v8 = *(v2 + 216);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue10WakeWorkerEv_block_invoke;
    *&block[24] = &__block_descriptor_40_e5_v8__0l;
    *&block[32] = v2 + 208;
    dispatch_async(v8, block);
  }

  if (v7)
  {
    v9 = *v7;
    if (!*v7)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v11 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *block = 136316418;
        *&block[4] = "AVAEInternal.h";
        *&block[12] = 1024;
        *&block[14] = 71;
        *&block[18] = 2080;
        *&block[20] = "AVAudioPlayerNode.mm";
        *&block[28] = 1024;
        *&block[30] = 959;
        *&block[34] = 2080;
        *&block[36] = "HandleCompletionOfCommand";
        v24 = 2080;
        v25 = "completionHandler != nil";
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", block, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "completionHandler != nil"}];
      goto LABEL_18;
    }

    if (v3 == 3 || !v5)
    {
      CallCompletionHandler(*(v2 + 264), v5, v9);
      goto LABEL_18;
    }

    if (v5 == 1)
    {
      if (v3 == 1)
      {
        CallCompletionHandler(*(v2 + 264), 0, v9);
LABEL_28:
        if ((*(this + 80) & 1) == 0)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v13 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *block = 136316418;
            *&block[4] = "AVAEInternal.h";
            *&block[12] = 1024;
            *&block[14] = 71;
            *&block[18] = 2080;
            *&block[20] = "AVAudioPlayerNode.mm";
            *&block[28] = 1024;
            *&block[30] = 991;
            *&block[34] = 2080;
            *&block[36] = "HandleCompletionOfCommand";
            v24 = 2080;
            v25 = "bufferFromFileInfo.has_value()";
            _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", block, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "bufferFromFileInfo.has_value()"}];
        }

        if ((*(this + 56) & 1) == 0)
        {
          goto LABEL_18;
        }

        v14 = *(this + 9);
        *(this + 9) = 0;
        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = v14;
LABEL_38:
        if (!*v15)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v16 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *block = 136316418;
            *&block[4] = "AVAEInternal.h";
            *&block[12] = 1024;
            *&block[14] = 71;
            *&block[18] = 2080;
            *&block[20] = "AVAudioPlayerNode.mm";
            *&block[28] = 1024;
            *&block[30] = 1068;
            *&block[34] = 2080;
            *&block[36] = "SignalEndOfRender";
            v24 = 2080;
            v25 = "completionHandlerWrapperPtr && completionHandlerWrapperPtr->Block()";
            _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", block, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "completionHandlerWrapperPtr && completionHandlerWrapperPtr->Block()", v15, 0}];
        }

        if (v5 != 1 && v4)
        {
          v17 = (*(*v2 + 400))(v2);
          [*(v2 + 176) sampleRate];
          v18 = 0.0;
          if (v19 > 0.0)
          {
            v20 = [(*(*v2 + 352))(v2) currentIONumberFrames];
            [*(v2 + 176) sampleRate];
            v18 = v20 / v21;
          }

          if (v17 + v18 > 0.0)
          {
            operator new();
          }
        }

        CallCompletionHandler(*(v2 + 264), v5, *v15);
        v22 = AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>::~AVAEBlock(v15);
        MEMORY[0x1BFAF5800](v22, 0x80C40B8603338);
        if (!v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v12 = AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>::~AVAEBlock(v7);
        MEMORY[0x1BFAF5800](v12, 0x80C40B8603338);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = (v5 != 2) | *(v2 + 72);
      if (v3 == 1)
      {
        CallCompletionHandler(*(v2 + 264), 0, v9);
        if (v10)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }

      if ((v5 != 2) | *(v2 + 72) & 1)
      {
        goto LABEL_18;
      }
    }

    if (v3 && v3 != 2)
    {
      goto LABEL_18;
    }

    v15 = v7;
    v7 = 0;
    goto LABEL_38;
  }

LABEL_19:

  if (*(this + 80) == 1)
  {
    std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](this + 9, 0);
  }

  std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](v6, 0);
}

void sub_1BA6A7F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **a10, const void **a12, const void **a16, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&a20);
    std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](v16, 0);
    std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100](v15, 0);
    std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](&a16, 0);
    MEMORY[0x1BFAF5800](v15, 0xA0C40A8488062);
    std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](&a10, 0);
    std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](&a12, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>::~AVAEBlock(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

const void **std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>::~AVAEBlock(result);

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void CallCompletionHandler(dispatch_queue_t queue, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (queue)
    {
LABEL_3:
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL21CallCompletionHandlerPU28objcproto17OS_dispatch_queue8NSObject39AVAudioPlayerNodeCompletionCallbackTypeU13block_pointerFvS2_E_block_invoke;
      block[3] = &unk_1E7EF6590;
      block[4] = a3;
      block[5] = a2;
      dispatch_sync(queue, block);
      return;
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 71;
      v12 = 2080;
      v13 = "AVAudioPlayerNode.mm";
      v14 = 1024;
      v15 = 131;
      v16 = 2080;
      v17 = "CallCompletionHandler";
      v18 = 2080;
      v19 = "completionHandler";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "completionHandler"}];
    if (queue)
    {
      goto LABEL_3;
    }
  }

  (*(a3 + 16))(a3, a2);
}

void std::__function::__func<CompletionHandlerTimer::CompletionHandlerTimer(double,NSObject  {objcproto17OS_dispatch_queue}*,std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>)::{lambda(BOOL)#1},std::allocator<CompletionHandlerTimer::CompletionHandlerTimer(double,NSObject  {objcproto17OS_dispatch_queue}*,std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>)::{lambda(BOOL)#1}>,void ()(BOOL)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8);
  }

  CallCompletionHandler(v3, 2, **(v2 + 16));
}

uint64_t std::__function::__func<CompletionHandlerTimer::CompletionHandlerTimer(double,NSObject  {objcproto17OS_dispatch_queue}*,std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>)::{lambda(BOOL)#1},std::allocator<CompletionHandlerTimer::CompletionHandlerTimer(double,NSObject  {objcproto17OS_dispatch_queue}*,std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3849388;
  a2[1] = v2;
  return result;
}

uint64_t AVAudioPlayerNodeImpl::FileCommand::Perform(id *this, id *a2)
{
  if ((this[16] & 1) == 0)
  {
    [this[11] setFramePosition:this[13]];
    *(this + 128) = 1;
  }

  v4 = this[1];
  [v4[22] sampleRate];
  v6 = (v5 * 1.5);
  [v4[22] sampleRate];
  LODWORD(v8) = (((v7 * 1.5) >> 2) + 1023) & 0x7FFFFC00;
  v9 = (this[14] - this[15]) * *(this + 12) + 0.5;
  if (*(v4 + 47) <= v6 - v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(this[1] + 22);
  v12 = [a2[5] anyObject];
  if (!v12)
  {
LABEL_14:
    v13 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v11 frameCapacity:v10];
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v13 = v12;
  if ([(AVAudioPCMBuffer *)v12 frameCapacity]< v10 || ![(AVAudioFormat *)[(AVAudioBuffer *)v13 format] isEqual:v11])
  {
    [a2[5] removeObject:v13];
    goto LABEL_14;
  }

  v14 = v13;
  [a2[5] removeObject:v13];
LABEL_15:
  v18 = 0;
  if ([this[11] readIntoBuffer:v13 frameCount:v10 error:&v18])
  {
    if ((*(this + 36) & 1) == 0)
    {
      *(this + 36) = 1;
    }

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    operator new();
  }

LABEL_19:
  (*(*this + 1))(this);
  return 1;
}

void sub_1BA6A8668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100]((v19 + 16), 0);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN21AVAudioPlayerNodeImpl11FileCommand7PerformERNS_12CommandQueueE_block_invoke(void *a1)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v2 = a1[6];
    v3 = a1[4];
    v4 = *(v2 + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue14BufferCompleteEP16AVAudioPCMBuffer_block_invoke;
    v5[3] = &unk_1E7EF65E0;
    v5[4] = v3;
    v5[5] = v2;
    dispatch_async(v4, v5);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

uint64_t AVAudioPlayerNodeImpl::BufferCommand::BufferCommand(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, const void *a7, void *a8)
{
  v11 = AVAudioPlayerNodeImpl::Command::Command(a1, a2, a3, a4, a6, a7);
  *(v11 + 104) = 0;
  *v11 = &unk_1F3849478;
  *(v11 + 88) = &unk_1F38494A8;
  *(v11 + 96) = 0;
  *(a1 + 112) = a8;
  *(a1 + 120) = a5;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  CADeprecated::TSingleton<AVAERealtimeDeallocator>::instance();
  return a1;
}

uint64_t CADeprecated::TSingleton<AVAERealtimeDeallocator>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<AVAERealtimeDeallocator>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<AVAERealtimeDeallocator>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AVAERealtimeDeallocator>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AVAERealtimeDeallocator>::sInstance;
}

void sub_1BA6A8928(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  MEMORY[0x1BFAF5800](v10, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AVAERealtimeDeallocator::~AVAERealtimeDeallocator(AVAERealtimeDeallocator *this)
{
  CADeprecated::RealtimeMessenger::~RealtimeMessenger(this);

  JUMPOUT(0x1BFAF5800);
}

uint64_t AVAERealtimeDeallocator::Object::RealtimeMessenger_Perform(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void non-virtual thunk toAVAudioPlayerNodeImpl::BufferCommand::~BufferCommand(AVAudioPlayerNodeImpl::BufferCommand *this)
{
  AVAudioPlayerNodeImpl::BufferCommand::~BufferCommand((this - 88));

  JUMPOUT(0x1BFAF5800);
}

{
  AVAudioPlayerNodeImpl::BufferCommand::~BufferCommand((this - 88));
}

void AVAudioPlayerNodeImpl::BufferCommand::~BufferCommand(AVAudioPlayerNodeImpl::BufferCommand *this)
{
  *this = &unk_1F3849478;
  *(this + 11) = &unk_1F38494A8;

  AVAudioPlayerNodeImpl::Command::~Command(this);
}

{
  AVAudioPlayerNodeImpl::BufferCommand::~BufferCommand(this);

  JUMPOUT(0x1BFAF5800);
}

uint64_t AVAudioPlayerNodeImpl::BufferCommand::Perform(AVAudioPlayerNodeImpl::BufferCommand *this, AVAudioPlayerNodeImpl::CommandQueue *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = [*(this + 14) frameLength];
  *(this + 46) = 0;
  *(this + 24) = AVAudioPlayerNodeImpl::BufferCommand::SliceComplete;
  *(this + 25) = this;
  *(this + 26) = 0;
  v5 = (this + 208);
  *(this + 27) = 0;
  *(this + 56) = [*(this + 14) frameLength];
  *(this + 29) = [*(this + 14) mutableAudioBufferList];
  if (*(v3 + 72) == 1)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      goto LABEL_23;
    }

    if ([v6 isSampleTimeValid])
    {
      *(this + 46) = 1;
      v7 = [*(this + 2) sampleTime];
      goto LABEL_22;
    }

    if (*(v3 + 72))
    {
      goto LABEL_23;
    }
  }

  v8 = *(this + 2);
  if (!v8)
  {
    goto LABEL_23;
  }

  if (([*(this + 2) isSampleTimeValid] & 1) == 0)
  {
    if (![(AVAudioTime *)v8 isHostTimeValid])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v9 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v15 = "AVAEInternal.h";
        v16 = 1024;
        v17 = 71;
        v18 = 2080;
        v19 = "AVAudioPlayerNode.mm";
        v20 = 1024;
        v21 = 1053;
        v22 = 2080;
        v23 = "ResolveToPlayerSampleTime";
        v24 = 2080;
        v25 = "when.hostTimeValid";
        _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "when.hostTimeValid"}];
    }

    v10 = AVAudioPlayerNodeImpl::PlayerTimeForNodeTime(v3, v8);
    v8 = v10;
    if (!v10 || ![(AVAudioTime *)v10 isSampleTimeValid])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v11 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v15 = "AVAEInternal.h";
        v16 = 1024;
        v17 = 71;
        v18 = 2080;
        v19 = "AVAudioPlayerNode.mm";
        v20 = 1024;
        v21 = 1056;
        v22 = 2080;
        v23 = "ResolveToPlayerSampleTime";
        v24 = 2080;
        v25 = "playerTime && playerTime.sampleTimeValid";
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "playerTime && playerTime.sampleTimeValid"}];
    }
  }

  v7 = [(AVAudioTime *)v8 sampleTime];
  *(this + 46) = 1;
LABEL_22:
  *(this + 16) = v7;
LABEL_23:
  v12 = *(this + 15);
  if (v12)
  {
    *v5 |= 8u;
    if ((v12 & 2) == 0)
    {
LABEL_25:
      if ((v12 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_25;
  }

  *v5 |= 0x10u;
  if ((v12 & 4) != 0)
  {
LABEL_26:
    *v5 |= 0x20u;
  }

LABEL_27:
  if ((*(*v3 + 144))(v3, 3300, 0, 0, this + 128, 112))
  {
    atomic_fetch_add_explicit((v3 + 188), v4, memory_order_relaxed);
  }

  else
  {
    (*(*this + 8))(this);
  }

  return 1;
}

void AVAudioPlayerNodeImpl::BufferCommand::SliceComplete(AVAudioPlayerNodeImpl::BufferCommand *this, void *a2, ScheduledAudioSlice *a3)
{
  atomic_fetch_add_explicit((*(this + 1) + 188), -*(this + 56), memory_order_relaxed);
  *(this + 36) = (*(this + 52) & 6) != 0;
  v4 = *(this + 1);
  if (*(v4 + 49) == 1)
  {
    v5 = *(v4 + 216);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue14WakeWorkerSyncEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v4 + 208;
    dispatch_sync(v5, block);
  }

  v6 = CADeprecated::TSingleton<AVAERealtimeDeallocator>::instance();
  CADeprecated::RealtimeMessenger::PerformAsync(v6, this + 88);
}

void ___ZN21AVAudioPlayerNodeImpl12CommandQueue14BufferCompleteEP16AVAudioPCMBuffer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [*(v1 + 40) addObject:?];
  }

  AVAudioPlayerNodeImpl::CommandQueue::PerformWork(v1, 0);
}

BOOL AVAudioPlayerNodeImpl::FileCommand::ShouldPerform(AVAudioPlayerNodeImpl::FileCommand *this)
{
  v1 = *(this + 1);
  [*(v1 + 176) sampleRate];
  v3 = (v2 * 1.5);
  [*(v1 + 176) sampleRate];
  v5 = (((v4 * 1.5) >> 2) + 1023) & 0x7FFFFC00;
  return *(v1 + 188) <= v3 - v5 && v5 != 0;
}

void AVAudioPlayerNodeImpl::FileCommand::~FileCommand(id *this)
{
  AVAudioPlayerNodeImpl::FileCommand::~FileCommand(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F38494D0;

  AVAudioPlayerNodeImpl::Command::~Command(this);
}

uint64_t AVAudioPlayerNodeImpl::NilCommand::Perform(uint64_t a1)
{
  if (a1)
  {
    (*(*a1 + 8))(a1);
  }

  return 1;
}

void AVAudioPlayerNodeImpl::NilCommand::~NilCommand(AVAudioPlayerNodeImpl::NilCommand *this)
{
  AVAudioPlayerNodeImpl::Command::~Command(this);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA6A9530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6A98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x1BFAF5800](v5, 0x10A1C404C1B6C09, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6A9B48(_Unwind_Exception *a1)
{
  AVAudioBufferCache::~AVAudioBufferCache(v1 + 31);
  std::__list_imp<AUGraphConnection>::clear(v3);
  AVAudioUnitImpl::~AVAudioUnitImpl(v1);
  MEMORY[0x1BFAF5800](v1, v2);
  _Unwind_Resume(a1);
}

void AVAudioPlayerNodeImpl::CommandQueue::~CommandQueue(AVAudioPlayerNodeImpl::CommandQueue *this)
{
  v2 = *(this + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue5ResetEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  dispatch_release(*(this + 1));

  std::__list_imp<AUGraphConnection>::clear(this + 2);
}

uint64_t AVAudioPlayerNodeImpl::StopImpl(AVAudioPlayerNodeImpl *this)
{
  v2 = this + 208;
  v3 = *(this + 27);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue5ResetEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_sync(v3, block);
  (*(*this + 88))(this);
  (*(*this + 400))(this);
  v4 = CADeprecated::TSingleton<AVAERealtimeDeallocator>::instance();
  CADeprecated::RealtimeMessenger::_PerformPendingMessages(v4);
  v5 = *(this + 34);
  v6 = *(this + 35);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5;
      if (*v5)
      {
        AVAEDispatchQueueTimer::CancelTimer(*v7);
        std::unique_ptr<AVAEBlock<void({block_pointer})(AVAudioPlayerNodeCompletionCallbackType)>>::reset[abi:ne200100]((v7 + 16), 0);
        std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100](v7, 0);
        MEMORY[0x1BFAF5800](v7, 0xA0C40A8488062);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 34);
  }

  *(this + 35) = v5;
  dispatch_sync(*(this + 33), &__block_literal_global_209_8000);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  return [*(this + 32) removeAllObjects];
}

uint64_t AVAudioPlayerNodeImpl::PauseImpl(uint64_t this)
{
  if ((*(this + 184) | 2) != 2)
  {
    v5 = v1;
    v6 = v2;
    v3 = this;
    *(this + 200) = [objc_msgSend((*(*this + 352))(this) "currentTime")];
    v3[46] = 2;
    v4[14] = 0;
    return (*(*v3 + 144))(v3, 3301, 0, 0, v4, 64);
  }

  return this;
}

void AVAudioPlayerNodeImpl::StartImpl(AVAudioPlayerNodeImpl *this, AVAudioTime *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a2 && ![(AVAudioTime *)a2 isSampleTimeValid]&& ![(AVAudioTime *)a2 isHostTimeValid])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioPlayerNode.mm";
      *&buf[28] = 1024;
      *&buf[30] = 644;
      *&buf[34] = 2080;
      *&buf[36] = "StartImpl";
      *&buf[44] = 2080;
      *&buf[46] = "when == nil || when.sampleTimeValid || when.hostTimeValid";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "when == nil || when.sampleTimeValid || when.hostTimeValid"}];
  }

  (*(*this + 32))(this);
  v5 = *(this + 1);
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = *(v6 + 208);
    v8 = (v6 + 184);
    if (v7)
    {
      v8 = (v5 + 64);
    }

    if (*v8)
    {
      if ((*(this + 48) & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:@"player started when in a disconnected state"];
      }

      if (*(this + 46) == 1)
      {
        return;
      }

      v9 = *(*(this + 1) + 8);
      v10 = *v9;
      std::recursive_mutex::lock((*v9 + 112));
      if (v9[23])
      {
        goto LABEL_17;
      }

      if ((*(v9 + 187) & 1) != 0 || *(v9 + 208) != 1)
      {
        std::recursive_mutex::unlock((v10 + 112));
      }

      else
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v22 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioEngineGraph.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1512;
          _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioEngine (auto shutdown mode): starting IO dynamically", buf, 0x12u);
        }

        v48 = 0;
        AVAudioEngineGraph::Start(v9, &v48);
        if (!v48)
        {
LABEL_17:
          std::recursive_mutex::unlock((v10 + 112));
          goto LABEL_18;
        }

        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v23 = *AVAudioEngineLogCategory(void)::category;
        v24 = os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR);
        v25 = v48;
        if (v24)
        {
          CAX4CCString::CAX4CCString(block, [(NSError *)v48 code]);
          *buf = 136315650;
          *&buf[4] = "AVAudioEngineGraph.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1517;
          *&buf[18] = 2080;
          *&buf[20] = block;
          _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d AVAudioEngine (auto shutdown mode): could not dynamically start the audio hardware, err = %s", buf, 0x1Cu);
          v25 = v48;
        }

        std::recursive_mutex::unlock((v10 + 112));
        if (!v25)
        {
LABEL_18:
          (*(*this + 352))(this);
          if (a2)
          {
            if ([(AVAudioTime *)a2 isSampleTimeValid]|| (v11 = *(*(this + 1) + 8), *(v11 + 187) != 1))
            {
              if ([(AVAudioTime *)a2 isSampleTimeValid])
              {
                v12 = [(AVAudioTime *)a2 sampleTime];
LABEL_23:
                v13 = v12;
LABEL_58:
                v30 = *(this + 24) + v13 - *(this + 25);
                *(this + 24) = v30;
                goto LABEL_59;
              }

              if (*(*(*(this + 1) + 8) + 187))
              {
                v30 = *(this + 24);
LABEL_59:
                *&buf[56] = 1;
                *buf = v30;
                (*(*this + 144))(this, 3301, 0, 0, buf, 64);
                *(this + 46) = 1;
                v31 = *(this + 27);
                if (*(this + 49) == 1)
                {
                  *block = MEMORY[0x1E69E9820];
                  *&block[8] = 3221225472;
                  *&block[16] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue14WakeWorkerSyncEv_block_invoke;
                  *&block[24] = &__block_descriptor_40_e5_v8__0l;
                  *&block[32] = this + 208;
                  dispatch_sync(v31, block);
                }

                else
                {
                  *block = MEMORY[0x1E69E9820];
                  *&block[8] = 3221225472;
                  *&block[16] = ___ZN21AVAudioPlayerNodeImpl12CommandQueue10WakeWorkerEv_block_invoke;
                  *&block[24] = &__block_descriptor_40_e5_v8__0l;
                  *&block[32] = this + 208;
                  dispatch_async(v31, block);
                }

                return;
              }

LABEL_64:
              if ((*(this + 72) & 1) != 0 || (*buf = 0, v32 = [(*(*this + 352))(this) awaitIOCycle:buf], (v33 = v32) == 0) || (v34 = *buf, v35 = objc_msgSend(v32, "hostTime"), objc_msgSend(v33, "sampleRate"), v37 = v36, v38 = objc_msgSend(v33, "sampleTime"), objc_msgSend(v33, "sampleRate"), (v39 = +[AVAudioTime timeWithHostTime:sampleTime:atRate:](AVAudioTime, "timeWithHostTime:sampleTime:atRate:", (v35 + (2 * v34) / v37 * 24000000.0), ((2 * v34) + v38))) == 0))
              {
                v40 = atomic_load((*(this + 1) + 96));
                if (v40)
                {
                  if (AVAudioPlayerNodeLogCategory(void)::once != -1)
                  {
                    dispatch_once(&AVAudioPlayerNodeLogCategory(void)::once, &__block_literal_global_199);
                  }

                  v15 = *AVAudioPlayerNodeLogCategory(void)::category;
                  if (os_log_type_enabled(*AVAudioPlayerNodeLogCategory(void)::category, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    *&buf[4] = "AVAudioPlayerNode.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 714;
                    *&buf[18] = 2048;
                    *&buf[20] = this;
                    v16 = "%25s:%-5d Player@%p: Engine config changed when waiting for playback to begin, cannot play yet!";
                    goto LABEL_29;
                  }

                  return;
                }

                if ((AVAudioEngineImpl::IsIOUnitRunning(*(this + 1)) & 1) == 0)
                {
                  if (AVAudioPlayerNodeLogCategory(void)::once != -1)
                  {
                    dispatch_once(&AVAudioPlayerNodeLogCategory(void)::once, &__block_literal_global_199);
                  }

                  v15 = *AVAudioPlayerNodeLogCategory(void)::category;
                  if (os_log_type_enabled(*AVAudioPlayerNodeLogCategory(void)::category, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    *&buf[4] = "AVAudioPlayerNode.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 718;
                    *&buf[18] = 2048;
                    *&buf[20] = this;
                    v16 = "%25s:%-5d Player@%p: IOUnit stopped when waiting for playback to begin, cannot play yet!";
                    goto LABEL_29;
                  }

                  return;
                }

                AVAudioEngineImpl::LastRenderErrorInChain(&v48, *(*(this + 1) + 8), this);
                if (v50 == 1)
                {
                  v41 = v48;
                  v42 = v49;
                  v43 = objc_msgSend_impl(v49);
                  v44 = (*(*v43 + 256))(v43);
                  AudioComponentDescriptionAsString(v44, buf, v45);
                  if (AVAudioPlayerNodeLogCategory(void)::once != -1)
                  {
                    dispatch_once(&AVAudioPlayerNodeLogCategory(void)::once, &__block_literal_global_199);
                  }

                  v46 = *AVAudioPlayerNodeLogCategory(void)::category;
                  if (os_log_type_enabled(*AVAudioPlayerNodeLogCategory(void)::category, OS_LOG_TYPE_ERROR))
                  {
                    *block = 136316418;
                    *&block[4] = "AVAudioPlayerNode.mm";
                    *&block[12] = 1024;
                    *&block[14] = 726;
                    *&block[18] = 2048;
                    *&block[20] = this;
                    *&block[28] = 2048;
                    *&block[30] = v41;
                    *&block[38] = 2048;
                    v52 = v42;
                    v53 = 2080;
                    v54 = buf;
                    v16 = "%25s:%-5d Player@%p: Engine returned render error: %ld, node: %p {%s}, cannot play!";
                    v17 = block;
                    v18 = v46;
                    v19 = OS_LOG_TYPE_ERROR;
                    v21 = 58;
                    goto LABEL_36;
                  }

                  return;
                }

                [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:@"player did not see an IO cycle."];
                v39 = 0;
              }

              if (a2)
              {
                _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioPlayerNode.mm", 746, "StartImpl", "when.hostTimeValid", [(AVAudioTime *)a2 isHostTimeValid]);
                memset(buf, 0, 64);
                objc_msgSend_audioTimeStamp(a2);
                [*(this + 22) sampleRate];
                v47 = [[AVAudioTime timeWithAudioTimeStamp:? sampleRate:?], "extrapolateTimeFromAnchor:", v39];
                _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioPlayerNode.mm", 751, "StartImpl", "inTimeFull.sampleTimeValid", [(AVAudioTime *)v47 isSampleTimeValid]);
                v12 = [(AVAudioTime *)v47 sampleTime];
              }

              else
              {
                _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioPlayerNode.mm", 737, "StartImpl", "nearFutureTime.sampleTimeValid", [(AVAudioTime *)v39 isSampleTimeValid]);
                v12 = [(AVAudioTime *)v39 sampleTime];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v11 = *(*(this + 1) + 8);
            if ((*(v11 + 187) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          v26 = *(v11 + 200);
          [*(this + 22) sampleRate];
          v28 = v27;
          [(AVAudioFormat *)AVAudioEngineImpl::GetManualRenderingFormat(*(this + 1)) sampleRate];
          v13 = ceil(v28 * v26 / v29);
          goto LABEL_58;
        }
      }

      if (AVAudioPlayerNodeLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioPlayerNodeLogCategory(void)::once, &__block_literal_global_199);
      }

      v20 = *AVAudioPlayerNodeLogCategory(void)::category;
      if (!os_log_type_enabled(*AVAudioPlayerNodeLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315650;
      *&buf[4] = "AVAudioPlayerNode.mm";
      *&buf[12] = 1024;
      *&buf[14] = 672;
      *&buf[18] = 2048;
      *&buf[20] = this;
      v16 = "%25s:%-5d Player@%p: Engine could not start the audio hardware dynamically, cannot play!";
LABEL_34:
      v17 = buf;
      v18 = v20;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_35;
    }
  }

  v14 = atomic_load((v5 + 96));
  if ((v14 & 1) == 0)
  {
    if (AVAudioPlayerNodeLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioPlayerNodeLogCategory(void)::once, &__block_literal_global_199);
    }

    v20 = *AVAudioPlayerNodeLogCategory(void)::category;
    if (!os_log_type_enabled(*AVAudioPlayerNodeLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315650;
    *&buf[4] = "AVAudioPlayerNode.mm";
    *&buf[12] = 1024;
    *&buf[14] = 658;
    *&buf[18] = 2048;
    *&buf[20] = this;
    v16 = "%25s:%-5d Player@%p: Engine is not running because it was not explicitly started or may have stopped because of an interruption. Cannot play yet!";
    goto LABEL_34;
  }

  if (AVAudioPlayerNodeLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioPlayerNodeLogCategory(void)::once, &__block_literal_global_199);
  }

  v15 = *AVAudioPlayerNodeLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioPlayerNodeLogCategory(void)::category, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AVAudioPlayerNode.mm";
    *&buf[12] = 1024;
    *&buf[14] = 652;
    *&buf[18] = 2048;
    *&buf[20] = this;
    v16 = "%25s:%-5d Player@%p: Engine is in the middle of a config change, cannot play yet!";
LABEL_29:
    v17 = buf;
    v18 = v15;
    v19 = OS_LOG_TYPE_INFO;
LABEL_35:
    v21 = 28;
LABEL_36:
    _os_log_impl(&dword_1BA5AC000, v18, v19, v16, v17, v21);
  }
}

void AVAudioPlayerNodeImpl::WillDisconnectFromMixer(AVAudioNodeImplBase *this, AVAudioNode *a2, uint64_t a3, int a4)
{
  AVAudioNodeImplBase::WillDisconnectFromMixer(this, a2, a3, a4);

  AVAudioNodeImplBase::Stop(this);
}

uint64_t AVAudioPlayerNodeImpl::Reset(AVAudioPlayerNodeImpl *this)
{
  v2 = (*(*this + 40))(this);
  result = (*(*v2 + 56))(v2);
  if (*(this + 72) == 1)
  {
    *(this + 24) = 0;
    *(this + 25) = 0;
  }

  return result;
}

uint64_t AVAudioPlayerNodeImpl::SetOutputFormat(AVAudioPlayerNodeImpl *this, uint64_t a2, AVAudioFormat *a3)
{
  v6 = AVAudioNodeImplBase::SetOutputFormat(this, a2, a3);
  v7 = v6;
  if (!a2 && v6)
  {

    *(this + 22) = a3;
    v8 = a3;
  }

  return v7;
}

uint64_t AVAudioPlayerNodeImpl::GetOutputFormat(AVAudioNodeImplBase *this, uint64_t a2)
{
  if (a2)
  {
    return AVAudioNodeImplBase::GetOutputFormat(this, a2);
  }

  if (!*(this + 22))
  {
    a2 = 0;
    return AVAudioNodeImplBase::GetOutputFormat(this, a2);
  }

  return *(this + 22);
}

void AVAudioPlayerNodeImpl::~AVAudioPlayerNodeImpl(AVAudioPlayerNodeImpl *this)
{
  AVAudioPlayerNodeImpl::~AVAudioPlayerNodeImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384A878;
  AVAudioNodeImplBase::Stop(this);
  dispatch_sync(*(this + 33), &__block_literal_global_8023);
  dispatch_release(*(this + 33));

  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  AVAudioPlayerNodeImpl::CommandQueue::~CommandQueue((this + 208));

  AVAudioUnitImpl::~AVAudioUnitImpl(this);
}

void sub_1BA6ABC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8283(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA6AC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA6AC3D0(_Unwind_Exception *a1)
{
  TraceMethod::~TraceMethod((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_1BA6ACC30(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6AD368(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6ADABC(_Unwind_Exception *a1)
{
  v5 = v3;

  TraceMethod::~TraceMethod((v4 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6AE304(_Unwind_Exception *a1)
{
  TraceMethod::~TraceMethod((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_1BA6AEB64(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6AF2C8(_Unwind_Exception *a1)
{
  v5 = v3;

  TraceMethod::~TraceMethod((v4 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6AFB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  TraceMethod::~TraceMethod((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_1BA6AFCE0(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6B04BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  TraceMethod::~TraceMethod((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_1BA6B061C(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6B0DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B0F20(_Unwind_Exception *a1)
{
  TraceMethod::~TraceMethod((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_1BA6B1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v4;

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B1944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B22AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  TraceMethod::~TraceMethod((v13 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6B278C(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void anonymous namespace::addKeyIfExists(_anonymous_namespace_ *this, NSDictionary *a2, NSString *a3, NSMutableDictionary *a4, NSString *a5)
{
  v10 = a3;
  v8 = a4;
  v9 = [(_anonymous_namespace_ *)this objectForKey:a2];
  if (v9)
  {
    [(NSString *)v10 setObject:v9 forKeyedSubscript:v8];
  }
}

void sub_1BA6B2F6C(_Unwind_Exception *a1)
{
  v4 = v2;

  TraceMethod::~TraceMethod((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA6B3A3C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1BA6B3E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA6B4168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v13 = v12;

  TraceMethod::~TraceMethod(va);
  a10.super_class = AVVoiceTriggerClient;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BA6B450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  v18 = v16;

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CAGuard::NotifyAll(CADeprecated::CAGuard *this)
{
  v8 = *MEMORY[0x1E69E9840];
  result = pthread_cond_broadcast((this + 88));
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "CAGuard.cpp";
      v6 = 1024;
      v7 = 320;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::NotifyAll: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = v3;
  }

  return result;
}

uint64_t CADeprecated::CAGuard::Notify(CADeprecated::CAGuard *this)
{
  v8 = *MEMORY[0x1E69E9840];
  result = pthread_cond_signal((this + 88));
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "CAGuard.cpp";
      v6 = 1024;
      v7 = 302;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Notify: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = v3;
  }

  return result;
}

uint64_t CADeprecated::CAGuard::WaitUntil(CADeprecated::CAGuard *this, unint64_t a2)
{
  mach_absolute_time();
  v4 = __udivti3();
  if (a2 <= v4)
  {
    return 1;
  }

  v5 = *(*this + 64);

  return v5(this, a2 - v4);
}

BOOL CADeprecated::CAGuard::WaitFor(CADeprecated::CAGuard *this, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = pthread_self();
  v5 = atomic_load(this + 2);
  if (!pthread_equal(v4, v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CAGuard.cpp";
      v15 = 1024;
      v16 = 130;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: A thread has to have locked a guard be for it can wait", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = 1;
LABEL_13:
  }

  v6 = a2 / 0x3B9ACA00;
  v7 = a2 % 0x3B9ACA00;
  if (a2 < 0x3B9ACA00)
  {
    v6 = 0;
    v7 = a2;
  }

  v12.tv_sec = v6;
  v12.tv_nsec = v7;
  atomic_store(0, this + 2);
  v8 = pthread_cond_timedwait_relative_np((this + 88), (this + 24), &v12);
  v9 = v8;
  if (v8 && v8 != 60)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CAGuard.cpp";
      v15 = 1024;
      v16 = 169;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: Wait got an error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = v9;
    goto LABEL_13;
  }

  atomic_store(pthread_self(), this + 2);
  return v9 == 60;
}

pthread_t CADeprecated::CAGuard::Wait(CADeprecated::CAGuard *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = atomic_load(this + 2);
  if (!pthread_equal(v2, v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 88;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: A thread has to have locked a guard before it can wait", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = 1;
LABEL_10:
  }

  atomic_store(0, this + 2);
  v4 = pthread_cond_wait((this + 88), (this + 24));
  if (v4)
  {
    v7 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 97;
      _os_log_impl(&dword_1BA5AC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: Could not wait for a signal", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F384CD08;
    exception[2] = v7;
    goto LABEL_10;
  }

  result = pthread_self();
  atomic_store(result, this + 2);
  return result;
}

void CADeprecated::CAGuard::~CAGuard(CADeprecated::CAGuard *this)
{
  CADeprecated::CAGuard::~CAGuard(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F38495C8;
  pthread_cond_destroy((this + 88));

  CADeprecated::CAMutex::~CAMutex(this);
}

NSObject *AVAE_GetHighPriorityWorkloop(void)
{
  {
    operator new();
  }

  v0 = GetTargetWorkloopWithPriority(int,BOOL)::workloops;
  os_unfair_lock_lock(GetTargetWorkloopWithPriority(int,BOOL)::workloops);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v1 != v2)
  {
    while (*v1 != 56 || *(v1 + 4))
    {
      v1 += 16;
      if (v1 == v2)
      {
        goto LABEL_11;
      }
    }
  }

  if (v1 != v2)
  {
    inactive = *(v1 + 8);
    if (inactive)
    {
      if (!v0)
      {
        return inactive;
      }

      goto LABEL_45;
    }
  }

LABEL_11:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "com.apple.coreaudio.avfaudio.workloop(", 38);
  v4 = MEMORY[0x1BFAF5620](&v26, 56);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ")", 1);
  v24 = 0;
  v23 = 0;
  if ((v33 & 0x10) != 0)
  {
    v6 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v6 = v29;
    }

    locale = v28[4].__locale_;
    goto LABEL_18;
  }

  if ((v33 & 8) != 0)
  {
    locale = v28[1].__locale_;
    v6 = v28[3].__locale_;
LABEL_18:
    v5 = v6 - locale;
    if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v22 = v6 - locale;
    if (v5)
    {
      memmove(&__dst, locale, v5);
    }

    goto LABEL_24;
  }

  v5 = 0;
  v22 = 0;
LABEL_24:
  *(&__dst + v5) = 0;
  if (v22 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  inactive = dispatch_workloop_create_inactive(p_dst);
  if (v22 < 0)
  {
    operator delete(__dst);
  }

  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v9 >= v10)
  {
    v12 = *(v0 + 8);
    v13 = v9 - v12;
    v14 = (v9 - v12) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
    }

    v16 = v10 - v12;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = 16 * v14;
    *v18 = 56;
    *(v18 + 4) = 0;
    *(v18 + 5) = v23;
    *(v18 + 7) = v24;
    *(v18 + 8) = inactive;
    v11 = 16 * v14 + 16;
    memcpy(0, v12, v13);
    *(v0 + 8) = 0;
    *(v0 + 16) = v11;
    *(v0 + 24) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v9 = 56;
    *(v9 + 4) = 0;
    *(v9 + 5) = v23;
    *(v9 + 7) = v24;
    *(v9 + 8) = inactive;
    v11 = v9 + 16;
  }

  *(v0 + 16) = v11;
  v25[0] = *MEMORY[0x1E69E54D8];
  v19 = *(MEMORY[0x1E69E54D8] + 72);
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v26 = v19;
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v31 < 0)
  {
    operator delete(__p);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  MEMORY[0x1BFAF5770](&v34);
LABEL_45:
  os_unfair_lock_unlock(v0);
  return inactive;
}

char *AudioComponentDescriptionAsString(const AudioComponentDescription *a1, char *a2, int8x8_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    CAStringForOSType(a1->componentType, __dst, a3);
    CAStringForOSType(a1->componentSubType, v9, v5);
    CAStringForOSType(a1->componentManufacturer, v8, v6);
    snprintf(a2, 0x80uLL, "%s %s %s", __dst, v9, v8);
  }

  return a2;
}

void sub_1BA6B54C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B566C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B5788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA6B58AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t AVAudioEngineImpl::ConnectMIDI(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a1;
    *buf = 136316418;
    v30 = "AVAudioEngine.mm";
    v31 = 1024;
    v32 = 1085;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    *v36 = a2;
    *&v36[8] = 2080;
    *&v36[10] = [objc_msgSend(a3 "description")];
    *&v36[18] = 2080;
    *&v36[20] = [objc_msgSend(a4 "description")];
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: connect MIDI node: %p -> %s, format: %s", buf, 0x3Au);
  }

  if (!a2 || !a3 || ![a3 count])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v30 = "AVAEInternal.h";
      v31 = 1024;
      v32 = 71;
      v33 = 2080;
      v34 = "AVAudioEngine.mm";
      v35 = 1024;
      *v36 = 1087;
      *&v36[4] = 2080;
      *&v36[6] = "ConnectMIDI";
      *&v36[14] = 2080;
      *&v36[16] = "nil != sourceNode && nil != destNodes && [destNodes count] > 0";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != sourceNode && nil != destNodes && [destNodes count] > 0"}];
  }

  if (([*(a1 + 24) containsObject:a2] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v30 = "AVAEInternal.h";
      v31 = 1024;
      v32 = 71;
      v33 = 2080;
      v34 = "AVAudioEngine.mm";
      v35 = 1024;
      *v36 = 1088;
      *&v36[4] = 2080;
      *&v36[6] = "ConnectMIDI";
      *&v36[14] = 2080;
      *&v36[16] = "[_nodes containsObject: sourceNode]";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: sourceNode]"}];
  }

  v19 = a1;
  v20 = a2;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(a3);
        }

        if (!*(*(&v24 + 1) + 8 * v16) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v17 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v30 = "AVAEInternal.h";
            v31 = 1024;
            v32 = 71;
            v33 = 2080;
            v34 = "AVAudioEngine.mm";
            v35 = 1024;
            *v36 = 1090;
            *&v36[4] = 2080;
            *&v36[6] = "ConnectMIDI";
            *&v36[14] = 2080;
            *&v36[16] = "object && [object isKindOfClass: [AVAudioNode class]]";
            _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "object && [object isKindOfClass: [AVAudioNode class]]"}];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  return AVAudioEngineGraph::ConnectMIDI(*(v19 + 8), v20, a3, a4, a5, a6);
}

{
  v24 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v12 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a1;
    *buf = 136316418;
    v17 = "AVAudioEngine.mm";
    v18 = 1024;
    v19 = 1071;
    v20 = 2048;
    v21 = v13;
    v22 = 2048;
    *v23 = a2;
    *&v23[8] = 2048;
    *&v23[10] = a3;
    *&v23[18] = 2080;
    *&v23[20] = [objc_msgSend(a4 "description")];
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: connect MIDI node: %p -> node: %p, format: %s", buf, 0x3Au);
  }

  if (a2 == a3 || !a2 || !a3)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioEngine.mm";
      v22 = 1024;
      *v23 = 1073;
      *&v23[4] = 2080;
      *&v23[6] = "ConnectMIDI";
      *&v23[14] = 2080;
      *&v23[16] = "node1 != nil && node2 != nil && node1 != node2";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node1 != nil && node2 != nil && node1 != node2"}];
  }

  return AVAudioEngineGraph::ConnectMIDI(*(a1 + 8), a2, [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}], a4, a5, a6);
}

uint64_t AVAudioEngineImpl::GetIOUnit(AVAudioEngineImpl *this, AVAudioSession *a2, AVAudioSession *a3, uint64_t a4, AVAudioSession *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(*(this + 1) + 187) == 1)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136316418;
      *&buf[1] = "AVAEInternal.h";
      v10 = 1024;
      v11 = 71;
      v12 = 2080;
      v13 = "AVAudioEngine.mm";
      v14 = 1024;
      v15 = 655;
      v16 = 2080;
      v17 = "GetIOUnit";
      v18 = 2080;
      v19 = "!IsInManualRenderingMode()";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!IsInManualRenderingMode()"}];
  }

  result = *(this + 7);
  if (!result)
  {
    AVAudioIOUnit::Create(buf, this, 0, a2, a5);
  }

  return result;
}

id AVAudioEngineImpl::GetAudioSession(AVAudioEngineImpl *this)
{
  if (*(*(this + 1) + 187))
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = v3;

    return v4;
  }

  else
  {
    v5 = MEMORY[0x1E698D708];

    return [v5 sharedInstance];
  }
}

void sub_1BA6B7CE8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v1, 0x80C40B8603338);
  std::recursive_mutex::unlock((v2 + 112));
  _Unwind_Resume(a1);
}

uint64_t ___ZN17AVAudioEngineImpl23GetManualRenderingBlockEv_block_invoke(uint64_t a1, uint64_t a2, AudioBufferList *a3, int *a4)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3 || !a3->mNumberBuffers)
  {
    v9 = -50;
    goto LABEL_15;
  }

  v9 = -80800;
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  if (*(v11 + 187) != 1)
  {
    goto LABEL_15;
  }

  if (*(v11 + 208))
  {
    v12 = (v10 + 64);
  }

  else
  {
    v12 = (v11 + 184);
  }

  if (*v12 != 1)
  {
    v9 = -80802;
    if (!a4)
    {
      return -1;
    }

    goto LABEL_16;
  }

  v13 = *(v11 + 192);
  if (!v13)
  {
    std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((v8 + 112), v8 + 176);
    v14 = AVAudioEngineGraph::RenderToABL(*(*(a1 + 40) + 8), a2, a3, a4);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v8 + 176);
    std::recursive_mutex::unlock((v8 + 112));
    return v14;
  }

  if (v13 != 1)
  {
LABEL_15:
    if (!a4)
    {
      return -1;
    }

LABEL_16:
    *a4 = v9;
    return -1;
  }

  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v10 + 176))
  {
    v14 = AVAudioEngineGraph::RenderToABL(*(*(a1 + 40) + 8), a2, a3, a4);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v10 + 176);
  }

  else
  {
    mNumberBuffers = a3->mNumberBuffers;
    if (mNumberBuffers)
    {
      v17 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
      v18 = vdupq_n_s64(mNumberBuffers - 1);
      v19 = xmmword_1BA6CF300;
      v20 = xmmword_1BA6CF310;
      v21 = &a3[1].mBuffers[0].mData + 1;
      v22 = vdupq_n_s64(4uLL);
      v14 = 2;
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v18, v20));
        if (vuzp1_s16(v23, *v18.i8).u8[0])
        {
          *(v21 - 8) = 0;
        }

        if (vuzp1_s16(v23, *&v18).i8[2])
        {
          *(v21 - 4) = 0;
        }

        if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
        {
          *v21 = 0;
          v21[4] = 0;
        }

        v19 = vaddq_s64(v19, v22);
        v20 = vaddq_s64(v20, v22);
        v21 += 16;
        v17 -= 4;
      }

      while (v17);
    }

    else
    {
      return 2;
    }
  }

  return v14;
}

const void ***std::unique_ptr<AVAEBlock<AVAudioEngineManualRenderingStatus({block_pointer})(unsigned int,AudioBufferList *,int *)>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(std::recursive_mutex *this, uint64_t a2)
{
  while (1)
  {
    std::recursive_mutex::lock(this);
    result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a2);
    if (result)
    {
      break;
    }

    std::recursive_mutex::unlock(this);
    sched_yield();
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
    result = std::recursive_mutex::try_lock(this);
    if (result)
    {
      break;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
    sched_yield();
  }

  return result;
}

void AVAudioEngineImpl::Stop(AVAudioEngineImpl *this, NSError **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((this + 112), this + 176);
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v4 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    v6 = *(this + 1);
    if (v6)
    {
      v7 = v6[208];
      v6 += 184;
      if (v7)
      {
        v6 = this + 64;
      }

      LODWORD(v6) = *v6;
    }

    v13 = 136315906;
    v14 = "AVAudioEngine.mm";
    v15 = 1024;
    v16 = 1236;
    v17 = 2048;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: stop, was running %d", &v13, 0x22u);
  }

  AVAudioEngineImpl::Pause(this, a2);
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v8 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v9 = *this;
    v13 = 136315650;
    v14 = "AVAudioEngine.mm";
    v15 = 1024;
    v16 = 1162;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: uninitialize", &v13, 0x1Cu);
  }

  v10 = *(this + 1);
  if (v10)
  {
    v11 = *v10;
    std::recursive_mutex::lock((*v10 + 112));
    if (*(v10 + 185))
    {
      v12 = AVAudioEngineGraph::_Uninitialize(v10, a2);
    }

    else
    {
      v12 = 0;
    }

    std::recursive_mutex::unlock((v11 + 112));
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 1164, "Uninitialize", "_graph->Uninitialize(outErr)", v12, a2);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 176);
  std::recursive_mutex::unlock((this + 112));
}

void sub_1BA6B8410(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 112));
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 176);
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

void AVAudioEngineImpl::Reset(AVAudioEngineImpl *this)
{
  std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((this + 112), this + 176);
  v2 = *(this + 1);
  v3 = *v2;
  std::recursive_mutex::lock((*v2 + 112));
  v4 = v2[1];
  if (v4)
  {
    v7 = *v4;
    v5 = v4 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        (*(**(v6[5] + 24) + 88))(*(v6[5] + 24));
        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v5);
    }
  }

  v2[25] = 0;
  std::recursive_mutex::unlock((v3 + 112));
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 176);

  std::recursive_mutex::unlock((this + 112));
}

void sub_1BA6B8528(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 176);
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

char *AVAudioEngineImpl::UpdateIONodes(AVAudioEngineImpl *this)
{
  AVAudioEngineImpl::UpdateOutputNode(this, 0);
  result = AVAudioEngineImpl::UpdateInputNode(this, 0);
  if (*(*(this + 1) + 187) == 1)
  {
    result = *(this + 7);
    *(this + 7) = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(this + 2) = 0;
  }

  return result;
}

char *AVAudioEngineImpl::UpdateOutputNode(char *this, char a2)
{
  v2 = this;
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (a2)
  {
    v4 = this + 8;
    v5 = *(*(this + 1) + 187);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v3)
    {
      return this;
    }

    v4 = this + 8;
    v5 = *(*(this + 1) + 187);
  }

  this = [*(this + 5) isInManualRenderingMode];
  if (this && (v5 & 1) != 0)
  {
    this = [v3 manualRenderingMode];
    if (this == *(*v4 + 192))
    {
      return this;
    }

    goto LABEL_12;
  }

  if (this == (v5 & 1))
  {
    return this;
  }

LABEL_11:
  if (v5)
  {
LABEL_12:
    IOUnit = 0;
    v7 = 1;
    goto LABEL_14;
  }

  AudioSession = AVAudioEngineImpl::GetAudioSession(v2);
  IOUnit = AVAudioEngineImpl::GetIOUnit(v2, AudioSession, v9, v10, v11);
  v7 = 0;
LABEL_14:
  v12 = *(v2 + 5);
  if (v12)
  {
    InputConnectionPointForNode = AVAudioEngineImpl::GetInputConnectionPointForNode(v2, v12, 0);
    v14 = *(v2 + 5);
    AVAudioEngineGraph::RemoveIONode(*(v2 + 1), *(v2 + 5), 0, 0);
    AVAudioEngineImpl::DetachNode(v2, *(v2 + 5), 1, 0);
    v15 = *(v2 + 5);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = [(AVAudioIONode *)[AVAudioOutputNode alloc] initWithIOUnit:IOUnit isInput:0];
    InputConnectionPointForNode = 0;
    *(v2 + 5) = v15;
    if (v7)
    {
LABEL_16:
      if (![(AVAudioIONode *)v15 enableManualRenderingMode:*(*v4 + 192) isInput:0])
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v16 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "AVAEInternal.h";
          *&buf[12] = 1024;
          *&buf[14] = 71;
          *&buf[18] = 2080;
          *&buf[20] = "AVAudioEngine.mm";
          *&buf[28] = 1024;
          *&buf[30] = 767;
          *&buf[34] = 2080;
          *&buf[36] = "UpdateOutputNode";
          v26 = 2080;
          v27 = "[_outputNode enableManualRenderingMode:GetManualRenderingMode() isInput:isInputNode]";
          _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_outputNode enableManualRenderingMode:GetManualRenderingMode() isInput:isInputNode]"}];
      }

      goto LABEL_30;
    }
  }

  if (![(AVAudioIONode *)v15 enableRealtimeRenderingModeWithIOUnit:IOUnit isInput:0 forceIOUnitReset:0])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngine.mm";
      *&buf[28] = 1024;
      *&buf[30] = 770;
      *&buf[34] = 2080;
      *&buf[36] = "UpdateOutputNode";
      v26 = 2080;
      v27 = "[_outputNode enableRealtimeRenderingModeWithIOUnit:ioUnit isInput:isInputNode forceIOUnitReset:false]";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_outputNode enableRealtimeRenderingModeWithIOUnit:ioUnit isInput:isInputNode forceIOUnitReset:false]"}];
  }

  v18 = *(IOUnit + 8);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN13AVAudioIOUnit9EnableBusEj_block_invoke;
  *&buf[24] = &__block_descriptor_44_e5_v8__0l;
  *&buf[32] = IOUnit;
  *&buf[40] = 0;
  dispatch_sync(v18, buf);
LABEL_30:
  AVAudioEngineImpl::AttachNode(v2, *(v2 + 5), 1);

  AVAudioEngineGraph::AddIONode(*(v2 + 1), *(v2 + 5), 0);
  v19 = [*(v2 + 5) outputFormatForBus:0];
  if (v19)
  {
    v20 = v19;
    [v19 sampleRate];
    if (v21 > 0.0)
    {
      if ([v20 channelCount])
      {
        [*(v2 + 5) setInputFormat:v20 forBus:0];
      }
    }
  }

  if (InputConnectionPointForNode)
  {
    AVAudioEngineImpl::Connect(v2, [(AVAudioConnectionPoint *)InputConnectionPointForNode node], *(v2 + 5), [(AVAudioConnectionPoint *)InputConnectionPointForNode bus], 0, 0);
  }

  v22 = *(v2 + 5);
  if (v22)
  {
    v23 = *(*v4 + 187);
    this = [v22 isInManualRenderingMode];
    if (this && v23)
    {
      this = [v22 manualRenderingMode];
      if (this == *(*v4 + 192))
      {
        return this;
      }
    }

    else if (this == v23)
    {
      return this;
    }
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v24 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    *&buf[4] = "AVAEInternal.h";
    *&buf[12] = 1024;
    *&buf[14] = 71;
    *&buf[18] = 2080;
    *&buf[20] = "AVAudioEngine.mm";
    *&buf[28] = 1024;
    *&buf[30] = 791;
    *&buf[34] = 2080;
    *&buf[36] = "UpdateOutputNode";
    v26 = 2080;
    v27 = "AreRenderingModesIdentical(_outputNode)";
    _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  return [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "AreRenderingModesIdentical(_outputNode)"}];
}

char *AVAudioEngineImpl::UpdateInputNode(char *this, char a2)
{
  v2 = this;
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  if (a2)
  {
    v4 = this + 8;
    v5 = *(*(this + 1) + 187);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v3)
    {
      return this;
    }

    v4 = this + 8;
    v5 = *(*(this + 1) + 187);
  }

  this = [*(this + 4) isInManualRenderingMode];
  if (this && (v5 & 1) != 0)
  {
    this = [v3 manualRenderingMode];
    if (this == *(*v4 + 192))
    {
      return this;
    }

    goto LABEL_12;
  }

  if (this == (v5 & 1))
  {
    return this;
  }

LABEL_11:
  if (v5)
  {
LABEL_12:
    IOUnit = 0;
    v7 = 1;
    goto LABEL_14;
  }

  AudioSession = AVAudioEngineImpl::GetAudioSession(v2);
  IOUnit = AVAudioEngineImpl::GetIOUnit(v2, AudioSession, v9, v10, v11);
  v7 = 0;
LABEL_14:
  v12 = *(v2 + 4);
  if (v12)
  {
    OutputConnectionPointsForNode = AVAudioEngineImpl::GetOutputConnectionPointsForNode(v2, v12, 0);
    v14 = *(v2 + 4);
    AVAudioEngineGraph::RemoveIONode(*(v2 + 1), *(v2 + 4), 1, 0);
    AVAudioEngineImpl::DetachNode(v2, *(v2 + 4), 1, 0);
    v15 = *(v2 + 4);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = [(AVAudioIONode *)[AVAudioInputNode alloc] initWithIOUnit:IOUnit isInput:1];
    OutputConnectionPointsForNode = 0;
    *(v2 + 4) = v15;
    if (v7)
    {
LABEL_16:
      if (![(AVAudioIONode *)v15 enableManualRenderingMode:*(*v4 + 192) isInput:1])
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v16 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "AVAEInternal.h";
          *&buf[12] = 1024;
          *&buf[14] = 71;
          *&buf[18] = 2080;
          *&buf[20] = "AVAudioEngine.mm";
          *&buf[28] = 1024;
          *&buf[30] = 826;
          *&buf[34] = 2080;
          *&buf[36] = "UpdateInputNode";
          v26 = 2080;
          v27 = "[_inputNode enableManualRenderingMode:GetManualRenderingMode() isInput:isInputNode]";
          _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_inputNode enableManualRenderingMode:GetManualRenderingMode() isInput:isInputNode]"}];
      }

      goto LABEL_30;
    }
  }

  if (![(AVAudioIONode *)v15 enableRealtimeRenderingModeWithIOUnit:IOUnit isInput:1 forceIOUnitReset:0])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngine.mm";
      *&buf[28] = 1024;
      *&buf[30] = 829;
      *&buf[34] = 2080;
      *&buf[36] = "UpdateInputNode";
      v26 = 2080;
      v27 = "[_inputNode enableRealtimeRenderingModeWithIOUnit:ioUnit isInput:isInputNode forceIOUnitReset:false]";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_inputNode enableRealtimeRenderingModeWithIOUnit:ioUnit isInput:isInputNode forceIOUnitReset:false]"}];
  }

  (*(*IOUnit + 64))(IOUnit);
  v18 = IOUnit[1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN13AVAudioIOUnit9EnableBusEj_block_invoke;
  *&buf[24] = &__block_descriptor_44_e5_v8__0l;
  *&buf[32] = IOUnit;
  *&buf[40] = 1;
  dispatch_sync(v18, buf);
LABEL_30:
  AVAudioEngineImpl::AttachNode(v2, *(v2 + 4), 1);

  AVAudioEngineGraph::AddIONode(*(v2 + 1), *(v2 + 4), 1);
  v19 = [*(v2 + 4) inputFormatForBus:0];
  v20 = v19;
  if (v19)
  {
    [v19 sampleRate];
    if (v21 > 0.0)
    {
      if ([v20 channelCount])
      {
        [*(v2 + 4) setOutputFormat:v20 forBus:0];
      }
    }
  }

  if ([(NSArray *)OutputConnectionPointsForNode count])
  {
    AVAudioEngineImpl::ConnectMultipleOutputs(v2, *(v2 + 4), OutputConnectionPointsForNode, 0, 0);
  }

  v22 = *(v2 + 4);
  if (v22)
  {
    v23 = *(*v4 + 187);
    this = [v22 isInManualRenderingMode];
    if ((this & v23) == 1)
    {
      this = [v22 manualRenderingMode];
      if (this == *(*v4 + 192))
      {
        return this;
      }
    }

    else if (this == v23)
    {
      return this;
    }
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v24 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    *&buf[4] = "AVAEInternal.h";
    *&buf[12] = 1024;
    *&buf[14] = 71;
    *&buf[18] = 2080;
    *&buf[20] = "AVAudioEngine.mm";
    *&buf[28] = 1024;
    *&buf[30] = 878;
    *&buf[34] = 2080;
    *&buf[36] = "UpdateInputNode";
    v26 = 2080;
    v27 = "AreRenderingModesIdentical(_inputNode)";
    _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  return [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "AreRenderingModesIdentical(_inputNode)"}];
}

uint64_t AVAudioEngineImpl::GetOutputConnectionPointsForNode(AVAudioEngineImpl *this, AVAudioNode *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 && [*(this + 3) containsObject:a2])
  {
    v6 = *(this + 1);

    return AVAudioEngineGraph::GetOutputConnectionPointsForNode(v6, a2, a3);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 71;
      v13 = 2080;
      v14 = "AVAudioEngine.mm";
      v15 = 1024;
      v16 = 1148;
      v17 = 2080;
      v18 = "GetOutputConnectionPointsForNode";
      v19 = 2080;
      v20 = "node != nil && [_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil && [_nodes containsObject: node]"}];
    return AVAudioEngineGraph::GetOutputConnectionPointsForNode(*(this + 1), a2, a3);
  }
}

void AVAudioEngineImpl::DetachNode(id *this, AVAudioNode *a2, char a3, NSError **a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 601, "DetachNode", "node != nil", a2 != 0, 4294967246, a4))
  {
    if ((a3 & 1) != 0 || (!a2 ? (v8 = 1) : this[6] == a2 || this[5] == a2 ? (v8 = 0) : (v8 = this[4] != a2), !_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 605, "DetachNode", "!IsInternalNode(node)", v8, 4294967246, a4)))
    {
      v9 = objc_msgSend_impl(a2);
      v10 = *(v9 + 8);
      if (v10)
      {
        v11 = *v10;
        if (v11)
        {
          v12 = v9;
          _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 610, "DetachNode", "nil == owningEngine || GetEngine() == owningEngine", *this == v11, 4294967246, a4);
          [(AVAudioNode *)a2 didDetachFromEngine:*this error:a4];
          _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 619, "DetachNode", "!nodeimpl->HasEngineImpl()", *(v12 + 8) == 0, 4294967246, a4);
          [this[3] removeObject:a2];
          if ([this[3] count] >= 0x33)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v13 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *this;
              v15 = [this[3] count];
              v16 = 136315906;
              v17 = "AVAudioEngine.mm";
              v18 = 1024;
              v19 = 625;
              v20 = 2048;
              v21 = v14;
              v22 = 1024;
              v23 = v15;
              _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: total number of attached nodes %d", &v16, 0x22u);
            }
          }
        }
      }
    }
  }
}

void AVAudioEngineImpl::AttachNode(AVAudioEngineImpl *this, AVAudioNode *a2, char a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    v6 = "node != nil";
    if (!os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136316418;
    v18 = "AVAEInternal.h";
    v19 = 1024;
    v20 = 71;
    v21 = 2080;
    v22 = "AVAudioEngine.mm";
    v23 = 1024;
    v7 = 572;
    goto LABEL_14;
  }

  if ((a3 & 1) == 0 && (*(this + 6) == a2 || *(this + 5) == a2 || *(this + 4) == a2))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    v6 = "!IsInternalNode(node)";
    if (!os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136316418;
    v18 = "AVAEInternal.h";
    v19 = 1024;
    v20 = 71;
    v21 = 2080;
    v22 = "AVAudioEngine.mm";
    v23 = 1024;
    v7 = 576;
LABEL_14:
    v24 = v7;
    v25 = 2080;
    v26 = "AttachNode";
    v27 = 2080;
    v28 = v6;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
LABEL_15:
    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", v6}];
  }

  v8 = objc_msgSend_impl(a2);
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *v9;
    v11 = *this;
    if (v10)
    {
      if (v11 != v10)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v12 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v18 = "AVAEInternal.h";
          v19 = 1024;
          v20 = 71;
          v21 = 2080;
          v22 = "AVAudioEngine.mm";
          v23 = 1024;
          v24 = 580;
          v25 = 2080;
          v26 = "AttachNode";
          v27 = 2080;
          v28 = "nil == owningEngine || GetEngine() == owningEngine";
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil == owningEngine || GetEngine() == owningEngine"}];
      }

      return;
    }
  }

  else
  {
    v11 = *this;
  }

  [(AVAudioNode *)a2 didAttachToEngine:v11];
  if (!*(v8 + 8))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 71;
      v21 = 2080;
      v22 = "AVAudioEngine.mm";
      v23 = 1024;
      v24 = 589;
      v25 = 2080;
      v26 = "AttachNode";
      v27 = 2080;
      v28 = "nodeimpl->HasEngineImpl()";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeimpl->HasEngineImpl()"}];
  }

  [*(this + 3) addObject:a2];
  if ([*(this + 3) count] >= 0x33)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *this;
      v16 = [*(this + 3) count];
      *buf = 136315906;
      v18 = "AVAudioEngine.mm";
      v19 = 1024;
      v20 = 595;
      v21 = 2048;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: total number of attached nodes %d", buf, 0x22u);
    }
  }
}

void AVAudioEngineImpl::ConnectMultipleOutputs(id *this, AVAudioNode *a2, NSArray *a3, uint64_t a4, AVAudioFormat *a5)
{
  v188 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v5 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v6 = *this;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v157);
    v128 = v6;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v7 = [(NSArray *)a3 countByEnumeratingWithState:&v141 objects:v170 count:16];
    if (v7)
    {
      v8 = *v142;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v142 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v141 + 1) + 8 * i);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159[2], " node: ", 7);
          v11 = MEMORY[0x1BFAF5610](&v159[2], [v10 node]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (bus: ", 7);
          v12 = MEMORY[0x1BFAF5630](v11, [v10 bus]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
        }

        v7 = [(NSArray *)a3 countByEnumeratingWithState:&v141 objects:v170 count:16];
      }

      while (v7);
    }

    if ((v168 & 0x10) != 0)
    {
      v14 = v167;
      if (v167 < v164)
      {
        v167 = v164;
        v14 = v164;
      }

      v15 = __src;
    }

    else
    {
      if ((v168 & 8) == 0)
      {
        v13 = 0;
        __dst[23] = 0;
LABEL_24:
        __dst[v13] = 0;
        *v157 = *MEMORY[0x1E69E54D8];
        v16 = *(MEMORY[0x1E69E54D8] + 72);
        *&v157[*(*v157 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
        *&v159[2] = v16;
        *&v159[10] = MEMORY[0x1E69E5548] + 16;
        if (v166 < 0)
        {
          operator delete(__p);
        }

        *&v159[10] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v159[18]);
        std::iostream::~basic_iostream();
        MEMORY[0x1BFAF5770](&v169);
        if (__dst[23] >= 0)
        {
          v17 = __dst;
        }

        else
        {
          v17 = *__dst;
        }

        v18 = [-[AVAudioFormat description](a5 "description")];
        *buf = 136316674;
        *&buf[4] = "AVAudioEngine.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1008;
        *&buf[18] = 2048;
        *&buf[20] = v128;
        *&buf[28] = 2048;
        *&buf[30] = a2;
        *&buf[38] = 2048;
        *&buf[40] = a4;
        LOWORD(v156[0]) = 2080;
        *(v156 + 2) = v17;
        WORD5(v156[0]) = 2080;
        *(v156 + 12) = v18;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: connect node: %p (from bus: %lu) ->%s, format: %s", buf, 0x44u);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_31;
      }

      v15 = *&v161[4];
      v14 = v162;
    }

    v13 = v14 - v15;
    if (v14 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    __dst[23] = v14 - v15;
    if (v13)
    {
      memmove(__dst, v15, v13);
    }

    goto LABEL_24;
  }

LABEL_31:
  if (a2)
  {
    v19 = a3 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v123 = v20;
  if (v19 || ![(NSArray *)a3 count])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v21 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v157 = 136316418;
      *&v157[4] = "AVAEInternal.h";
      v158 = 1024;
      *v159 = 71;
      *&v159[4] = 2080;
      *&v159[6] = "AVAudioEngine.mm";
      *&v159[14] = 1024;
      *&v159[16] = 1010;
      v160 = 2080;
      *v161 = "ConnectMultipleOutputs";
      *&v161[8] = 2080;
      *&v161[10] = "nil != sourceNode && nil != destNodes && [destNodes count] > 0";
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != sourceNode && nil != destNodes && [destNodes count] > 0"}];
  }

  if (([this[3] containsObject:a2] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v22 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v157 = 136316418;
      *&v157[4] = "AVAEInternal.h";
      v158 = 1024;
      *v159 = 71;
      *&v159[4] = 2080;
      *&v159[6] = "AVAudioEngine.mm";
      *&v159[14] = 1024;
      *&v159[16] = 1011;
      v160 = 2080;
      *v161 = "ConnectMultipleOutputs";
      *&v161[8] = 2080;
      *&v161[10] = "[_nodes containsObject: sourceNode]";
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: sourceNode]"}];
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v23 = [(NSArray *)a3 countByEnumeratingWithState:&v134 objects:v154 count:16];
  if (v23)
  {
    v24 = *v135;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v135 != v24)
        {
          objc_enumerationMutation(a3);
        }

        v26 = *(*(&v134 + 1) + 8 * j);
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v27 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *v157 = 136316418;
            *&v157[4] = "AVAEInternal.h";
            v158 = 1024;
            *v159 = 71;
            *&v159[4] = 2080;
            *&v159[6] = "AVAudioEngine.mm";
            *&v159[14] = 1024;
            *&v159[16] = 1013;
            v160 = 2080;
            *v161 = "ConnectMultipleOutputs";
            *&v161[8] = 2080;
            *&v161[10] = "object && [object isKindOfClass: [AVAudioConnectionPoint class]]";
            _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "object && [object isKindOfClass: [AVAudioConnectionPoint class]]"}];
        }

        if (([this[3] containsObject:{objc_msgSend(v26, "node")}] & 1) == 0)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v28 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *v157 = 136316418;
            *&v157[4] = "AVAEInternal.h";
            v158 = 1024;
            *v159 = 71;
            *&v159[4] = 2080;
            *&v159[6] = "AVAudioEngine.mm";
            *&v159[14] = 1024;
            *&v159[16] = 1016;
            v160 = 2080;
            *v161 = "ConnectMultipleOutputs";
            *&v161[8] = 2080;
            *&v161[10] = "[_nodes containsObject: connPoint.node]";
            _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: connPoint.node]"}];
        }

        if ([v26 node] == a2)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v29 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *v157 = 136316418;
            *&v157[4] = "AVAEInternal.h";
            v158 = 1024;
            *v159 = 71;
            *&v159[4] = 2080;
            *&v159[6] = "AVAudioEngine.mm";
            *&v159[14] = 1024;
            *&v159[16] = 1017;
            v160 = 2080;
            *v161 = "ConnectMultipleOutputs";
            *&v161[8] = 2080;
            *&v161[10] = "sourceNode != connPoint.node";
            _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "sourceNode != connPoint.node"}];
        }
      }

      v23 = [(NSArray *)a3 countByEnumeratingWithState:&v134 objects:v154 count:16];
    }

    while (v23);
  }

  v30 = this[1];
  if (!v123 || ![(NSArray *)a3 count])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v31 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v157 = 136316418;
      *&v157[4] = "AVAEInternal.h";
      v158 = 1024;
      *v159 = 71;
      *&v159[4] = 2080;
      *&v159[6] = "AVAudioEngineGraph.mm";
      *&v159[14] = 1024;
      *&v159[16] = 2435;
      v160 = 2080;
      *v161 = "ConnectMultipleOutputs";
      *&v161[8] = 2080;
      *&v161[10] = "inSrcAVNode && inDestAVConnectionPoints && inDestAVConnectionPoints.count > 0";
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcAVNode && inDestAVConnectionPoints && inDestAVConnectionPoints.count > 0"}];
  }

  v124 = *v30;
  std::recursive_mutex::lock((*v30 + 112));
  v32 = objc_msgSend_impl(a2);
  v122 = (*(*v32 + 240))(v32, a4);
  if (!AVAudioEngineGraph::IsNodeInGraph(v30, v32))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v33 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v157 = 136316418;
      *&v157[4] = "AVAEInternal.h";
      v158 = 1024;
      *v159 = 71;
      *&v159[4] = 2080;
      *&v159[6] = "AVAudioEngineGraph.mm";
      *&v159[14] = 1024;
      *&v159[16] = 2446;
      v160 = 2080;
      *v161 = "ConnectMultipleOutputs";
      *&v161[8] = 2080;
      *&v161[10] = "IsNodeInGraph(inSrcImpl)";
      _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inSrcImpl)"}];
  }

  if (a5)
  {
    [(AVAudioFormat *)a5 sampleRate];
    if (v34 <= 0.0 || ![(AVAudioFormat *)a5 channelCount])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v35 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *v157 = 136316418;
        *&v157[4] = "AVAEInternal.h";
        v158 = 1024;
        *v159 = 71;
        *&v159[4] = 2080;
        *&v159[6] = "AVAudioEngineGraph.mm";
        *&v159[14] = 1024;
        *&v159[16] = 2449;
        v160 = 2080;
        *v161 = "ConnectMultipleOutputs";
        *&v161[8] = 2080;
        *&v161[10] = "IsFormatSampleRateAndChannelCountValid(format)";
        _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
    }
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v30, v32);
  if (((*NodeFromMap)[14])(NodeFromMap))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v37 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v157 = 136316418;
      *&v157[4] = "AVAEInternal.h";
      v158 = 1024;
      *v159 = 71;
      *&v159[4] = 2080;
      *&v159[6] = "AVAudioEngineGraph.mm";
      *&v159[14] = 1024;
      *&v159[16] = 2456;
      v160 = 2080;
      *v161 = "ConnectMultipleOutputs";
      *&v161[8] = 2080;
      *&v161[10] = "!inSrcNode->IsSplitterNode()";
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!inSrcNode->IsSplitterNode()"}];
  }

  v121 = (*(*NodeFromMap[3] + 48))(NodeFromMap[3], a4);
  if (a5)
  {
    v38 = ![(AVAudioFormat *)a5 isEqual:?];
  }

  else
  {
    v38 = 0;
  }

  v151 = &v151;
  v152 = &v151;
  v153 = 0;
  AUGraphNodeBase::GetValidConnectionPoints(NodeFromMap, &v151);
  v39 = v153;
  if (v153 >= 2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v40 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *v157 = 136316418;
      *&v157[4] = "AVAEInternal.h";
      v158 = 1024;
      *v159 = 71;
      *&v159[4] = 2080;
      *&v159[6] = "AVAudioEngineGraph.mm";
      *&v159[14] = 1024;
      *&v159[16] = 2465;
      v160 = 2080;
      *v161 = "ConnectMultipleOutputs";
      *&v161[8] = 2080;
      *&v161[10] = "currentConnPoints.size() <= 1";
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "currentConnPoints.size() <= 1"}];
    v39 = v153;
  }

  v126 = NodeFromMap;
  if (v39)
  {
    if ((*(*v152[2] + 112))(v152[2]))
    {
      NodeFromMap = v152[2];
      AUGraphNodeBase::GetValidConnectionPoints(NodeFromMap, &v151);
      if (v153 <= 1)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v41 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *v157 = 136316418;
          *&v157[4] = "AVAEInternal.h";
          v158 = 1024;
          *v159 = 71;
          *&v159[4] = 2080;
          *&v159[6] = "AVAudioEngineGraph.mm";
          *&v159[14] = 1024;
          *&v159[16] = 2471;
          v160 = 2080;
          *v161 = "ConnectMultipleOutputs";
          *&v161[8] = 2080;
          *&v161[10] = "currentConnPoints.size() > 1";
          _os_log_impl(&dword_1BA5AC000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v157, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "currentConnPoints.size() > 1"}];
      }
    }
  }

  v148 = &v148;
  v149 = &v148;
  v150 = 0;
  v129 = [(NSArray *)a3 count];
  v133 = v30;
  if (v38)
  {
    std::__list_imp<AUGraphConnection>::clear(&v148);
    v44 = v153;
    if (v153)
    {
      v46 = v151;
      v45 = v152;
      v47 = *(v151 + 8);
      v48 = *v152;
      *(v48 + 8) = v47;
      *v47 = v48;
      v49 = v148;
      *(v148 + 8) = v45;
      *v45 = v49;
      *(v46 + 8) = &v148;
      v148 = v46;
      v150 += v44;
      v153 = 0;
    }

LABEL_143:
    v145 = &v145;
    v146 = &v145;
    v147 = 0;
    if (*(v30 + 185) == 1 && *(NodeFromMap[3] + 48) == 1)
    {
      if ((NodeFromMap[4] & 2) != 0)
      {
        LOBYTE(v141) = 0;
        AUGraphParser::GetNodeConnectionsToMixer(NodeFromMap, &v145, &v141);
      }

      if (AUGraphParser::IsNodeConnectedToTarget(0, NodeFromMap, v30 + 11))
      {
        AVAudioEngineGraph::SetNodesToPullEnabled(v30, 0);
      }
    }

    for (k = v146; k != &v145; k = k[1])
    {
      AUGraphParser::PrepareForDisconnection(v30, k[4], 0, v42, v43);
      Disconnection = AVAudioEngineGraph::MakeDisconnection(v30, *(k[4] + 24), *(k + 10), 0);
      if (Disconnection)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v59 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136316674;
          *&v170[4] = "AVAEInternal.h";
          *&v170[12] = 1024;
          *&v170[14] = 104;
          *&v170[18] = 2080;
          *&v170[20] = "AVAudioEngineGraph.mm";
          v171 = 1024;
          v172 = 2560;
          v173 = 2080;
          v174 = "ConnectMultipleOutputs";
          v175 = 2080;
          v176 = "MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus)";
          v177 = 1024;
          v178 = Disconnection;
          _os_log_impl(&dword_1BA5AC000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", v170, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", Disconnection}];
      }
    }

    v62 = AVAudioEngineGraph::PerformCommand(v30, NodeFromMap, 4, 0, 0);
    if (v62)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v63 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *v170 = 136316674;
        *&v170[4] = "AVAEInternal.h";
        *&v170[12] = 1024;
        *&v170[14] = 104;
        *&v170[18] = 2080;
        *&v170[20] = "AVAudioEngineGraph.mm";
        v171 = 1024;
        v172 = 2566;
        v173 = 2080;
        v174 = "ConnectMultipleOutputs";
        v175 = 2080;
        v176 = "PerformCommand(*finalSrcNode, kAUUninitialize, NULL, 0)";
        v177 = 1024;
        v178 = v62;
        _os_log_impl(&dword_1BA5AC000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", v170, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v62}];
    }

    for (m = v149; m != &v148; m = m[1])
    {
      AUGraphParser::PrepareForDisconnection(v133, m[2], 0, v60, v61);
      v65 = AVAudioEngineGraph::_DisconnectInput(v133, *(m[2] + 24), *(m + 6));
      if (v65)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v66 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136316674;
          *&v170[4] = "AVAEInternal.h";
          *&v170[12] = 1024;
          *&v170[14] = 104;
          *&v170[18] = 2080;
          *&v170[20] = "AVAudioEngineGraph.mm";
          v171 = 1024;
          v172 = 2576;
          v173 = 2080;
          v174 = "ConnectMultipleOutputs";
          v175 = 2080;
          v176 = "_DisconnectInput(connPoint.node->NodeImpl(), connPoint.bus)";
          v177 = 1024;
          v178 = v65;
          _os_log_impl(&dword_1BA5AC000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", v170, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v65}];
      }

      if ((*(*m[2] + 120))(m[2]))
      {
        *v170 = v170;
        *&v170[8] = v170;
        *&v170[16] = 0;
        v67 = v146;
LABEL_171:
        while (v67 != &v145)
        {
          v68 = v67[4];
          if (v68 == m[2] && (v69 = *(v67 + 10), v69 == *(m + 6)))
          {
            for (n = v67[1]; ; n = n[1])
            {
              if (n == &v145)
              {
                std::list<AUGraphConnection>::splice(v170, v170, &v145, v67, n);
                v67 = n;
                goto LABEL_171;
              }

              if (n[4] != v68 || *(n + 10) != v69)
              {
                break;
              }
            }

            std::list<AUGraphConnection>::splice(v170, v170, &v145, v67, n);
          }

          else
          {
            n = v67;
          }

          v67 = n[1];
        }

        std::__list_imp<AUGraphConnection>::clear(v170);
      }
    }

    if (v129 <= 1)
    {
      if (v129 == 1 && ((*NodeFromMap)[14])(NodeFromMap))
      {
        v76 = NodeFromMap[2];
        v77 = AVAudioEngineGraph::RemoveNode(v133, v76, 0);
        if (v77)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v78 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *v170 = 136316674;
            *&v170[4] = "AVAEInternal.h";
            *&v170[12] = 1024;
            *&v170[14] = 104;
            *&v170[18] = 2080;
            *&v170[20] = "AVAudioEngineGraph.mm";
            v171 = 1024;
            v172 = 2603;
            v173 = 2080;
            v174 = "ConnectMultipleOutputs";
            v175 = 2080;
            v176 = "RemoveNode(avNode)";
            v177 = 1024;
            v178 = v77;
            _os_log_impl(&dword_1BA5AC000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", v170, 0x3Cu);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v77}];
        }

        v79 = v76;
        v81 = *(v133 + 4);
        v80 = *(v133 + 5);
        NodeFromMap = v126;
        if (v81 != v80)
        {
          while (*v81 != v76)
          {
            if (++v81 == v80)
            {
              v81 = *(v133 + 5);
              break;
            }
          }
        }

        v82 = v80 - (v81 + 1);
        if (v80 != v81 + 1)
        {
          memmove(v81, v81 + 1, v80 - (v81 + 1));
        }

        *(v133 + 5) = v81 + v82;
      }
    }

    else if ((((*NodeFromMap)[14])(NodeFromMap) & 1) == 0)
    {
      v71 = objc_alloc_init(AVAudioUnitSplitter);
      p_super = &v71->super.super;
      v74 = *(v133 + 5);
      v73 = *(v133 + 6);
      if (v74 >= v73)
      {
        v83 = *(v133 + 4);
        v84 = (v74 - v83) >> 3;
        if ((v84 + 1) >> 61)
        {
          std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
        }

        v85 = v73 - v83;
        v86 = v85 >> 2;
        if (v85 >> 2 <= (v84 + 1))
        {
          v86 = v84 + 1;
        }

        if (v85 >= 0x7FFFFFFFFFFFFFF8)
        {
          v87 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v86;
        }

        if (v87)
        {
          if (!(v87 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v84) = v71;
        v75 = 8 * v84 + 8;
        v88 = *(v133 + 4);
        v89 = *(v133 + 5) - v88;
        v90 = (8 * v84 - v89);
        memcpy(v90, v88, v89);
        v91 = *(v133 + 4);
        *(v133 + 4) = v90;
        *(v133 + 5) = v75;
        *(v133 + 6) = 0;
        if (v91)
        {
          operator delete(v91);
        }
      }

      else
      {
        *v74 = v71;
        v75 = (v74 + 1);
      }

      *(v133 + 5) = v75;
      AVAudioEngineGraph::AddNode(v133, p_super);
      v92 = objc_msgSend_impl(p_super);
      v93 = AVAudioEngineGraph::_Connect(v133, v32, v92, v122, 0, a5);
      if (v93)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v94 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136316674;
          *&v170[4] = "AVAEInternal.h";
          *&v170[12] = 1024;
          *&v170[14] = 104;
          *&v170[18] = 2080;
          *&v170[20] = "AVAudioEngineGraph.mm";
          v171 = 1024;
          v172 = 2593;
          v173 = 2080;
          v174 = "ConnectMultipleOutputs";
          v175 = 2080;
          v176 = "_Connect(inSrcImpl, [splitter impl], inSrcBus, kAudioUnitElement_Default, format)";
          v177 = 1024;
          v178 = v93;
          _os_log_impl(&dword_1BA5AC000, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", v170, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v93}];
      }

      v95 = objc_msgSend_impl(p_super);
      NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v133, v95);
    }

    if (((*NodeFromMap)[13])(NodeFromMap))
    {
      v96 = AVAudioEngineGraph::PerformCommand(v133, NodeFromMap, 4, 0, 0);
      if (v96)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v97 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136316674;
          *&v170[4] = "AVAEInternal.h";
          *&v170[12] = 1024;
          *&v170[14] = 104;
          *&v170[18] = 2080;
          *&v170[20] = "AVAudioEngineGraph.mm";
          v171 = 1024;
          v172 = 2613;
          v173 = 2080;
          v174 = "ConnectMultipleOutputs";
          v175 = 2080;
          v176 = "PerformCommand(*finalSrcNode, AVAudioEngineGraph::kAUUninitialize, NULL, 0)";
          v177 = 1024;
          v178 = v96;
          _os_log_impl(&dword_1BA5AC000, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", v170, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v96}];
      }

      (*(*NodeFromMap[3] + 120))(NodeFromMap[3], v129);
      if (a5)
      {
        v98 = a5;
      }

      else
      {
        v98 = v121;
      }

      if (v98 && v129)
      {
        v99 = 0;
        do
        {
          (*(*NodeFromMap[3] + 64))(NodeFromMap[3], v99, v98);
          v100 = NodeFromMap[14];
          if (v100)
          {
            v101 = (*(*v100[3] + 48))(v100[3], 0);
            if (([v101 isEqual:{(*(*NodeFromMap[3] + 48))(NodeFromMap[3], 0)}] & 1) == 0)
            {
              if (AVAudioEngineLogCategory(void)::once != -1)
              {
                dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
              }

              v102 = *AVAudioEngineLogCategory(void)::category;
              if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
              {
                *v170 = 136316418;
                *&v170[4] = "AVAEInternal.h";
                *&v170[12] = 1024;
                *&v170[14] = 71;
                *&v170[18] = 2080;
                *&v170[20] = "AVAudioEngineGraph.mm";
                v171 = 1024;
                v172 = 2624;
                v173 = 2080;
                v174 = "ConnectMultipleOutputs";
                v175 = 2080;
                v176 = "[midiInputImpl->GetOutputFormat(0) isEqual:finalSrcNode->NodeImpl()->GetOutputFormat(0)]";
                _os_log_impl(&dword_1BA5AC000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v170, 0x36u);
              }

              [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[midiInputImpl->GetOutputFormat(0) isEqual:finalSrcNode->NodeImpl()->GetOutputFormat(0)]"}];
            }
          }

          ++v99;
        }

        while (v129 != v99);
      }
    }

    if (((*NodeFromMap)[14])(NodeFromMap))
    {
      v103 = 0;
    }

    else
    {
      v103 = v122;
    }

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v104 = [(NSArray *)a3 countByEnumeratingWithState:&v141 objects:v170 count:16];
    v105 = v133;
    if (v104)
    {
      v106 = *v142;
      do
      {
        v107 = 0;
        do
        {
          if (*v142 != v106)
          {
            objc_enumerationMutation(a3);
          }

          v108 = *(*(&v141 + 1) + 8 * v107);
          if (!v108)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v109 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *__dst = 136316418;
              *&__dst[4] = "AVAEInternal.h";
              *&__dst[12] = 1024;
              *&__dst[14] = 71;
              *&__dst[18] = 2080;
              *&__dst[20] = "AVAudioEngineGraph.mm";
              v180 = 1024;
              v181 = 2636;
              v182 = 2080;
              v183 = "ConnectMultipleOutputs";
              v184 = 2080;
              v185 = "avConnPoint";
              _os_log_impl(&dword_1BA5AC000, v109, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", __dst, 0x36u);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "avConnPoint"}];
          }

          v110 = objc_msgSend_impl([v108 node]);
          v111 = AVAudioEngineGraph::GetNodeFromMap(v105, v110);
          v112 = (*(*v110 + 240))(v110, [v108 bus]);
          if (*(v133 + 185) == 1 && *(*(v111 + 24) + 48) == 1 && (*(*v111 + 120))(v111) && (*(v111 + 32) & 2) != 0)
          {
            *__dst = NodeFromMap;
            *&__dst[8] = v103;
            *&__dst[16] = v111;
            *&__dst[24] = v112;
            AVAudioEngineGraph::AddPendingConnection(v133, 0, __dst, 0);
          }

          else
          {
            v113 = AVAudioEngineGraph::_Connect(v133, NodeFromMap[3], v110, v103, v112, a5);
            if (v113)
            {
              if (AVAudioEngineLogCategory(void)::once != -1)
              {
                dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
              }

              v114 = *AVAudioEngineLogCategory(void)::category;
              if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
              {
                *__dst = 136316674;
                *&__dst[4] = "AVAEInternal.h";
                *&__dst[12] = 1024;
                *&__dst[14] = 104;
                *&__dst[18] = 2080;
                *&__dst[20] = "AVAudioEngineGraph.mm";
                v180 = 1024;
                v181 = 2650;
                v182 = 2080;
                v183 = "ConnectMultipleOutputs";
                v184 = 2080;
                v185 = "_Connect(finalSrcNode->NodeImpl(), destImpl, srcBus, destBus, format)";
                v186 = 1024;
                v187 = v113;
                _os_log_impl(&dword_1BA5AC000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", __dst, 0x3Cu);
              }

              [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v113}];
            }
          }

          if ((*(*v111 + 120))(v111))
          {
            *__dst = __dst;
            *&__dst[8] = __dst;
            *&__dst[16] = 0;
            v115 = v146;
LABEL_270:
            while (v115 != &v145)
            {
              if (v115[4] == v111 && *(v115 + 10) == v112)
              {
                for (ii = v115[1]; ; ii = ii[1])
                {
                  if (ii == &v145)
                  {
                    std::list<AUGraphConnection>::splice(__dst, __dst, &v145, v115, ii);
                    v115 = ii;
                    goto LABEL_270;
                  }

                  if (ii[4] != v111 || *(ii + 10) != v112)
                  {
                    break;
                  }
                }

                std::list<AUGraphConnection>::splice(__dst, __dst, &v145, v115, ii);
              }

              else
              {
                ii = v115;
              }

              v115 = ii[1];
            }

            std::__list_imp<AUGraphConnection>::clear(__dst);
          }

          v103 = v103 + ((*NodeFromMap)[14])(NodeFromMap);
          ++v107;
          v105 = v133;
        }

        while (v107 != v104);
        v117 = [(NSArray *)a3 countByEnumeratingWithState:&v141 objects:v170 count:16];
        v104 = v117;
      }

      while (v117);
    }

    for (jj = v146; jj != &v145; jj = *(jj + 1))
    {
      AVAudioEngineGraph::AddPendingConnection(v105, 0, jj + 1, 0);
    }

    v138 = 0;
    v139 = 0;
    v140 = 0;
    updated = AVAudioEngineGraph::UpdateGraphAfterReconfig(v105, &v138, 2);
    if (updated)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v120 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136316674;
        *&__dst[4] = "AVAEInternal.h";
        *&__dst[12] = 1024;
        *&__dst[14] = 104;
        *&__dst[18] = 2080;
        *&__dst[20] = "AVAudioEngineGraph.mm";
        v180 = 1024;
        v181 = 2672;
        v182 = 2080;
        v183 = "ConnectMultipleOutputs";
        v184 = 2080;
        v185 = "UpdateGraphAfterReconfig(&disjointNodes, graphTraversalMode)";
        v186 = 1024;
        v187 = updated;
        _os_log_impl(&dword_1BA5AC000, v120, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", __dst, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", updated}];
      if (v138)
      {
        v139 = v138;
        operator delete(v138);
      }
    }

    std::__list_imp<AUGraphConnection>::clear(&v145);
    goto LABEL_298;
  }

  for (kk = v152; kk != &v151; kk = kk[1])
  {
    v156[0] = 0u;
    memset(buf, 0, sizeof(buf));
    v51 = [(NSArray *)a3 countByEnumeratingWithState:buf objects:v157 count:16];
    if (!v51)
    {
      goto LABEL_139;
    }

    v52 = **&buf[16];
LABEL_126:
    v53 = 0;
    while (1)
    {
      if (**&buf[16] != v52)
      {
        objc_enumerationMutation(a3);
      }

      v54 = *(*&buf[8] + 8 * v53);
      if (!v54)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v55 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136316418;
          *&v170[4] = "AVAEInternal.h";
          *&v170[12] = 1024;
          *&v170[14] = 71;
          *&v170[18] = 2080;
          *&v170[20] = "AVAudioEngineGraph.mm";
          v171 = 1024;
          v172 = 2489;
          v173 = 2080;
          v174 = "ConnectMultipleOutputs";
          v175 = 2080;
          v176 = "avConnPoint";
          _os_log_impl(&dword_1BA5AC000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v170, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "avConnPoint"}];
      }

      if ([v54 node] == *(kk[2] + 16))
      {
        v56 = [v54 bus];
        if (v56 == (*(**(kk[2] + 24) + 248))(*(kk[2] + 24), *(kk + 6)))
        {
          break;
        }
      }

      if (v51 == ++v53)
      {
        v51 = [(NSArray *)a3 countByEnumeratingWithState:buf objects:v157 count:16];
        if (!v51)
        {
LABEL_139:
          operator new();
        }

        goto LABEL_126;
      }
    }
  }

  if (v150 || v129 > v153)
  {
    goto LABEL_143;
  }

LABEL_298:
  std::__list_imp<AUGraphConnection>::clear(&v148);
  std::__list_imp<AUGraphConnection>::clear(&v151);
  std::recursive_mutex::unlock((v124 + 112));
}

void sub_1BA6BC4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  std::__list_imp<AUGraphConnection>::clear(&a44);
  std::__list_imp<AUGraphConnection>::clear(&a47);
  std::__list_imp<AUGraphConnection>::clear(&a50);
  std::recursive_mutex::unlock((a14 + 112));
  _Unwind_Resume(a1);
}

AVAudioConnectionPoint *AVAudioEngineImpl::GetInputConnectionPointForNode(AVAudioEngineImpl *this, AVAudioNode *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 && [*(this + 3) containsObject:a2])
  {
    v6 = *(this + 1);

    return AVAudioEngineGraph::GetInputConnectionPointForNode(v6, a2, a3);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 71;
      v13 = 2080;
      v14 = "AVAudioEngine.mm";
      v15 = 1024;
      v16 = 1142;
      v17 = 2080;
      v18 = "GetInputConnectionPointForNode";
      v19 = 2080;
      v20 = "node != nil && [_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil && [_nodes containsObject: node]"}];
    return AVAudioEngineGraph::GetInputConnectionPointForNode(*(this + 1), a2, a3);
  }
}

BOOL AVAudioEngineImpl::Connect(id *this, AVAudioNode *a2, AVAudioNode *a3, uint64_t a4, uint64_t a5, AVAudioFormat *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v12 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v13 = *this;
    *buf = 136316930;
    v31 = "AVAudioEngine.mm";
    v32 = 1024;
    v33 = 974;
    v34 = 2048;
    v35 = v13;
    v36 = 2048;
    *v37 = a2;
    *&v37[8] = 2048;
    *&v37[10] = a4;
    *&v37[18] = 2048;
    *&v37[20] = a3;
    v38 = 2048;
    v39 = a5;
    v40 = 2080;
    v41 = [-[AVAudioFormat description](a6 "description")];
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: connect node1: %p (from bus: %lu) -> node2: %p (to bus: %lu), format: %s", buf, 0x4Eu);
  }

  v28 = a4;
  v29 = a5;
  if (a2)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v14)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = "AVAEInternal.h";
      v32 = 1024;
      v33 = 71;
      v34 = 2080;
      v35 = "AVAudioEngine.mm";
      v36 = 1024;
      *v37 = 976;
      *&v37[4] = 2080;
      *&v37[6] = "Connect";
      *&v37[14] = 2080;
      *&v37[16] = "node1 != nil && node2 != nil";
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node1 != nil && node2 != nil"}];
  }

  if (a2 == a3)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = "AVAEInternal.h";
      v32 = 1024;
      v33 = 71;
      v34 = 2080;
      v35 = "AVAudioEngine.mm";
      v36 = 1024;
      *v37 = 977;
      *&v37[4] = 2080;
      *&v37[6] = "Connect";
      *&v37[14] = 2080;
      *&v37[16] = "node1 != node2";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node1 != node2"}];
  }

  if (![this[3] containsObject:a2] || (objc_msgSend(this[3], "containsObject:", a3) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v18 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = "AVAEInternal.h";
      v32 = 1024;
      v33 = 71;
      v34 = 2080;
      v35 = "AVAudioEngine.mm";
      v36 = 1024;
      *v37 = 978;
      *&v37[4] = 2080;
      *&v37[6] = "Connect";
      *&v37[14] = 2080;
      *&v37[16] = "[_nodes containsObject: node1] && [_nodes containsObject: node2]";
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node1] && [_nodes containsObject: node2]"}];
  }

  v19 = this[1];
  if ((v15 & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v20 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = "AVAEInternal.h";
      v32 = 1024;
      v33 = 71;
      v34 = 2080;
      v35 = "AVAudioEngineGraph.mm";
      v36 = 1024;
      *v37 = 2146;
      *&v37[4] = 2080;
      *&v37[6] = "Connect";
      *&v37[14] = 2080;
      *&v37[16] = "inSrcAVNode && inDestAVNode";
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcAVNode && inDestAVNode"}];
  }

  v21 = objc_msgSend_impl(a2);
  v22 = objc_msgSend_impl(a3);
  v23 = v22;
  if (!v21 || !v22)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v24 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = "AVAEInternal.h";
      v32 = 1024;
      v33 = 71;
      v34 = 2080;
      v35 = "AVAudioEngineGraph.mm";
      v36 = 1024;
      *v37 = 2150;
      *&v37[4] = 2080;
      *&v37[6] = "Connect";
      *&v37[14] = 2080;
      *&v37[16] = "inSrcImpl && inDestImpl";
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl && inDestImpl"}];
  }

  v25 = (*(*v21 + 240))(v21, v28);
  v26 = (*(*v23 + 240))(v23, v29);
  return AVAudioEngineGraph::_Connect(v19, v21, v23, v25, v26, a6) == 0;
}

void AVAudioEngineImpl::Pause(AVAudioEngineImpl *this, NSError **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((this + 112), this + 176);
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v4 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    v6 = *(this + 1);
    if (v6)
    {
      v7 = v6[208];
      v6 += 184;
      if (v7)
      {
        v6 = this + 64;
      }

      LODWORD(v6) = *v6;
    }

    v10 = 136315906;
    v11 = "AVAudioEngine.mm";
    v12 = 1024;
    v13 = 1219;
    v14 = 2048;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: pause, was running %d", &v10, 0x22u);
  }

  v8 = *(this + 1);
  if (v8)
  {
    v9 = AVAudioEngineGraph::Stop(v8, a2);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 1221, "Pause", "_graph->Stop(outErr)", v9, a2);
  }

  *(this + 64) = 0;
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 176);
  std::recursive_mutex::unlock((this + 112));
}

void sub_1BA6BD01C(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 176);
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA6BD1DC(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 176);
  std::recursive_mutex::unlock((v1 + 112));
  std::recursive_mutex::unlock((v2 + 112));
  _Unwind_Resume(a1);
}

uint64_t AVAudioEngineImpl::GetOutputNode(AVAudioEngineImpl *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(*(this + 1) + 187);
    v4 = [*(this + 5) isInManualRenderingMode];
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (v4 == v3)
      {
        return *(this + 5);
      }
    }

    else if ([v2 manualRenderingMode] == *(*(this + 1) + 192))
    {
      return *(this + 5);
    }
  }

  AVAudioEngineImpl::UpdateOutputNode(this, 1);
  if (!*(this + 5))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 71;
      v12 = 2080;
      v13 = "AVAudioEngine.mm";
      v14 = 1024;
      v15 = 668;
      v16 = 2080;
      v17 = "GetOutputNode";
      v18 = 2080;
      v19 = "_outputNode != nil";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_outputNode != nil"}];
  }

  return *(this + 5);
}

AVAudioFormat *AVAudioEngineImpl::GetManualRenderingFormat(AVAudioEngineImpl *this)
{
  if (*(*(this + 1) + 187))
  {
    OutputNode = AVAudioEngineImpl::GetOutputNode(this);

    return [OutputNode outputFormatForBus:0];
  }

  else
  {

    return +[AVAudioFormat formatWithInvalidSampleRateAndChannelCount];
  }
}

void sub_1BA6BD630(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 112));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA6BE428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, FILE *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  fclose(a15);
  free(a16);
  std::recursive_mutex::unlock((a13 + 112));
  std::recursive_mutex::unlock((a14 + 112));
  _Unwind_Resume(a1);
}

uint64_t AVAudioEngineImpl::Initialize(AVAudioEngineImpl *this, NSError **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v4 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v5 = *this;
    v9 = 136315650;
    v10 = "AVAudioEngine.mm";
    v11 = 1024;
    v12 = 1154;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: initialize", &v9, 0x1Cu);
  }

  v6 = *(this + 1);
  if ((*(v6 + 187) & 1) == 0)
  {
    v7 = *(this + 7);
    if (v7)
    {
      (*(*v7 + 56))(*(this + 7));
      v6 = *(this + 1);
    }
  }

  return AVAudioEngineGraph::Initialize(v6, a2);
}

void sub_1BA6BF47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::recursive_mutex::unlock((a11 + 112));
  std::recursive_mutex::unlock((a12 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA6BFD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::recursive_mutex::unlock((a11 + 112));
  std::recursive_mutex::unlock((a12 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA6C0588(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 112));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<AVAudioEngineGraph>::reset[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    std::recursive_mutex::lock((*v1 + 112));
    v21 = 0;
    AVAudioEngineGraph::Stop(v1, &v21);
    std::unique_ptr<AVAEGraphStateTracker>::reset[abi:ne200100](v1 + 27, 0);
    v3 = v1[10];
    if (v3)
    {
      if (v3[1] && v3[2])
      {
        MusicSequenceSetAudioGraph();
        v3[1] = 0;
      }

      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1BFAF5800](v4, 0x80C40C96DFCA5);
      }

      v3[2] = 0;
      v5 = v3[3];
      if (v5)
      {
        MEMORY[0x1BFAF5800](v5, 0x80C40803F642BLL);
      }

      v3[3] = 0;
      MEMORY[0x1BFAF5800](v3, 0x20C40769AC3DALL);
    }

    v1[10] = 0;
    v6 = v1[1];
    if (v6)
    {
      v9 = *v6;
      v7 = v6 + 1;
      v8 = v9;
      if (v9 != v7)
      {
        do
        {
          v10 = v8[5];
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          v11 = v8[1];
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
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          v8 = v12;
        }

        while (v12 != v7);
      }
    }

    v14 = v1[4];
    v15 = v1[5];
    while (v14 != v15)
    {
      v16 = *v14++;
    }

    v17 = v1[1];
    if (v17)
    {
      std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(*(v17 + 8));
      MEMORY[0x1BFAF5800](v17, 0x1020C4062D53EE8);
    }

    std::recursive_mutex::unlock((v2 + 112));
    std::unique_ptr<AVAEGraphStateTracker>::reset[abi:ne200100](v1 + 27, 0);
    std::__list_imp<AUGraphConnection>::clear(v1 + 20);
    std::__list_imp<AUGraphConnection>::clear(v1 + 17);
    v18 = v1[11];
    if (v18)
    {
      v1[12] = v18;
      operator delete(v18);
    }

    v19 = v1[7];
    if (v19)
    {
      v1[8] = v19;
      operator delete(v19);
    }

    v20 = v1[4];
    if (v20)
    {
      v1[5] = v20;
      operator delete(v20);
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void sub_1BA6C18EC(_Unwind_Exception *a1)
{
  std::unique_ptr<AVAEBlock<AVAudioEngineManualRenderingStatus({block_pointer})(unsigned int,AudioBufferList *,int *)>>::reset[abi:ne200100](v4, 0);
  v6 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<AVAudioEngineGraph>::reset[abi:ne200100](v3);
  MEMORY[0x1BFAF5800](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1BA6C1A78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  MEMORY[0x1BFAF5800](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t AVAudioEngineImpl::SetInputNodeRenderCallback(AVAudioNodeImplBase **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  std::recursive_mutex::lock((*a1 + 112));
  if (*(a1 + 187) == 1 && (*(a1 + 185) & 1) == 0 && (NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(a1, a1[2])) != 0)
  {
    v8 = (*(*NodeFromMap + 160))(NodeFromMap, a2, a3);
  }

  else
  {
    v8 = 0;
  }

  std::recursive_mutex::unlock((v6 + 112));
  return v8;
}

void ___ZN17AVAudioEngineImpl26IOUnitConfigurationChangedEv_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  if (!v2)
  {
    v3 = *v1;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v1;
      *buf = 136315650;
      *&buf[4] = "AVAudioEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1437;
      *&buf[18] = 2048;
      *&buf[20] = v5;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: iounit configuration changed > posting notification", buf, 0x1Cu);
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    atomic_store(0, v1 + 96);
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v1;
      *buf = 136315650;
      *&buf[4] = "AVAudioEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1442;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: iounit configuration changed < posted notification", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&buf[24] = __Block_byref_object_copy__8800;
    v11 = __Block_byref_object_dispose__8801;
    v12 = *v1;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN17AVAudioEngineImpl26IOUnitConfigurationChangedEv_block_invoke_176;
    block[3] = &unk_1E7EF6988;
    block[4] = buf;
    dispatch_async(global_queue, block);
    _Block_object_dispose(buf, 8);
  }
}

void ___ZN17AVAudioEngineImpl26IOUnitConfigurationChangedEv_block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v2 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v3 = *v1;
    v10 = 136315650;
    v11 = "AVAudioEngine.mm";
    v12 = 1024;
    v13 = 1456;
    v14 = 2048;
    v15 = v3;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: iounit configuration changed > setting flag", &v10, 0x1Cu);
  }

  atomic_store(1u, v1 + 96);
  std::recursive_mutex::lock((v1 + 14));
  v4 = v1[1];
  if (v4)
  {
    v5 = *(v4 + 208);
    v6 = (v4 + 184);
    if (v5)
    {
      v6 = v1 + 8;
    }

    if (*v6 == 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v7 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *v1;
        v10 = 136315650;
        v11 = "AVAudioEngine.mm";
        v12 = 1024;
        v13 = 1461;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: iounit configuration changed > stopping the engine", &v10, 0x1Cu);
      }

      AVAudioEngineImpl::Stop(v1, 0);
    }
  }

  std::recursive_mutex::unlock((v1 + 14));
  ++*(v1 + 20);
  v9 = dispatch_time(0, 100000000);
  dispatch_after(v9, v1[9], v1[11]);
}

void ___ZN17AVAudioEngineImpl13IOUnitStoppedEv_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  std::recursive_mutex::lock((v1 + 14));
  v2 = v1[1];
  if (v2)
  {
    if (v2[208])
    {
      v3 = v1 + 8;
    }

    else
    {
      v3 = v2 + 184;
    }

    if (*v3 == 1 && (v2[232] & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v4 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v1;
        v6 = 136315650;
        v7 = "AVAudioEngine.mm";
        v8 = 1024;
        v9 = 1484;
        v10 = 2048;
        v11 = v5;
        _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: iounit stopped unexpectedly > pausing the engine", &v6, 0x1Cu);
      }

      AVAudioEngineImpl::Pause(v1, 0);
      v2 = v1[1];
    }

    v2[232] = 0;
  }

  std::recursive_mutex::unlock((v1 + 14));
}

uint64_t AVAudioEngineImpl::IsIOUnitRunning(AVAudioEngineImpl *this)
{
  v1 = *(this + 1);
  if (v1[187] == 1)
  {
    v2 = v1[208];
    v3 = v1 + 184;
    if (v2)
    {
      v3 = this + 64;
    }

    v4 = *v3;
  }

  else
  {
    v5 = *(this + 7);
    if (v5)
    {
      return (*(*v5 + 48))();
    }

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t AVAudioEngineImpl::LastRenderErrorInChain(AVAudioEngineImpl *this, AVAudioNodeImplBase *a2, AVAudioNodeImplBase *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *this = 0;
    *(this + 16) = 0;
    v5 = a2;
    v6 = a3;
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      v15 = 2080;
      *v16 = "AVAudioEngineGraph.mm";
      *&v16[8] = 1024;
      *&v16[10] = 4301;
      v17 = 2080;
      v18 = "LastRenderErrorInChain";
      v19 = 2080;
      v20 = "startNodeImpl";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "startNodeImpl"}];
    *this = 0;
    *(this + 16) = 0;
    v5 = a2;
    v6 = 0;
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v5, v6);
  v9 = NodeFromMap;
  if (NodeFromMap)
  {
    v10 = NodeFromMap + 32;
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      v15 = 2080;
      *v16 = "AVAudioEngineGraph.mm";
      *&v16[8] = 1024;
      *&v16[10] = 4306;
      v17 = 2080;
      v18 = "LastRenderErrorInChain";
      v19 = 2080;
      v20 = "startNode";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "startNode"}];
    v10 = 32;
  }

  v12 = ((*v10 >> 1) & 1) == 0;
  *buf = &unk_1F384D738;
  *&buf[8] = this;
  *&v16[4] = buf;
  AUGraphParser::TraverseGraphNodes(v12, 1, v9, 0, buf);
  return std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
}

void AVAudioEngineImpl::InstallTapOnNode(char **a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v57 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v12 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a1;
    *buf = 136316674;
    v48 = "AVAudioEngine.mm";
    v49 = 1024;
    v50 = 1536;
    v51 = 2048;
    v52 = v13;
    v53 = 2048;
    *v54 = a2;
    *&v54[8] = 2048;
    *&v54[10] = a3;
    *&v54[18] = 1024;
    *&v54[20] = a4;
    v55 = 2080;
    v56 = [objc_msgSend(a5 "description")];
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: install tap on node %p, bus%lu, bufferSize %d, format: %s", buf, 0x40u);
  }

  v14 = a1[1];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v48 = "AVAEInternal.h";
      v49 = 1024;
      v50 = 71;
      v51 = 2080;
      v52 = "AVAudioEngineGraph.mm";
      v53 = 1024;
      *v54 = 2012;
      *&v54[4] = 2080;
      *&v54[6] = "InstallTapOnNode";
      *&v54[14] = 2080;
      *&v54[16] = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  v16 = objc_msgSend_impl(a2);
  v17 = *v14;
  std::recursive_mutex::lock((*v14 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v14, v16))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v18 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v48 = "AVAEInternal.h";
      v49 = 1024;
      v50 = 71;
      v51 = 2080;
      v52 = "AVAudioEngineGraph.mm";
      v53 = 1024;
      *v54 = 2017;
      *&v54[4] = 2080;
      *&v54[6] = "InstallTapOnNode";
      *&v54[14] = 2080;
      *&v54[16] = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v14, *(v14 + 2));
  v20 = AVAudioEngineGraph::GetNodeFromMap(v14, v16);
  if (v14[185] == 1 && NodeFromMap)
  {
    v21 = (*(*NodeFromMap + 136))(NodeFromMap);
    v22 = a5 ? v21 : 1;
    if (v22 & 1) == 0 && (*(v20 + 32))
    {
      v23 = (*(**(NodeFromMap + 3) + 72))(*(NodeFromMap + 3), 0);
      [a5 sampleRate];
      v25 = v24;
      [v23 sampleRate];
      if (v25 != v26)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v27 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v48 = "AVAEInternal.h";
          v49 = 1024;
          v50 = 71;
          v51 = 2080;
          v52 = "AVAudioEngineGraph.mm";
          v53 = 1024;
          *v54 = 2031;
          *&v54[4] = 2080;
          *&v54[6] = "InstallTapOnNode";
          *&v54[14] = 2080;
          *&v54[16] = "format.sampleRate == inputHWFormat.sampleRate";
          _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "format.sampleRate == inputHWFormat.sampleRate"}];
      }
    }
  }

  if ((*(*v20 + 80))(v20, a3, a4, a5, a6) == -10868)
  {
    v28 = atomic_load((*v14 + 96));
    if (v28)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v29 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "AVAudioEngineGraph.mm";
        v49 = 1024;
        v50 = 2037;
        _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create tap, config change pending!", buf, 0x12u);
      }

      goto LABEL_41;
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"Failed to create tap due to format mismatch, %@", a5}];
  }

  if (v14[185] != 1 || !NodeFromMap || (*(v20 + 32) & 2) != 0 || (AUGraphParser::IsNodeConnectedToTarget(0, v20, v14 + 11) & 1) != 0)
  {
LABEL_41:
    std::recursive_mutex::unlock((v17 + 112));
    return;
  }

  v45[0] = v45;
  v45[1] = v45;
  v46 = 0;
  AVAudioEngineGraph::GetPendingConnection(v14, 1, v20, v45);
  if (*(*(v20 + 24) + 48))
  {
    goto LABEL_55;
  }

  v30 = *(v20 + 48);
  v31 = *(v20 + 56);
  if (v30 == v31)
  {
    v34 = 1;
  }

  else
  {
    v32 = 0;
    do
    {
      if (*v30++)
      {
        ++v32;
      }
    }

    while (v30 != v31);
    v34 = v32 == 0;
  }

  if (!v34 || v46 != 0)
  {
LABEL_55:
    AVAudioEngineGraph::SetNodesToPullEnabled(v14, 0);
    active = AUGraphParser::InitializeActiveNodesInInputChain(v14, NodeFromMap, v36);
    if (!active)
    {
      goto LABEL_67;
    }

    (*(*v20 + 88))(v20, a3);
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize active nodes in input chain! Engine@%p, err = %d", **v14, active];
    v39 = atomic_load((*v14 + 96));
    if ((v39 & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v42 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        v43 = [v38 UTF8String];
        *buf = 136315650;
        v48 = "AVAudioEngineGraph.mm";
        v49 = 1024;
        v50 = 2086;
        v51 = 2080;
        v52 = v43;
        _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"%s", objc_msgSend(v38, "UTF8String")}];
      goto LABEL_67;
    }

    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v40 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v41 = [v38 UTF8String];
      *buf = 136315650;
      v48 = "AVAudioEngineGraph.mm";
      v49 = 1024;
      v50 = 2083;
      v51 = 2080;
      v52 = v41;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d %s, config change pending", buf, 0x1Cu);
    }
  }

  active = 0;
LABEL_67:
  std::__list_imp<AUGraphConnection>::clear(v45);
  std::recursive_mutex::unlock((v17 + 112));
  if (active)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v44 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v48 = "AVAEInternal.h";
      v49 = 1024;
      v50 = 104;
      v51 = 2080;
      v52 = "AVAudioEngine.mm";
      v53 = 1024;
      *v54 = 1537;
      *&v54[4] = 2080;
      *&v54[6] = "InstallTapOnNode";
      *&v54[14] = 2080;
      *&v54[16] = "_graph->InstallTapOnNode(inNode, bus, bufferSize, format, tapBlock)";
      v55 = 1024;
      LODWORD(v56) = active;
      _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", active}];
  }
}

void sub_1BA6C2E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__list_imp<AUGraphConnection>::clear(va);
  std::recursive_mutex::unlock((v7 + 112));
  _Unwind_Resume(a1);
}

void AVAudioEngineImpl::RemoveTapOnNode(char **this, AVAudioNode *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v6 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v7 = *this;
    *buf = 136316162;
    v26 = "AVAudioEngine.mm";
    v27 = 1024;
    v28 = 1541;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    *v32 = a2;
    *&v32[8] = 2048;
    *&v32[10] = a3;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: remove tap from node %p, bus%lu", buf, 0x30u);
  }

  v8 = this[1];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v26 = "AVAEInternal.h";
      v27 = 1024;
      v28 = 71;
      v29 = 2080;
      v30 = "AVAudioEngineGraph.mm";
      v31 = 1024;
      *v32 = 2099;
      *&v32[4] = 2080;
      *&v32[6] = "RemoveTapOnNode";
      *&v32[14] = 2080;
      *&v32[16] = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  v10 = objc_msgSend_impl(a2);
  v11 = *v8;
  std::recursive_mutex::lock((*v8 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v8, v10))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v26 = "AVAEInternal.h";
      v27 = 1024;
      v28 = 71;
      v29 = 2080;
      v30 = "AVAudioEngineGraph.mm";
      v31 = 1024;
      *v32 = 2104;
      *&v32[4] = 2080;
      *&v32[6] = "RemoveTapOnNode";
      *&v32[14] = 2080;
      *&v32[16] = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v8, *(v8 + 2));
  v14 = AVAudioEngineGraph::GetNodeFromMap(v8, v10);
  v15 = v14;
  v17 = *(v8 + 11);
  v16 = *(v8 + 12);
  if (v17 == v16)
  {
LABEL_21:
    v18 = *(v8 + 12);
  }

  else
  {
    v18 = *(v8 + 11);
    while (*v18 != v14)
    {
      if (++v18 == v16)
      {
        goto LABEL_21;
      }
    }
  }

  v19 = v8[185] != 1 || NodeFromMap == 0;
  if (v19 || v16 == v18 || ((v14[8] & 2) == 0 ? (v20 = v17 == v16) : (v20 = 1), v20))
  {
    (*(*v14 + 88))(v14, a3);
    goto LABEL_42;
  }

  AVAudioEngineGraph::SetNodesToPullEnabled(v8, 0);
  (*(*v15 + 88))(v15, a3);
  active = AUGraphParser::InitializeActiveNodesInInputChain(v8, NodeFromMap, v21);
  if (!active)
  {
LABEL_42:
    std::recursive_mutex::unlock((v11 + 112));
    return;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v23 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    v26 = "AVAEInternal.h";
    v27 = 1024;
    v28 = 104;
    v29 = 2080;
    v30 = "AVAudioEngineGraph.mm";
    v31 = 1024;
    *v32 = 2133;
    *&v32[4] = 2080;
    *&v32[6] = "RemoveTapOnNode";
    *&v32[14] = 2080;
    *&v32[16] = "err = AUGraphParser::InitializeActiveNodesInInputChain(ThisGraph, *inputNode)";
    v33 = 1024;
    v34 = active;
    _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", active}];
  std::recursive_mutex::unlock((v11 + 112));
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v24 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    v26 = "AVAEInternal.h";
    v27 = 1024;
    v28 = 104;
    v29 = 2080;
    v30 = "AVAudioEngine.mm";
    v31 = 1024;
    *v32 = 1542;
    *&v32[4] = 2080;
    *&v32[6] = "RemoveTapOnNode";
    *&v32[14] = 2080;
    *&v32[16] = "_graph->RemoveTapOnNode(inNode, bus)";
    v33 = 1024;
    v34 = active;
    _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", active}];
}

void AVAudioEngineImpl::NodeRenderingStateChanged(AVAudioEngineImpl *this, AVAudioNodeImplBase *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(this, a2))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v10 = "AVAEInternal.h";
      v11 = 1024;
      v12 = 71;
      v13 = 2080;
      v14 = "AVAudioEngineGraph.mm";
      v15 = 1024;
      v16 = 3245;
      v17 = 2080;
      v18 = "NodeRenderingStateChanged";
      v19 = 2080;
      v20 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, a2);
  v7 = *(this + 7);
  v8 = *(this + 8);
  if (v7 != v8)
  {
    while (*v7 != NodeFromMap)
    {
      if (++v7 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  if (v7 != v8)
  {
    AVAudioEngineGraph::MonitorState(this);
  }

LABEL_13:
  std::recursive_mutex::unlock((v4 + 112));
}

void caulk::mach::error_category::message(caulk::mach::error_category *this@<X0>, mach_error_t a2@<W1>, std::string *a3@<X8>)
{
  v5 = (*(*this + 16))(this);
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v8 = std::string::append(&__dst, ": ", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = mach_error_string(a2);
  v11 = strlen(v10);
  v12 = std::string::append(&v14, v10, v11);
  *a3 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1BA6C39F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA6C3BC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__objc2_meth_list *gAVAudioBufferLog()
{
  p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
  {
    p_opt_class_meths = (&OBJC_PROTOCOL___Endpointer + 48);
    if (v2)
    {
      gAVAudioBufferLog(void)::global = os_log_create("com.apple.avfaudio", "AVAB");
      p_opt_class_meths = (&OBJC_PROTOCOL___Endpointer + 48);
    }
  }

  return p_opt_class_meths[281];
}

void sub_1BA6C3F14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AVAudio3DMixingImpl::SetOcclusion(AVAudio3DMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = -100.0;
  }

  if (*(this + 15) == a2)
  {
    return 0;
  }

  v14 = v7;
  v9 = 0.0;
  if (a2 < 0.0)
  {
    v9 = a2;
  }

  if (a2 <= -100.0)
  {
    v10 = -100.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 15) = v10;
  v11 = *(*objc_msgSend_impl(*(this + 9), a3, v8, v14, v4, v3, v5) + 128);
  v12.n128_f32[0] = v10;

  return v11(v12);
}

uint64_t AVAudio3DMixingImpl::SetObstruction(AVAudio3DMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = -100.0;
  }

  if (*(this + 14) == a2)
  {
    return 0;
  }

  v14 = v7;
  v9 = 0.0;
  if (a2 < 0.0)
  {
    v9 = a2;
  }

  if (a2 <= -100.0)
  {
    v10 = -100.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 14) = v10;
  v11 = *(*objc_msgSend_impl(*(this + 9), a3, v8, v14, v4, v3, v5) + 128);
  v12.n128_f32[0] = v10;

  return v11(v12);
}

uint64_t AVAudio3DMixingImpl::SetPosition(AVAudio3DMixingImpl *this, AVAudio3DPoint a2, const char *a3)
{
  if (*(this + 11) == a2.x && *(this + 12) == a2.y && *(this + 13) == a2.z)
  {
    return 0;
  }

  *(this + 44) = a2;
  return AVAudio3DMixingImpl::RecalculateAndSetSphericalCoordsOnMixer(this, a3, *&a2.x);
}

uint64_t AVAudio3DMixingImpl::RecalculateAndSetSphericalCoordsOnMixer(AVAudio3DMixingImpl *this, const char *a2, __n128 a3)
{
  a3.n128_u64[0] = *(this + 44);
  v4 = *(this + 13);
  if (*(this + 7) != 3)
  {
    v20 = a3;
    v5 = objc_msgSend_impl(*(this + 9), a2);
    a3.n128_u64[1] = v20.n128_u64[1];
    a3.n128_u64[0] = vsub_f32(v20.n128_u64[0], v5[32]);
    v4 = v4 - v5[33].f32[0];
  }

  v6 = a3.n128_f32[1];
  v7 = sqrtf((vmuls_lane_f32(a3.n128_f32[1], a3.n128_u64[0], 1) + (a3.n128_f32[0] * a3.n128_f32[0])) + (v4 * v4));
  v8 = 0.0;
  v9 = 0.0;
  if (v7 > 0.0)
  {
    v20 = a3;
    v8 = atan2f(a3.n128_f32[0], -v4) * 180.0 * 0.318309873;
    v10 = hypotf(v20.n128_f32[0], v4);
    v11 = atan2f(v6, v10) * 180.0 * 0.318309873;
    if (v11 <= 90.0)
    {
      v9 = v11;
    }

    else
    {
      v9 = 180.0 - v11;
    }

    if (v9 < -90.0)
    {
      v9 = -180.0 - v9;
    }
  }

  v12 = *(this + 16);
  v13 = objc_msgSend_impl(*(this + 9), *&v20);
  LODWORD(v12) = (*(*v13 + 128))(v13, 0, 1, v12, v8);
  v14 = *(this + 16);
  v15 = objc_msgSend_impl(*(this + 9));
  LODWORD(v12) = v12 & (*(*v15 + 128))(v15, 1, 1, v14, v9);
  v16 = *(this + 9);
  v17 = *(this + 16);
  v18 = objc_msgSend_impl(v16);
  return v12 & (*(*v18 + 128))(v18, 2, 1, v17, v7);
}

uint64_t AVAudio3DMixingImpl::SetReverbBlend(AVAudio3DMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.0;
  }

  if (*(this + 10) == a2)
  {
    return 0;
  }

  v15 = v7;
  v9 = 1.0;
  if (a2 < 1.0)
  {
    v9 = a2;
  }

  if (a2 <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 10) = v10;
  v11 = v10 * 100.0;
  v12 = *(*objc_msgSend_impl(*(this + 9), a3, v8, v15, v4, v3, v5) + 128);
  v13.n128_f32[0] = v11;

  return v12(v13);
}

uint64_t AVAudio3DMixingImpl::SetRate(AVAudio3DMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.5;
  }

  if (*(this + 9) == a2)
  {
    return 0;
  }

  v14 = v7;
  v9 = 2.0;
  if (a2 < 2.0)
  {
    v9 = a2;
  }

  if (a2 <= 0.5)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = v9;
  }

  *(this + 9) = v10;
  v11 = *(*objc_msgSend_impl(*(this + 9), a3, v8, v14, v4, v3, v5) + 128);
  v12.n128_f32[0] = v10;

  return v11(v12);
}

uint64_t AVAudio3DMixingImpl::SetPointSourceInHeadMode(AVAudio3DMixingImpl *this, const char *a2)
{
  if (a2 <= 1)
  {
    v8 = v2;
    v9 = v3;
    if (*(this + 8) != a2)
    {
      *(this + 8) = a2;
      v7 = a2 == 1;
      v5 = objc_msgSend_impl(*(this + 9));
      (*(*v5 + 144))(v5, 3103, 1, *(this + 16), &v7, 4);
    }
  }

  return 0;
}

uint64_t AVAudio3DMixingImpl::SetSourceMode(AVAudio3DMixingImpl *this, const char *a2)
{
  result = 0;
  if (a2 <= 3 && *(this + 7) != a2)
  {
    *(this + 7) = a2;
    if ((a2 - 1) >= 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    v9 = v4;
    v5 = objc_msgSend_impl(*(this + 9));
    v6 = (*(*v5 + 144))(v5, 3005, 1, *(this + 16), &v9, 4);
    return v6 & AVAudio3DMixingImpl::RecalculateAndSetSphericalCoordsOnMixer(this, v7, v8);
  }

  return result;
}

uint64_t AVAudio3DMixingImpl::SetRenderingAlgorithm(AVAudio3DMixingImpl *this, const char *a2)
{
  result = 0;
  v5 = a2;
  if (a2 <= 7 && *(this + 6) != a2)
  {
    *(this + 6) = a2;
    v4 = objc_msgSend_impl(*(this + 9));
    return (*(*v4 + 144))(v4, 3000, 1, *(this + 16), &v5, 4);
  }

  return result;
}

uint64_t AVAudio3DMixingImpl::SetGain(AVAudio3DMixingImpl *this, float a2, const char *a3)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.0;
  }

  if (*(this + 4) == a2)
  {
    return 0;
  }

  v16 = v7;
  v17 = v4;
  v9 = 100000.0;
  if (a2 < 100000.0)
  {
    v9 = a2;
  }

  if (a2 <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 4) = v10;
  v11 = *(this + 9);
  if (v10 <= 0.0)
  {
    v12 = -120.0;
  }

  else
  {
    v12 = log10f(v10) * 20.0;
  }

  v14 = *(*objc_msgSend_impl(v11, v8, v16, v17, v3, v5) + 128);
  v15.n128_f32[0] = v12;

  return v14(v15);
}

AVAudioConnectionPoint *AVAudio3DMixingImpl::GetMixerConnectionPoint(void **this, const char *a2)
{
  v4 = objc_msgSend_impl(this[9], a2);
  v5 = (*(*v4 + 248))(v4, *(this + 16));
  v6 = this[9];

  return [AVAudioConnectionPoint connectionPointWithNode:v6 bus:v5];
}

void AVAudio3DMixingImpl::~AVAudio3DMixingImpl(void **this, const char *a2)
{
  AVAudio3DMixingImpl::~AVAudio3DMixingImpl(this, a2);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384B2E0;
  v4 = objc_msgSend_impl(this[9], a2);
  v5 = v4;
  v6 = v4[39];
  if (v6)
  {
    v7 = v4 + 39;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= this;
      v10 = v8 < this;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != v4 + 39 && v7[4] <= this)
    {
      (*(*v4 + 128))(v4, 5, 1, *(this + 16), 0.0);
      v11 = v7[1];
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
        v13 = v7;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (!v14);
      }

      if (v5[38] == v7)
      {
        v5[38] = v12;
      }

      v15 = v5[39];
      --v5[40];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v15, v7);
      operator delete(v7);
    }
  }

  *(this + 16) = 0;
  this[9] = 0;
}

uint64_t AUInterfaceBase::RemoveV2PropertyListener(AUInterfaceBase *this, AudioUnitPropertyID a2, void (__cdecl *a3)(void *, AudioUnit, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement), void *a4)
{
  v7 = (*(*this + 272))(this);

  return AudioUnitRemovePropertyListenerWithUserData(v7, a2, a3, a4);
}

uint64_t AUInterfaceBase::AddV2PropertyListener(AUInterfaceBase *this, AudioUnitPropertyID a2, void (__cdecl *a3)(void *, AudioUnit, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement), void *a4)
{
  v7 = (*(*this + 272))(this);

  return AudioUnitAddPropertyListener(v7, a2, a3, a4);
}

uint64_t AUInterfaceBase::GetV2PropertyInfo(AUInterfaceBase *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, unsigned int *a5, unsigned __int8 *a6)
{
  v11 = (*(*this + 272))(this);

  return AudioUnitGetPropertyInfo(v11, a2, a3, a4, a5, a6);
}

uint64_t AUInterfaceBase::GetV2Property(AUInterfaceBase *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, void *a5, unsigned int *a6)
{
  v11 = (*(*this + 272))(this);

  return AudioUnitGetProperty(v11, a2, a3, a4, a5, a6);
}

uint64_t AUInterfaceBase::SetV2Property(AUInterfaceBase *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, const void *a5, UInt32 a6)
{
  v11 = (*(*this + 272))(this);

  return AudioUnitSetProperty(v11, a2, a3, a4, a5, a6);
}

void *AUInterfaceBase::RemoveRenderCallback(AUInterfaceBase *this, uint64_t a2, const AURenderCallbackStruct *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  inputProcRefCon = a3->inputProcRefCon;
  v7[0] = 0;
  v7[1] = inputProcRefCon;
  result = (*(*this + 232))(this, 23, 1, a2, v7, 16);
  if (result)
  {
    v5 = result;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AUInterface.mm";
      v14 = 1024;
      v15 = 59;
      v16 = 2080;
      v17 = "RemoveRenderCallback";
      v18 = 2080;
      v19 = "SetV2Property(kAudioUnitProperty_SetRenderCallback, kAudioUnitScope_Input, element, &rcb, sizeof(rcb))";
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    return [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v5}];
  }

  return result;
}

void *AUInterfaceBase::AddRenderCallback(AUInterfaceBase *this, uint64_t a2, const AURenderCallbackStruct *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = (*(*this + 232))(this, 23, 1, a2, a3, 16);
  if (result)
  {
    v4 = result;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 104;
      v10 = 2080;
      v11 = "AUInterface.mm";
      v12 = 1024;
      v13 = 53;
      v14 = 2080;
      v15 = "AddRenderCallback";
      v16 = 2080;
      v17 = "SetV2Property(kAudioUnitProperty_SetRenderCallback, kAudioUnitScope_Input, element, &inRenderCallback, sizeof(inRenderCallback))";
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    return [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  return result;
}

const void **AUInterfaceBaseV3::RemoveRenderObserver(const void **this, const AURenderCallbackStruct *a2)
{
  v2 = this[7];
  v3 = this[6];
  if (v3 != v2)
  {
    v4 = this;
    v5 = -v3;
    while (*(v3 + 16) != a2->inputProc || *(v3 + 24) != a2->inputProcRefCon)
    {
      v3 += 32;
      v5 -= 32;
      if (v3 == v2)
      {
        return this;
      }
    }

    if (v3 != v2)
    {
      this = [(*(*this + 38))(this) removeRenderObserver:*v3];
      v6 = v4[7];
      if ((v3 + 32) != v6)
      {
        v7 = v4[6];
        v8 = -v7;
        v9 = (v7 - v5);
        do
        {
          v10 = &v9[v8];
          v11 = *&v9[v8 + 40];
          *v10 = *&v9[v8 + 32];
          *(v10 + 5) = 0;
          this = std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](&v9[v8 + 8], v11);
          *(v10 + 1) = *(v10 + 3);
          v9 += 32;
          v3 = &v9[v8];
        }

        while (&v9[v8 + 32] != v6);
        v6 = v4[7];
      }

      for (; v6 != v3; v6 -= 4)
      {
        this = std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](v6 - 3, 0);
      }

      v4[7] = v3;
    }
  }

  return this;
}

const void **std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>::~AVAEBlock(result);

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

const void **AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>::~AVAEBlock(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

void AUInterfaceBaseV3::AddRenderObserver(AUInterfaceBaseV3 *this, const AURenderCallbackStruct *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2->inputProc)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v2 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316418;
      *buf_4 = "AVAEInternal.h";
      *&buf_4[8] = 1024;
      *&buf_4[10] = 71;
      v5 = 2080;
      v6 = "AUInterface.mm";
      v7 = 1024;
      v8 = 682;
      v9 = 2080;
      v10 = "AddRenderObserver";
      v11 = 2080;
      v12 = "inRenderCallback.inputProc";
      _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inRenderCallback.inputProc"}];
  }

  *&buf_4[4] = 0;
  operator new();
}

uint64_t AUInterfaceBaseV3::SetOfflineMode(AUInterfaceBaseV3 *this, uint64_t a2)
{
  v3 = (*(*this + 304))(this);

  return [v3 setRenderingOffline:a2];
}

uint64_t AUInterfaceBaseV3::IsOffline(AUInterfaceBaseV3 *this)
{
  v1 = (*(*this + 304))(this);

  return [v1 isRenderingOffline];
}

uint64_t AUInterfaceBaseV3::SetMaxFramesPerSlice(AUInterfaceBaseV3 *this, uint64_t a2)
{
  v3 = (*(*this + 304))(this);

  return [v3 setMaximumFramesToRender:a2];
}

uint64_t AUInterfaceBaseV3::GetMaxFramesPerSlice(AUInterfaceBaseV3 *this)
{
  v1 = (*(*this + 304))(this);

  return [v1 maximumFramesToRender];
}

uint64_t AUInterfaceBaseV3::SendMIDIEventList(AUInterfaceBaseV3 *this, int a2, uint64_t a3, const MIDIEventList *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*this + 328))(this))
  {
    if (a4)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v8 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v13 = "AVAEInternal.h";
    v14 = 1024;
    v15 = 71;
    v16 = 2080;
    v17 = "AUInterface.mm";
    v18 = 1024;
    v19 = 647;
    v20 = 2080;
    v21 = "SendMIDIEventList";
    v22 = 2080;
    v23 = "nil != ScheduleMIDIEventListBlock()";
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != ScheduleMIDIEventListBlock()"}];
  if (!a4)
  {
LABEL_9:
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = "AUInterface.mm";
      v18 = 1024;
      v19 = 648;
      v20 = 2080;
      v21 = "SendMIDIEventList";
      v22 = 2080;
      v23 = "nullptr != eventList";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nullptr != eventList"}];
  }

LABEL_14:
  v10 = (*(*this + 328))(this);
  (*(v10 + 16))(v10, *&a2 | 0xFFFFFFFF00000000, a3, a4);
  return 1;
}

uint64_t AUInterfaceBaseV3::SendMIDIEvent(AUInterfaceBaseV3 *this, uint64_t a2, int a3, uint64_t a4, unsigned int a5, const unsigned __int8 *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(*this + 320))(this, a2))
  {
    if (a6)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v11 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v16 = "AVAEInternal.h";
    v17 = 1024;
    v18 = 71;
    v19 = 2080;
    v20 = "AUInterface.mm";
    v21 = 1024;
    v22 = 637;
    v23 = 2080;
    v24 = "SendMIDIEvent";
    v25 = 2080;
    v26 = "nil != ScheduleMIDIEventBlock()";
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != ScheduleMIDIEventBlock()"}];
  if (!a6)
  {
LABEL_9:
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v16 = "AVAEInternal.h";
      v17 = 1024;
      v18 = 71;
      v19 = 2080;
      v20 = "AUInterface.mm";
      v21 = 1024;
      v22 = 638;
      v23 = 2080;
      v24 = "SendMIDIEvent";
      v25 = 2080;
      v26 = "nullptr != midiBytes";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nullptr != midiBytes"}];
  }

LABEL_14:
  v13 = (*(*this + 320))(this);
  (*(v13 + 16))(v13, *&a3 | 0xFFFFFFFF00000000, a4, a5, a6);
  return 1;
}

uint64_t AUInterfaceBaseV3::GetParameter(AUInterfaceBaseV3 *this, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  result = (*(*this + 312))(this);
  if (result)
  {
    result = [(*(*this + 312))(this) parameterWithID:a2 scope:a3 element:a4];
    if (result || (result = [(*(*this + 312))(this) parameterWithAddress:a2]) != 0)
    {
      [result value];
      *a5 = v11;
      return 1;
    }
  }

  return result;
}

uint64_t AUInterfaceBaseV3::SetParameter(AUInterfaceBaseV3 *this, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  result = (*(*this + 312))(this);
  if (result)
  {
    result = [(*(*this + 312))(this) parameterWithID:a2 scope:a3 element:a4];
    if (result || (result = [(*(*this + 312))(this) parameterWithAddress:a2]) != 0)
    {
      *&v11 = a5;
      [result setValue:v11];
      return 1;
    }
  }

  return result;
}

void *AUInterfaceBaseV3::SetNumberOutputs(AUInterfaceBaseV3 *this, unsigned int a2)
{
  *v5 = 0;
  v2 = [objc_msgSend((*(*this + 304))(this) "outputBusses")];
  return _AVAE_CheckSuccessAndNoNSError(0x24B, "SetNumberOutputs", "[[auv3() outputBusses] setBusCount:(NSUInteger)numberOutputs error:&nsErr]", v2, *v5, v3);
}

void *_AVAE_CheckSuccessAndNoNSError(void *result, uint64_t a2, const char *a3, const char *a4, void *a5, NSError *a6)
{
  v7 = a4;
  v10 = result;
  v30 = *MEMORY[0x1E69E9840];
  if (a5 || (a4 & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v12 = "true";
      }

      else
      {
        v12 = "false";
      }

      *buf = 136316930;
      v15 = "AVAEInternal.h";
      v16 = 1024;
      v17 = 125;
      v18 = 2080;
      v19 = "AUInterface.mm";
      v20 = 1024;
      v21 = v10;
      v22 = 2080;
      v23 = a2;
      v24 = 2080;
      v25 = a3;
      v26 = 2080;
      v27 = v12;
      v28 = 2112;
      v29 = [a5 description];
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s)] returned %s, error %@", buf, 0x4Au);
    }

    if (v7)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    return [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"%s: returned %s, error %@", a3, v13, objc_msgSend(a5, "description")}];
  }

  return result;
}

void *AUInterfaceBaseV3::SetNumberInputs(AUInterfaceBaseV3 *this, unsigned int a2)
{
  *v5 = 0;
  v2 = [objc_msgSend((*(*this + 304))(this) "inputBusses")];
  return _AVAE_CheckSuccessAndNoNSError(0x245, "SetNumberInputs", "[[auv3() inputBusses] setBusCount:(NSUInteger)numberInputs error:&nsErr]", v2, *v5, v3);
}

uint64_t AUInterfaceBaseV3::IsBusEnabled(AUInterfaceBaseV3 *this, int a2, unsigned int a3)
{
  v5 = (*(*this + 304))(this);
  if (a2)
  {
    v6 = [v5 inputBusses];
  }

  else
  {
    v6 = [v5 outputBusses];
  }

  v7 = v6;
  if ([v6 count] <= a3)
  {
    return 0;
  }

  v8 = [v7 objectAtIndexedSubscript:a3];

  return [v8 isEnabled];
}

void *AUInterfaceBaseV3::EnableBus(AUInterfaceBaseV3 *this, int a2, unsigned int a3, uint64_t a4)
{
  v7 = (*(*this + 304))(this);
  if (a2)
  {
    v8 = [v7 inputBusses];
  }

  else
  {
    v8 = [v7 outputBusses];
  }

  v9 = v8;
  result = [v8 count];
  if (result > a3)
  {
    v11 = [v9 objectAtIndexedSubscript:a3];

    return [v11 setEnabled:a4];
  }

  return result;
}

uint64_t AUInterfaceBaseV3::Reset(AUInterfaceBaseV3 *this)
{
  v1 = (*(*this + 304))(this);

  return [v1 reset];
}

uint64_t AUInterfaceBaseV3::SetFormat(AUInterfaceBaseV3 *this, int a2, unsigned int a3, AVAudioFormat *a4)
{
  v7 = (*(*this + 304))(this);
  if (a2)
  {
    v8 = [v7 inputBusses];
  }

  else
  {
    v8 = [v7 outputBusses];
  }

  *v12 = 0;
  v9 = [objc_msgSend(v8 objectAtIndexedSubscript:{a3), "setFormat:error:", a4, v12}];
  _AVAE_CheckSuccessAndNoNSError(0x21B, "SetFormat", "[[busArray objectAtIndexedSubscript:(NSUInteger)element] setFormat:format error:&nsErr]", v9, *v12, v10);
  return 1;
}

uint64_t AUInterfaceBaseV3::GetFormat(AUInterfaceBaseV3 *this, int a2, unsigned int a3)
{
  v5 = (*(*this + 304))(this);
  if (a2)
  {
    v6 = [v5 inputBusses];
  }

  else
  {
    v6 = [v5 outputBusses];
  }

  v7 = [v6 objectAtIndexedSubscript:a3];

  return [v7 format];
}

uint64_t AUInterfaceBaseV3::Initialize(AUInterfaceBaseV3 *this)
{
  v3 = 0;
  if ([(*(*this + 304))(this) allocateRenderResourcesAndReturnError:&v3])
  {
    v1 = v3 == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return 0;
  }

  if ([v3 code])
  {
    return [v3 code];
  }

  return 4294967246;
}

uint64_t AUInterfaceIOV3::SetInputHandler(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 304))(a1);

  return [v3 setInputHandler:a2];
}

uint64_t AUInterfaceIOV3::SetOutputProvider(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 304))(a1);

  return [v3 setOutputProvider:a2];
}

uint64_t AUInterfaceIOV3::IsRunning(AUInterfaceIOV3 *this)
{
  v1 = (*(*this + 304))(this);

  return [v1 isRunning];
}

uint64_t AUInterfaceIOV3::StartIO(AUInterfaceIOV3 *this)
{
  v3 = 0;
  if ([(*(*this + 304))(this) startHardwareAndReturnError:&v3])
  {
    v1 = v3 == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return 0;
  }

  if ([v3 code])
  {
    return [v3 code];
  }

  return 4294967246;
}

void *AUInterfaceIOV3::EnableIO(AUInterfaceIOV3 *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((a3 & 1) == 0 || (result = (*(*this + 80))(this, a2), result))
  {
    v7 = (*(*this + 304))(this);
    if (v4)
    {

      return [v7 setInputEnabled:a3];
    }

    else
    {

      return [v7 setOutputEnabled:a3];
    }
  }

  return result;
}

uint64_t AUInterfaceIOV3::CanPerformIO(AUInterfaceIOV3 *this, int a2)
{
  v3 = (*(*this + 304))(this);
  if (a2)
  {

    return [v3 canPerformInput];
  }

  else
  {

    return [v3 canPerformOutput];
  }
}

void AUInterfaceIOV3::~AUInterfaceIOV3(const void ***this)
{
  AUInterfaceBaseV3::~AUInterfaceBaseV3(this);

  JUMPOUT(0x1BFAF5800);
}

void AUInterfaceBaseV3::~AUInterfaceBaseV3(const void ***this)
{
  *this = &unk_1F384BAF8;
  v2 = this + 9;
  std::unique_ptr<AVAEBlock<void({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](this + 9, 0);
  v3 = this[6];
  v4 = this[7];
  if (v3 != v4)
  {
    do
    {
      [((*this)[38])(this) removeRenderObserver:*v3];
      v3 += 4;
    }

    while (v3 != v4);
    v3 = this[6];
    v4 = this[7];
  }

  for (; v4 != v3; v4 -= 4)
  {
    std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](v4 - 3, 0);
  }

  this[7] = v3;
  [((*this)[38])(this) invalidateAudioUnit];

  this[5] = 0;
  if (((*this)[34])(this))
  {
    v5 = ((*this)[34])(this);
    AudioComponentInstanceDispose(v5);
    this[4] = 0;
  }

  std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<AVAEBlock<void({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](v2, 0);
  v6 = (this + 6);
  std::vector<AUInterfaceBaseV3::RenderObserver>::__destroy_vector::operator()[abi:ne200100](&v6);
}

const void ***std::unique_ptr<AVAEBlock<void({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      _Block_release(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void std::vector<AUInterfaceBaseV3::RenderObserver>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 4;
        std::unique_ptr<AVAEBlock<void({block_pointer})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>::reset[abi:ne200100](v4 - 3, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AUInterfaceBaseV3::AUInterfaceBaseV3(AUInterfaceBaseV3 *this, const AudioComponentDescription *a2, OpaqueAudioComponentInstance *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *this = &unk_1F384BAF8;
  v4 = *&a2->componentType;
  componentFlagsMask = a2->componentFlagsMask;
  *(this + 72) = 0u;
  *(this + 6) = componentFlagsMask;
  *(this + 8) = v4;
  *(this + 4) = a3;
  v6 = (this + 32);
  *(this + 40) = 0u;
  v7 = (this + 40);
  *(this + 56) = 0u;
  if (!a3)
  {
    Next = AudioComponentFindNext(0, (this + 8));
    if (!Next)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v9 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AUInterface.mm";
        v24 = 1024;
        v25 = 466;
        v26 = 2080;
        v27 = "AUInterfaceBaseV3";
        v28 = 2080;
        v29 = "comp != nullptr";
        _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "comp != nullptr"}];
    }

    v10 = AudioComponentInstanceNew(Next, v6);
    if (v10)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v11 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 104;
        v22 = 2080;
        v23 = "AUInterface.mm";
        v24 = 1024;
        v25 = 468;
        v26 = 2080;
        v27 = "AUInterfaceBaseV3";
        v28 = 2080;
        v29 = "AudioComponentInstanceNew(comp, &_auv2)";
        v30 = 1024;
        v31 = v10;
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v10}];
    }

    if (!*v6)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v12 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AUInterface.mm";
        v24 = 1024;
        v25 = 469;
        v26 = 2080;
        v27 = "AUInterfaceBaseV3";
        v28 = 2080;
        v29 = "_auv2 != nullptr";
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_auv2 != nullptr"}];
    }

    if (*v7)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AUInterface.mm";
        v24 = 1024;
        v25 = 473;
        v26 = 2080;
        v27 = "AUInterfaceBaseV3";
        v28 = 2080;
        v29 = "_auv3 == nil";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_auv3 == nil"}];
    }
  }

  v14 = [MEMORY[0x1E698D828] auAudioUnitForAudioUnit:*v6];
  *v7 = v14;
  if (!v14)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "AUInterface.mm";
      v24 = 1024;
      v25 = 475;
      v26 = 2080;
      v27 = "AUInterfaceBaseV3";
      v28 = 2080;
      v29 = "_auv3 != nil";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_auv3 != nil"}];
    v14 = *v7;
  }

  v16 = v14;
  if ([(*(*this + 304))(this) isMusicDeviceOrEffect])
  {
    if (![(*(*this + 304))(this) scheduleMIDIEventBlock])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v17 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "AVAEInternal.h";
        v20 = 1024;
        v21 = 71;
        v22 = 2080;
        v23 = "AUInterface.mm";
        v24 = 1024;
        v25 = 482;
        v26 = 2080;
        v27 = "AUInterfaceBaseV3";
        v28 = 2080;
        v29 = "nil != midiEventBlock";
        _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != midiEventBlock"}];
    }

    operator new();
  }
}

void sub_1BA6C747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  MEMORY[0x1BFAF5800](v13, 0x80C40B8603338, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<AVAEBlock<int({block_pointer})(long long,unsigned char,MIDIEventList const*)>>::reset[abi:ne200100](v12 + 1, 0);
  std::unique_ptr<AVAEBlock<void({block_pointer})(long long,unsigned char,long,unsigned char const*)>>::reset[abi:ne200100](v12, 0);
  a11 = (v11 + 48);
  std::vector<AUInterfaceBaseV3::RenderObserver>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}