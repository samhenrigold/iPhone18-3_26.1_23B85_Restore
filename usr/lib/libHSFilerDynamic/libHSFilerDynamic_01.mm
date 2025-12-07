void sub_297957AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c124_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c124_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::function<void ()(void const*,unsigned long)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void HSFilerRT_Internal::endSession(HSFilerRT_Internal *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN18HSFilerRT_Internal10endSessionEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_54;
  v1[4] = this;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(this + 1, v1);
}

uint64_t __copy_helper_block_e8_48c124_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE64c30_ZTSNSt3__18functionIFvPKvmEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 48) = v4;
  result = *(a2 + 88);
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a2 + 64)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    *(a1 + 88) = result;
    return result;
  }

  *(a1 + 88) = a1 + 64;
  return (*(**(a2 + 88) + 24))(*(a2 + 88));
}

void sub_297957DF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c124_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE64c30_ZTSNSt3__18functionIFvPKvmEEE(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = *(a1 + 88);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
LABEL_7:
    _Block_release(v4);
  }
}

uint64_t HSFilerRT_Internal::readWithBuff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const void **a6)
{
  v7 = a2;
  v24 = *MEMORY[0x29EDCA608];
  v9 = *a5;
  if (*a5)
  {
    if (*a6)
    {
      v12 = _Block_copy(*a6);
      v9 = *a5;
      v13 = a5[1];
      v17 = v12;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = 0;
      v17 = 0;
      v13 = a5[1];
      if (!v13)
      {
LABEL_5:
        v18[0] = &unk_2A1E59610;
        v18[1] = v9;
        v18[2] = v13;
        v19 = v18;
        v14 = HSFilerRT_Internal::read(a1, v7, a3, a4, &v17, v18);
        if (v19 == v18)
        {
          (*(*v19 + 32))(v19);
          if (!v12)
          {
            return v14;
          }
        }

        else
        {
          if (v19)
          {
            (*(*v19 + 40))();
          }

          if (!v12)
          {
            return v14;
          }
        }

        _Block_release(v12);
        return v14;
      }
    }

    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_5;
  }

  v16 = **(a1 + 128);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = hsfiler::support::to_string(v7);
    v22 = 2048;
    v23 = a3;
    _os_log_error_impl(&dword_297948000, v16, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid buffer", buf, 0x16u);
  }

  return 0;
}

void sub_2979580A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HSFilerRT_Internal::readWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v9 = a2;
  v30 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = 0;
  if (*(a5 + 23) < 0)
  {
    v11 = *(a5 + 8);
    if (v11)
    {
      std::string::__init_copy_ctor_external(&v22, *a5, v11);
LABEL_6:
      support::fs::SyncFile::create(&v22, 52, 0x100000uLL, buf);
      v13 = *buf;
      v12 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v23 = v13;
      v24 = v12;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (!v13)
      {
        v18 = **(a1 + 128);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = hsfiler::support::to_string(v9);
          if (*(a4 + 23) >= 0)
          {
            v20 = a4;
          }

          else
          {
            v20 = *a4;
          }

          *buf = 136315650;
          *&buf[4] = v19;
          *&buf[12] = 2048;
          *&buf[14] = a3;
          v28 = 2080;
          v29 = v20;
          _os_log_error_impl(&dword_297948000, v18, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): failed to create file (%s)", buf, 0x20u);
          v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_21;
      }

      if (*a6)
      {
        v14 = _Block_copy(*a6);
        v21 = v14;
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0;
        v21 = 0;
        if (!v12)
        {
LABEL_12:
          v25[0] = &unk_2A1E596A0;
          v25[1] = v13;
          v25[2] = v12;
          v26 = v25;
          v15 = HSFilerRT_Internal::read(a1, v9, a3, a4, &v21, v25);
          if (v26 == v25)
          {
            (*(*v26 + 32))(v26);
            if (!v14)
            {
LABEL_21:
              if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v12->__on_zero_shared)(v12);
                std::__shared_weak_count::__release_weak(v12);
              }

              return v15;
            }
          }

          else
          {
            if (v26)
            {
              (*(*v26 + 40))();
            }

            if (!v14)
            {
              goto LABEL_21;
            }
          }

          _Block_release(v14);
          goto LABEL_21;
        }
      }

      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_12;
    }
  }

  else if (*(a5 + 23))
  {
    v22 = *a5;
    goto LABEL_6;
  }

  v17 = **(a1 + 128);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = hsfiler::support::to_string(v9);
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_error_impl(&dword_297948000, v17, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid file path", buf, 0x16u);
  }

  return 0;
}

uint64_t HSFilerRT_Internal::readWithStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v7 = a2;
  v24 = *MEMORY[0x29EDCA608];
  v9 = *a5;
  if (*a5 && !*(v9 + *(*v9 - 24) + 32))
  {
    if (*a6)
    {
      v12 = _Block_copy(*a6);
      v9 = *a5;
      v13 = *(a5 + 8);
      v17 = v12;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = 0;
      v17 = 0;
      v13 = *(a5 + 8);
      if (!v13)
      {
LABEL_6:
        v18[0] = &unk_2A1E59720;
        v18[1] = v9;
        v18[2] = v13;
        v19 = v18;
        v14 = HSFilerRT_Internal::read(a1, v7, a3, a4, &v17, v18);
        if (v19 == v18)
        {
          (*(*v19 + 32))(v19);
          if (!v12)
          {
            return v14;
          }
        }

        else
        {
          if (v19)
          {
            (*(*v19 + 40))();
          }

          if (!v12)
          {
            return v14;
          }
        }

        _Block_release(v12);
        return v14;
      }
    }

    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_6;
  }

  v16 = **(a1 + 128);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = hsfiler::support::to_string(v7);
    v22 = 2048;
    v23 = a3;
    _os_log_error_impl(&dword_297948000, v16, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid output stream", buf, 0x16u);
  }

  return 0;
}

void sub_297958684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HSFilerRT_Internal::write(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v39 = *MEMORY[0x29EDCA608];
  if (*a6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v35[0] = MEMORY[0x29EDCA5F8];
    v35[1] = 1174405120;
    v35[2] = ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke;
    v35[3] = &__block_descriptor_tmp_32;
    v38 = a2;
    v35[5] = a1;
    v35[6] = a3;
    v35[7] = a4;
    v14 = *(a7 + 24);
    if (v14)
    {
      if (v14 == a7)
      {
        v37 = v36;
        (*(*v14 + 24))(v14, v36);
LABEL_10:
        v35[4] = &v22;
        v26 = v35;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
        block[3] = &__block_descriptor_tmp_83;
        block[4] = a1 + 8;
        block[5] = &v26;
        v17 = *(a1 + 24);
        if (*(a1 + 32))
        {
          dispatch_async_and_wait(v17, block);
          v16 = *(v23 + 24);
          if ((v16 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          dispatch_sync(v17, block);
          v16 = *(v23 + 24);
          if ((v16 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v28[0] = MEMORY[0x29EDCA5F8];
        v28[1] = 1174405120;
        v28[2] = ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke_33;
        v28[3] = &__block_descriptor_tmp_50;
        v28[4] = a1;
        v28[5] = a3;
        v34 = a2;
        v18 = *a6;
        if (*a6)
        {
          v18 = _Block_copy(v18);
        }

        aBlock = v18;
        v30 = a4;
        v31 = a5;
        v19 = *(a7 + 24);
        if (v19)
        {
          if (v19 == a7)
          {
            v33 = v32;
            (*(*v19 + 24))(v19, v32);
            goto LABEL_21;
          }

          v19 = (*(*v19 + 16))(v19);
        }

        v33 = v19;
LABEL_21:
        ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((a1 + 8), v28);
        if (v33 != v32)
        {
          if (v33)
          {
            (*(*v33 + 40))();
          }

          v20 = aBlock;
          if (!aBlock)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        (*(*v33 + 32))(v33);
        v20 = aBlock;
        if (aBlock)
        {
LABEL_27:
          _Block_release(v20);
        }

LABEL_28:
        if (v37 == v36)
        {
          (*(*v37 + 32))(v37);
        }

        else if (v37)
        {
          (*(*v37 + 40))();
        }

        _Block_object_dispose(&v22, 8);
        return v16;
      }

      v14 = (*(*v14 + 16))(v14);
    }

    v37 = v14;
    goto LABEL_10;
  }

  v15 = **(a1 + 128);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block[0]) = 0;
    _os_log_error_impl(&dword_297948000, v15, OS_LOG_TYPE_ERROR, "error: NULL transferCb param", block, 2u);
  }

  return 0;
}

void sub_297958AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a1 + 40);
  HSFilerRT_Internal::findSession_sync(v2, *(a1 + 96), *(a1 + 48), &v11);
  if (!v11)
  {
    goto LABEL_12;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>((v11 + 40), *(a1 + 56)))
  {
    if (*(a1 + 88))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v3 = v12;
      if (!v12)
      {
        return;
      }

      goto LABEL_13;
    }

    v8 = **(v2 + 128);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v3 = v12;
      if (!v12)
      {
        return;
      }

      goto LABEL_13;
    }

    v9 = hsfiler::support::to_string(*(a1 + 96));
    v10 = *(a1 + 48);
    *buf = 136315394;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    _os_log_error_impl(&dword_297948000, v8, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid writer callback param", buf, 0x16u);
    v3 = v12;
    if (!v12)
    {
      return;
    }

LABEL_13:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    return;
  }

  v4 = **(v2 + 128);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  v5 = hsfiler::support::to_string(*(a1 + 96));
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (*(v6 + 23) < 0)
  {
    v6 = *v6;
  }

  *buf = 136315650;
  v14 = v5;
  v15 = 2048;
  v16 = v7;
  v17 = 2080;
  v18 = v6;
  _os_log_error_impl(&dword_297948000, v4, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid fileID (%s)", buf, 0x20u);
  v3 = v12;
  if (v12)
  {
    goto LABEL_13;
  }
}

uint64_t __copy_helper_block_e8_32r64c29_ZTSNSt3__18functionIFbPvmEEE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  result = *(a2 + 88);
  if (!result)
  {
    goto LABEL_4;
  }

  if (result != a2 + 64)
  {
    result = (*(*result + 16))(result);
LABEL_4:
    *(a1 + 88) = result;
    return result;
  }

  *(a1 + 88) = a1 + 64;
  return (*(**(a2 + 88) + 24))(*(a2 + 88));
}

void __destroy_helper_block_e8_32r64c29_ZTSNSt3__18functionIFbPvmEEE(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = *(a1 + 88);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 32);
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 32);
  }

  _Block_object_dispose(v4, 8);
}

uint64_t std::function<BOOL ()(void *,unsigned long)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke_33(uint64_t a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v64 = 0;
  v65 = 0;
  v3 = *(v2 + 200);
  if (!v3 || (v4 = std::__shared_weak_count::lock(v3), (v65 = v4) == 0) || (v5 = *(v2 + 192), (v64 = v5) == 0) || *(v5 + 32) != *(a1 + 40))
  {
    v11 = **(v2 + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = hsfiler::support::to_string(*(a1 + 104));
      v26 = *(a1 + 40);
      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      _os_log_error_impl(&dword_297948000, v11, OS_LOG_TYPE_ERROR, "error: Failed client (%s) session (%llu) writeWithBuff: session not running", buf, 0x16u);
    }

    memset(buf, 170, 16);
    HSFilerRT_Internal::findSession_sync(v2, *(a1 + 104), *(a1 + 40), buf);
    v12 = *buf;
    if (*buf)
    {
      v60[0] = MEMORY[0x29EDCA5F8];
      v60[1] = 1174405120;
      v60[2] = ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke_34;
      v60[3] = &__block_descriptor_tmp_37;
      v13 = *(a1 + 48);
      if (v13)
      {
        v13 = _Block_copy(v13);
      }

      v14 = *(a1 + 40);
      v61 = v13;
      v62 = v14;
      v63 = *(a1 + 56);
      dispatch_async(*(v12 + 80), v60);
      if (v61)
      {
        _Block_release(v61);
      }
    }

    v15 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    goto LABEL_55;
  }

  v6 = v4;
  v7 = *(a1 + 56);
  if (std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>((v5 + 40), v7))
  {
    *buf = v7;
    if (*(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v5 + 40), v7, buf) + 40) == 1)
    {
      v8 = **(v2 + 128);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v37 = hsfiler::support::to_string(*(a1 + 104));
        v38 = *(a1 + 40);
        *buf = 136315394;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_297948000, v8, OS_LOG_TYPE_ERROR, "error: Failed client (%s) session (%llu) writeWithBuff: fileID already transferred", buf, 0x16u);
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke_38;
      block[3] = &__block_descriptor_tmp_41;
      v9 = *(a1 + 48);
      if (v9)
      {
        v9 = _Block_copy(v9);
      }

      v10 = *(a1 + 40);
      aBlock = v9;
      v58 = v10;
      v59 = *(a1 + 56);
      dispatch_async(*(v5 + 80), block);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      goto LABEL_55;
    }
  }

  v16 = **(v2 + 128);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = hsfiler::support::to_string(*(a1 + 104));
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    if (*(v19 + 23) < 0)
    {
      v19 = *v19;
    }

    *buf = 136315650;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    *&buf[22] = 2080;
    v69 = v19;
    _os_log_impl(&dword_297948000, v16, OS_LOG_TYPE_DEFAULT, " ------ Writing client (%s) session (%llu) file (%s) ------ ", buf, 0x20u);
  }

  v52[0] = MEMORY[0x29EDCA5F8];
  v52[1] = 1174405120;
  v52[2] = ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke_42;
  v52[3] = &__block_descriptor_tmp_45;
  v20 = *(a1 + 48);
  if (v20)
  {
    v20 = _Block_copy(v20);
  }

  v21 = *(a1 + 40);
  v53 = v20;
  v54 = v21;
  v55 = *(a1 + 56);
  v50 = v5;
  v51 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v24 = *(a1 + 96);
  if (v24)
  {
    if (v24 == a1 + 72)
    {
      v67 = v66;
      (*(*v24 + 24))(v24, v66);
      goto LABEL_34;
    }

    v24 = (*(*v24 + 16))(v24);
  }

  v67 = v24;
LABEL_34:
  v27 = (*(*v2 + 56))(v2, &v50, v22, v23, v66);
  if (v67 == v66)
  {
    (*(*v67 + 32))(v67);
  }

  else if (v67)
  {
    (*(*v67 + 40))(v67);
  }

  v28 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v27)
  {
    v29 = v64;
    v30 = *(a1 + 56);
    if (std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>((v64 + 40), v30))
    {
      *buf = v30;
      *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v29 + 40), v30, buf) + 40) = 1;
    }

    dispatch_async(*(v29 + 80), v52);
    v31 = **(v2 + 128);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = hsfiler::support::to_string(*(a1 + 104));
      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      if (*(v34 + 23) < 0)
      {
        v34 = *v34;
      }

      *buf = 136315650;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      *&buf[22] = 2080;
      v69 = v34;
      _os_log_impl(&dword_297948000, v31, OS_LOG_TYPE_DEFAULT, " ------ Successfully wrote client (%s) session (%llu) file (%s) from buff ------ ", buf, 0x20u);
    }

    v35 = (v29 + 56);
    while (1)
    {
      v35 = *v35;
      if (!v35)
      {
        break;
      }

      if (!*(v35 + 40))
      {
        goto LABEL_53;
      }
    }

    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN18HSFilerRT_Internal10endSessionEv_block_invoke;
    v69 = &__block_descriptor_tmp_54;
    v70 = v2;
    ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((v2 + 8), buf);
  }

  else
  {
    v39 = **(v2 + 128);
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    v41 = v64;
    if (v40)
    {
      v44 = *(v64 + 32);
      v45 = *(a1 + 56);
      if (*(v45 + 23) < 0)
      {
        v45 = *v45;
      }

      *buf = 134218242;
      *&buf[4] = v44;
      *&buf[12] = 2080;
      *&buf[14] = v45;
      _os_log_error_impl(&dword_297948000, v39, OS_LOG_TYPE_ERROR, "error: Failed to write file to baseband (session: %llu, file: %s)", buf, 0x16u);
    }

    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 1174405120;
    v46[2] = ___ZN18HSFilerRT_Internal5writeE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEmN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFbPvmEEE_block_invoke_46;
    v46[3] = &__block_descriptor_tmp_49;
    v42 = *(a1 + 48);
    if (v42)
    {
      v42 = _Block_copy(v42);
    }

    v43 = *(a1 + 40);
    v47 = v42;
    v48 = v43;
    v49 = *(a1 + 56);
    dispatch_async(*(v41 + 80), v46);
    HSFilerRT_Internal::handleSessionError_sync(v2, *(v41 + 24), *(a1 + 40), 4294967287);
    if (v47)
    {
      _Block_release(v47);
    }
  }

LABEL_53:
  if (v53)
  {
    _Block_release(v53);
  }

LABEL_55:
  v36 = v65;
  if (v65)
  {
    if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }
  }
}

void sub_297959724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c124_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE72c29_ZTSNSt3__18functionIFbPvmEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 48) = v4;
  result = *(a2 + 96);
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a2 + 72)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    *(a1 + 96) = result;
    return result;
  }

  *(a1 + 96) = a1 + 72;
  return (*(**(a2 + 96) + 24))(*(a2 + 96));
}

void sub_2979598E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c124_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE72c29_ZTSNSt3__18functionIFbPvmEEE(uint64_t a1)
{
  v2 = a1 + 72;
  v3 = *(a1 + 96);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
LABEL_7:
    _Block_release(v4);
  }
}

uint64_t HSFilerRT_Internal::writeWithBuff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, const void **a6)
{
  v7 = a2;
  v35 = *MEMORY[0x29EDCA608];
  v9 = *a5;
  if (!*a5)
  {
    v25 = **(a1 + 128);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = hsfiler::support::to_string(v7);
      v31 = 2048;
      v32 = a3;
      v22 = "error: Client (%s) session (%llu): invalid buffer";
      v23 = v25;
      v24 = 22;
      goto LABEL_17;
    }

    return 0;
  }

  v11 = v9[1];
  v12 = v11 - *v9;
  if (v11 == *v9 || v12 > 0xF00000)
  {
    v19 = **(a1 + 128);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = hsfiler::support::to_string(v7);
      v21 = *(*a5 + 8) - **a5;
      *buf = 136315650;
      v30 = v20;
      v31 = 2048;
      v32 = a3;
      v33 = 2048;
      v34 = v21;
      v22 = "error: Client (%s) session (%llu): invalid buffer size %zu";
      v23 = v19;
      v24 = 32;
LABEL_17:
      _os_log_error_impl(&dword_297948000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      return 0;
    }

    return 0;
  }

  if (*a6)
  {
    v14 = _Block_copy(*a6);
    v9 = *a5;
    v15 = a5[1];
    v26 = v14;
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = 0;
  v15 = a5[1];
  v26 = 0;
  if (v15)
  {
LABEL_6:
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_7:
  v16 = operator new(0x20uLL);
  *v16 = &unk_2A1E597A0;
  v16[1] = a1;
  v16[2] = v9;
  v16[3] = v15;
  v28 = v16;
  v17 = HSFilerRT_Internal::write(a1, v7, a3, a4, v12, &v26, v27);
  (*(*v16 + 40))(v16);
  if (v14)
  {
    _Block_release(v14);
  }

  return v17;
}

void sub_297959BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0::~$_0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t HSFilerRT_Internal::writeWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v9 = a2;
  v48 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v42 = 0;
  if (*(a5 + 23) < 0)
  {
    v11 = *(a5 + 8);
    if (v11)
    {
      std::string::__init_copy_ctor_external(&v40, *a5, v11);
LABEL_6:
      support::fs::SyncFile::create(&v40, 12, 0x100000uLL, buf);
      v13 = *buf;
      v12 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v41 = v13;
      v42 = v12;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
        v46 = &__block_descriptor_tmp_2;
        v47 = v13;
        ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(v13 + 1, buf);
        if (support::fs::SyncFile::isOpen(v13))
        {
          if (support::fs::SyncFile::getSize(v13))
          {
            v15 = v14;
            if (v14)
            {
              if (v14 <= 0xF00000)
              {
                if (*a6)
                {
                  v16 = _Block_copy(*a6);
                  v39 = v16;
                  if (!v12)
                  {
                    goto LABEL_16;
                  }
                }

                else
                {
                  v16 = 0;
                  v39 = 0;
                  if (!v12)
                  {
LABEL_16:
                    *&v38 = a1;
                    DWORD2(v38) = v9;
                    v44 = 0;
                    v17 = operator new(0x38uLL);
                    *v17 = &unk_2A1E59830;
                    v17[1] = v15;
                    v17[2] = v13;
                    v17[3] = v12;
                    *(v17 + 2) = v38;
                    v17[6] = a3;
                    v44 = v17;
                    v18 = HSFilerRT_Internal::write(a1, v9, a3, a4, v15, &v39, v43);
                    (*(*v17 + 40))(v17);
                    if (v16)
                    {
                      _Block_release(v16);
                    }

                    goto LABEL_18;
                  }
                }

                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                goto LABEL_16;
              }

              v28 = **(a1 + 128);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              v37 = hsfiler::support::to_string(v9);
              *buf = 136315650;
              *&buf[4] = v37;
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              v46 = v15;
              v24 = "error: Client (%s) session (%llu): file size too large (%zu)";
              goto LABEL_49;
            }

            v28 = **(a1 + 128);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v33 = hsfiler::support::to_string(v9);
              v36 = v13[5];
              v35 = v13 + 5;
              v34 = v36;
              if (*(v35 + 23) >= 0)
              {
                v34 = v35;
              }

              *buf = 136315650;
              *&buf[4] = v33;
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2080;
              v46 = v34;
              v24 = "error: Client (%s) session (%llu): invalid file size (%s)";
LABEL_49:
              v27 = v28;
              goto LABEL_50;
            }
          }

          else
          {
            v28 = **(a1 + 128);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = hsfiler::support::to_string(v9);
              v32 = v13[5];
              v31 = v13 + 5;
              v30 = v32;
              if (*(v31 + 23) >= 0)
              {
                v30 = v31;
              }

              *buf = 136315650;
              *&buf[4] = v29;
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2080;
              v46 = v30;
              v24 = "error: Client (%s) session (%llu): failed to get file size (%s)";
              goto LABEL_49;
            }
          }

LABEL_47:
          v18 = 0;
LABEL_18:
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          return v18;
        }

        v21 = **(a1 + 128);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        v25 = hsfiler::support::to_string(v9);
        if (*(a4 + 23) >= 0)
        {
          v26 = a4;
        }

        else
        {
          v26 = *a4;
        }

        *buf = 136315650;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2080;
        v46 = v26;
        v24 = "error: Client (%s) session (%llu): failed to open file (%s)";
      }

      else
      {
        v21 = **(a1 + 128);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        v22 = hsfiler::support::to_string(v9);
        if (*(a4 + 23) >= 0)
        {
          v23 = a4;
        }

        else
        {
          v23 = *a4;
        }

        *buf = 136315650;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2080;
        v46 = v23;
        v24 = "error: Client (%s) session (%llu): failed to create file (%s)";
      }

      v27 = v21;
LABEL_50:
      _os_log_error_impl(&dword_297948000, v27, OS_LOG_TYPE_ERROR, v24, buf, 0x20u);
      v18 = 0;
      goto LABEL_18;
    }
  }

  else if (*(a5 + 23))
  {
    v40 = *a5;
    goto LABEL_6;
  }

  v20 = **(a1 + 128);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = hsfiler::support::to_string(v9);
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_error_impl(&dword_297948000, v20, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid file path", buf, 0x16u);
  }

  return 0;
}

void sub_29795A20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29795A284(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29795A274);
}

uint64_t HSFilerRT_Internal::writeWithStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, const void **a6)
{
  v7 = a2;
  v35 = *MEMORY[0x29EDCA608];
  if (!*a5 || *(*a5 + *(**a5 - 24) + 32))
  {
    v19 = **(a1 + 128);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315394;
    *&buf[4] = hsfiler::support::to_string(v7);
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v20 = "error: Client (%s) session (%llu): invalid input stream";
    v21 = v19;
    v22 = 22;
LABEL_17:
    _os_log_error_impl(&dword_297948000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    return 0;
  }

  std::istream::seekg();
  std::istream::tellg();
  v12 = v34;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(buf, 0, sizeof(buf));
  std::istream::seekg();
  if ((v12 - 15728641) <= 0xFFFFFFFFFF0FFFFFLL)
  {
    v23 = **(a1 + 128);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315650;
    *&buf[4] = hsfiler::support::to_string(v7);
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *&buf[24] = v12;
    v20 = "error: Client (%s) session (%llu): invalid input stream size %zu";
    v21 = v23;
    v22 = 32;
    goto LABEL_17;
  }

  if (*a6)
  {
    v13 = _Block_copy(*a6);
    v24 = v13;
    v14 = *a5;
    v15 = a5[1];
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = 0;
  v24 = 0;
  v14 = *a5;
  v15 = a5[1];
  if (v15)
  {
LABEL_6:
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_7:
  v16 = operator new(0x28uLL);
  *v16 = &unk_2A1E598B0;
  v16[1] = a1;
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v12;
  v26 = v16;
  v17 = HSFilerRT_Internal::write(a1, v7, a3, a4, v12, &v24, v25);
  (*(*v16 + 40))(v16);
  if (v13)
  {
    _Block_release(v13);
  }

  return v17;
}

void sub_29795A564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18HSFilerRT_Internal10endSessionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v20 = 0;
  v21 = 0;
  v2 = *(v1 + 25);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v21 = v3;
    if (!v3)
    {
      return;
    }

    v4 = *(v1 + 24);
    v20 = v4;
    if (v4)
    {
      v18 = v4;
      v19 = v3;
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = (*(*v1 + 32))(v1, &v18);
      v6 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v11 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v7 = v20;
        if (v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = v20;
        if (v5)
        {
LABEL_7:
          *(v7 + 114) = 0;
          (*(*v7 + 16))(v7);
          v8 = *(v1 + 25);
          *(v1 + 24) = 0;
          *(v1 + 25) = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_weak(v8);
          }

          v9 = *(v7 + 32);
          v15[0] = MEMORY[0x29EDCA5F8];
          v15[1] = 1174405120;
          v15[2] = ___ZN18HSFilerRT_Internal10endSessionEv_block_invoke_2;
          v15[3] = &__block_descriptor_tmp_53;
          v15[4] = v7;
          v16 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = v9;
          dispatch_async(*(v7 + 80), v15);
          HSFilerRT_Internal::sessionScheduler_sync(v1);
          v10 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          goto LABEL_18;
        }
      }

      v12 = *(v7 + 24);
      v13 = *(v7 + 32);
      v22 = 0;
      HSFilerRT_Internal::abortSession_sync(v1, v12, v13, 4294967290, &v22);
      if (v22 == 1)
      {
        HSFilerRT_Internal::resetBaseband_sync(v1, v12, v13, 4294967290);
      }

      else
      {
        HSFilerRT_Internal::sessionScheduler_sync(v1);
      }
    }
  }

LABEL_18:
  v14 = v21;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void sub_29795A850(_Unwind_Exception *a1)
{
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v1 + 32);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

void HSFilerRT_Internal::abortSession_sync(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = a4;
  v8 = a2;
  v36 = *MEMORY[0x29EDCA608];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  HSFilerRT_Internal::findSession_sync(a1, a2, a3, &v28);
  v10 = v28;
  if (v28)
  {
    v11 = **(a1 + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = hsfiler::support::to_string(v8);
      v23 = hsfiler::support::to_string(v6);
      *buf = 136315650;
      v31 = v22;
      v32 = 2048;
      v33 = a3;
      v34 = 2080;
      v35 = v23;
      _os_log_error_impl(&dword_297948000, v11, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu) aborted with reason: %s", buf, 0x20u);
    }

    (*(*v10 + 16))(v10);
    v12 = *(v10 + 88);
    if (v12)
    {
      v13 = _Block_copy(v12);
    }

    else
    {
      v13 = 0;
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN18HSFilerRT_Internal17abortSession_syncE15HSFilerClientIDy13HSFilerStatusRb_block_invoke;
    block[3] = &__block_descriptor_tmp_55;
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    aBlock = v14;
    v26 = a3;
    v27 = v6;
    dispatch_async(*(v10 + 80), block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v13)
    {
      _Block_release(v13);
    }
  }

  *a5 = 0;
  v15 = *(a1 + 200);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = *(a1 + 192);
      if (v17 && *(v17 + 32) == a3)
      {
        v18 = *(a1 + 200);
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        if (v18)
        {
          v19 = v16;
          std::__shared_weak_count::__release_weak(v18);
          v16 = v19;
        }

        *a5 = 1;
      }

      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v20 = v16;
        (v16->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v20);
      }
    }
  }

  v21 = v29;
  if (v29)
  {
    if (!atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

void sub_29795AB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29795AB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c58_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void HSFilerRT_Internal::resetBaseband_sync(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x29EDCA608];
  if (*(a1 + 216))
  {
    return;
  }

  v4 = a4;
  v7 = 0x7FFFFFFFFFFFFFF7;
  memset(&v81, 170, sizeof(v81));
  v8 = hsfiler::support::to_string(a2);
  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    __dst.__r_.__value_.__l.__size_ = v10;
    __dst.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_10;
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_10:
    memmove(p_dst, v8, v10);
  }

  p_dst->__r_.__value_.__s.__data_[v10] = 0;
  v13 = std::string::insert(&__dst, 0, "client (", 8uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) - 12) < 0xB)
    {
      v16 = SHIBYTE(v77.__r_.__value_.__r.__words[2]) + 11;
      v17 = &v77;
      v18 = 22;
LABEL_17:
      v19 = 2 * v18;
      if (v16 > 2 * v18)
      {
        v19 = v16;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v18 == 22;
      goto LABEL_26;
    }

    v27 = &v77;
LABEL_33:
    v28 = v27 + size;
    *v28 = *") session (";
    *(v28 + 7) = 673214063;
    v29 = size + 11;
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      v77.__r_.__value_.__l.__size_ = size + 11;
    }

    else
    {
      *(&v77.__r_.__value_.__s + 23) = v29 & 0x7F;
    }

    v26 = v27 + v29;
    goto LABEL_37;
  }

  size = v77.__r_.__value_.__l.__size_;
  v18 = (v77.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - v77.__r_.__value_.__l.__size_ >= 0xB)
  {
    v27 = v77.__r_.__value_.__r.__words[0];
    goto LABEL_33;
  }

  v16 = v77.__r_.__value_.__l.__size_ + 11;
  if (0x7FFFFFFFFFFFFFF7 - (v77.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v77.__r_.__value_.__l.__size_ + 11 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v77.__r_.__value_.__r.__words[0];
  if (v18 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_17;
  }

  v22 = 0;
  v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_26:
  v23 = operator new(v21);
  v24 = v23;
  if (size)
  {
    memmove(v23, v17, size);
  }

  v25 = v24 + size;
  *v25 = *") session (";
  *(v25 + 7) = 673214063;
  if (!v22)
  {
    operator delete(v17);
  }

  v77.__r_.__value_.__l.__size_ = v16;
  v77.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
  v77.__r_.__value_.__r.__words[0] = v24;
  v26 = (v24 + v16);
LABEL_37:
  *v26 = 0;
  v78 = v77;
  memset(&v77, 0, sizeof(v77));
  std::to_string(&v75, a3);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v75;
  }

  else
  {
    v30 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v75.__r_.__value_.__l.__size_;
  }

  v32 = std::string::append(&v78, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) - 13) < 0xA)
    {
      v35 = SHIBYTE(v79.__r_.__value_.__r.__words[2]) + 10;
      v36 = &v79;
      v37 = 22;
LABEL_49:
      v38 = 2 * v37;
      if (v35 > 2 * v37)
      {
        v38 = v35;
      }

      if ((v38 | 7) == 0x17)
      {
        v39 = 25;
      }

      else
      {
        v39 = (v38 | 7) + 1;
      }

      if (v38 >= 0x17)
      {
        v40 = v39;
      }

      else
      {
        v40 = 23;
      }

      v41 = v37 == 22;
      goto LABEL_58;
    }

    v46 = &v79;
LABEL_65:
    v47 = v46 + v34;
    *v47 = *") status (";
    *(v47 + 4) = 10272;
    v48 = v34 + 10;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      v79.__r_.__value_.__l.__size_ = v34 + 10;
    }

    else
    {
      *(&v79.__r_.__value_.__s + 23) = v48 & 0x7F;
    }

    v45 = v46 + v48;
    goto LABEL_69;
  }

  v34 = v79.__r_.__value_.__l.__size_;
  v37 = (v79.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v37 - v79.__r_.__value_.__l.__size_ >= 0xA)
  {
    v46 = v79.__r_.__value_.__r.__words[0];
    goto LABEL_65;
  }

  v35 = v79.__r_.__value_.__l.__size_ + 10;
  if (0x7FFFFFFFFFFFFFF7 - (v79.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v79.__r_.__value_.__l.__size_ + 10 - v37)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v36 = v79.__r_.__value_.__r.__words[0];
  if (v37 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_49;
  }

  v41 = 0;
  v40 = 0x7FFFFFFFFFFFFFF7;
LABEL_58:
  v42 = operator new(v40);
  v43 = v42;
  if (v34)
  {
    memmove(v42, v36, v34);
  }

  v44 = v43 + v34;
  *v44 = *") status (";
  *(v44 + 8) = 10272;
  if (!v41)
  {
    operator delete(v36);
  }

  v79.__r_.__value_.__l.__size_ = v35;
  v79.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
  v79.__r_.__value_.__r.__words[0] = v43;
  v45 = (v43 + v35);
LABEL_69:
  *v45 = 0;
  v80 = v79;
  memset(&v79, 0, sizeof(v79));
  v49 = hsfiler::support::to_string(v4);
  v50 = strlen(v49);
  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;
  if (v50 >= 0x17)
  {
    if ((v50 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v50 | 7) + 1;
    }

    p_p = operator new(v53);
    v73 = v51;
    v74 = v53 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_77;
  }

  HIBYTE(v74) = v50;
  p_p = &__p;
  if (v50)
  {
LABEL_77:
    memmove(p_p, v49, v51);
  }

  *(p_p + v51) = 0;
  if (v74 >= 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p;
  }

  if (v74 >= 0)
  {
    v55 = HIBYTE(v74);
  }

  else
  {
    v55 = v73;
  }

  v56 = std::string::append(&v80, v54, v55);
  v57 = *&v56->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  v58 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) == 22)
    {
      v60 = 22;
      v61 = 23;
LABEL_90:
      v62 = 2 * v60;
      if (v61 > 2 * v60)
      {
        v62 = v61;
      }

      if ((v62 | 7) == 0x17)
      {
        v63 = 25;
      }

      else
      {
        v63 = (v62 | 7) + 1;
      }

      if (v62 >= 0x17)
      {
        v7 = v63;
      }

      else
      {
        v7 = 23;
      }

      v64 = v60 == 22;
      goto LABEL_99;
    }

LABEL_105:
    p_buf->__r_.__value_.__s.__data_[v58] = 41;
    v68 = v58 + 1;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      buf.__r_.__value_.__l.__size_ = v68;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v68 & 0x7F;
    }

    v67 = p_buf + v68;
    goto LABEL_109;
  }

  v58 = buf.__r_.__value_.__l.__size_;
  v61 = buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v60 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v60 != buf.__r_.__value_.__l.__size_)
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
    goto LABEL_105;
  }

  if (v61 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_buf = buf.__r_.__value_.__r.__words[0];
  if (v60 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_90;
  }

  v64 = 0;
LABEL_99:
  v65 = operator new(v7);
  v66 = v65;
  if (v60)
  {
    memmove(v65, p_buf, v60);
  }

  *(v66 + v60) = 41;
  if (!v64)
  {
    operator delete(p_buf);
  }

  buf.__r_.__value_.__l.__size_ = v61;
  buf.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v66;
  v67 = (v66 + v61);
LABEL_109:
  *v67 = 0;
  v81 = buf;
  memset(&buf, 0, sizeof(buf));
  if (SHIBYTE(v74) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_111:
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_122;
    }
  }

  else if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_111;
  }

  operator delete(v80.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_112:
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_123;
  }

LABEL_122:
  operator delete(v79.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_113:
    if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_124;
  }

LABEL_123:
  operator delete(v75.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_114:
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(v78.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_115:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_126;
  }

LABEL_125:
  operator delete(v77.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_116:
    v69 = **(a1 + 128);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_117;
    }

LABEL_127:
    v71 = &v81;
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v71 = v81.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v71;
    _os_log_error_impl(&dword_297948000, v69, OS_LOG_TYPE_ERROR, "error: Requesting baseband reset due to: %s", &buf, 0xCu);
    v70 = *(a1 + 208);
    if (v70)
    {
      goto LABEL_118;
    }

LABEL_130:
    HSFilerRT_Internal::sessionScheduler_sync(a1);
    goto LABEL_133;
  }

LABEL_126:
  operator delete(__dst.__r_.__value_.__l.__data_);
  v69 = **(a1 + 128);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_127;
  }

LABEL_117:
  v70 = *(a1 + 208);
  if (!v70)
  {
    goto LABEL_130;
  }

LABEL_118:
  *(a1 + 216) = 1;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v81;
  }

  (*(v70 + 16))(v70, &buf);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_133:
    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_134;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_134:
    operator delete(v81.__r_.__value_.__l.__data_);
  }
}

void sub_29795B3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  _Unwind_Resume(exception_object);
}

void HSFilerRT_Internal::logSessionStatus_sync(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v5 = **(a1 + 128);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = hsfiler::support::to_string(*(v2 + 24));
      v7 = *a2;
      v8 = *(*a2 + 32);
      if (*(*a2 + 112))
      {
        v9 = "read";
      }

      else
      {
        v9 = "write";
      }

      v10 = *(v7 + 96);
      v11 = *(v7 + 100);
      v12 = "FALSE";
      if (*(v7 + 113))
      {
        v13 = "TRUE";
      }

      else
      {
        v13 = "FALSE";
      }

      if (*(v7 + 114))
      {
        v12 = "TRUE";
      }

      v14 = *(v7 + 64);
      *buf = 136316930;
      v18 = v6;
      v19 = 2048;
      v20 = v8;
      v21 = 2080;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 2080;
      v28 = v13;
      v29 = 2080;
      v30 = v12;
      v31 = 2048;
      v32 = v14;
      _os_log_impl(&dword_297948000, v5, OS_LOG_TYPE_DEFAULT, "Client (%s) session (%llu): %s sequenceID(%u) timeout(%u sec) queued(%s) started(%s) files(%lu)", buf, 0x4Au);
      v2 = *a2;
    }

    v15 = a2[1];
    v16[0] = v2;
    v16[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HSFilerRT_Internal::logSessionFileTransferStatus_sync(a1, v16);
    if (v15)
    {
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }
  }
}

void HSFilerRT_Internal::basebandReadyEventHandler(HSFilerRT_Internal *this)
{
  v2 = **(this + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "Received baseband ready event", buf, 2u);
  }

  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN18HSFilerRT_Internal25basebandReadyEventHandlerEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_64;
  v3[4] = this;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(this + 1, v3);
}

void ___ZN18HSFilerRT_Internal25basebandReadyEventHandlerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(v1 + 128);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "Processing baseband ready event", v3, 2u);
  }

  *(v1 + 216) = 0;
  HSFilerRT_Internal::sessionScheduler_sync(v1);
}

void HSFilerRT_Internal::basebandResetEventHandler(HSFilerRT_Internal *this)
{
  v2 = **(this + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "Received baseband reset event", buf, 2u);
  }

  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN18HSFilerRT_Internal25basebandResetEventHandlerEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_65;
  v3[4] = this;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(this + 1, v3);
}

void ___ZN18HSFilerRT_Internal25basebandResetEventHandlerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(v1 + 128);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "Processing baseband reset event", buf, 2u);
  }

  *(v1 + 216) = 1;
  v3 = *(v1 + 200);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + 192);
      *buf = v6;
      if (v6)
      {
        HSFilerRT_Internal::abortSession_sync(v1, *(v6 + 24), *(v6 + 32), 4294967281, &v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_29795BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HSFilerRT_Internal::registerBasebandResetDelegate(uint64_t a1, const void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 1174405120;
    v7[2] = ___ZN18HSFilerRT_Internal29registerBasebandResetDelegateEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
    v7[3] = &__block_descriptor_tmp_66;
    v7[4] = a1;
    aBlock = _Block_copy(v3);
    v9 = v7;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    block[3] = &__block_descriptor_tmp_83;
    block[4] = a1 + 8;
    block[5] = &v9;
    v4 = *(a1 + 24);
    if (*(a1 + 32))
    {
      dispatch_async_and_wait(v4, block);
      v5 = aBlock;
      if (!aBlock)
      {
        return;
      }

LABEL_8:
      _Block_release(v5);
      return;
    }

    dispatch_sync(v4, block);
    v5 = aBlock;
    if (aBlock)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = **(a1 + 128);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_error_impl(&dword_297948000, v6, OS_LOG_TYPE_ERROR, "error: NULL resetCb param", block, 2u);
    }
  }
}

void ___ZN18HSFilerRT_Internal29registerBasebandResetDelegateEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 128);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "Baseband reset delegate registered", v6, 2u);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(v2 + 208);
  *(v2 + 208) = v4;
  if (v5)
  {
    _Block_release(v5);
  }
}

void *__copy_helper_block_e8_40c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void HSFilerRT_Internal::dumpState(HSFilerRT_Internal *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN18HSFilerRT_Internal9dumpStateEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_67;
  v1[4] = this;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(this + 1, v1);
}

void ___ZN18HSFilerRT_Internal9dumpStateEv_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = **(v1 + 128);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, " ------ HSFiler State Dump BEGIN ------ ", buf, 2u);
  }

  v3 = *(v1 + 40);
  if (v3 != (v1 + 48))
  {
    while (1)
    {
      v4 = **(v1 + 128);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = hsfiler::support::to_string(*(v3 + 8));
        v6 = v3[7];
        *buf = 136315394;
        *&buf[4] = v5;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_DEFAULT, "Client (%s) has %lu sessions", buf, 0x16u);
        v7 = v3[5];
        v46 = v3 + 6;
        if (v7 != v3 + 6)
        {
          break;
        }

        goto LABEL_10;
      }

      v7 = v3[5];
      v46 = v3 + 6;
      if (v7 != v3 + 6)
      {
        break;
      }

LABEL_10:
      v8 = v3[1];
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
          v9 = v3[2];
          v20 = *v9 == v3;
          v3 = v9;
        }

        while (!v20);
      }

      v3 = v9;
      if (v9 == (v1 + 48))
      {
        goto LABEL_104;
      }
    }

LABEL_14:
    v10 = v7[5];
    v11 = v7[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v10)
    {
      goto LABEL_27;
    }

    v12 = **(v1 + 128);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v11;
      v47 = v10;
      if (!v11)
      {
        goto LABEL_24;
      }

LABEL_23:
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_24;
    }

    v13 = *(v10 + 24);
    {
      v50 = xmmword_29EE81A58;
      v51 = unk_29EE81A68;
      v52 = xmmword_29EE81A78;
      *buf = constinit;
      *&buf[16] = unk_29EE81A28;
      *v49 = xmmword_29EE81A38;
      *&v49[16] = unk_29EE81A48;
      std::unordered_map<HSFilerClientID,char const*>::unordered_map(&hsfiler::support::to_string(HSFilerClientID)::clientNames, buf, 7);
    }

    if (!qword_2A13A37B8)
    {
      goto LABEL_87;
    }

    v14 = vcnt_s8(qword_2A13A37B8);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v13;
      if (qword_2A13A37B8 <= v13)
      {
        v15 = v13 % qword_2A13A37B8;
      }
    }

    else
    {
      v15 = (qword_2A13A37B8 - 1) & v13;
    }

    v33 = *(hsfiler::support::to_string(HSFilerClientID)::clientNames + 8 * v15);
    if (!v33 || (v34 = *v33) == 0)
    {
LABEL_87:
      v37 = "HS_FILER_CLIENT_INVALID";
      goto LABEL_88;
    }

    if (v14.u32[0] < 2uLL)
    {
      while (1)
      {
        v36 = v34[1];
        if (v36 == v13)
        {
          if (*(v34 + 4) == v13)
          {
            goto LABEL_98;
          }
        }

        else if ((v36 & (qword_2A13A37B8 - 1)) != v15)
        {
          goto LABEL_87;
        }

        v34 = *v34;
        if (!v34)
        {
          goto LABEL_87;
        }
      }
    }

    while (1)
    {
      v35 = v34[1];
      if (v35 == v13)
      {
        if (*(v34 + 4) == v13)
        {
LABEL_98:
          v37 = v34[3];
LABEL_88:
          v38 = *(v10 + 32);
          v39 = "write";
          if (*(v10 + 112))
          {
            v39 = "read";
          }

          v40 = *(v10 + 96);
          v41 = *(v10 + 100);
          if (*(v10 + 113))
          {
            v42 = "TRUE";
          }

          else
          {
            v42 = "FALSE";
          }

          if (*(v10 + 114))
          {
            v43 = "TRUE";
          }

          else
          {
            v43 = "FALSE";
          }

          v44 = *(v10 + 64);
          *buf = 136316930;
          *&buf[4] = v37;
          *&buf[12] = 2048;
          *&buf[14] = v38;
          *&buf[22] = 2080;
          *&buf[24] = v39;
          *v49 = 1024;
          *&v49[2] = v40;
          *&v49[6] = 1024;
          *&v49[8] = v41;
          *&v49[12] = 2080;
          *&v49[14] = v42;
          *&v49[22] = 2080;
          *&v49[24] = v43;
          LOWORD(v50) = 2048;
          *(&v50 + 2) = v44;
          _os_log_impl(&dword_297948000, v12, OS_LOG_TYPE_DEFAULT, "Client (%s) session (%llu): %s sequenceID(%u) timeout(%u sec) queued(%s) started(%s) files(%lu)", buf, 0x4Au);
          v16 = v11;
          v47 = v10;
          if (v11)
          {
            goto LABEL_23;
          }

LABEL_24:
          v17 = *(v10 + 56);
          if (!v17)
          {
            goto LABEL_25;
          }

          while (2)
          {
            v25 = **(v1 + 128);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              goto LABEL_40;
            }

            v26 = *(v10 + 24);
            {
              v50 = xmmword_29EE81A58;
              v51 = unk_29EE81A68;
              v52 = xmmword_29EE81A78;
              *buf = constinit;
              *&buf[16] = unk_29EE81A28;
              *v49 = xmmword_29EE81A38;
              *&v49[16] = unk_29EE81A48;
              std::unordered_map<HSFilerClientID,char const*>::unordered_map(&hsfiler::support::to_string(HSFilerClientID)::clientNames, buf, 7);
            }

            if (!qword_2A13A37B8)
            {
              goto LABEL_36;
            }

            v27 = vcnt_s8(qword_2A13A37B8);
            v27.i16[0] = vaddlv_u8(v27);
            if (v27.u32[0] > 1uLL)
            {
              v28 = v26;
              if (qword_2A13A37B8 <= v26)
              {
                v28 = v26 % qword_2A13A37B8;
              }
            }

            else
            {
              v28 = (qword_2A13A37B8 - 1) & v26;
            }

            v29 = *(hsfiler::support::to_string(HSFilerClientID)::clientNames + 8 * v28);
            if (!v29 || (v30 = *v29) == 0)
            {
LABEL_36:
              v21 = "HS_FILER_CLIENT_INVALID";
              v22 = v17 + 2;
              v10 = v47;
              v23 = *(v47 + 32);
              if (*(v17 + 39) < 0)
              {
                goto LABEL_65;
              }

              goto LABEL_37;
            }

            if (v27.u32[0] < 2uLL)
            {
              while (1)
              {
                v32 = v30[1];
                if (v32 == v26)
                {
                  if (*(v30 + 4) == v26)
                  {
                    goto LABEL_64;
                  }
                }

                else if ((v32 & (qword_2A13A37B8 - 1)) != v28)
                {
                  goto LABEL_36;
                }

                v30 = *v30;
                if (!v30)
                {
                  goto LABEL_36;
                }
              }
            }

            while (2)
            {
              v31 = v30[1];
              if (v31 != v26)
              {
                if (v31 >= qword_2A13A37B8)
                {
                  v31 %= qword_2A13A37B8;
                }

                if (v31 != v28)
                {
                  goto LABEL_36;
                }

                goto LABEL_53;
              }

              if (*(v30 + 4) != v26)
              {
LABEL_53:
                v30 = *v30;
                if (!v30)
                {
                  goto LABEL_36;
                }

                continue;
              }

              break;
            }

LABEL_64:
            v21 = v30[3];
            v22 = v17 + 2;
            v10 = v47;
            v23 = *(v47 + 32);
            if (*(v17 + 39) < 0)
            {
LABEL_65:
              v22 = *v22;
            }

LABEL_37:
            v24 = "not transferred";
            if (*(v17 + 40))
            {
              v24 = "transferred";
            }

            *buf = 136315906;
            *&buf[4] = v21;
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2080;
            *&buf[24] = v22;
            *v49 = 2080;
            *&v49[2] = v24;
            _os_log_impl(&dword_297948000, v25, OS_LOG_TYPE_INFO, "Client (%s) session (%llu): file (%s) %s", buf, 0x2Au);
LABEL_40:
            v17 = *v17;
            if (v17)
            {
              continue;
            }

            break;
          }

LABEL_25:
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
            if (v11)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_27:
            if (v11)
            {
LABEL_28:
              if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v11->__on_zero_shared)(v11);
                std::__shared_weak_count::__release_weak(v11);
              }
            }
          }

          v18 = v7[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v7[2];
              v20 = *v19 == v7;
              v7 = v19;
            }

            while (!v20);
          }

          v7 = v19;
          if (v19 == v46)
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        }
      }

      else
      {
        if (v35 >= qword_2A13A37B8)
        {
          v35 %= qword_2A13A37B8;
        }

        if (v35 != v15)
        {
          goto LABEL_87;
        }
      }

      v34 = *v34;
      if (!v34)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_104:
  v45 = **(v1 + 128);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297948000, v45, OS_LOG_TYPE_DEFAULT, " ------ HSFiler State Dump END ------ ", buf, 2u);
  }
}

void sub_29795C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29795C470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v7 = *a1;
      v6 = a1[1];
      v8 = v3;
      if (*a1 != v3)
      {
        v9 = a1[1];
        v10 = v3;
        if (v6)
        {
          do
          {
            v8 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (v11);
        }

        v12 = v5[4];
        if (v8[4] >= v12)
        {
          break;
        }
      }

      if (v6)
      {
        v13 = v8;
      }

      else
      {
        v13 = v3;
      }

      if (v6)
      {
        v14 = (v8 + 1);
      }

      else
      {
        v14 = v3;
      }

      if (!*v14)
      {
        goto LABEL_25;
      }

LABEL_30:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v11 = *v21 == v5;
          v5 = v21;
        }

        while (!v11);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return a1;
      }
    }

    v14 = v3;
    v13 = v3;
    if (v6)
    {
      v15 = a1[1];
      while (1)
      {
        while (1)
        {
          v13 = v15;
          v16 = v15[4];
          if (v16 <= v12)
          {
            break;
          }

          v15 = *v13;
          v14 = v13;
          if (!*v13)
          {
            goto LABEL_25;
          }
        }

        if (v16 >= v12)
        {
          goto LABEL_30;
        }

        v15 = v13[1];
        if (!v15)
        {
          v14 = v13 + 1;
          break;
        }
      }
    }

LABEL_25:
    v17 = operator new(0x38uLL);
    v18 = v5[5];
    v17[4] = v5[4];
    v17[5] = v18;
    v19 = v5[6];
    v17[6] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      v7 = *a1;
    }

    *v17 = 0;
    v17[1] = 0;
    v17[2] = v13;
    *v14 = v17;
    if (*v7)
    {
      *a1 = *v7;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v17);
    ++a1[2];
    goto LABEL_30;
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (*(v2 + 24))
    {
      return result;
    }

    v3 = *(v2 + 16);
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = *(v2 + 8);
        v11 = *v10;
        *(v2 + 8) = *v10;
        v12 = v2;
        if (v11)
        {
          *(v11 + 16) = v2;
          v3 = *(v2 + 16);
          v12 = *v3;
        }

        *(v10 + 16) = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        *(v2 + 16) = v10;
        v3 = *(v10 + 16);
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      *(v4 + 8) = v3;
      *(v4 + 16) = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = (v4 + 24);
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = v15[1];
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = *(v2 + 16);
    }

    v3[*v3 != v2] = v15;
    v15[1] = v2;
    v15[2] = v3;
    *(v2 + 16) = v15;
    v3 = v15[2];
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void hsfiler_log_client::~hsfiler_log_client(hsfiler_log_client *this)
{
  *this = &unk_2A1E58EF8;
  v1 = *(this + 8);
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
  *this = &unk_2A1E58EF8;
  v1 = *(this + 8);
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
  *this = &unk_2A1E58EF8;
  v1 = *(this + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void std::__shared_ptr_emplace<HSFilerRT_Internal_INT::Session_INT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E59540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v23 + v26 + v32;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v32 + v24 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v25 + v27 + v38;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v50 + v48 + v59 + v49;
        v41 = __ROR8__(v50 + v48 + v59, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t *a2, __int128 **a3)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v55, a2, v7);
  v9 = v8;
  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v4 + 23);
        if (v15 >= 0)
        {
          v16 = *(v4 + 23);
        }

        else
        {
          v16 = v4[1];
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? v14 + 2 : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return v14;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? v14 + 2 : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return v14;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v25 = operator new(0x30uLL);
  v55[0] = v25;
  v55[1] = a1;
  v56 = 0;
  *v25 = 0;
  *(v25 + 1) = v9;
  v26 = *a3;
  if (*(*a3 + 23) < 0)
  {
    v28 = v25;
    std::string::__init_copy_ctor_external((v25 + 16), *v26, *(v26 + 1));
    v25 = v28;
  }

  else
  {
    v27 = *v26;
    *(v25 + 4) = *(v26 + 2);
    *(v25 + 1) = v27;
  }

  v25[40] = 0;
  LOBYTE(v56) = 1;
  v29 = (*(a1 + 3) + 1);
  v30 = a1[8];
  if (!v10 || (v30 * v10) < v29)
  {
    v34 = 1;
    if (v10 >= 3)
    {
      v34 = (v10 & (v10 - 1)) != 0;
    }

    v35 = v34 | (2 * v10);
    v36 = vcvtps_u32_f32(v29 / v30);
    if (v35 <= v36)
    {
      prime = v36;
    }

    else
    {
      prime = v35;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v10 = *(a1 + 1);
    if (prime > v10)
    {
LABEL_62:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v38 = operator new(8 * prime);
      v39 = *a1;
      *a1 = v38;
      if (v39)
      {
        operator delete(v39);
        v38 = *a1;
      }

      *(a1 + 1) = prime;
      bzero(v38, 8 * prime);
      v41 = a1 + 4;
      v40 = *(a1 + 2);
      if (!v40)
      {
        goto LABEL_92;
      }

      v42 = v40[1];
      v43 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v44 = v42 & v43;
        *(v38 + v44) = v41;
        for (i = *v40; *v40; i = *v40)
        {
          v46 = i[1] & v43;
          if (v46 == v44)
          {
            v40 = i;
          }

          else if (*(v38 + v46))
          {
            *v40 = *i;
            *i = **(v38 + v46);
            **(v38 + v46) = i;
          }

          else
          {
            *(v38 + v46) = v40;
            v40 = i;
            v44 = v46;
          }
        }

        goto LABEL_92;
      }

      if (v42 >= prime)
      {
        v42 %= prime;
      }

      *(v38 + v42) = v41;
      v50 = *v40;
      if (!*v40)
      {
LABEL_92:
        v10 = prime;
        v52 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_93;
        }

        goto LABEL_108;
      }

      while (1)
      {
        v51 = v50[1];
        if (v51 >= prime)
        {
          v51 %= prime;
        }

        if (v51 == v42)
        {
          goto LABEL_86;
        }

        if (*(v38 + v51))
        {
          *v40 = *v50;
          *v50 = **(v38 + v51);
          **(v38 + v51) = v50;
          v50 = v40;
LABEL_86:
          v40 = v50;
          v50 = *v50;
          if (!v50)
          {
            goto LABEL_92;
          }
        }

        else
        {
          *(v38 + v51) = v40;
          v40 = v50;
          v50 = *v50;
          v42 = v51;
          if (!v50)
          {
            goto LABEL_92;
          }
        }
      }
    }

    if (prime < v10)
    {
      v47 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v10 < 3 || (v48 = vcnt_s8(v10), v48.i16[0] = vaddlv_u8(v48), v48.u32[0] > 1uLL))
      {
        v47 = std::__next_prime(v47);
      }

      else
      {
        v49 = 1 << -__clz(v47 - 1);
        if (v47 >= 2)
        {
          v47 = v49;
        }
      }

      if (prime <= v47)
      {
        prime = v47;
      }

      if (prime < v10)
      {
        if (!prime)
        {
          v53 = *a1;
          *a1 = 0;
          if (v53)
          {
            operator delete(v53);
          }

          v10 = 0;
          *(a1 + 1) = 0;
          v52 = -1;
          goto LABEL_108;
        }

        goto LABEL_62;
      }

      v10 = *(a1 + 1);
    }

    v52 = v10 - 1;
    if ((v10 & (v10 - 1)) != 0)
    {
LABEL_93:
      if (v9 >= v10)
      {
        v12 = v9 % v10;
        v31 = *a1;
        v32 = *(*a1 + 8 * (v9 % v10));
        if (v32)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v12 = v9;
        v31 = *a1;
        v32 = *(*a1 + 8 * v9);
        if (v32)
        {
          goto LABEL_49;
        }
      }

LABEL_109:
      v14 = v55[0];
      *v55[0] = *(a1 + 2);
      *(a1 + 2) = v14;
      *(v31 + 8 * v12) = a1 + 4;
      if (*v14)
      {
        v54 = *(*v14 + 8);
        if ((v10 & (v10 - 1)) != 0)
        {
          if (v54 >= v10)
          {
            v54 %= v10;
          }

          *(v31 + 8 * v54) = v14;
        }

        else
        {
          *(v31 + 8 * (v54 & (v10 - 1))) = v14;
        }
      }

      goto LABEL_50;
    }

LABEL_108:
    v12 = v52 & v9;
    v31 = *a1;
    v32 = *(*a1 + 8 * v12);
    if (v32)
    {
      goto LABEL_49;
    }

    goto LABEL_109;
  }

  v31 = *a1;
  v32 = *(*a1 + 8 * v12);
  if (!v32)
  {
    goto LABEL_109;
  }

LABEL_49:
  v14 = v55[0];
  *v55[0] = *v32;
  *v32 = v14;
LABEL_50:
  ++*(a1 + 3);
  return v14;
}

void sub_29795D590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29795D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy((v1 + 5), v1[6]);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0xF8uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E59590;
  v2[1].std::__shared_count = 0u;
  *&v2[1].__shared_weak_owners_ = 0u;
  *&v2[2].__shared_owners_ = 0u;
  v2[3].std::__shared_count = 0u;
  *&v2[3].__shared_weak_owners_ = 0u;
  *&v2[4].__shared_owners_ = 0u;
  v2[5].std::__shared_count = 0u;
  *&v2[5].__shared_weak_owners_ = 0u;
  *&v2[6].__shared_owners_ = 0u;
  v2[7].std::__shared_count = 0u;
  *&v2[7].__shared_weak_owners_ = 0u;
  *&v2[8].__shared_owners_ = 0u;
  v2[9].std::__shared_count = 0u;
  *&v2[9].__shared_weak_owners_ = 0u;
  HSFilerRT_Internal::HSFilerRT_Internal(&v2[1]);
  v2[1].__vftable = &unk_2A1E5A910;
  *a1 = v4;
  a1[1] = v2;
  shared_weak_owners = v2[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v2->__on_zero_shared)(v2);

  std::__shared_weak_count::__release_weak(v2);
}

void sub_29795D89C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HSFilerRT_Internal_INT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E59590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_84;
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

void __copy_helper_block_e8_32b40c47_ZTSNSt3__110shared_ptrIK18HSFilerRT_InternalEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c47_ZTSNSt3__110shared_ptrIK18HSFilerRT_InternalEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  _Block_object_dispose(v2, 7);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void *std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::~__func(void *result)
{
  *result = &unk_2A1E59610;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E59610;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E59610;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1E59610;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::destroy_deallocate(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::operator()(void *result, const void **a2, size_t *a3)
{
  v3 = result[1];
  v4 = *a2;
  v5 = *a3;
  v6 = v3[2];
  v7 = *v3;
  if (v6 - *v3 < *a3)
  {
    if (v7)
    {
      v3[1] = v7;
      operator delete(v7);
      v6 = 0;
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 2 * v6;
    if (2 * v6 <= v5)
    {
      v8 = v5;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v10 = operator new(v9);
    *v3 = v10;
    v3[1] = v10;
    v3[2] = &v10[v9];
    result = memcpy(v10, v4, v5);
    v11 = &v10[v5];
    goto LABEL_25;
  }

  v12 = v3[1];
  v13 = v12 - v7;
  if (v12 - v7 < v5)
  {
    v14 = &v4[v13];
    if (v12 == v7)
    {
      v15 = v3[1];
      v16 = &v7[v5] - v12;
      if (v16 < 0x20)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = memmove(*v3, *a2, v13);
      v15 = v3[1];
      v16 = &v7[v5] - v12;
      if (v16 < 0x20)
      {
LABEL_14:
        v17 = v15;
        do
        {
LABEL_23:
          v22 = *v14++;
          *v17++ = v22;
        }

        while (v14 != &v4[v5]);
LABEL_24:
        v11 = v17;
        goto LABEL_25;
      }
    }

    v17 = v15;
    if ((&v7[v15] - &v12[v4]) >= 0x20)
    {
      v14 += v16 & 0xFFFFFFFFFFFFFFE0;
      v17 = &v15[v16 & 0xFFFFFFFFFFFFFFE0];
      v18 = v15 + 16;
      v19 = &v4[v12 - v7 + 16];
      v20 = v16 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v21 = *v19;
        *(v18 - 1) = *(v19 - 1);
        *v18 = v21;
        v18 += 2;
        v19 += 32;
        v20 -= 32;
      }

      while (v20);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if (v5)
  {
    result = memmove(*v3, *a2, v5);
  }

  v11 = &v7[v5];
LABEL_25:
  v3[1] = v11;
  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18HSFilerRT_Internal12readWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18HSFilerRT_Internal12readWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18HSFilerRT_Internal12readWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18HSFilerRT_Internal12readWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::~__func(void *result)
{
  *result = &unk_2A1E596A0;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E596A0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E596A0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1E596A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::destroy_deallocate(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::operator()(uint64_t a1, const void **a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  block = MEMORY[0x29EDCA5F8];
  v10 = 0x40000000;
  v11 = ___ZN7support2fs8SyncFile4openEv_block_invoke;
  v12 = &__block_descriptor_tmp_2;
  v13 = v6;
  ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped((v6 + 8), &block);
  support::fs::SyncFile::write(*(a1 + 8), v4, v5);
  v8 = *(a1 + 8);
  block = MEMORY[0x29EDCA5F8];
  v10 = 0x40000000;
  v11 = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v12 = &__block_descriptor_tmp_17;
  v13 = v8 + 8;
  v14 = &v8;
  v7 = *(v8 + 24);
  if (*(v8 + 32))
  {
    dispatch_async_and_wait(v7, &block);
  }

  else
  {
    dispatch_sync(v7, &block);
  }
}

uint64_t std::__function::__func<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18HSFilerRT_Internal12readWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18HSFilerRT_Internal12readWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18HSFilerRT_Internal12readWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18HSFilerRT_Internal12readWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::~__func(void *result)
{
  *result = &unk_2A1E59720;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E59720;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E59720;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1E59720;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::destroy_deallocate(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::readWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::ostream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,void ()(void const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18HSFilerRT_Internal14readWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_ostreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18HSFilerRT_Internal14readWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_ostreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18HSFilerRT_Internal14readWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_ostreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18HSFilerRT_Internal14readWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_ostreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::~__func(void *result)
{
  *result = &unk_2A1E597A0;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E597A0;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

char *std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E597A0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E597A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::destroy_deallocate(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

BOOL std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::operator()(uint64_t a1, void **a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  v5 = *(v3 + 8) - *v3;
  if (v5 > *a3)
  {
    v6 = **(*(a1 + 8) + 128);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_297948000, v6, OS_LOG_TYPE_ERROR, "error: Buffer provided by the writer function is too small", v8, 2u);
    }
  }

  else
  {
    memcpy(*a2, *v3, *(v3 + 8) - *v3);
  }

  return v5 <= v4;
}

uint64_t std::__function::__func<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithBuff(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::vector<unsigned char>>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18HSFilerRT_Internal13writeWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18HSFilerRT_Internal13writeWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18HSFilerRT_Internal13writeWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18HSFilerRT_Internal13writeWithBuffE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_6vectorIhNS5_IhEEEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::~__func(void *result)
{
  *result = &unk_2A1E59830;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E59830;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

__n128 std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::__clone(__n128 *a1)
{
  v2 = operator new(0x38uLL);
  v3 = a1->n128_u64[1];
  v4 = a1[1].n128_u64[0];
  v2->n128_u64[0] = &unk_2A1E59830;
  v2->n128_u64[1] = v3;
  v5 = a1[1].n128_u64[1];
  v2[1].n128_u64[0] = v4;
  v2[1].n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[2];
  v2[2] = result;
  v2[3].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

__n128 std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::__clone(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  v3 = a1[1].n128_u64[0];
  a2->n128_u64[0] = &unk_2A1E59830;
  a2->n128_u64[1] = v2;
  v4 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::destroy_deallocate(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

BOOL std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::operator()(uint64_t a1, void **a2, unint64_t *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 8);
  if (v6 <= v4)
  {
    if (support::fs::SyncFile::read(*(a1 + 16), *a2, v6))
    {
      return 1;
    }

    v14 = **(v5 + 128);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v15 = hsfiler::support::to_string(*(a1 + 40));
      v16 = *(a1 + 48);
      v17 = *(a1 + 16);
      v20 = *(v17 + 40);
      v18 = v17 + 40;
      v19 = v20;
      if (*(v18 + 23) < 0)
      {
        v18 = v19;
      }

      v21 = 136315650;
      v22 = v15;
      v23 = 2048;
      v24 = v16;
      v25 = 2080;
      v26 = v18;
      v11 = "error: Client (%s) session (%llu): failed to read file (%s)";
      v12 = v14;
      v13 = 32;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = **(v5 + 128);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v9 = hsfiler::support::to_string(*(a1 + 40));
      v10 = *(a1 + 48);
      v21 = 136315394;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      v11 = "error: Client (%s) session (%llu): buffer provided by the writer function is too small";
      v12 = v7;
      v13 = 22;
LABEL_11:
      _os_log_error_impl(&dword_297948000, v12, OS_LOG_TYPE_ERROR, v11, &v21, v13);
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithFile(HSFilerClientID,unsigned long long,std::string const&,std::string,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18HSFilerRT_Internal13writeWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18HSFilerRT_Internal13writeWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18HSFilerRT_Internal13writeWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18HSFilerRT_Internal13writeWithFileE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_N8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::~__func(void *result)
{
  *result = &unk_2A1E598B0;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E598B0;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

char *std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x28uLL);
  *result = &unk_2A1E598B0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 4) = *(a1 + 32);
  return result;
}

uint64_t std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E598B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::destroy_deallocate(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

BOOL std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::operator()(void *a1, void *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a1[4];
  if (v4 > *a3)
  {
    v5 = **(a1[1] + 128);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_297948000, v5, OS_LOG_TYPE_ERROR, "error: Buffer provided by the writer function is too small", v7, 2u);
    }
  }

  else
  {
    std::istream::read();
  }

  return v4 <= v3;
}

uint64_t std::__function::__func<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0,std::allocator<HSFilerRT_Internal::writeWithStream(HSFilerClientID,unsigned long long,std::string const&,std::shared_ptr<std::istream>,dispatch::block<void({block_pointer})(unsigned long long,HSFilerStatus,std::string const&)>)::$_0>,BOOL ()(void *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18HSFilerRT_Internal15writeWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_istreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18HSFilerRT_Internal15writeWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_istreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18HSFilerRT_Internal15writeWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_istreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18HSFilerRT_Internal15writeWithStreamE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_10shared_ptrINS1_13basic_istreamIcS4_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

const char *hsfiler::support::to_string(unsigned int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  {
    v8 = a1;
    a1 = v8;
    if (v9)
    {
      v10[4] = xmmword_29EE81A58;
      v10[5] = unk_29EE81A68;
      v10[6] = xmmword_29EE81A78;
      v10[0] = constinit;
      v10[1] = unk_29EE81A28;
      v10[2] = xmmword_29EE81A38;
      v10[3] = unk_29EE81A48;
      std::unordered_map<HSFilerClientID,char const*>::unordered_map(&hsfiler::support::to_string(HSFilerClientID)::clientNames, v10, 7);
      a1 = v8;
    }
  }

  if (!qword_2A13A37B8)
  {
    return "HS_FILER_CLIENT_INVALID";
  }

  v1 = vcnt_s8(qword_2A13A37B8);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (qword_2A13A37B8 <= a1)
    {
      v2 = a1 % qword_2A13A37B8;
    }
  }

  else
  {
    v2 = (qword_2A13A37B8 - 1) & a1;
  }

  v3 = *(hsfiler::support::to_string(HSFilerClientID)::clientNames + 8 * v2);
  if (!v3)
  {
    return "HS_FILER_CLIENT_INVALID";
  }

  v4 = *v3;
  if (!v4)
  {
    return "HS_FILER_CLIENT_INVALID";
  }

  if (v1.u32[0] < 2uLL)
  {
    while (1)
    {
      v5 = v4[1];
      if (v5 == a1)
      {
        if (*(v4 + 4) == a1)
        {
          return v4[3];
        }
      }

      else if ((v5 & (qword_2A13A37B8 - 1)) != v2)
      {
        return "HS_FILER_CLIENT_INVALID";
      }

      v4 = *v4;
      if (!v4)
      {
        return "HS_FILER_CLIENT_INVALID";
      }
    }
  }

  while (1)
  {
    v7 = v4[1];
    if (v7 == a1)
    {
      break;
    }

    if (v7 >= qword_2A13A37B8)
    {
      v7 %= qword_2A13A37B8;
    }

    if (v7 != v2)
    {
      return "HS_FILER_CLIENT_INVALID";
    }

LABEL_19:
    v4 = *v4;
    if (!v4)
    {
      return "HS_FILER_CLIENT_INVALID";
    }
  }

  if (*(v4 + 4) != a1)
  {
    goto LABEL_19;
  }

  return v4[3];
}

const char *hsfiler::support::to_string(int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  {
    v8 = a1;
    a1 = v8;
    if (v9)
    {
      memcpy(__dst, &constinit_25, sizeof(__dst));
      std::unordered_map<HSFilerStatus,char const*>::unordered_map(&hsfiler::support::to_string(HSFilerStatus)::statustStrings, __dst, 17);
      a1 = v8;
    }
  }

  if (!qword_2A13A37E8)
  {
    return "HS_FILER_STATUS_INVALID";
  }

  v1 = vcnt_s8(qword_2A13A37E8);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (qword_2A13A37E8 <= a1)
    {
      v2 = a1 % qword_2A13A37E8;
    }
  }

  else
  {
    v2 = (qword_2A13A37E8 - 1) & a1;
  }

  v3 = *(hsfiler::support::to_string(HSFilerStatus)::statustStrings + 8 * v2);
  if (!v3)
  {
    return "HS_FILER_STATUS_INVALID";
  }

  v4 = *v3;
  if (!v4)
  {
    return "HS_FILER_STATUS_INVALID";
  }

  if (v1.u32[0] < 2uLL)
  {
    while (1)
    {
      v5 = v4[1];
      if (v5 == a1)
      {
        if (*(v4 + 4) == a1)
        {
          return v4[3];
        }
      }

      else if ((v5 & (qword_2A13A37E8 - 1)) != v2)
      {
        return "HS_FILER_STATUS_INVALID";
      }

      v4 = *v4;
      if (!v4)
      {
        return "HS_FILER_STATUS_INVALID";
      }
    }
  }

  while (1)
  {
    v7 = v4[1];
    if (v7 == a1)
    {
      break;
    }

    if (v7 >= qword_2A13A37E8)
    {
      v7 %= qword_2A13A37E8;
    }

    if (v7 != v2)
    {
      return "HS_FILER_STATUS_INVALID";
    }

LABEL_19:
    v4 = *v4;
    if (!v4)
    {
      return "HS_FILER_STATUS_INVALID";
    }
  }

  if (*(v4 + 4) != a1)
  {
    goto LABEL_19;
  }

  return v4[3];
}

uint64_t std::unordered_map<HSFilerClientID,char const*>::unordered_map(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<HSFilerClientID,char const*>,std::__unordered_map_hasher<HSFilerClientID,std::__hash_value_type<HSFilerClientID,char const*>,std::hash<HSFilerClientID>,std::equal_to<HSFilerClientID>,true>,std::__unordered_map_equal<HSFilerClientID,std::__hash_value_type<HSFilerClientID,char const*>,std::equal_to<HSFilerClientID>,std::hash<HSFilerClientID>,true>,std::allocator<std::__hash_value_type<HSFilerClientID,char const*>>>::__emplace_unique_key_args<HSFilerClientID,std::pair<HSFilerClientID const,char const*> const&>(a1, a2, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<HSFilerClientID,char const*>,std::__unordered_map_hasher<HSFilerClientID,std::__hash_value_type<HSFilerClientID,char const*>,std::hash<HSFilerClientID>,std::equal_to<HSFilerClientID>,true>,std::__unordered_map_equal<HSFilerClientID,std::__hash_value_type<HSFilerClientID,char const*>,std::equal_to<HSFilerClientID>,std::hash<HSFilerClientID>,true>,std::allocator<std::__hash_value_type<HSFilerClientID,char const*>>>::__emplace_unique_key_args<HSFilerClientID,std::pair<HSFilerClientID const,char const*> const&>(float *a1, unsigned int *a2, _OWORD *a3)
{
  v5 = *a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x20uLL);
  *v14 = 0;
  v14[1] = v5;
  *(v14 + 1) = *a3;
  v15 = (*(a1 + 3) + 1);
  v16 = a1[8];
  if (v6 && (v16 * v6) >= v15)
  {
    v5 = v8;
    v17 = *a1;
    v18 = *(*a1 + 8 * v8);
    if (!v18)
    {
      goto LABEL_85;
    }

LABEL_71:
    *v14 = *v18;
    goto LABEL_72;
  }

  v19 = 1;
  if (v6 >= 3)
  {
    v19 = (v6 & (v6 - 1)) != 0;
  }

  v20 = v19 | (2 * v6);
  v21 = vcvtps_u32_f32(v15 / v16);
  if (v20 <= v21)
  {
    prime = v21;
  }

  else
  {
    prime = v20;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 1);
  }

  if (prime > v6)
  {
LABEL_37:
    if (prime >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v23 = operator new(8 * prime);
    v24 = *a1;
    *a1 = v23;
    if (v24)
    {
      operator delete(v24);
      v23 = *a1;
    }

    *(a1 + 1) = prime;
    bzero(v23, 8 * prime);
    v26 = a1 + 4;
    v25 = *(a1 + 2);
    if (!v25)
    {
      goto LABEL_67;
    }

    v27 = v25[1];
    v28 = prime - 1;
    if ((prime & (prime - 1)) == 0)
    {
      v29 = v27 & v28;
      *(v23 + v29) = v26;
      for (i = *v25; *v25; i = *v25)
      {
        v31 = i[1] & v28;
        if (v31 == v29)
        {
          v25 = i;
        }

        else if (*(v23 + v31))
        {
          *v25 = *i;
          *i = **(v23 + v31);
          **(v23 + v31) = i;
        }

        else
        {
          *(v23 + v31) = v25;
          v25 = i;
          v29 = v31;
        }
      }

      goto LABEL_67;
    }

    if (v27 >= prime)
    {
      v27 %= prime;
    }

    *(v23 + v27) = v26;
    v35 = *v25;
    if (!*v25)
    {
LABEL_67:
      v6 = prime;
      if ((prime & (prime - 1)) != 0)
      {
        goto LABEL_68;
      }

      goto LABEL_84;
    }

    while (1)
    {
      v36 = v35[1];
      if (v36 >= prime)
      {
        v36 %= prime;
      }

      if (v36 == v27)
      {
        goto LABEL_61;
      }

      if (*(v23 + v36))
      {
        *v25 = *v35;
        *v35 = **(v23 + v36);
        **(v23 + v36) = v35;
        v35 = v25;
LABEL_61:
        v25 = v35;
        v35 = *v35;
        if (!v35)
        {
          goto LABEL_67;
        }
      }

      else
      {
        *(v23 + v36) = v25;
        v25 = v35;
        v35 = *v35;
        v27 = v36;
        if (!v35)
        {
          goto LABEL_67;
        }
      }
    }
  }

  if (prime < v6)
  {
    v32 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
    if (v6 < 3 || (v33 = vcnt_s8(v6), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
    {
      v32 = std::__next_prime(v32);
    }

    else
    {
      v34 = 1 << -__clz(v32 - 1);
      if (v32 >= 2)
      {
        v32 = v34;
      }
    }

    if (prime <= v32)
    {
      prime = v32;
    }

    if (prime < v6)
    {
      if (!prime)
      {
        v37 = *a1;
        *a1 = 0;
        if (v37)
        {
          operator delete(v37);
        }

        v6 = 0;
        *(a1 + 1) = 0;
        goto LABEL_84;
      }

      goto LABEL_37;
    }

    v6 = *(a1 + 1);
  }

  if ((v6 & (v6 - 1)) != 0)
  {
LABEL_68:
    if (v6 <= v5)
    {
      v5 %= v6;
    }

    v17 = *a1;
    v18 = *(*a1 + 8 * v5);
    if (!v18)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

LABEL_84:
  v5 = (v6 - 1) & v5;
  v17 = *a1;
  v18 = *(*a1 + 8 * v5);
  if (v18)
  {
    goto LABEL_71;
  }

LABEL_85:
  *v14 = *(a1 + 2);
  *(a1 + 2) = v14;
  *(v17 + 8 * v5) = a1 + 4;
  if (!*v14)
  {
    goto LABEL_73;
  }

  v38 = *(*v14 + 8);
  if ((v6 & (v6 - 1)) != 0)
  {
    if (v38 >= v6)
    {
      v38 %= v6;
    }

    v18 = (v17 + 8 * v38);
  }

  else
  {
    v18 = (v17 + 8 * (v38 & (v6 - 1)));
  }

LABEL_72:
  *v18 = v14;
LABEL_73:
  ++*(a1 + 3);
  return v14;
}

uint64_t std::__hash_table<std::__hash_value_type<HSFilerClientID,char const*>,std::__unordered_map_hasher<HSFilerClientID,std::__hash_value_type<HSFilerClientID,char const*>,std::hash<HSFilerClientID>,std::equal_to<HSFilerClientID>,true>,std::__unordered_map_equal<HSFilerClientID,std::__hash_value_type<HSFilerClientID,char const*>,std::equal_to<HSFilerClientID>,std::hash<HSFilerClientID>,true>,std::allocator<std::__hash_value_type<HSFilerClientID,char const*>>>::~__hash_table(uint64_t a1)
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

uint64_t std::unordered_map<HSFilerStatus,char const*>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<HSFilerStatus,char const*>,std::__unordered_map_hasher<HSFilerStatus,std::__hash_value_type<HSFilerStatus,char const*>,std::hash<HSFilerStatus>,std::equal_to<HSFilerStatus>,true>,std::__unordered_map_equal<HSFilerStatus,std::__hash_value_type<HSFilerStatus,char const*>,std::equal_to<HSFilerStatus>,std::hash<HSFilerStatus>,true>,std::allocator<std::__hash_value_type<HSFilerStatus,char const*>>>::__emplace_unique_key_args<HSFilerStatus,std::pair<HSFilerStatus const,char const*> const&>(a1, a2, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<HSFilerStatus,char const*>,std::__unordered_map_hasher<HSFilerStatus,std::__hash_value_type<HSFilerStatus,char const*>,std::hash<HSFilerStatus>,std::equal_to<HSFilerStatus>,true>,std::__unordered_map_equal<HSFilerStatus,std::__hash_value_type<HSFilerStatus,char const*>,std::equal_to<HSFilerStatus>,std::hash<HSFilerStatus>,true>,std::allocator<std::__hash_value_type<HSFilerStatus,char const*>>>::__emplace_unique_key_args<HSFilerStatus,std::pair<HSFilerStatus const,char const*> const&>(float *a1, int *a2, _OWORD *a3)
{
  v5 = *a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x20uLL);
  *v14 = 0;
  v14[1] = v5;
  *(v14 + 1) = *a3;
  v15 = (*(a1 + 3) + 1);
  v16 = a1[8];
  if (!v6 || (v16 * v6) < v15)
  {
    v19 = 1;
    if (v6 >= 3)
    {
      v19 = (v6 & (v6 - 1)) != 0;
    }

    v20 = v19 | (2 * v6);
    v21 = vcvtps_u32_f32(v15 / v16);
    if (v20 <= v21)
    {
      prime = v21;
    }

    else
    {
      prime = v20;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 1);
    }

    if (prime > v6)
    {
LABEL_39:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = operator new(8 * prime);
      v24 = *a1;
      *a1 = v23;
      if (v24)
      {
        operator delete(v24);
        v23 = *a1;
      }

      *(a1 + 1) = prime;
      bzero(v23, 8 * prime);
      v26 = a1 + 4;
      v25 = *(a1 + 2);
      if (!v25)
      {
        goto LABEL_69;
      }

      v27 = v25[1];
      v28 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v29 = v27 & v28;
        *(v23 + v29) = v26;
        for (i = *v25; *v25; i = *v25)
        {
          v31 = i[1] & v28;
          if (v31 == v29)
          {
            v25 = i;
          }

          else if (*(v23 + v31))
          {
            *v25 = *i;
            *i = **(v23 + v31);
            **(v23 + v31) = i;
          }

          else
          {
            *(v23 + v31) = v25;
            v25 = i;
            v29 = v31;
          }
        }

        goto LABEL_69;
      }

      if (v27 >= prime)
      {
        v27 %= prime;
      }

      *(v23 + v27) = v26;
      v35 = *v25;
      if (!*v25)
      {
LABEL_69:
        v6 = prime;
        v37 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_70;
        }

        goto LABEL_85;
      }

      while (1)
      {
        v36 = v35[1];
        if (v36 >= prime)
        {
          v36 %= prime;
        }

        if (v36 == v27)
        {
          goto LABEL_63;
        }

        if (*(v23 + v36))
        {
          *v25 = *v35;
          *v35 = **(v23 + v36);
          **(v23 + v36) = v35;
          v35 = v25;
LABEL_63:
          v25 = v35;
          v35 = *v35;
          if (!v35)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *(v23 + v36) = v25;
          v25 = v35;
          v35 = *v35;
          v27 = v36;
          if (!v35)
          {
            goto LABEL_69;
          }
        }
      }
    }

    if (prime < v6)
    {
      v32 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v6 < 3 || (v33 = vcnt_s8(v6), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        v32 = std::__next_prime(v32);
      }

      else
      {
        v34 = 1 << -__clz(v32 - 1);
        if (v32 >= 2)
        {
          v32 = v34;
        }
      }

      if (prime <= v32)
      {
        prime = v32;
      }

      if (prime < v6)
      {
        if (!prime)
        {
          v38 = *a1;
          *a1 = 0;
          if (v38)
          {
            operator delete(v38);
          }

          v6 = 0;
          *(a1 + 1) = 0;
          v37 = -1;
          goto LABEL_85;
        }

        goto LABEL_39;
      }

      v6 = *(a1 + 1);
    }

    v37 = v6 - 1;
    if ((v6 & (v6 - 1)) != 0)
    {
LABEL_70:
      if (v6 <= v5)
      {
        v8 = v5 % v6;
        v17 = *a1;
        v18 = *(*a1 + 8 * (v5 % v6));
        if (v18)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v8 = v5;
        v17 = *a1;
        v18 = *(*a1 + 8 * v5);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_86;
    }

LABEL_85:
    v8 = v37 & v5;
    v17 = *a1;
    v18 = *(*a1 + 8 * v8);
    if (v18)
    {
      goto LABEL_26;
    }

    goto LABEL_86;
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v8);
  if (v18)
  {
LABEL_26:
    *v14 = *v18;
    goto LABEL_27;
  }

LABEL_86:
  *v14 = *(a1 + 2);
  *(a1 + 2) = v14;
  *(v17 + 8 * v8) = a1 + 4;
  if (!*v14)
  {
    goto LABEL_28;
  }

  v39 = *(*v14 + 8);
  if ((v6 & (v6 - 1)) != 0)
  {
    if (v39 >= v6)
    {
      v39 %= v6;
    }

    v18 = (v17 + 8 * v39);
  }

  else
  {
    v18 = (v17 + 8 * (v39 & (v6 - 1)));
  }

LABEL_27:
  *v18 = v14;
LABEL_28:
  ++*(a1 + 3);
  return v14;
}

void support::transport::PCIMemRegion::create(const void **a1@<X0>, uint64_t a2@<X1>, mach_vm_size_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a6;
  v13 = a2;
  *a8 = 0xAAAAAAAAAAAAAAAALL;
  a8[1] = 0xAAAAAAAAAAAAAAAALL;
  v16 = operator new(0xF8uLL);
  support::transport::PCIMemRegion::PCIMemRegion(v16, a1, v13, a7, v9);
  std::shared_ptr<support::transport::PCIMemRegion>::shared_ptr[abi:ne200100]<support::transport::PCIMemRegion,0>(a8, v16);
  if (*a8)
  {
    if ((support::transport::PCIMemRegion::createPCITransport(*a8) & 1) == 0 || !support::transport::PCIMemRegion::allocateVMRegion(*a8, a3) || ((v17 = *a8, !a4) || !a5 ? (v18 = support::transport::PCIMemRegion::mapVMRegion(v17)) : (v18 = support::transport::PCIMemRegion::mapVMRegionWithClientData(v17, a4, a5)), (v18 & 1) == 0))
    {

      std::shared_ptr<support::transport::PCIMemRegion>::reset[abi:ne200100](a8);
    }
  }
}

uint64_t support::transport::PCIMemRegion::createPCITransport(support::transport::PCIMemRegion *this)
{
  v70 = *MEMORY[0x29EDCA608];
  if (!*(this + 30))
  {
    v37 = *(this + 30);
    v66 = 1;
    v38 = (*(*v37 + 16))(v37, 1, **(this + 27));
    if (v38)
    {
      if (*(v37 + 17))
      {
        v39 = 2;
        support::log::buffer::borrow(v38);
      }

      else
      {
        v39 = 0;
      }

      if (v39 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        v47 = *(this + 30);
        LODWORD(v67) = 67109120;
        DWORD1(v67) = v47;
        v48 = _os_log_send_and_compose_impl();
        if (v48)
        {
          v49 = v48;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          *&v67 = &unk_2A1E59028;
          *(&v67 + 1) = this + 176;
          *&v68 = &v66;
          *(&v68 + 1) = &rep;
          support::log::manager::message_delegates(v37, &v67, v49);
        }
      }
    }

    return 0;
  }

  v2 = *(this + 30);
  v3 = this + 176;
  if (!*(this + 3))
  {
    v66 = 1;
    v40 = (*(*v2 + 16))(v2, 1, **(this + 27));
    if (v40)
    {
      if (*(v2 + 17))
      {
        v41 = 2;
        support::log::buffer::borrow(v40);
      }

      else
      {
        v41 = 0;
      }

      if (v41 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v67) = 0;
        v50 = _os_log_send_and_compose_impl();
        if (v50)
        {
          v51 = v50;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          *&v67 = &unk_2A1E59028;
          *(&v67 + 1) = v3;
          *&v68 = &v66;
          *(&v68 + 1) = &rep;
          support::log::manager::message_delegates(v2, &v67, v51);
        }
      }
    }

    return 0;
  }

  v66 = 3;
  v4 = (*(*v2 + 16))(v2, 3, **(this + 27));
  if (v4)
  {
    if (*(v2 + 17))
    {
      v5 = 2;
      support::log::buffer::borrow(v4);
    }

    else
    {
      v5 = 0;
    }

    if (v5 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 30);
      LODWORD(v67) = 67109120;
      DWORD1(v67) = v6;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v9.__d_.__rep_;
        *&v67 = &unk_2A1E59028;
        *(&v67 + 1) = v3;
        *&v68 = &v66;
        *(&v68 + 1) = &rep;
        v10 = (v2 + 120);
        for (i = *(v2 + 16); i != v10; i = *(i + 8))
        {
          v9.__d_.__rep_ = (***(i + 16))(*(i + 16), &v67, v8);
        }

        support::log::manager::release_log_buffer(v9.__d_.__rep_, v8);
      }
    }
  }

  v12 = *(this + 30);
  v67 = 0u;
  v68 = 0u;
  v69 = 0xAAAAAAAA3F800000;
  std::__hash_table<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::__unordered_map_hasher<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::hash<PCITransportMemRegion>,std::equal_to<PCITransportMemRegion>,true>,std::__unordered_map_equal<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::equal_to<PCITransportMemRegion>,std::hash<PCITransportMemRegion>,true>,std::allocator<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>>>::__emplace_unique_key_args<PCITransportMemRegion,std::pair<PCITransportMemRegion const,PCITransportInterface> const&>(&v67, 2u, 0x1200000002);
  std::__hash_table<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::__unordered_map_hasher<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::hash<PCITransportMemRegion>,std::equal_to<PCITransportMemRegion>,true>,std::__unordered_map_equal<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::equal_to<PCITransportMemRegion>,std::hash<PCITransportMemRegion>,true>,std::allocator<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>>>::__emplace_unique_key_args<PCITransportMemRegion,std::pair<PCITransportMemRegion const,PCITransportInterface> const&>(&v67, 3u, 0x1500000003);
  std::__hash_table<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::__unordered_map_hasher<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::hash<PCITransportMemRegion>,std::equal_to<PCITransportMemRegion>,true>,std::__unordered_map_equal<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::equal_to<PCITransportMemRegion>,std::hash<PCITransportMemRegion>,true>,std::allocator<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>>>::__emplace_unique_key_args<PCITransportMemRegion,std::pair<PCITransportMemRegion const,PCITransportInterface> const&>(&v67, 0xFFF0u, 0x130000FFF0);
  if (*(&v67 + 1))
  {
    v13 = vcnt_s8(*(&v67 + 8));
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = v12;
      if (*(&v67 + 1) <= v12)
      {
        v14 = v12 % DWORD2(v67);
      }
    }

    else
    {
      v14 = (DWORD2(v67) - 1) & v12;
    }

    v15 = *(v67 + 8 * v14);
    if (v15)
    {
      v16 = *v15;
      if (v16)
      {
        if (v13.u32[0] < 2uLL)
        {
          while (1)
          {
            v18 = v16[1];
            if (v18 == v12)
            {
              if (*(v16 + 4) == v12)
              {
                goto LABEL_48;
              }
            }

            else if ((v18 & (*(&v67 + 1) - 1)) != v14)
            {
              goto LABEL_32;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_32;
            }
          }
        }

        do
        {
          v17 = v16[1];
          if (v17 == v12)
          {
            if (*(v16 + 4) == v12)
            {
LABEL_48:
              v20 = *(v16 + 5);
              v19 = 1;
              v21 = v68;
              if (!v68)
              {
                goto LABEL_34;
              }

              goto LABEL_33;
            }
          }

          else
          {
            if (v17 >= *(&v67 + 1))
            {
              v17 %= *(&v67 + 1);
            }

            if (v17 != v14)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

LABEL_32:
  v19 = 0;
  v20 = 35;
  v21 = v68;
  if (!v68)
  {
    goto LABEL_34;
  }

  do
  {
LABEL_33:
    v22 = *v21;
    operator delete(v21);
    v21 = v22;
  }

  while (v22);
LABEL_34:
  v23 = v67;
  *&v67 = 0;
  if (v23)
  {
    operator delete(v23);
  }

  if ((v19 & 1) == 0)
  {
    v42 = *(this + 30);
    v66 = 1;
    v43 = (*(*v42 + 16))(v42, 1, **(this + 27));
    if (v43)
    {
      if (*(v42 + 17))
      {
        support::log::buffer::borrow(v43);
        v44 = 2;
      }

      else
      {
        v44 = 0;
      }

      if (v44 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        v52 = *(this + 30);
        LODWORD(v67) = 67109120;
        DWORD1(v67) = v52;
        v53 = _os_log_send_and_compose_impl();
        if (v53)
        {
          v54 = v53;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          *&v67 = &unk_2A1E59028;
          *(&v67 + 1) = v3;
          *&v68 = &v66;
          *(&v68 + 1) = &rep;
          support::log::manager::message_delegates(v42, &v67, v54);
        }
      }
    }

    return 0;
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v24;
  v63 = v24;
  v60 = v24;
  v61 = v24;
  v59 = v24;
  TelephonyBasebandPCITransportInitParameters();
  v25 = *(this + 3);
  LODWORD(v64) = 25;
  v58[0] = MEMORY[0x29EDCA5F8];
  v58[1] = 0x40000000;
  v58[2] = ___ZN7support9transport12PCIMemRegion18createPCITransportEv_block_invoke;
  v58[3] = &__block_descriptor_tmp_1;
  v58[4] = this;
  *(&v59 + 1) = v25;
  *&v60 = v58;
  LODWORD(v59) = v20;
  DWORD2(v60) = *(this + 38);
  *&v61 = v61 | 4;
  DWORD2(v61) = 0;
  v26 = TelephonyBasebandPCITransportCreate();
  v27 = *(this + 30);
  if ((v26 & 1) == 0)
  {
    v66 = 1;
    v45 = (*(*v27 + 16))(v27, 1, **(this + 27));
    if (v45)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v45);
        v46 = 2;
      }

      else
      {
        v46 = 0;
      }

      if (v46 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        v55 = *(this + 30);
        LODWORD(v67) = 67109120;
        DWORD1(v67) = v55;
        v56 = _os_log_send_and_compose_impl();
        if (v56)
        {
          v57 = v56;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          *&v67 = &unk_2A1E59028;
          *(&v67 + 1) = v3;
          *&v68 = &v66;
          *(&v68 + 1) = &rep;
          support::log::manager::message_delegates(v27, &v67, v57);
        }
      }
    }

    return 0;
  }

  v66 = 3;
  v28 = (*(*v27 + 16))(v27, 3, **(this + 27));
  if (v28)
  {
    if (*(v27 + 17))
    {
      support::log::buffer::borrow(v28);
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    if (v29 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(this + 30);
      LODWORD(v67) = 67109120;
      DWORD1(v67) = v30;
      v31 = _os_log_send_and_compose_impl();
      if (v31)
      {
        v32 = v31;
        v33.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v33.__d_.__rep_;
        *&v67 = &unk_2A1E59028;
        *(&v67 + 1) = v3;
        *&v68 = &v66;
        *(&v68 + 1) = &rep;
        v34 = (v27 + 120);
        for (j = *(v27 + 16); j != v34; j = *(j + 8))
        {
          v33.__d_.__rep_ = (***(j + 16))(*(j + 16), &v67, v32);
        }

        support::log::manager::release_log_buffer(v33.__d_.__rep_, v32);
      }
    }
  }

  return 1;
}

void std::shared_ptr<support::transport::PCIMemRegion>::reset[abi:ne200100](void *a1)
{
  v1 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t support::transport::PCIMemRegion::allocateVMRegion(support::transport::PCIMemRegion *this, mach_vm_size_t a2)
{
  v64 = *MEMORY[0x29EDCA608];
  address = 0;
  v60 = -1431699456;
  *info = 0u;
  v59 = 0u;
  object_name = 0;
  infoCnt = 9;
  v3 = *(this + 30);
  v4 = this + 176;
  if (!a2)
  {
    v55 = 1;
    v29 = (*(*v3 + 16))(v3, 1, **(this + 27));
    if (v29)
    {
      if (*(v3 + 17))
      {
        v30 = 2;
        support::log::buffer::borrow(v29);
      }

      else
      {
        v30 = 0;
      }

      if (v30 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        *v62 = 134217984;
        *&v62[4] = 0;
        v44 = _os_log_send_and_compose_impl();
        if (v44)
        {
          v45 = v44;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          *v62 = &unk_2A1E59028;
          *&v62[8] = v4;
          *&v62[16] = &v55;
          p_rep = &rep;
          support::log::manager::message_delegates(v3, v62, v45);
        }
      }
    }

    goto LABEL_76;
  }

  v55 = 3;
  v6 = (*(*v3 + 16))(v3, 3, **(this + 27));
  if (v6)
  {
    if (*(v3 + 17))
    {
      v7 = 2;
      support::log::buffer::borrow(v6);
    }

    else
    {
      v7 = 0;
    }

    if (v7 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 134217984;
      *&v62[4] = a2;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v10.__d_.__rep_;
        *v62 = &unk_2A1E59028;
        *&v62[8] = v4;
        *&v62[16] = &v55;
        p_rep = &rep;
        v11 = (v3 + 120);
        for (i = *(v3 + 16); i != v11; i = *(i + 8))
        {
          v10.__d_.__rep_ = (***(i + 16))(*(i + 16), v62, v9);
        }

        support::log::manager::release_log_buffer(v10.__d_.__rep_, v9);
      }
    }
  }

  *(this + 17) = a2;
  v13 = MEMORY[0x29EDCA6B0];
  v14 = mach_vm_allocate(*MEMORY[0x29EDCA6B0], this + 16, a2, 1);
  if (v14)
  {
    v31 = *(this + 30);
    v55 = 1;
    v32 = (*(*v31 + 16))(v31, 1, **(this + 27));
    if (!v32)
    {
      goto LABEL_76;
    }

    if (*(v31 + 17))
    {
      support::log::buffer::borrow(v32);
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    if (!(v33 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_76;
    }

    v46 = *(this + 17);
    *v62 = 134218240;
    *&v62[4] = v46;
    *&v62[12] = 1024;
    *&v62[14] = v14;
    v47 = _os_log_send_and_compose_impl();
    if (!v47)
    {
      goto LABEL_76;
    }

LABEL_71:
    v51 = v47;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    *v62 = &unk_2A1E59028;
    *&v62[8] = v4;
    *&v62[16] = &v55;
    p_rep = &rep;
    support::log::manager::message_delegates(v31, v62, v51);
LABEL_76:
    support::transport::PCIMemRegion::deallocateVMRegion(this);
    return 0;
  }

  address = *(this + 16);
  *info = 0u;
  v59 = 0u;
  v60 = 0;
  v15 = mach_vm_region(*v13, &address, this + 18, 9, info, &infoCnt, &object_name);
  if (v15)
  {
    v31 = *(this + 30);
    v55 = 1;
    v34 = (*(*v31 + 16))(v31, 1, **(this + 27));
    if (!v34)
    {
      goto LABEL_76;
    }

    if (*(v31 + 17))
    {
      support::log::buffer::borrow(v34);
      v35 = 2;
    }

    else
    {
      v35 = 0;
    }

    if (!(v35 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_76;
    }

    *v62 = 67109120;
    *&v62[4] = v15;
    v47 = _os_log_send_and_compose_impl();
    if (!v47)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (address != *(this + 16))
  {
    v31 = *(this + 30);
    v55 = 1;
    v36 = (*(*v31 + 16))(v31, 1, **(this + 27));
    if (!v36)
    {
      goto LABEL_76;
    }

    if (*(v31 + 17))
    {
      support::log::buffer::borrow(v36);
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    if (!(v37 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_76;
    }

    v48 = *(this + 16);
    *v62 = 134218240;
    *&v62[4] = address;
    *&v62[12] = 2048;
    *&v62[14] = v48;
    v47 = _os_log_send_and_compose_impl();
    if (!v47)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  v16 = *(this + 18);
  if (v16 < *(this + 17))
  {
    v31 = *(this + 30);
    v55 = 1;
    v38 = (*(*v31 + 16))(v31, 1, **(this + 27));
    if (!v38)
    {
      goto LABEL_76;
    }

    if (*(v31 + 17))
    {
      support::log::buffer::borrow(v38);
      v39 = 2;
    }

    else
    {
      v39 = 0;
    }

    if (!(v39 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_76;
    }

    v50 = *(this + 17);
    v49 = *(this + 18);
    *v62 = 134218240;
    *&v62[4] = v49;
    *&v62[12] = 2048;
    *&v62[14] = v50;
    v47 = _os_log_send_and_compose_impl();
    if (!v47)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  v17 = mach_vm_protect(*v13, address, v16, 0, 3);
  if (v17)
  {
    v31 = *(this + 30);
    v55 = 1;
    v40 = (*(*v31 + 16))(v31, 1, **(this + 27));
    if (!v40)
    {
      goto LABEL_76;
    }

    if (*(v31 + 17))
    {
      support::log::buffer::borrow(v40);
      v41 = 2;
    }

    else
    {
      v41 = 0;
    }

    if (!(v41 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_76;
    }

    *v62 = 67109120;
    *&v62[4] = v17;
    v47 = _os_log_send_and_compose_impl();
    if (!v47)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  v18 = mach_vm_inherit(*v13, *(this + 16), *(this + 18), 2u);
  v19 = *(this + 30);
  if (v18)
  {
    v55 = 1;
    v42 = (*(*v19 + 16))(v19, 1, **(this + 27));
    if (v42)
    {
      if (*(v19 + 17))
      {
        support::log::buffer::borrow(v42);
        v43 = 2;
      }

      else
      {
        v43 = 0;
      }

      if (v43 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        *v62 = 67109120;
        *&v62[4] = v18;
        v52 = _os_log_send_and_compose_impl();
        if (v52)
        {
          v53 = v52;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          *v62 = &unk_2A1E59028;
          *&v62[8] = v4;
          *&v62[16] = &v55;
          p_rep = &rep;
          support::log::manager::message_delegates(v19, v62, v53);
        }
      }
    }

    goto LABEL_76;
  }

  v55 = 3;
  v20 = (*(*v19 + 16))(v19, 3, **(this + 27));
  if (v20)
  {
    if (*(v19 + 17))
    {
      support::log::buffer::borrow(v20);
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    if (v21 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(this + 16);
      *v62 = 134218240;
      *&v62[4] = a2;
      *&v62[12] = 2048;
      *&v62[14] = v22;
      v23 = _os_log_send_and_compose_impl();
      if (v23)
      {
        v24 = v23;
        v25.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v25.__d_.__rep_;
        *v62 = &unk_2A1E59028;
        *&v62[8] = v4;
        *&v62[16] = &v55;
        p_rep = &rep;
        v26 = (v19 + 120);
        for (j = *(v19 + 16); j != v26; j = *(j + 8))
        {
          v25.__d_.__rep_ = (***(j + 16))(*(j + 16), v62, v24);
        }

        support::log::manager::release_log_buffer(v25.__d_.__rep_, v24);
      }
    }
  }

  return 1;
}

uint64_t support::transport::PCIMemRegion::mapVMRegion(support::transport::PCIMemRegion *this)
{
  v59 = *MEMORY[0x29EDCA608];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = -536870911;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3002000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v2 = *(this + 30);
  v46 = 3;
  v3 = (*(*v2 + 16))(v2, 3, **(this + 27));
  v4 = this + 176;
  if (v3)
  {
    if (v2[17])
    {
      support::log::buffer::borrow(v3);
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (v5 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 30);
      v7 = *(this + 18);
      v8 = *(this + 16);
      LODWORD(v57) = 67109632;
      HIDWORD(v57) = v6;
      *v58 = 2048;
      *&v58[2] = v7;
      *&v58[10] = 2048;
      *&v58[12] = v8;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v11.__d_.__rep_;
        v57 = &unk_2A1E59028;
        *v58 = this + 176;
        *&v58[8] = &v46;
        *&v58[16] = &rep;
        v12 = v2 + 15;
        for (i = v2[16]; i != v12; i = *(i + 8))
        {
          v11.__d_.__rep_ = (***(i + 16))(*(i + 16), &v57, v10);
        }

        support::log::manager::release_log_buffer(v11.__d_.__rep_, v10);
      }
    }
  }

  *(this + 20) = *(this + 16);
  v14 = *(this + 2);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if ((TelephonyBasebandPCITransportMapRegion() & 1) == 0)
  {
    v39 = *(this + 30);
    v46 = 1;
    v40 = (*(*v39 + 16))(v39, 1, **(this + 27));
    if (v40)
    {
      if (*(v39 + 17))
      {
        support::log::buffer::borrow(v40);
        v41 = 2;
      }

      else
      {
        v41 = 0;
      }

      if (v41 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        v42 = *(this + 30);
        LODWORD(v57) = 67109120;
        HIDWORD(v57) = v42;
        v43 = _os_log_send_and_compose_impl();
        if (v43)
        {
          v44 = v43;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          v57 = &unk_2A1E59028;
          *v58 = this + 176;
          *&v58[8] = &v46;
          *&v58[16] = &rep;
          support::log::manager::message_delegates(v39, &v57, v44);
        }
      }
    }

LABEL_27:
    v28 = 0;
    *(this + 20) = 0;
    v29 = v14;
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = v48;
  v16 = dispatch_time(0, 1000000 * *(this + 38));
  if (dispatch_semaphore_wait(v15[5], v16))
  {
    v17 = *(this + 30);
    v46 = 1;
    v18 = (*(*v17 + 16))(v17, 1, **(this + 27));
    if (v18)
    {
      if (v17[17])
      {
        support::log::buffer::borrow(v18);
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      if (v19 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v57) = 0;
        v23 = _os_log_send_and_compose_impl();
        if (v23)
        {
          v24 = v23;
          v25.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v25.__d_.__rep_;
          v57 = &unk_2A1E59028;
          *v58 = this + 176;
          *&v58[8] = &v46;
          *&v58[16] = &rep;
          v26 = v17 + 15;
          for (j = v17[16]; j != v26; j = *(j + 8))
          {
            v25.__d_.__rep_ = (***(j + 16))(*(j + 16), &v57, v24);
          }

          support::log::manager::release_log_buffer(v25.__d_.__rep_, v24);
        }
      }
    }

    goto LABEL_27;
  }

  if (*(v54 + 6))
  {
    goto LABEL_27;
  }

  v20 = *(this + 30);
  v46 = 3;
  v21 = (*(*v20 + 16))(v20, 3, **(this + 27));
  if (v21)
  {
    if (v20[17])
    {
      support::log::buffer::borrow(v21);
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    if (v22 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(this + 30);
      v32 = *(this + 18);
      v33 = *(this + 16);
      LODWORD(v57) = 67109632;
      HIDWORD(v57) = v31;
      *v58 = 2048;
      *&v58[2] = v32;
      *&v58[10] = 2048;
      *&v58[12] = v33;
      v34 = _os_log_send_and_compose_impl();
      if (v34)
      {
        v35 = v34;
        v36.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v36.__d_.__rep_;
        v57 = &unk_2A1E59028;
        *v58 = v4;
        *&v58[8] = &v46;
        *&v58[16] = &rep;
        v37 = v20 + 15;
        for (k = v20[16]; k != v37; k = *(k + 8))
        {
          v36.__d_.__rep_ = (***(k + 16))(*(k + 16), &v57, v35);
        }

        support::log::manager::release_log_buffer(v36.__d_.__rep_, v35);
      }
    }
  }

  v28 = 1;
  v29 = v14;
  if (v14)
  {
LABEL_28:
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_29:
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Block_object_dispose(&v47, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&v53, 8);
  return v28;
}

void sub_297962498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
    if (!v28)
    {
LABEL_3:
      _Block_object_dispose(&a23, 8);
      v30 = object;
      if (!object)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v28)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v28);
  _Block_object_dispose(&a23, 8);
  v30 = object;
  if (!object)
  {
LABEL_4:
    _Block_object_dispose(va, 8);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t support::transport::PCIMemRegion::mapVMRegionWithClientData(support::transport::PCIMemRegion *this, void *a2, uint64_t a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = -536870911;
  v4 = dispatch_semaphore_create(0);
  v5 = *(this + 30);
  v48 = 3;
  v6 = (*(*v5 + 16))(v5, 3, **(this + 27));
  v7 = this + 176;
  if (v6)
  {
    if (v5[17])
    {
      support::log::buffer::borrow(v6);
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v8 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(this + 30);
      v10 = *(this + 18);
      v11 = *(this + 16);
      LODWORD(v53) = 67109632;
      HIDWORD(v53) = v9;
      *v54 = 2048;
      *&v54[2] = v10;
      *&v54[10] = 2048;
      *&v54[12] = v11;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v14.__d_.__rep_;
        v53 = &unk_2A1E59028;
        *v54 = this + 176;
        *&v54[8] = &v48;
        *&v54[16] = &rep;
        v15 = v5 + 15;
        for (i = v5[16]; i != v15; i = *(i + 8))
        {
          v14.__d_.__rep_ = (***(i + 16))(*(i + 16), &v53, v13);
        }

        support::log::manager::release_log_buffer(v14.__d_.__rep_, v13);
      }
    }
  }

  *(this + 20) = *(this + 16);
  v17 = *(this + 2);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if ((TelephonyBasebandPCITransportMapRegionwithClientData() & 1) == 0)
  {
    v41 = *(this + 30);
    v48 = 1;
    v42 = (*(*v41 + 16))(v41, 1, **(this + 27));
    if (v42)
    {
      if (*(v41 + 17))
      {
        support::log::buffer::borrow(v42);
        v43 = 2;
      }

      else
      {
        v43 = 0;
      }

      if (v43 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        v44 = *(this + 30);
        LODWORD(v53) = 67109120;
        HIDWORD(v53) = v44;
        v45 = _os_log_send_and_compose_impl();
        if (v45)
        {
          v46 = v45;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          v53 = &unk_2A1E59028;
          *v54 = this + 176;
          *&v54[8] = &v48;
          *&v54[16] = &rep;
          support::log::manager::message_delegates(v41, &v53, v46);
        }
      }
    }

LABEL_27:
    v30 = 0;
    *(this + 20) = 0;
    v31 = v17;
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v18 = dispatch_time(0, 1000000 * *(this + 38));
  if (dispatch_semaphore_wait(v4, v18))
  {
    v19 = *(this + 30);
    v48 = 1;
    v20 = (*(*v19 + 16))(v19, 1, **(this + 27));
    if (v20)
    {
      if (v19[17])
      {
        support::log::buffer::borrow(v20);
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }

      if (v21 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        v25 = _os_log_send_and_compose_impl();
        if (v25)
        {
          v26 = v25;
          v27.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v27.__d_.__rep_;
          v53 = &unk_2A1E59028;
          *v54 = this + 176;
          *&v54[8] = &v48;
          *&v54[16] = &rep;
          v28 = v19 + 15;
          for (j = v19[16]; j != v28; j = *(j + 8))
          {
            v27.__d_.__rep_ = (***(j + 16))(*(j + 16), &v53, v26);
          }

          support::log::manager::release_log_buffer(v27.__d_.__rep_, v26);
        }
      }
    }

    goto LABEL_27;
  }

  if (*(v50 + 6))
  {
    goto LABEL_27;
  }

  v22 = *(this + 30);
  v48 = 3;
  v23 = (*(*v22 + 16))(v22, 3, **(this + 27));
  if (v23)
  {
    if (v22[17])
    {
      support::log::buffer::borrow(v23);
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    if (v24 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(this + 30);
      v34 = *(this + 18);
      v35 = *(this + 16);
      LODWORD(v53) = 67109632;
      HIDWORD(v53) = v33;
      *v54 = 2048;
      *&v54[2] = v34;
      *&v54[10] = 2048;
      *&v54[12] = v35;
      v36 = _os_log_send_and_compose_impl();
      if (v36)
      {
        v37 = v36;
        v38.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v38.__d_.__rep_;
        v53 = &unk_2A1E59028;
        *v54 = v7;
        *&v54[8] = &v48;
        *&v54[16] = &rep;
        v39 = v22 + 15;
        for (k = v22[16]; k != v39; k = *(k + 8))
        {
          v38.__d_.__rep_ = (***(k + 16))(*(k + 16), &v53, v37);
        }

        support::log::manager::release_log_buffer(v38.__d_.__rep_, v37);
      }
    }
  }

  v30 = 1;
  v31 = v17;
  if (v17)
  {
LABEL_28:
    std::__shared_weak_count::__release_weak(v31);
  }

LABEL_29:
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  _Block_object_dispose(&v49, 8);
  return v30;
}

void sub_297962CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
    if (!v21)
    {
LABEL_3:
      if (!v20)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v21);
  if (!v20)
  {
LABEL_4:
    _Block_object_dispose(va, 8);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t support::transport::PCIMemRegion::PCIMemRegion(uint64_t a1, const void **a2, int a3, void *a4, int a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1E599E0;
  *(a1 + 24) = 0;
  *(a1 + 120) = a3;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = a5;
  *(a1 + 160) = 0;
  v27 = operator new(0x30uLL);
  v28 = xmmword_29797C930;
  strcpy(v27, "com.apple.telephony.basebandservices.support");
  strcpy(v26, "transport.pcimemregion");
  HIBYTE(v26[2]) = 22;
  support::log::client::client((a1 + 168), &v27, v26, a4);
  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v27);
LABEL_3:
  v25.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&v25.__r_.__value_.__r.__words[1] = xmmword_29797D8F0;
  strcpy(v25.__r_.__value_.__l.__data_, "com.apple.telephony.PCIMemRegion");
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = v9 + 1;
  if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 < 0x17)
  {
    v23 = 0;
    v24 = 0;
    HIBYTE(v24) = v9 + 1;
    v13 = &__p + 1;
    __p = 46;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    v23 = v9 + 1;
    v24 = v11 | 0x8000000000000000;
    __p = v12;
    *v12 = 46;
    v13 = v12 + 1;
  }

  if (v8 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  memmove(v13, v14, v9);
LABEL_17:
  v13[v9] = 0;
  if (v24 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v24 >= 0)
  {
    v16 = HIBYTE(v24);
  }

  else
  {
    v16 = v23;
  }

  std::string::append(&v25, p_p, v16);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v19 = dispatch_queue_create(v17, v18);
  v20 = *(a1 + 24);
  *(a1 + 24) = v19;
  if (v20)
  {
    dispatch_release(v20);
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_297963018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  hsfiler_log_client::~hsfiler_log_client((v32 + 21));
  v35 = v32[3];
  if (v35)
  {
    dispatch_release(v35);
    v34 = v32[2];
    if (v34)
    {
LABEL_9:
      std::__shared_weak_count::__release_weak(v34);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v34 = v32[2];
    if (v34)
    {
      goto LABEL_9;
    }
  }

  _Unwind_Resume(a1);
}

void support::transport::PCIMemRegion::~PCIMemRegion(support::transport::PCIMemRegion *this)
{
  *this = &unk_2A1E599E0;
  support::transport::PCIMemRegion::unmapVMRegion(this);
  support::transport::PCIMemRegion::deallocateVMRegion(this);
  v2 = *(this + 11);
  if (v2 && v2(this + 32))
  {
    TelephonyUtilTransportFree();
  }

  *(this + 21) = &unk_2A1E58EF8;
  v3 = *(this + 29);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  support::transport::PCIMemRegion::~PCIMemRegion(this);

  operator delete(v1);
}

void support::transport::PCIMemRegion::unmapVMRegion(support::transport::PCIMemRegion *this)
{
  v63 = *MEMORY[0x29EDCA608];
  if (!*(this + 20))
  {
    return;
  }

  v2 = *(this + 30);
  v3 = this + 176;
  LOBYTE(v57) = 3;
  v4 = (*(*v2 + 16))(v2, 3, **(this + 27));
  if (v4)
  {
    if (v2[17])
    {
      v5 = 2;
      support::log::buffer::borrow(v4);
    }

    else
    {
      v5 = 0;
    }

    if (v5 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 30);
      v7 = *(this + 18);
      v8 = *(this + 16);
      LODWORD(v59) = 67109632;
      HIDWORD(v59) = v6;
      *v60 = 2048;
      *&v60[2] = v7;
      *&v60[10] = 2048;
      *&v60[12] = v8;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v11.__d_.__rep_;
        v59 = &unk_2A1E59028;
        *v60 = v3;
        *&v60[8] = &v57;
        *&v60[16] = &rep;
        v12 = v2 + 15;
        for (i = v2[16]; i != v12; i = *(i + 8))
        {
          v11.__d_.__rep_ = (***(i + 16))(*(i + 16), &v59, v10);
        }

        support::log::manager::release_log_buffer(v11.__d_.__rep_, v10);
      }
    }
  }

  rep = 0;
  p_rep = &rep;
  v55 = 0x2000000000;
  v56 = -536870911;
  v59 = 0;
  *v60 = &v59;
  *&v60[8] = 0x3002000000;
  *&v60[16] = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v62 = dispatch_semaphore_create(0);
  v47 = MEMORY[0x29EDCA5F8];
  v48 = 1107296256;
  v49 = ___ZN7support9transport12PCIMemRegion13unmapVMRegionEv_block_invoke;
  v50 = &__block_descriptor_tmp_8_1;
  v51 = &rep;
  v52 = &v59;
  if ((TelephonyBasebandPCITransportUnmapRegion() & 1) == 0)
  {
    v19 = *(this + 30);
    v46 = 1;
    v20 = (*(*v19 + 16))(v19, 1, **(this + 27));
    if (!v20)
    {
      goto LABEL_47;
    }

    if (v19[17])
    {
      support::log::buffer::borrow(v20);
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    if (!(v21 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_47;
    }

    v25 = *(this + 30);
    LODWORD(v57) = 67109120;
    HIDWORD(v57) = v25;
    v26 = _os_log_send_and_compose_impl();
    if (!v26)
    {
      goto LABEL_47;
    }

    v27 = v26;
    v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v45 = v28.__d_.__rep_;
    v57 = &unk_2A1E59028;
    *v58 = v3;
    *&v58[8] = &v46;
    *&v58[16] = &v45;
    v29 = v19 + 15;
    for (j = v19[16]; j != v29; j = *(j + 8))
    {
      v28.__d_.__rep_ = (***(j + 16))(*(j + 16), &v57, v27);
    }

    goto LABEL_28;
  }

  v14 = *v60;
  v15 = dispatch_time(0, 1000000 * *(this + 38));
  if (!dispatch_semaphore_wait(*(v14 + 40), v15))
  {
    v22 = *(this + 30);
    if (*(p_rep + 6))
    {
      v46 = 1;
      v23 = (*(*v22 + 16))(v22, 1, **(this + 27));
      if (v23)
      {
        if (*(v22 + 17))
        {
          support::log::buffer::borrow(v23);
          v24 = 2;
        }

        else
        {
          v24 = 0;
        }

        if (v24 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
        {
          v36 = *(this + 30);
          v37 = *(p_rep + 6);
          LODWORD(v57) = 67109376;
          HIDWORD(v57) = v36;
          *v58 = 1024;
          *&v58[2] = v37;
          v38 = _os_log_send_and_compose_impl();
          if (v38)
          {
            v39 = v38;
            v45 = std::chrono::system_clock::now().__d_.__rep_;
            v57 = &unk_2A1E59028;
            *v58 = v3;
            *&v58[8] = &v46;
            *&v58[16] = &v45;
            support::log::manager::message_delegates(v22, &v57, v39);
          }
        }
      }
    }

    else
    {
      v46 = 3;
      v31 = (*(*v22 + 16))(v22, 3, **(this + 27));
      if (v31)
      {
        if (*(v22 + 17))
        {
          support::log::buffer::borrow(v31);
          v32 = 2;
        }

        else
        {
          v32 = 0;
        }

        if (v32 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(this + 30);
          v41 = *(this + 18);
          v42 = *(this + 16);
          LODWORD(v57) = 67109632;
          HIDWORD(v57) = v40;
          *v58 = 2048;
          *&v58[2] = v41;
          *&v58[10] = 2048;
          *&v58[12] = v42;
          v43 = _os_log_send_and_compose_impl();
          if (v43)
          {
            v44 = v43;
            v45 = std::chrono::system_clock::now().__d_.__rep_;
            v57 = &unk_2A1E59028;
            *v58 = v3;
            *&v58[8] = &v46;
            *&v58[16] = &v45;
            support::log::manager::message_delegates(v22, &v57, v44);
          }
        }
      }

      *(this + 20) = 0;
    }

    goto LABEL_47;
  }

  v16 = *(this + 30);
  v46 = 1;
  v17 = (*(*v16 + 16))(v16, 1, **(this + 27));
  if (v17)
  {
    if (v16[17])
    {
      support::log::buffer::borrow(v17);
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    if (v18 | os_log_type_enabled(**(this + 27), OS_LOG_TYPE_ERROR))
    {
      LOWORD(v57) = 0;
      v33 = _os_log_send_and_compose_impl();
      if (v33)
      {
        v27 = v33;
        v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v45 = v28.__d_.__rep_;
        v57 = &unk_2A1E59028;
        *v58 = v3;
        *&v58[8] = &v46;
        *&v58[16] = &v45;
        v34 = v16 + 15;
        for (k = v16[16]; k != v34; k = *(k + 8))
        {
          v28.__d_.__rep_ = (***(k + 16))(*(k + 16), &v57, v27);
        }

LABEL_28:
        support::log::manager::release_log_buffer(v28.__d_.__rep_, v27);
      }
    }
  }

LABEL_47:
  _Block_object_dispose(&v59, 8);
  if (v62)
  {
    dispatch_release(v62);
  }

  _Block_object_dispose(&rep, 8);
}

void sub_2979639FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose((v18 - 128), 8);
  v20 = *(v18 - 88);
  if (v20)
  {
    dispatch_release(v20);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void support::transport::PCIMemRegion::deallocateVMRegion(uint64_t this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(this + 128);
  if (v2 && *(this + 144))
  {
    v3 = mach_vm_deallocate(*MEMORY[0x29EDCA6B0], v2, *(this + 136));
    v4 = *(this + 240);
    if (v3)
    {
      v22 = 1;
      v5 = (*(*v4 + 16))(v4, 1, **(this + 216));
      if (v5)
      {
        if (v4[17])
        {
          v6 = 2;
          support::log::buffer::borrow(v5);
        }

        else
        {
          v6 = 0;
        }

        if (v6 | os_log_type_enabled(**(this + 216), OS_LOG_TYPE_ERROR))
        {
          v10 = *(this + 128);
          v9 = *(this + 136);
          *v23 = 134218240;
          *&v23[4] = v9;
          *&v23[12] = 2048;
          *&v23[14] = v10;
          v11 = _os_log_send_and_compose_impl();
          if (v11)
          {
            v12 = v11;
            v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            rep = v13.__d_.__rep_;
            *v23 = &unk_2A1E59028;
            *&v23[8] = this + 176;
            *&v23[16] = &v22;
            p_rep = &rep;
            v14 = v4 + 15;
            for (i = v4[16]; i != v14; i = *(i + 8))
            {
              v13.__d_.__rep_ = (***(i + 16))(*(i + 16), v23, v12);
            }

LABEL_21:
            support::log::manager::release_log_buffer(v13.__d_.__rep_, v12);
          }
        }
      }
    }

    else
    {
      v22 = 3;
      v7 = (*(*v4 + 16))(v4, 3, **(this + 216));
      if (v7)
      {
        if (v4[17])
        {
          v8 = 2;
          support::log::buffer::borrow(v7);
        }

        else
        {
          v8 = 0;
        }

        if (v8 | os_log_type_enabled(**(this + 216), OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(this + 128);
          v16 = *(this + 136);
          *v23 = 134218240;
          *&v23[4] = v16;
          *&v23[12] = 2048;
          *&v23[14] = v17;
          v18 = _os_log_send_and_compose_impl();
          if (v18)
          {
            v12 = v18;
            v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            rep = v13.__d_.__rep_;
            *v23 = &unk_2A1E59028;
            *&v23[8] = this + 176;
            *&v23[16] = &v22;
            p_rep = &rep;
            v19 = v4 + 15;
            for (j = v4[16]; j != v19; j = *(j + 8))
            {
              v13.__d_.__rep_ = (***(j + 16))(*(j + 16), v23, v12);
            }

            goto LABEL_21;
          }
        }
      }
    }
  }

  *(this + 128) = 0;
  *(this + 144) = 0;
}

uint64_t support::transport::PCIMemRegion::freePCITransport(uint64_t this)
{
  v1 = *(this + 88);
  if (v1)
  {
    this = v1(this + 32);
    if (this)
    {

      return TelephonyUtilTransportFree();
    }
  }

  return this;
}

void ___ZN7support9transport12PCIMemRegion18createPCITransportEv_block_invoke(uint64_t a1, int a2)
{
  v14[5] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  v13 = 1;
  v5 = (*(*v4 + 16))(v4, 1, **(v3 + 216));
  if (v5)
  {
    if (v4[17])
    {
      v6 = 2;
      support::log::buffer::borrow(v5);
    }

    else
    {
      v6 = 0;
    }

    if (v6 | os_log_type_enabled(**(v3 + 216), OS_LOG_TYPE_ERROR))
    {
      LODWORD(v14[0]) = 67109120;
      HIDWORD(v14[0]) = a2;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        rep = v9.__d_.__rep_;
        v14[0] = &unk_2A1E59028;
        v14[1] = v3 + 176;
        v14[2] = &v13;
        v14[3] = &rep;
        v10 = v4 + 15;
        for (i = v4[16]; i != v10; i = *(i + 8))
        {
          v9.__d_.__rep_ = (***(i + 16))(*(i + 16), v14, v8);
        }

        support::log::manager::release_log_buffer(v9.__d_.__rep_, v8);
      }
    }
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZN7support9transport12PCIMemRegion11mapVMRegionEv_block_invoke(void *a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[8];
  if (v3)
  {
    v5 = a1[6];
    v6 = std::__shared_weak_count::lock(v3);
    v20 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[7])
      {
        if (a2)
        {
          v8 = *(v5 + 240);
          v18 = 1;
          v9 = (*(*v8 + 16))(v8, 1, **(v5 + 216));
          if (v9)
          {
            if (v8[17])
            {
              support::log::buffer::borrow(v9);
              v10 = 2;
            }

            else
            {
              v10 = 0;
            }

            if (v10 | os_log_type_enabled(**(v5 + 216), OS_LOG_TYPE_ERROR))
            {
              v11 = *(v5 + 120);
              LODWORD(v21) = 67109376;
              HIDWORD(v21) = v11;
              LOWORD(v22) = 1024;
              *(&v22 + 2) = a2;
              v12 = _os_log_send_and_compose_impl();
              if (v12)
              {
                v13 = v12;
                v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                rep = v14.__d_.__rep_;
                v21 = &unk_2A1E59028;
                v22 = v5 + 176;
                v23 = &v18;
                p_rep = &rep;
                v15 = v8 + 15;
                for (i = v8[16]; i != v15; i = *(i + 8))
                {
                  v14.__d_.__rep_ = (***(i + 16))(*(i + 16), &v21, v13);
                }

                support::log::manager::release_log_buffer(v14.__d_.__rep_, v13);
              }
            }
          }
        }

        *(*(a1[4] + 8) + 24) = a2;
        dispatch_semaphore_signal(*(*(a1[5] + 8) + 40));
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_2979642B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2979642C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2979642D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2979642EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32r40r56c57_ZTSNSt3__18weak_ptrIN7support9transport12PCIMemRegionEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  v4 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  a1[8] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32r40r56c57_ZTSNSt3__18weak_ptrIN7support9transport12PCIMemRegionEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

void ___ZN7support9transport12PCIMemRegion25mapVMRegionWithClientDataEPvm_block_invoke(void *a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v3);
    v20 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        if (a2)
        {
          v8 = *(v5 + 240);
          v18 = 1;
          v9 = (*(*v8 + 16))(v8, 1, **(v5 + 216));
          if (v9)
          {
            if (v8[17])
            {
              support::log::buffer::borrow(v9);
              v10 = 2;
            }

            else
            {
              v10 = 0;
            }

            if (v10 | os_log_type_enabled(**(v5 + 216), OS_LOG_TYPE_ERROR))
            {
              v11 = *(v5 + 120);
              LODWORD(v21) = 67109376;
              HIDWORD(v21) = v11;
              LOWORD(v22) = 1024;
              *(&v22 + 2) = a2;
              v12 = _os_log_send_and_compose_impl();
              if (v12)
              {
                v13 = v12;
                v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                rep = v14.__d_.__rep_;
                v21 = &unk_2A1E59028;
                v22 = v5 + 176;
                v23 = &v18;
                p_rep = &rep;
                v15 = v8 + 15;
                for (i = v8[16]; i != v15; i = *(i + 8))
                {
                  v14.__d_.__rep_ = (***(i + 16))(*(i + 16), &v21, v13);
                }

                support::log::manager::release_log_buffer(v14.__d_.__rep_, v13);
              }
            }
          }
        }

        *(*(a1[4] + 8) + 24) = a2;
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_297964604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297964618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29796462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297964640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32r48c57_ZTSNSt3__18weak_ptrIN7support9transport12PCIMemRegionEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  v4 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32r48c57_ZTSNSt3__18weak_ptrIN7support9transport12PCIMemRegionEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

void __copy_helper_block_e8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void std::__hash_table<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::__unordered_map_hasher<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::hash<PCITransportMemRegion>,std::equal_to<PCITransportMemRegion>,true>,std::__unordered_map_equal<PCITransportMemRegion,std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>,std::equal_to<PCITransportMemRegion>,std::hash<PCITransportMemRegion>,true>,std::allocator<std::__hash_value_type<PCITransportMemRegion,PCITransportInterface>>>::__emplace_unique_key_args<PCITransportMemRegion,std::pair<PCITransportMemRegion const,PCITransportInterface> const&>(float *a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v13 = operator new(0x18uLL);
  *v13 = 0;
  v13[1] = v5;
  v13[2] = a3;
  v14 = (*(a1 + 3) + 1);
  v15 = a1[8];
  if (v6 && (v15 * v6) >= v14)
  {
    v5 = v8;
    v16 = *a1;
    v17 = *(*a1 + 8 * v8);
    if (!v17)
    {
      goto LABEL_85;
    }

LABEL_70:
    *v13 = *v17;
    goto LABEL_71;
  }

  v18 = 1;
  if (v6 >= 3)
  {
    v18 = (v6 & (v6 - 1)) != 0;
  }

  v19 = v18 | (2 * v6);
  v20 = vcvtps_u32_f32(v14 / v15);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 1);
  }

  if (prime > v6)
  {
LABEL_36:
    if (prime >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = operator new(8 * prime);
    v23 = *a1;
    *a1 = v22;
    if (v23)
    {
      operator delete(v23);
      v22 = *a1;
    }

    *(a1 + 1) = prime;
    bzero(v22, 8 * prime);
    v25 = a1 + 4;
    v24 = *(a1 + 2);
    if (!v24)
    {
      goto LABEL_66;
    }

    v26 = v24[1];
    v27 = prime - 1;
    if ((prime & (prime - 1)) == 0)
    {
      v28 = v26 & v27;
      *(v22 + v28) = v25;
      for (i = *v24; *v24; i = *v24)
      {
        v30 = i[1] & v27;
        if (v30 == v28)
        {
          v24 = i;
        }

        else if (*(v22 + v30))
        {
          *v24 = *i;
          *i = **(v22 + v30);
          **(v22 + v30) = i;
        }

        else
        {
          *(v22 + v30) = v24;
          v24 = i;
          v28 = v30;
        }
      }

      goto LABEL_66;
    }

    if (v26 >= prime)
    {
      v26 %= prime;
    }

    *(v22 + v26) = v25;
    v34 = *v24;
    if (!*v24)
    {
LABEL_66:
      v6 = prime;
      if ((prime & (prime - 1)) != 0)
      {
        goto LABEL_67;
      }

      goto LABEL_84;
    }

    while (1)
    {
      v35 = v34[1];
      if (v35 >= prime)
      {
        v35 %= prime;
      }

      if (v35 == v26)
      {
        goto LABEL_60;
      }

      if (*(v22 + v35))
      {
        *v24 = *v34;
        *v34 = **(v22 + v35);
        **(v22 + v35) = v34;
        v34 = v24;
LABEL_60:
        v24 = v34;
        v34 = *v34;
        if (!v34)
        {
          goto LABEL_66;
        }
      }

      else
      {
        *(v22 + v35) = v24;
        v24 = v34;
        v34 = *v34;
        v26 = v35;
        if (!v34)
        {
          goto LABEL_66;
        }
      }
    }
  }

  if (prime < v6)
  {
    v31 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
    if (v6 < 3 || (v32 = vcnt_s8(v6), v32.i16[0] = vaddlv_u8(v32), v32.u32[0] > 1uLL))
    {
      v31 = std::__next_prime(v31);
    }

    else
    {
      v33 = 1 << -__clz(v31 - 1);
      if (v31 >= 2)
      {
        v31 = v33;
      }
    }

    if (prime <= v31)
    {
      prime = v31;
    }

    if (prime < v6)
    {
      if (!prime)
      {
        v36 = *a1;
        *a1 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        v6 = 0;
        *(a1 + 1) = 0;
        goto LABEL_84;
      }

      goto LABEL_36;
    }

    v6 = *(a1 + 1);
  }

  if ((v6 & (v6 - 1)) != 0)
  {
LABEL_67:
    if (v6 <= v5)
    {
      v5 %= v6;
    }

    v16 = *a1;
    v17 = *(*a1 + 8 * v5);
    if (!v17)
    {
      goto LABEL_85;
    }

    goto LABEL_70;
  }

LABEL_84:
  v5 = (v6 - 1) & v5;
  v16 = *a1;
  v17 = *(*a1 + 8 * v5);
  if (v17)
  {
    goto LABEL_70;
  }

LABEL_85:
  *v13 = *(a1 + 2);
  *(a1 + 2) = v13;
  *(v16 + 8 * v5) = a1 + 4;
  if (!*v13)
  {
    goto LABEL_72;
  }

  v37 = *(*v13 + 8);
  if ((v6 & (v6 - 1)) != 0)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }

    v17 = (v16 + 8 * v37);
  }

  else
  {
    v17 = (v16 + 8 * (v37 & (v6 - 1)));
  }

LABEL_71:
  *v17 = v13;
LABEL_72:
  ++*(a1 + 3);
}

atomic_ullong *std::shared_ptr<support::transport::PCIMemRegion>::shared_ptr[abi:ne200100]<support::transport::PCIMemRegion,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E59AC8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_297964D1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<support::transport::PCIMemRegion *,std::shared_ptr<support::transport::PCIMemRegion>::__shared_ptr_default_delete<support::transport::PCIMemRegion,support::transport::PCIMemRegion>,std::allocator<support::transport::PCIMemRegion>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::transport::PCIMemRegion *,std::shared_ptr<support::transport::PCIMemRegion>::__shared_ptr_default_delete<support::transport::PCIMemRegion,support::transport::PCIMemRegion>,std::allocator<support::transport::PCIMemRegion>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::transport::PCIMemRegion *,std::shared_ptr<support::transport::PCIMemRegion>::__shared_ptr_default_delete<support::transport::PCIMemRegion,support::transport::PCIMemRegion>,std::allocator<support::transport::PCIMemRegion>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029797D9FALL)
  {
    if (((v2 & 0x800000029797D9FALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029797D9FALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029797D9FALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>::~PthreadMutexGuardPolicy, &ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance, &dword_297948000);
  }

  return result;
}

void HSFilerRT::create_default_global(HSFilerRT *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    v3 = operator new(0x30uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = &unk_2A1E59B60;
    v3[3] = &unk_2A1E59B18;
    v3[4] = 0;
    v3[5] = 0;
    if (capabilities::radio::vendor(v3) == 3)
    {
      _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v4);
      *(v3 + 2) = *v4;
    }

    *a2 = v3 + 3;
    a2[1] = v3;
  }
}

void sub_297964F1C(_Unwind_Exception *a1)
{
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v3);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void HSFilerRT::HSFilerRT(HSFilerRT *this)
{
  *this = &unk_2A1E59B18;
  *(this + 1) = 0;
  v1 = (this + 8);
  *(this + 2) = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v2);
    *v1 = *v2;
  }
}

{
  *this = &unk_2A1E59B18;
  *(this + 1) = 0;
  v1 = (this + 8);
  *(this + 2) = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v2);
    *v1 = *v2;
  }
}

void HSFilerRT::registerBasebandResetDelegate(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  HSFilerRT_Internal::registerBasebandResetDelegate(v2, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_297965110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void HSFilerRT::dumpState(HSFilerRT *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN18HSFilerRT_Internal9dumpStateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_67;
  v2[4] = v1;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((v1 + 8), v2);
}

uint64_t HSFilerRT::createSession(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, NSObject **a5)
{
  v5 = *(a1 + 8);
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a5;
  object = v7;
  if (v7)
  {
    v8 = a4;
    v9 = a3;
    dispatch_retain(v7);
    a3 = v9;
    a4 = v8;
  }

  v10 = HSFilerRT_Internal::createSession(v5, &v14, a3, a4, &object);
  if (object)
  {
    dispatch_release(object);
  }

  v11 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v10;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  return v10;
}

void sub_29796528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HSFilerRT::destroySession(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN18HSFilerRT_Internal14destroySessionE15HSFilerClientIDy_block_invoke;
  v4[3] = &__block_descriptor_tmp_4;
  v5 = a2;
  v4[4] = v3;
  v4[5] = a3;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((v3 + 8), v4);
}

uint64_t HSFilerRT::queueSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void **a5, int a6)
{
  v10 = *(a1 + 8);
  v11 = *a5;
  if (*a5)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::queueSession(v10, a2, a3, a4, &aBlock, a6);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v12;
}

void sub_2979653B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HSFilerRT::readWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v10 = *(a1 + 8);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a5, *(a5 + 8));
    v11 = *a6;
    if (!*a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = *a5;
  v11 = *a6;
  if (*a6)
  {
LABEL_5:
    v11 = _Block_copy(v11);
  }

LABEL_6:
  aBlock = v11;
  v12 = HSFilerRT_Internal::readWithFile(v10, a2, a3, a4, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_2979654A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HSFilerRT::readWithStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v9 = *(a1 + 8);
  v10 = a5[1];
  v16 = *a5;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::readWithStream(v9, a2, a3, a4, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v13 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v12;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return v12;
}