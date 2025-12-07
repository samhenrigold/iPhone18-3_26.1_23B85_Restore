uint64_t vp::Audio_Ring_Buffer::read(uint64_t a1, AudioBufferList *a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_44:
    _os_crash();
    __break(1u);
LABEL_45:
    v29 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v27 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl(v28, &v29, &v32, 80, &dword_2724B4000, v27, 16, "assertion failure: out_abl != nullptr -> %llu", &v30);
    _os_crash_msg();
    __break(1u);
  }

  if (!a2)
  {
    goto LABEL_45;
  }

  v6 = *(a1 + 104);
  mNumberBuffers = v6->mNumberBuffers;
  if (mNumberBuffers != a2->mNumberBuffers)
  {
    return 0;
  }

  if (mNumberBuffers)
  {
    mBuffers = v6->mBuffers;
    p_mData = &a2->mBuffers[0].mData;
    while (*p_mData)
    {
      if (mBuffers->mNumberChannels != *(p_mData - 2))
      {
        return 0;
      }

      ++mBuffers;
      p_mData += 4;
      if (!--mNumberBuffers)
      {
        goto LABEL_9;
      }
    }

    v29 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v25 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v30 = 134217984;
    v31 = 0;
    _os_log_send_and_compose_impl(v26, &v29, &v32, 80, &dword_2724B4000, v25, 16, "assertion failure: out_abl->mBuffers[n].mData != nullptr -> %llu", &v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

LABEL_9:
  v12 = a4 - a3;
  if (a4 < a3)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  if (v15 <= v14)
  {
    v16 = *(a1 + 80);
    v17 = *(a1 + 72);
    if (a4 <= a3)
    {
      return 0;
    }
  }

  else
  {
    if (a4 <= a3 || v15 >= a4 && v14 <= a3)
    {
    }

    if (a3 <= v14)
    {
      v17 = *(a1 + 72);
    }

    else
    {
      v17 = a3;
    }

    if (v15 >= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = *(a1 + 80);
    }
  }

  if (v16 <= v17)
  {
    return 0;
  }

  if (a3 <= v14)
  {
    v18 = *(a1 + 72);
  }

  else
  {
    v18 = a3;
  }

  if (v15 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = *(a1 + 80);
  }

  if (v15 <= v14)
  {
    v20 = *(a1 + 80);
  }

  else
  {
    v20 = v19;
  }

  if (v15 <= v14)
  {
    v21 = *(a1 + 72);
  }

  else
  {
    v21 = v18;
  }

  if (v21 == a3)
  {
    return data & vp::for_each_buffer(&a2->mNumberBuffers, v20 - a3, a4 - v20);
  }

  else
  {
    v23 = v21 - v20 + v12;
    return v24 & vp::for_each_buffer(&a2->mNumberBuffers, vp::fill, v23);
  }
}

void sub_2725D5ED8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::load_data(AudioBufferList *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, const AudioBufferList *a6, uint64_t a7, uint64_t a8, int a9)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 <= a2 || (v11 = a8 - a7, a8 > a7) && (a3 < a8 || a2 > a7))
  {
    v21 = 0;
    memset(v24, 0, sizeof(v24));
    v19 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v22 = 134217984;
    v23 = 0;
    _os_log_send_and_compose_impl(v20, &v21, v24, 80, &dword_2724B4000, v19, 16, "assertion failure: storage_tr.encompasses(client_tr) -> %llu", &v22);
    _os_crash_msg();
    __break(1u);
  }

  v12 = (a7 + a5 - a2) % a4;
  if (v12 + v11 <= a4)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v24, a1);
    v18 = *&v24[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v24, a6);
    return vp::for_each_buffer_pair(*&v24[0], a9, v18, v12, vp::copy, v11);
  }

  else
  {
    v13 = a4 - v12;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v24, a1);
    v14 = *&v24[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v24, a6);
    v15 = vp::for_each_buffer_pair(*&v24[0], a9, v14, v12, vp::copy, v13);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v24, a1);
    v16 = *&v24[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v24, a6);
    return v15 & vp::for_each_buffer_pair(*&v24[0], v13 + a9, v16, 0, vp::copy, v11 - v13);
  }
}

void sub_2725D60FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double vp::Audio_Ring_Buffer::write(uint64_t a1, AudioBufferList *a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_110:
    _os_crash();
    __break(1u);
    goto LABEL_111;
  }

  if (!a2)
  {
LABEL_111:
    v49 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v47 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v50 = 134217984;
    v51 = 0;
    _os_log_send_and_compose_impl(v48, &v49, &v52, 80, &dword_2724B4000, v47, 16, "assertion failure: in_abl != nullptr -> %llu", &v50);
    _os_crash_msg();
    __break(1u);
LABEL_115:
    _os_crash();
    __break(1u);
    goto LABEL_116;
  }

  v4 = a4;
  v6 = *(a1 + 104);
  mNumberBuffers = v6->mNumberBuffers;
  if (mNumberBuffers == a2->mNumberBuffers)
  {
    v8 = a3;
    if (mNumberBuffers)
    {
      mBuffers = v6->mBuffers;
      p_mData = &a2->mBuffers[0].mData;
      while (*p_mData)
      {
        if (mBuffers->mNumberChannels != *(p_mData - 2))
        {
          return result;
        }

        ++mBuffers;
        p_mData += 2;
        if (!--mNumberBuffers)
        {
          goto LABEL_9;
        }
      }

      v49 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v45 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v50 = 134217984;
      v51 = 0;
      _os_log_send_and_compose_impl(v46, &v49, &v52, 80, &dword_2724B4000, v45, 16, "assertion failure: in_abl->mBuffers[n].mData != nullptr -> %llu", &v50);
      _os_crash_msg();
      __break(1u);
      goto LABEL_110;
    }

LABEL_9:
    v11 = v4 - a3;
    if (v4 >= a3)
    {
      v52 = *(a1 + 72);
      v12 = *(a1 + 88);
      v13 = *(a1 + 24);
      v14 = v11 == v13;
      if (v11 < v13)
      {
        v15 = *(a1 + 72);
        v16 = *(a1 + 80);
        if (v15 >= a3)
        {
          if (v4 <= a3)
          {
            v29 = a3;
          }

          else
          {
            v29 = *(a1 + 72);
          }

          if (v16 <= v4)
          {
            v30 = v4;
          }

          else
          {
            v30 = *(a1 + 80);
          }

          if (v16 >= v4)
          {
            v31 = v4;
          }

          else
          {
            v31 = *(a1 + 80);
          }

          if (v4 > a3)
          {
            v32 = a3;
          }

          else
          {
            v30 = *(a1 + 80);
            v32 = *(a1 + 72);
          }

          if (v4 <= a3)
          {
            v31 = v4;
          }

          if (v30 >= v32 + v13)
          {
            v30 = v32 + v13;
          }

          v33 = v31 <= v29;
          if (v31 <= v29)
          {
            v34 = *(a1 + 72);
          }

          else
          {
            v34 = 0;
          }

          if (v33)
          {
            v35 = v4;
          }

          else
          {
            v35 = 0;
          }

          v36 = a3 + v13;
          if (v4 < a3 + v13)
          {
            v36 = v4;
          }

          v37 = v16 <= v15;
          if (v16 <= v15)
          {
            v38 = v12 - v15 + a3;
          }

          else
          {
            v38 = v12 - v15 + v32;
          }

          if (v37)
          {
            v18 = v36;
          }

          else
          {
            v18 = v30;
          }

          if (v37)
          {
            v20 = a3;
          }

          else
          {
            v20 = v32;
          }

          if (v37)
          {
            v26 = 0;
          }

          else
          {
            v26 = v34;
          }

          if (v37)
          {
            v27 = 0;
          }

          else
          {
            v27 = v35;
          }

          v39 = v38 % v13;
          *(a1 + 72) = v20;
          *(a1 + 80) = v18;
          if (v39 >= 0)
          {
            v40 = v39;
          }

          else
          {
            v40 = -v39;
          }

          if (v40 >= v13)
          {
LABEL_116:
            _os_crash();
            __break(1u);
          }

          LODWORD(v21) = ((v39 >> 63) & v13) + v39;
        }

        else
        {
          if (v16 <= v4)
          {
            v17 = v4;
          }

          else
          {
            v17 = *(a1 + 80);
          }

          if (v4 <= a3)
          {
            v17 = *(a1 + 80);
          }

          if (v16 <= v15)
          {
            v18 = v4;
          }

          else
          {
            v18 = v17;
          }

          if (v16 <= v15)
          {
            v19 = a3;
          }

          else
          {
            v19 = *(a1 + 72);
          }

          if (v19 <= v18 - v13)
          {
            v20 = v18 - v13;
          }

          else
          {
            v20 = v19;
          }

          v21 = (v12 - v15 + v20) % v13;
          if (v16 >= v4)
          {
            v22 = v4;
          }

          else
          {
            v22 = *(a1 + 80);
          }

          v23 = v22 <= a3;
          if (v22 <= a3)
          {
            v24 = a3;
          }

          else
          {
            v24 = 0;
          }

          if (v23)
          {
            v25 = *(a1 + 80);
          }

          else
          {
            v25 = 0;
          }

          if (v16 > v15)
          {
            v26 = v24;
          }

          else
          {
            v26 = 0;
          }

          if (v16 > v15)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          *(a1 + 72) = v20;
          *(a1 + 80) = v18;
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          if (v21 >= v13)
          {
            _os_crash();
            __break(1u);
            goto LABEL_45;
          }
        }

        *(a1 + 88) = v21;
        {
          v41 = *(a1 + 72);
          v42 = *(a1 + 80);
          v43 = v42;
          v44 = v41;
          if (v42 > v41)
          {
            if (v26 <= v27)
            {
              v43 = v26;
              v44 = v27;
            }

            else
            {
              if (v41 <= v27)
              {
                v44 = v27;
              }

              else
              {
                v44 = *(a1 + 72);
              }

              if (v26 >= v42)
              {
                v43 = *(a1 + 80);
              }

              else
              {
                v43 = v26;
              }
            }
          }

          {
            return result;
          }
        }

LABEL_105:
        result = *&v52;
        *(a1 + 72) = v52;
        *(a1 + 88) = v12;
        return result;
      }

LABEL_45:
      if (v14)
      {
        *(a1 + 72) = v8;
        *(a1 + 80) = v4;
        *(a1 + 88) = 0;
        {
          return result;
        }
      }

      goto LABEL_105;
    }
  }

  return result;
}

void sub_2725D64F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::store_data(AudioBufferList *a1, uint64_t a2, uint64_t a3, const AudioBufferList *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a6 <= a5 || (v10 = a3 - a2, a3 > a2) && (a6 < a3 || a5 > a2))
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
    _os_log_send_and_compose_impl(v19, &v20, v23, 80, &dword_2724B4000, v18, 16, "assertion failure: storage_tr.encompasses(client_tr) -> %llu", &v21);
    _os_crash_msg();
    __break(1u);
  }

  v11 = (a2 + a8 - a5) % a7;
  if (v11 + v10 <= a7)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, a1);
    v17 = *&v23[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, a4);
    return vp::for_each_buffer_pair(*&v23[0], v11, v17, 0, vp::copy, v10);
  }

  else
  {
    v12 = a7 - v11;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, a1);
    v13 = *&v23[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, a4);
    v14 = vp::for_each_buffer_pair(*&v23[0], v11, v13, 0, vp::copy, v12);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, a1);
    v15 = *&v23[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, a4);
    return v14 & vp::for_each_buffer_pair(*&v23[0], 0, v15, v12, vp::copy, v10 - v12);
  }
}

void sub_2725D6710(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::zero_data(AudioBufferList *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 <= a2 || (v8 = a5 - a4, a5 > a4) && (a3 < a5 || a2 > a4))
  {
    v15 = 0;
    memset(v18, 0, sizeof(v18));
    v13 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v16 = 134217984;
    v17 = 0;
    _os_log_send_and_compose_impl(v14, &v15, v18, 80, &dword_2724B4000, v13, 16, "assertion failure: storage_tr.encompasses(client_tr) -> %llu", &v16);
    _os_crash_msg();
    __break(1u);
  }

  v9 = (a4 + a7 - a2) % a6;
  if (v9 + v8 <= a6)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v18, a1);
    return vp::for_each_buffer(*&v18[0], v9, v8);
  }

  else
  {
    v10 = a6 - v9;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v18, a1);
    v11 = vp::for_each_buffer(*&v18[0], v9, v10);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v18, a1);
    return v11 & vp::for_each_buffer(*&v18[0], vp::fill, v8 - v10);
  }
}

void sub_2725D68B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::store_data(uint64_t (**a1)(void, _DWORD *, uint64_t), uint64_t a2, uint64_t a3, unsigned int *a4, _DWORD *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a7 <= a6 || (v12 = a3 - a2, a3 > a2) && (a7 < a3 || a6 > a2))
  {
    v38 = 0;
    memset(v41, 0, sizeof(v41));
    v36 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v39 = 134217984;
    v40 = 0;
    _os_log_send_and_compose_impl(v37, &v38, v41, 80, &dword_2724B4000, v36, 16, "assertion failure: storage_tr.encompasses(client_tr) -> %llu", &v39);
    _os_crash_msg();
    __break(1u);
  }

  v13 = (a2 + a9 - a6) % a8;
  if (v13 + v12 <= a8)
  {
    v30 = *a4;
    if (*a4)
    {
      v31 = a5 + 4;
      v32 = a4 + 4;
      v33 = *a4;
      do
      {
        v34 = *(v32 - 2);
        v35 = *v32;
        v32 += 4;
        *(v31 - 2) = v34;
        *(v31 - 1) = 4 * v12 * v34;
        *v31 = v35 + 4 * v13 * v34;
        v31 += 2;
        --v33;
      }

      while (v33);
    }

    *a5 = v30;
    return (*a1)(a1 + 1, a5, v12);
  }

  else
  {
    v14 = a8 - v13;
    v15 = *a4;
    if (*a4)
    {
      v16 = a5 + 4;
      v17 = a4 + 4;
      v18 = *a4;
      do
      {
        v19 = *(v17 - 2);
        v20 = *v17;
        v17 += 4;
        *(v16 - 2) = v19;
        *(v16 - 1) = 4 * v14 * v19;
        *v16 = v20 + 4 * v13 * v19;
        v16 += 2;
        --v18;
      }

      while (v18);
    }

    *a5 = v15;
    v21 = (*a1)(a1 + 1, a5, v14);
    v22 = v12 - v14;
    v23 = *a4;
    if (*a4)
    {
      v24 = a5 + 4;
      v25 = a4 + 4;
      v26 = *a4;
      do
      {
        v27 = *(v25 - 2);
        v28 = *v25;
        v25 += 4;
        *(v24 - 2) = v27;
        *(v24 - 1) = 4 * v22 * v27;
        *v24 = v28;
        v24 += 2;
        --v26;
      }

      while (v26);
    }

    *a5 = v23;
    return v21 & (*a1)(a1 + 1, a5, v22);
  }
}

void sub_2725D6B10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void virtual thunk tovp::vx::io::ports::Audio_Ring_Buffer_Input_Port::~Audio_Ring_Buffer_Input_Port(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

double vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::do_process_input_data@<D0>(uint64_t a1@<X0>, int a2@<W1>, AudioBufferList *a3@<X2>, __int128 *a4@<X3>, unsigned int a5@<W4>, _BYTE *a6@<X8>)
{
  if (a2)
  {
    *&v9 = *a4 + a5;
    *a4 = v9;
LABEL_12:
    *a6 = 0;
    a6[48] = 1;
    return *&v9;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a4 + 6);
    v50 = *(a4 + 7);
    v12 = *(a4 + 24);
    v47 = *(a4 + 8);
    v48 = v12;
    v49 = *(a4 + 40);
    v13 = a4[1];
    v43 = *a4;
    v44 = v13;
    v45 = a4[2];
    v46 = v11;
    v14 = *(a4 + 7);
    v15 = *a4;
    if (v14)
    {
      if ((v10 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = *(a1 + 16);
      v24 = *(a1 + 40);
      v47 = *(a1 + 24);
      v23 = v47;
      v48 = v24;
      v49 = *(a1 + 56);
      v25 = v49;
      v50 = *(a1 + 72);
      v26 = v50;
      *a4 = v15;
      *(a4 + 8) = v23;
      *(a4 + 24) = v24;
      *(a4 + 40) = v25;
      *(a4 + 7) = v26;
      if ((*(a1 + 72) & 2) == 0)
      {
LABEL_7:
        v16 = v15 + *(a1 + 80);
        v17 = v16 + a5;
        v18 = *(a1 + 8);
        if (v18)
        {
          if (v17 > *(v18 + 80))
          {
            v37 = 0x1300AB00000002;
            v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
            v41 = 0;
            v39 = 0;
            v40 = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
            vp::vx::io::operator<<<char const(&)[54]>(v36, &v37);
            v27 = v36;
LABEL_22:
            vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v27);
            *&v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v37).n128_u64[0];
            if ((SHIBYTE(v41) & 0x80000000) == 0)
            {
              return *&v9;
            }

            v29 = v39;
            v30 = v41;
            v31 = v42;
            goto LABEL_24;
          }

          v19 = *(v18 + 72);
        }

        else
        {
          v19 = 0;
        }

        if (v17 <= v19)
        {
          v37 = 0x1300B100000002;
          v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
          v41 = 0;
          v39 = 0;
          v40 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
          vp::vx::io::operator<<<char const(&)[55]>(v35, &v37, "requested data is behind of available audio time range");
          v27 = v35;
        }

        else
        {
          v33 = v14;
          if (vp::Audio_Ring_Buffer::read(v18, a3, v16, v17))
          {
            goto LABEL_12;
          }

          v28 = v44;
          *a4 = v43;
          a4[1] = v28;
          a4[2] = v45;
          *(a4 + 6) = v46;
          *(a4 + 7) = v33;
          v37 = 0x1300C400000000;
          v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
          v41 = 0;
          v39 = 0;
          v40 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
          vp::vx::io::operator<<<char const(&)[38]>(v34, &v37);
          v27 = v34;
        }

        goto LABEL_22;
      }
    }

    *(a4 + 14) |= 2u;
    *(a4 + 1) = *(a1 + 24);
    goto LABEL_7;
  }

  vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v47, a3);
  if (vp::for_each_buffer(v47, vp::fill, a5))
  {
    v9 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a1 + 64);
    a4[2] = *(a1 + 48);
    a4[3] = v22;
    *a4 = v9;
    a4[1] = v21;
    goto LABEL_12;
  }

  *&v47 = 0x17008C00000000;
  *(&v47 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
  *&v49 = 0;
  v48 = 0uLL;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v49 + 1);
  vp::vx::io::operator<<<char const(&)[37]>(v51, &v47, "failed to zero-out audio buffer list");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v51);
  *&v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v47).n128_u64[0];
  if ((SBYTE7(v49) & 0x80000000) == 0)
  {
    return *&v9;
  }

  v29 = v48;
  v31 = *(&v49 + 1);
  v30 = v49;
LABEL_24:
  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v31, v29, v30 & 0x7FFFFFFFFFFFFFFFLL);
  return *&v9;
}

void vp::vx::io::operator<<<char const(&)[54]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "requested data is ahead of available audio time range", 53);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725D6FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[38]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "failed to read from audio ring buffer", 37);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725D706C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::do_set_input_data(uint64_t a1@<X8>)
{
  v3[0] = 0x1000700000000DLL;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
  v5 = 0;
  v6 = 0;
  v4 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v7);
  v2 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v3);
  if (SHIBYTE(v6) < 0)
  {
    (*(*v7 + 24))(v7, v4, v6 & 0x7FFFFFFFFFFFFFFFLL, 1, v2);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::do_copy_input_data(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this@<X0>, AudioBufferList *a2@<X1>, const AudioTimeStamp *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  mSampleTime = a3->mSampleTime;
  v7 = *&a3->mWordClockTime;
  v28 = *&a3->mHostTime;
  v29 = v7;
  v30 = *&a3->mSMPTETime.mType;
  v8 = *&a3->mFlags;
  if (v8)
  {
    v11 = mSampleTime;
    v12 = mSampleTime + a4;
    v13 = *(this + 1);
    v19 = v8;
    if (v13)
    {
      v14 = *(v13 + 80);
      if (v14 > *(v13 + 72) && v11 != v14)
      {
        *(this + 10) = *(this + 10) + (v11 - v14);
        *(v13 + 72) = 0;
        *(v13 + 80) = 0;
        *(v13 + 88) = 0;
        v13 = *(this + 1);
      }
    }

    vp::Audio_Ring_Buffer::write(v13, a2, v11, v12);
    if (v16)
    {
      *(this + 2) = mSampleTime;
      v17 = v29;
      *(this + 24) = v28;
      *(this + 40) = v17;
      *(this + 56) = v30;
      *(this + 9) = v19;
      *a5 = a4;
      *(a5 + 48) = 1;
      return;
    }

    v22 = 0x13006300000000;
    v23 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v25 = 0;
    v26 = 0;
    v24 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v27);
    vp::vx::io::operator<<<char const(&)[39]>(v20, &v22);
    v18 = v20;
  }

  else
  {
    v22 = 0x13004100000005;
    v23 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v25 = 0;
    v26 = 0;
    v24 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v27);
    vp::vx::io::operator<<<char const(&)[49]>(v21, &v22, "audio time stamp does not have valid sample time");
    v18 = v21;
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v18);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v22);
  if (SHIBYTE(v26) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v27, v24, v26 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[39]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "failed to write into audio ring buffer", 38);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725D7324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::reset@<D0>(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  *(this + 10) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = *(result + 72);
    if (v5)
    {
      v7 = *(result + 8);
      if (v7)
      {
        v6 = *(v7 + 80);
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = *(result + 16);
    }

    *a3 = v6;
    *(a3 + 8) = *(result + 24);
    *(a3 + 24) = *(result + 40);
    *(a3 + 40) = *(result + 56);
    *(a3 + 56) = v5;
  }

  else if (!a2)
  {
    v3 = *(result + 32);
    *a3 = *(result + 16);
    *(a3 + 16) = v3;
    v4 = *(result + 64);
    *(a3 + 32) = *(result + 48);
    *(a3 + 48) = v4;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v5 = *(v2 + 33);
    *v6 = *(v2 + 49);
    *&v6[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v5;
  *(a2 + 1) = v5;
  *(a2 + 17) = *v6;
  *(a2 + 32) = *&v6[15];
  return result;
}

void vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::~Audio_Ring_Buffer_Input_Port(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void virtual thunk tovp::vx::io::ports::Audio_Ring_Buffer_Output_Port::~Audio_Ring_Buffer_Output_Port(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 18) = &unk_2881C6630;
  v2 = *(v1 + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 18) = &unk_2881C6630;
  v2 = *(v1 + 20);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::do_process_output_data(AudioBufferList *a1@<X2>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X3>, unsigned int a5@<W4>, _BYTE *a6@<X8>)
{
  if (!a3)
  {
    goto LABEL_6;
  }

  v7 = *a4;
  v8 = *(a4 + 24);
  v22 = *(a4 + 8);
  v23 = v8;
  v24 = *(a4 + 40);
  v9 = *(a4 + 56);
  if (v9)
  {
    v11 = *(a4 + 60);
    vp::Audio_Ring_Buffer::write(*(a2 + 8), a1, v7, (v7 + a5));
    if (v12)
    {
      *(a2 + 16) = v7;
      v13 = v23;
      *(a2 + 24) = v22;
      *(a2 + 40) = v13;
      *(a2 + 56) = v24;
      *(a2 + 72) = v9;
      *(a2 + 76) = v11;
      if ((*(a2 + 136) & 1) == 0)
      {
        *(a2 + 80) = v7;
        v14 = v23;
        *(a2 + 88) = v22;
        *(a2 + 104) = v14;
        *(a2 + 120) = v24;
        *(a2 + 136) = v9;
        *(a2 + 140) = v11;
      }

LABEL_6:
      *a6 = 0;
      a6[48] = 1;
      return;
    }

    v16 = 0x13018700000000;
    v17 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v19 = 0;
    v20 = 0;
    v18 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v21);
    vp::vx::io::operator<<<char const(&)[39]>(v15, &v16);
  }

  else
  {
    v16 = 0x13016A00000000;
    v17 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v19 = 0;
    v20 = 0;
    v18 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v21);
    vp::vx::io::operator<<<char const(&)[49]>(v15, &v16, "audio time stamp does not have valid sample time");
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v15);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v16);
  if (SHIBYTE(v20) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v21, v18, v20 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::do_set_output_data(uint64_t a1@<X8>)
{
  v3[0] = 0x10014B0000000DLL;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
  v5 = 0;
  v6 = 0;
  v4 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v7);
  v2 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v3);
  if (SHIBYTE(v6) < 0)
  {
    (*(*v7 + 24))(v7, v4, v6 & 0x7FFFFFFFFFFFFFFFLL, 1, v2);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::do_copy_output_data(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this@<X0>, AudioBufferList *a2@<X1>, AudioTimeStamp *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if ((*(this + 136) & 1) == 0)
  {
    *&v43 = 0x13010B00000005;
    *(&v43 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    *&v45 = 0;
    v44 = 0uLL;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v45 + 1);
    vp::vx::io::operator<<<char const(&)[49]>(v47, &v43, "audio time stamp does not have valid sample time");
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v47);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v43);
    if ((SBYTE7(v45) & 0x80000000) == 0)
    {
      return;
    }

    v20 = v44;
    v21 = *(&v45 + 1);
    v22 = v45;
    goto LABEL_26;
  }

  v8 = *&a3->mSMPTETime.mHours;
  v46 = *&a3->mFlags;
  v9 = *&a3->mWordClockTime;
  v43 = *&a3->mHostTime;
  v44 = v9;
  v45 = *&a3->mSMPTETime.mType;
  v10 = *&a3->mRateScalar;
  v39 = *&a3->mSampleTime;
  v40 = v10;
  v41 = *&a3->mSMPTETime.mSubframes;
  v42 = v8;
  v11 = *&a3->mFlags;
  mSampleTime = a3->mSampleTime;
  if ((v11 & 1) == 0)
  {
    mSampleTime = *(this + 10);
    v25 = *(this + 104);
    v43 = *(this + 88);
    v24 = v43;
    v44 = v25;
    v45 = *(this + 120);
    v26 = v45;
    v46 = *(this + 17);
    v27 = v46;
    a3->mSampleTime = mSampleTime;
    *&a3->mHostTime = v24;
    *&a3->mWordClockTime = v25;
    *&a3->mSMPTETime.mType = v26;
    *&a3->mFlags = v27;
  }

  v13 = mSampleTime + a4;
  v14 = v13;
  v15 = *(this + 1);
  if (v15)
  {
    if (*(v15 + 80) < v14)
    {
      v33 = 0x13012000000002;
      v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
      v37 = 0;
      v35 = 0;
      v36 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
      vp::vx::io::operator<<<char const(&)[54]>(v32, &v33);
      v23 = v32;
LABEL_24:
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v23);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v33);
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        return;
      }

      v20 = v35;
      v22 = v37;
      v21 = v38;
LABEL_26:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v21, v20, v22 & 0x7FFFFFFFFFFFFFFFLL);
      return;
    }

    v16 = *(v15 + 72);
  }

  else
  {
    v16 = 0;
  }

  if (v16 >= v14)
  {
    v33 = 0x13012600000002;
    v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v37 = 0;
    v35 = 0;
    v36 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
    vp::vx::io::operator<<<char const(&)[55]>(v31, &v33, "requested data is behind of available audio time range");
    v23 = v31;
    goto LABEL_24;
  }

  v29 = v11;
  v17 = mSampleTime;
  if (!vp::Audio_Ring_Buffer::read(v15, a2, mSampleTime, v13))
  {
    v28 = v40;
    *&a3->mSampleTime = v39;
    *&a3->mRateScalar = v28;
    *&a3->mSMPTETime.mSubframes = v41;
    *&a3->mSMPTETime.mHours = v42;
    *&a3->mFlags = v29;
    v33 = 0x13013E00000000;
    v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v37 = 0;
    v35 = 0;
    v36 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
    vp::vx::io::operator<<<char const(&)[38]>(v30, &v33);
    v23 = v30;
    goto LABEL_24;
  }

  if (*(this + 10) < v14)
  {
    *(this + 10) = v14;
  }

  v18 = v14 - v17;
  if (v14 <= v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  if ((v14 - v17) >> 32)
  {
    v18 = v19;
  }

  *a5 = v18;
  *(a5 + 48) = 1;
}

double vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::reset@<D0>(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = *(result + 136);
    if (v5)
    {
      v7 = *(result + 8);
      if (v7)
      {
        v6 = *(v7 + 80);
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = *(result + 80);
    }

    *a3 = v6;
    *(a3 + 8) = *(result + 88);
    *(a3 + 24) = *(result + 104);
    *(a3 + 40) = *(result + 120);
    *(a3 + 56) = v5;
  }

  else if (!a2)
  {
    v3 = *(result + 96);
    *a3 = *(result + 80);
    *(a3 + 16) = v3;
    v4 = *(result + 128);
    *(a3 + 32) = *(result + 112);
    *(a3 + 48) = v4;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v5 = *(v2 + 33);
    *v6 = *(v2 + 49);
    *&v6[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v5;
  *(a2 + 1) = v5;
  *(a2 + 17) = *v6;
  *(a2 + 32) = *&v6[15];
  return result;
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::~Audio_Ring_Buffer_Output_Port(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 18) = &unk_2881C6630;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 18) = &unk_2881C6630;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 88) = &unk_2881C6630;
    v4 = *(v2 + 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 144) = &unk_2881C6630;
    v4 = *(v2 + 160);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 168, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 112, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::end_configuration_changes(vp::vx::components::Audio_Statistics *this)
{
  v3.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((*(this + 456) & 1) == 0)
  {
    *(this + 456) = 1;
  }

  *(this + 56) = v3;
  if (*(this + 472) == 1)
  {
    *(this + 472) = 0;
  }

  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((*(this + 504) & 1) == 0)
  {
    *(this + 504) = 1;
  }

  *(this + 62) = v4;
  applesauce::CF::StringRef::from_get(&v35, @"vp_route_change_duration_ms");
  *valuePtr = ((*(this + 62) - *(this + 60)) / 1000);
  cf = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr[0] = &v35;
  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef const&>,std::tuple<>>(this + 68, &v35, valuePtr);
  v6 = *(v5 + 24);
  *(v5 + 24) = cf;
  CFRetain(cf);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(cf);
  if (v35)
  {
    CFRelease(v35);
  }

  if (!*(this + 46))
  {
    return;
  }

  v7 = *(this + 44);
  if (!v7)
  {
    goto LABEL_64;
  }

  v33 = (this + 296);
  do
  {
    v8 = std::hash<applesauce::CF::StringRef>::operator()(v7[2]);
    v9 = v8;
    v10 = *(this + 35);
    if (!v10)
    {
      goto LABEL_31;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v1 = v8;
      if (v8 >= v10)
      {
        v1 = v8 % v10;
      }
    }

    else
    {
      v1 = (v10 - 1) & v8;
    }

    v13 = *(*(this + 34) + 8 * v1);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_31:
      v16 = (*(**(this + 38) + 16))(*(this + 38), 32, 8);
      valuePtr[1] = (this + 304);
      valuePtr[2] = 1;
      *v16 = 0;
      v16[1] = v9;
      v17 = v7[2];
      if (v17)
      {
        CFRetain(v7[2]);
      }

      v16[2] = v17;
      v18 = v7[3];
      if (v18)
      {
        CFRetain(v7[3]);
      }

      v16[3] = v18;
      v19 = (*(this + 39) + 1);
      v20 = *(this + 80);
      if (!v10 || (v20 * v10) < v19)
      {
        v21 = (v10 & (v10 - 1)) != 0;
        if (v10 < 3)
        {
          v21 = 1;
        }

        v22 = v21 | (2 * v10);
        v23 = vcvtps_u32_f32(v19 / v20);
        if (v22 <= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v22;
        }

        std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(this + 272, v24);
        v10 = *(this + 35);
        if ((v10 & (v10 - 1)) != 0)
        {
          if (v9 >= v10)
          {
            v1 = v9 % v10;
          }

          else
          {
            v1 = v9;
          }
        }

        else
        {
          v1 = (v10 - 1) & v9;
        }
      }

      v25 = *(this + 34);
      v26 = *(v25 + 8 * v1);
      if (v26)
      {
        *v16 = *v26;
      }

      else
      {
        *v16 = *v33;
        *v33 = v16;
        *(v25 + 8 * v1) = v33;
        if (!*v16)
        {
LABEL_56:
          ++*(this + 39);
          goto LABEL_57;
        }

        v27 = *(*v16 + 8);
        if ((v10 & (v10 - 1)) != 0)
        {
          if (v27 >= v10)
          {
            v27 %= v10;
          }
        }

        else
        {
          v27 &= v10 - 1;
        }

        v26 = (*(this + 34) + 8 * v27);
      }

      *v26 = v16;
      goto LABEL_56;
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v15 >= v10)
        {
          v15 %= v10;
        }
      }

      else
      {
        v15 &= v10 - 1;
      }

      if (v15 != v1)
      {
        goto LABEL_31;
      }

LABEL_30:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v14[2], v7 + 2))
    {
      goto LABEL_30;
    }

    v28 = v14[3];
    v29 = v7[3];
    v14[3] = v29;
    if (v29)
    {
      CFRetain(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

LABEL_57:
    v7 = *v7;
  }

  while (v7);
  if (*(this + 46))
  {
LABEL_64:
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__deallocate_node(this + 328, *(this + 44));
    *(this + 44) = 0;
    v30 = *(this + 42);
    if (v30)
    {
      for (i = 0; i != v30; ++i)
      {
        *(*(this + 41) + 8 * i) = 0;
      }
    }

    *(this + 46) = 0;
  }

  *(this + 440) = 1;
}

void sub_2725D8394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

CFHashCode std::hash<applesauce::CF::StringRef>::operator()(const void *a1)
{
  if (a1)
  {
    return CFHash(a1);
  }

  else
  {
    return 0xD7C06285B9DE677ALL;
  }
}

unint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(unint64_t result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (*&v3 <= *&v4)
  {
    if (*&v3 >= *&v4)
    {
      return result;
    }

    result = vcvtps_u32_f32(*(v2 + 40) / *(v2 + 48));
    if (*&v4 < 3uLL || (v10 = vcnt_s8(v4), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v11 = 1 << -__clz(result - 1);
      if (result >= 2)
      {
        result = v11;
      }
    }

    if (*&v3 <= result)
    {
      v3 = result;
    }

    if (*&v3 >= *&v4)
    {
      return result;
    }

    if (!*&v3)
    {
      v15 = *v2;
      *v2 = 0;
      if (v15)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v15, *(v2 + 8));
      }

      *(v2 + 8) = 0;
      return result;
    }
  }

  if (*&v3 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = (*(**(v2 + 16) + 16))(*(v2 + 16), 8 * *&v3, 8);
  v5 = *v2;
  *v2 = result;
  if (v5)
  {
    result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v5, *(v2 + 8));
  }

  v6 = 0;
  *(v2 + 8) = v3;
  do
  {
    *(*v2 + 8 * v6++) = 0;
  }

  while (*&v3 != v6);
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = v7[1];
    v9 = vcnt_s8(v3);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    *(*v2 + 8 * v8) = v2 + 24;
    v12 = *v7;
    if (*v7)
    {
      do
      {
        v13 = v12[1];
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v3)
          {
            v13 %= *&v3;
          }
        }

        else
        {
          v13 &= *&v3 - 1;
        }

        if (v13 != v8)
        {
          v14 = *v2;
          if (!*(*v2 + 8 * v13))
          {
            *(v14 + 8 * v13) = v7;
            goto LABEL_31;
          }

          *v7 = *v12;
          *v12 = **(v14 + 8 * v13);
          **(v14 + 8 * v13) = v12;
          v12 = v7;
        }

        v13 = v8;
LABEL_31:
        v7 = v12;
        v12 = *v12;
        v8 = v13;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 16);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else if (!a2)
  {
    return result;
  }

  v6 = **v3;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::deallocate[abi:ne200100](v6, a2);
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__deallocate_node(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      v5 = v2[3];
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v2[2];
      if (v6)
      {
        CFRelease(v6);
      }

      result = std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::deallocate[abi:ne200100](*(v3 + 32), v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef const&>,std::tuple<>>(float *a1, const void **a2, const void ***a3)
{
  v7 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v8 = v7;
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = *(i + 8);
        if (v14 == v8)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(i + 16), a2) == kCFCompareEqualTo)
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = (*(**(a1 + 4) + 16))(*(a1 + 4), 32, 8);
  *i = 0;
  *(i + 8) = v8;
  v15 = **a3;
  if (v15)
  {
    CFRetain(v15);
  }

  *(i + 16) = v15;
  *(i + 24) = 0;
  v16 = (*(a1 + 5) + 1);
  v17 = a1[12];
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(a1, v21);
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    *i = *v23;
LABEL_40:
    *v23 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v22 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v24 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v24 >= v9)
      {
        v24 %= v9;
      }
    }

    else
    {
      v24 &= v9 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
  return i;
}

void vp::vx::components::Audio_Statistics::begin_configuration_changes(vp::vx::components::Audio_Statistics *this)
{
  vp::vx::components::Audio_Statistics::stop_route_timer(this);
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((*(this + 488) & 1) == 0)
  {
    *(this + 488) = 1;
  }

  *(this + 60) = v2;
  if (*(this + 504) == 1)
  {
    *(this + 504) = 0;
  }

  vp::vx::components::Audio_Statistics::report_payload(this);

  vp::vx::components::Audio_Statistics::report_payload_for_legacy(this);
}

void vp::vx::components::Audio_Statistics::stop_route_timer(vp::vx::components::Audio_Statistics *this)
{
  if (*(this + 456) == 1)
  {
    v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if ((*(this + 472) & 1) == 0)
    {
      *(this + 472) = 1;
    }

    *(this + 58) = v2;
    applesauce::CF::StringRef::from_get(&v7, @"vp_route_duration_ms");
    valuePtr = ((*(this + 58) - *(this + 56)) / 1000);
    cf = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    valuePtr = COERCE_DOUBLE(&v7);
    v3 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef const&>,std::tuple<>>(this + 68, &v7, &valuePtr);
    v4 = *(v3 + 24);
    *(v3 + 24) = cf;
    CFRetain(cf);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(cf);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void sub_2725D8BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void vp::vx::components::Audio_Statistics::report_payload(vp::vx::components::Audio_Statistics *this)
{
  v23[3] = *MEMORY[0x277D85DE8];
  if (*(this + 440) == 1 && *(this + 39))
  {
    MEMORY[0x28223BE20](this);
    v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v2 >= 0x200)
    {
      v4 = 512;
    }

    else
    {
      v4 = v2;
    }

    bzero(&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    MEMORY[0x28223BE20](v5);
    v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v6 >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = v6;
    }

    bzero(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v9 = *(this + 37);
    if (v9)
    {
      v10 = 0;
      do
      {
        v3[v10] = v9[2];
        v7[v10++] = v9[3];
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v22 = 0;
    v20 = 8;
    v21 = 5;
    v11 = CFDictionaryCreate(*MEMORY[0x277CBECE8], v3, v7, v10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = v11;
    v23[0] = v11;
    if (v11)
    {
      v13 = CFGetTypeID(v11);
      if (v13 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v11 = v22;
      v22 = v12;
      v23[0] = v11;
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      v22 = 0;
    }

    v14 = *(this + 32);
    default_resource = std::pmr::get_default_resource(v11);
    v23[1] = 0;
    v23[2] = 0;
    v23[0] = default_resource;
    vp::vx::data_flow::State<void>::get_value(this + 104, v23);
    v16 = vp::vx::data_flow::Value::view_storage(v23);
    v19 = *v16;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    vp::vx::data_flow::Value::~Value(v23);
    v17 = v19;
    vp::vx::components::detail::report(v14, &v20, v19, *(&v19 + 1));
    if (v17)
    {
      operator delete(v17);
    }

    *(this + 440) = 0;
    if (v22)
    {
      CFRelease(v22);
    }
  }
}

void sub_2725D8EA4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v2 - 80));
  vp::services::Audio_Statistics::Event::~Event((v2 - 96));
  _Unwind_Resume(a1);
}

void vp::vx::components::Audio_Statistics::report_payload_for_legacy(vp::vx::components::Audio_Statistics *this)
{
  v181 = *MEMORY[0x277D85DE8];
  v2 = *(this + 31);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2), (v4 = v3) == 0) || (v5 = *(this + 30), atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !v5))
  {
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  cf = 0;
  v153 = 8;
  v154 = 5;
  applesauce::CF::StringRef::from_get(&v151, @"vp_chat_flavor");
  (*(*v5 + 16))(__s, v5, 59);
  v148 = *__s;
  v149 = v180;
  v180 = 0uLL;
  v6 = vp::vx::data_flow::State<void>::~State(__s);
  default_resource = std::pmr::get_default_resource(v6);
  *v158 = 0;
  v156 = default_resource;
  v157 = 0;
  LODWORD(v146.__r_.__value_.__l.__data_) = v148;
  *__s = v149;
  *&v180 = &v146;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v149, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v8 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v9 = "default";
  if (v8 == 2)
  {
    v9 = "voice isolation";
  }

  if (v8 == 1)
  {
    v9 = "music";
  }

  v150 = v9;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v160, v151, &v150);
  applesauce::CF::StringRef::from_get(&v147, @"vp_bypass");
  (*(*v5 + 16))(__s, v5, 0);
  v144 = *__s;
  v145 = v180;
  v180 = 0uLL;
  v10 = vp::vx::data_flow::State<void>::~State(__s);
  v11 = std::pmr::get_default_resource(v10);
  *v158 = 0;
  v156 = v11;
  v157 = 0;
  LODWORD(v142.__r_.__value_.__l.__data_) = v144;
  *__s = v145;
  *&v180 = &v142;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v145, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v12 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v146, v12);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v161, v147, &v146);
  applesauce::CF::StringRef::from_get(&v143, @"vp_config_operation_mode");
  (*(*v5 + 16))(__s, v5, 58);
  v140 = *__s;
  v141 = v180;
  v180 = 0uLL;
  v13 = vp::vx::data_flow::State<void>::~State(__s);
  v14 = std::pmr::get_default_resource(v13);
  *v158 = 0;
  v156 = v14;
  v157 = 0;
  LODWORD(v138.__r_.__value_.__l.__data_) = v140;
  *__s = v141;
  *&v180 = &v138;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v141, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v15 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(v15);
  std::to_string(&v142, v15);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v162, v143, &v142);
  applesauce::CF::StringRef::from_get(&v139, @"vp_config_input_port");
  (*(*v5 + 16))(__s, v5, 10);
  v136 = *__s;
  v137 = v180;
  v180 = 0uLL;
  v16 = vp::vx::data_flow::State<void>::~State(__s);
  v17 = std::pmr::get_default_resource(v16);
  *v158 = 0;
  v156 = v17;
  v157 = 0;
  LODWORD(v134.__r_.__value_.__l.__data_) = v136;
  *__s = v137;
  *&v180 = &v134;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v137, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v18 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  vp::vx::legacy_cast<vp::vx::Input_Port_Type>(v18);
  v20 = bswap32(v19);
  *__s = v20;
  if ((v20 - 32) > 0x5E || ((v20 >> 8) - 32) > 0x5E || ((v20 << 8 >> 24) - 32) > 0x5E || ((v20 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v138, v19);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v138, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v163, v139, &v138);
  applesauce::CF::StringRef::from_get(&v135, @"vp_config_output_port");
  (*(*v5 + 16))(__s, v5, 26);
  v132 = *__s;
  v133 = v180;
  v180 = 0uLL;
  v21 = vp::vx::data_flow::State<void>::~State(__s);
  v22 = std::pmr::get_default_resource(v21);
  *v158 = 0;
  v156 = v22;
  v157 = 0;
  LODWORD(v130.__r_.__value_.__l.__data_) = v132;
  *__s = v133;
  *&v180 = &v130;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v133, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v23 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v23);
  v25 = bswap32(v24);
  *__s = v25;
  if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v134, v24);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v134, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v164, v135, &v134);
  applesauce::CF::StringRef::from_get(&v131, @"vp_config_ref_subport");
  (*(*v5 + 16))(__s, v5, 39);
  v128 = *__s;
  v129 = v180;
  v180 = 0uLL;
  v26 = vp::vx::data_flow::State<void>::~State(__s);
  v27 = std::pmr::get_default_resource(v26);
  *v158 = 0;
  v156 = v27;
  v157 = 0;
  LODWORD(v126.__r_.__value_.__l.__data_) = v128;
  *__s = v129;
  *&v180 = &v126;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v129, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v28 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v29 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(v28);
  v30 = bswap32(v29);
  *__s = v30;
  if ((v30 - 32) > 0x5E || ((v30 >> 8) - 32) > 0x5E || ((v30 << 8 >> 24) - 32) > 0x5E || ((v30 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v130, v29);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v130, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v165, v131, &v130);
  applesauce::CF::StringRef::from_get(&v127, @"vp_config_primary_vocoder");
  (*(*v5 + 16))(__s, v5, 69);
  v124 = *__s;
  v125 = v180;
  v180 = 0uLL;
  v31 = vp::vx::data_flow::State<void>::~State(__s);
  v32 = std::pmr::get_default_resource(v31);
  *v158 = 0;
  v156 = v32;
  v157 = 0;
  LODWORD(v122.__r_.__value_.__l.__data_) = v124;
  *__s = v125;
  *&v180 = &v122;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v125, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v33 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v34 = bswap32(v33);
  *__s = v34;
  if ((v34 - 32) >= 0x5F || ((v34 >> 8) - 32) > 0x5E || ((v34 << 8 >> 24) - 32) > 0x5E || ((v34 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v126, v33);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v126, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v166, v127, &v126);
  applesauce::CF::StringRef::from_get(&v123, @"vp_config_primary_vocoderFs");
  (*(*v5 + 16))(__s, v5, 70);
  v120 = *__s;
  v121 = v180;
  v180 = 0uLL;
  v35 = vp::vx::data_flow::State<void>::~State(__s);
  v36 = std::pmr::get_default_resource(v35);
  *v158 = 0;
  v156 = v36;
  v157 = 0;
  LODWORD(v118.__r_.__value_.__l.__data_) = v120;
  *__s = v121;
  *&v180 = &v118;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v121, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v37 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v122, v37);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v167, v123, &v122);
  applesauce::CF::StringRef::from_get(&v119, @"vp_media_chat_enabled");
  (*(*v5 + 16))(__s, v5, 80);
  v116 = *__s;
  v117 = v180;
  v180 = 0uLL;
  v38 = vp::vx::data_flow::State<void>::~State(__s);
  v39 = std::pmr::get_default_resource(v38);
  *v158 = 0;
  v156 = v39;
  v157 = 0;
  LODWORD(v114.__r_.__value_.__l.__data_) = v116;
  *__s = v117;
  *&v180 = &v114;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v117, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v40 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v118, v40);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v168, v119, &v118);
  applesauce::CF::StringRef::from_get(&v115, @"vp_spatial_chat_enabled");
  (*(*v5 + 16))(__s, v5, 77);
  v112 = *__s;
  v113 = v180;
  v180 = 0uLL;
  v41 = vp::vx::data_flow::State<void>::~State(__s);
  v42 = std::pmr::get_default_resource(v41);
  *v158 = 0;
  v156 = v42;
  v157 = 0;
  LODWORD(v110.__r_.__value_.__l.__data_) = v112;
  *__s = v113;
  *&v180 = &v110;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v113, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v43 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v114, v43);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v169, v115, &v114);
  applesauce::CF::StringRef::from_get(&v111, @"vp_mix_stereo_to_mono");
  (*(*v5 + 16))(__s, v5, 88);
  v108 = *__s;
  v109 = v180;
  v180 = 0uLL;
  v44 = vp::vx::data_flow::State<void>::~State(__s);
  v45 = std::pmr::get_default_resource(v44);
  *v158 = 0;
  v156 = v45;
  v157 = 0;
  LODWORD(v106.__r_.__value_.__l.__data_) = v108;
  *__s = v109;
  *&v180 = &v106;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v109, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v46 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v110, v46);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v170, v111, &v110);
  applesauce::CF::StringRef::from_get(&v107, @"vp_spatial_head_tracking_enabled");
  (*(*v5 + 16))(__s, v5, 79);
  v104 = *__s;
  v105 = v180;
  v180 = 0uLL;
  v47 = vp::vx::data_flow::State<void>::~State(__s);
  v48 = std::pmr::get_default_resource(v47);
  *v158 = 0;
  v156 = v48;
  v157 = 0;
  LODWORD(v102.__r_.__value_.__l.__data_) = v104;
  *__s = v105;
  *&v180 = &v102;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v105, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v49 = *(vp::vx::data_flow::Value::view_storage(&v156) + 4);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v106, v49 & 1);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v171, v107, &v106);
  applesauce::CF::StringRef::from_get(&v103, @"vp_spatial_head_tracking_mode");
  (*(*v5 + 16))(__s, v5, 79);
  v100 = *__s;
  v101 = v180;
  v180 = 0uLL;
  v50 = vp::vx::data_flow::State<void>::~State(__s);
  v51 = std::pmr::get_default_resource(v50);
  *v158 = 0;
  v156 = v51;
  v157 = 0;
  LODWORD(v98.__r_.__value_.__l.__data_) = v100;
  *__s = v101;
  *&v180 = &v98;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v101, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v52 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v102, v52);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v172, v103, &v102);
  applesauce::CF::StringRef::from_get(&v99, @"vp_media_playback_on_external_device_enabled");
  (*(*v5 + 16))(__s, v5, 89);
  v96 = *__s;
  v97 = v180;
  v180 = 0uLL;
  v53 = vp::vx::data_flow::State<void>::~State(__s);
  v54 = std::pmr::get_default_resource(v53);
  *v158 = 0;
  v156 = v54;
  v157 = 0;
  LODWORD(v94.__r_.__value_.__l.__data_) = v96;
  *__s = v97;
  *&v180 = &v94;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v97, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v55 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v98, v55);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v173, v99, &v98);
  applesauce::CF::StringRef::from_get(&v95, @"vp_other_audio_ducking_configuration_enable_advanced_ducking");
  (*(*v5 + 16))(__s, v5, 90);
  v92 = *__s;
  v93 = v180;
  v180 = 0uLL;
  v56 = vp::vx::data_flow::State<void>::~State(__s);
  v57 = std::pmr::get_default_resource(v56);
  *v158 = 0;
  v156 = v57;
  v157 = 0;
  v88 = v92;
  *__s = v93;
  *&v180 = &v88;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v93, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v58 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v94, v58);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v174, v95, &v94);
  applesauce::CF::StringRef::from_get(&v91, @"vp_other_audio_ducking_configuration_ducking_level");
  (*(*v5 + 16))(__s, v5, 90);
  v88 = *__s;
  v89 = v180;
  v180 = 0uLL;
  v59 = vp::vx::data_flow::State<void>::~State(__s);
  v60 = std::pmr::get_default_resource(v59);
  *v158 = 0;
  v156 = v60;
  v157 = 0;
  LODWORD(v86.__r_.__value_.__l.__data_) = v88;
  *__s = v89;
  *&v180 = &v86;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v89, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v61 = *(vp::vx::data_flow::Value::view_storage(&v156) + 4);
  vp::vx::data_flow::Value::~Value(&v156);
  switch(v61)
  {
    case 10:
      v62 = "Min";
      break;
    case 20:
      v62 = "Mid";
      break;
    case 30:
      v62 = "Max";
      break;
    default:
      v62 = "Default";
      break;
  }

  v90 = v62;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(&v175, v91, &v90);
  applesauce::CF::StringRef::from_get(&v87, @"vp_automatic_mic_mode_enabled");
  (*(*v5 + 16))(__s, v5, 95);
  v84 = *__s;
  v85 = v180;
  v180 = 0uLL;
  v63 = vp::vx::data_flow::State<void>::~State(__s);
  v64 = std::pmr::get_default_resource(v63);
  *v158 = 0;
  v156 = v64;
  v157 = 0;
  LODWORD(v82.__r_.__value_.__l.__data_) = v84;
  *__s = v85;
  *&v180 = &v82;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v85, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v65 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v86, v65);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v176, v87, &v86);
  applesauce::CF::StringRef::from_get(&v83, @"vp_airpods_offload_mode");
  (*(*v5 + 16))(__s, v5, 94);
  v80 = *__s;
  v81 = v180;
  v180 = 0uLL;
  v66 = vp::vx::data_flow::State<void>::~State(__s);
  v67 = std::pmr::get_default_resource(v66);
  *v158 = 0;
  v156 = v67;
  v157 = 0;
  v159 = v80;
  *__s = v81;
  *&v180 = &v159;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v81, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v68 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  vp::vx::legacy_cast<vp::vx::AirPods_Offload_Mode>(v68);
  std::to_string(&v82, v68);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(v177, v83, &v82);
  applesauce::CF::StringRef::from_get(__s, @"vp_version");
  v69 = *__s;
  if (*__s)
  {
    CFRetain(*__s);
  }

  v177[2] = v69;
  applesauce::CF::TypeRef::TypeRef(&v178, "10");
  v152[0] = v160;
  v152[1] = 19;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v152);
  v71 = cf;
  cf = CFDictionaryRef;
  if (v71)
  {
    CFRelease(v71);
  }

  v72 = 76;
  do
  {
    v73 = *&v158[v72 + 2];
    if (v73)
    {
      CFRelease(v73);
    }

    v74 = *&v158[v72];
    if (v74)
    {
      CFRelease(v74);
    }

    v72 -= 4;
  }

  while (v72 * 4);
  if (*__s)
  {
    CFRelease(*__s);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v80);
  if (v83)
  {
    CFRelease(v83);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v84);
  if (v87)
  {
    CFRelease(v87);
  }

  vp::vx::data_flow::State<void>::~State(&v88);
  if (v91)
  {
    CFRelease(v91);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v92);
  if (v95)
  {
    CFRelease(v95);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v96);
  if (v99)
  {
    CFRelease(v99);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v100);
  if (v103)
  {
    CFRelease(v103);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v104);
  if (v107)
  {
    CFRelease(v107);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v108);
  if (v111)
  {
    CFRelease(v111);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v112);
  if (v115)
  {
    CFRelease(v115);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v116);
  if (v119)
  {
    CFRelease(v119);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v120);
  if (v123)
  {
    CFRelease(v123);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v124);
  if (v127)
  {
    CFRelease(v127);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v128);
  if (v131)
  {
    CFRelease(v131);
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v132);
  if (v135)
  {
    CFRelease(v135);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v136);
  if (v139)
  {
    CFRelease(v139);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v140);
  if (v143)
  {
    CFRelease(v143);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v144);
  if (v147)
  {
    CFRelease(v147);
  }

  vp::vx::data_flow::State<void>::~State(&v148);
  v75 = v151;
  if (v151)
  {
    CFRelease(v151);
  }

  v76 = *(this + 32);
  v77 = std::pmr::get_default_resource(v75);
  v161 = 0;
  v160[0] = v77;
  v160[1] = 0;
  vp::vx::data_flow::State<void>::get_value(this + 104, v160);
  v78 = vp::vx::data_flow::Value::view_storage(v160);
  v79 = *v78;
  *(v78 + 8) = 0;
  *(v78 + 16) = 0;
  *v78 = 0;
  vp::vx::data_flow::Value::~Value(v160);
  vp::vx::components::detail::report(v76, &v153, v79, *(&v79 + 1));
  if (v79)
  {
    operator delete(v79);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_2725DA47C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(void *a1, CFTypeRef cf, char **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  applesauce::CF::TypeRef::TypeRef((a1 + 1), *a3);
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(void *a1, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  a1[1] = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2725DABEC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void sub_2725DAC5C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DACD8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DAD54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DADD0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DAE54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void vp::services::Audio_Statistics::Event::~Event(vp::services::Audio_Statistics::Event *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t vp::vx::components::detail::report(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 == a4)
  {
    v10 = *(*a1 + 16);

    return v10();
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7++;
      result = (*(*a1 + 24))(a1, a2, v8);
    }

    while (v7 != a4);
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::AirPods_Offload_Mode>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<AUVoiceIOOtherAudioDuckingConfiguration>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Spatial_Head_Tracking_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

double vp::vx::data_flow::Value::Type_ID_Eraser<double>::move_value(uint64_t a1, void *a2, double *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

double vp::vx::data_flow::Value::Type_ID_Eraser<double>::copy_value(uint64_t a1, void *a2, double *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<double>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Port_Sub_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Chat_Flavor>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void vp::vx::components::Audio_Statistics::configure(vp::vx::components::Audio_Statistics *this)
{
  v155 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&v152, this, "vp::vx::components::Audio_Statistics]", 36);
    v4 = v153[15];
    v5 = v153[15];
    v6 = *v153;
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

      v9 = v152;
      if (v5 >= 0)
      {
        v9 = &v152;
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
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v153[15];
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(v152);
    }
  }

  v11 = *(this + 27);
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = *(this + 26), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
LABEL_52:
    _os_crash();
    __break(1u);
    goto LABEL_53;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = *(this + 29);
  v74 = v13;
  if (!v15)
  {
    goto LABEL_52;
  }

  v16 = std::__shared_weak_count::lock(v15);
  if (!v16)
  {
    goto LABEL_52;
  }

  v17 = *(this + 28);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v17)
  {
    goto LABEL_52;
  }

  v75 = v16;
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v18 = *(this + 31);
  if (!v18 || (v19 = std::__shared_weak_count::lock(v18), (v20 = v19) == 0) || (v21 = *(this + 30), atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed), !v21))
  {
LABEL_53:
    _os_crash();
    __break(1u);
  }

  v22 = (this + 392);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  (*(*v21 + 16))(&v152, v21, 72);
  *buf = v152;
  *&buf[8] = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::data_flow::State<void>::~State(this + 104);
  *(this + 104) = *buf;
  *(this + 424) = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  (*(*v21 + 16))(&v152, v21, 24);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4298;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v146 = v144;
  v147 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_ref_stream_format", &v146);
  vp::vx::data_flow::State<void>::~State(&v146);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 25);
  v140 = v152;
  v141 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_block_size", &v140);
  vp::vx::data_flow::State<void>::~State(&v140);
  (*(*v21 + 16))(&v152, v21, 26);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B42E0;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v138 = v144;
  v139 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_type", &v138);
  vp::vx::data_flow::State<void>::~State(&v138);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 39);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4328;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v136 = v144;
  v137 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_sub_type", &v136);
  vp::vx::data_flow::State<void>::~State(&v136);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 40);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4370;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v134 = v144;
  v135 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_endpoint_type", &v134);
  vp::vx::data_flow::State<void>::~State(&v134);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 41);
  v132 = v152;
  v133 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_ref_port_is_Apple_bluetooth_product", &v132);
  vp::vx::data_flow::State<void>::~State(&v132);
  (*(*v21 + 16))(&v152, v21, 42);
  v130 = v152;
  v131 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v142 = *(this + 1);
  *buf = 0;
  *&buf[8] = v142;
  *&buf[16] = xmmword_2727565C0;
  v23 = (*(*v142 + 16))(v142, 48, 8);
  v144 = v23;
  v149 = &v144;
  *&v150 = &v142;
  BYTE8(v150) = 0;
  vp::vx::data_flow::State<void>::State(&v152, &v130);
  *v23 = &unk_2881B48C8;
  applesauce::CF::StringRef::from_get((v23 + 8), @"vp_ref_port_uid");
  *(v23 + 16) = v152;
  *(v23 + 24) = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  *(v23 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  BYTE8(v150) = 1;
  v24 = v144;
  std::__exception_guard_exceptions<applesauce::CF::StringRef* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &>(__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&v149);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, v24);
  v25 = *(this + 49);
  v26 = *(this + 50);
  if (v25 >= v26)
  {
    v29 = *(this + 48);
    v30 = (v25 - v29) >> 5;
    v31 = v30 + 1;
    if ((v30 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v32 = v26 - v29;
    if (v32 >> 4 > v31)
    {
      v31 = v32 >> 4;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFE0)
    {
      v33 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    v154 = this + 408;
    if (v33)
    {
      v34 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 408, v33);
      v29 = *(this + 48);
      v25 = *(this + 49);
    }

    else
    {
      v34 = 0;
    }

    v35 = &v34[4 * v30];
    v152 = v34;
    *v153 = v35;
    *&v153[16] = &v34[4 * v33];
    v36 = *buf;
    *buf = 0;
    *v35 = v36;
    *(v35 + 1) = *&buf[16];
    *&v153[8] = v35 + 32;
    v37 = &v35[-32 * ((v25 - v29) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v29, v25, v37);
    v38 = *(this + 48);
    *(this + 48) = v37;
    v39 = *(this + 50);
    v68 = *&v153[8];
    *v22 = *&v153[8];
    *&v153[8] = v38;
    *&v153[16] = v39;
    v152 = v38;
    *v153 = v38;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v152);
    v28 = v68;
  }

  else
  {
    v27 = *buf;
    *buf = 0;
    *v25 = v27;
    *(v25 + 16) = *&buf[16];
    v28 = v25 + 32;
  }

  *(this + 49) = v28;
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, 0);
  vp::vx::data_flow::State<void>::~State(&v130);
  (*(*v21 + 16))(&v152, v21, 43);
  v128 = v152;
  v129 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_bluetooth_HLC_2ch_state", &v128);
  vp::vx::data_flow::State<void>::~State(&v128);
  (*(*v21 + 16))(&v152, v21, 8);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B43B8;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v126 = v144;
  v127 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_mic_stream_format", &v126);
  vp::vx::data_flow::State<void>::~State(&v126);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 9);
  v124 = v152;
  v125 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_mic_block_size", &v124);
  vp::vx::data_flow::State<void>::~State(&v124);
  (*(*v21 + 16))(&v152, v21, 10);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4400;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v122 = v144;
  v123 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_mic_port_type", &v122);
  vp::vx::data_flow::State<void>::~State(&v122);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 16);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4448;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v120 = v144;
  v121 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_mic_port_sub_type", &v120);
  vp::vx::data_flow::State<void>::~State(&v120);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 51);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4490;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v118 = v144;
  v119 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_uplink_output_stream_format", &v118);
  vp::vx::data_flow::State<void>::~State(&v118);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 2);
  v116 = v152;
  v117 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_enable_acoustic_gain_control", &v116);
  vp::vx::data_flow::State<void>::~State(&v116);
  (*(*v21 + 16))(&v152, v21, 54);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B44D8;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v114 = v144;
  v115 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_hardware_mix_output_stream_format", &v114);
  vp::vx::data_flow::State<void>::~State(&v114);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 55);
  v112 = v152;
  v113 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_hardware_mix_output_block_size", &v112);
  vp::vx::data_flow::State<void>::~State(&v112);
  (*(*v21 + 16))(&v152, v21, 52);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4520;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v110 = v144;
  v111 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_downlink_input_stream_format", &v110);
  vp::vx::data_flow::State<void>::~State(&v110);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 58);
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4568;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v142;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  LODWORD(v149) = *buf;
  v150 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v149;
  v145 = v150;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v108 = v144;
  v109 = v145;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_operation_mode", &v108);
  vp::vx::data_flow::State<void>::~State(&v108);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 69);
  v106 = v152;
  v107 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_codec_type", &v106);
  vp::vx::data_flow::State<void>::~State(&v106);
  (*(*v21 + 16))(&v152, v21, 70);
  v104 = v152;
  v105 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v142 = *(this + 1);
  *buf = 0;
  *&buf[8] = v142;
  *&buf[16] = xmmword_2727565C0;
  v40 = (*(*v142 + 16))(v142, 48, 8);
  v144 = v40;
  v149 = &v144;
  *&v150 = &v142;
  BYTE8(v150) = 0;
  vp::vx::data_flow::State<void>::State(&v152, &v104);
  *v40 = &unk_2881B4940;
  applesauce::CF::StringRef::from_get((v40 + 8), @"vp_codec_sample_rate");
  *(v40 + 16) = v152;
  *(v40 + 24) = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  *(v40 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  BYTE8(v150) = 1;
  v41 = v144;
  std::__exception_guard_exceptions<double* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<double> &>(__CFString const*&,vp::vx::data_flow::State<double> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&v149);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, v41);
  v42 = *(this + 49);
  v43 = *(this + 50);
  if (v42 >= v43)
  {
    v46 = *(this + 48);
    v47 = (v42 - v46) >> 5;
    v48 = v47 + 1;
    if ((v47 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v49 = v43 - v46;
    if (v49 >> 4 > v48)
    {
      v48 = v49 >> 4;
    }

    if (v49 >= 0x7FFFFFFFFFFFFFE0)
    {
      v50 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v48;
    }

    v154 = this + 408;
    if (v50)
    {
      v51 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 408, v50);
      v46 = *(this + 48);
      v42 = *(this + 49);
    }

    else
    {
      v51 = 0;
    }

    v52 = &v51[4 * v47];
    v152 = v51;
    *v153 = v52;
    *&v153[16] = &v51[4 * v50];
    v53 = *buf;
    *buf = 0;
    *v52 = v53;
    *(v52 + 1) = *&buf[16];
    *&v153[8] = v52 + 32;
    v54 = &v52[-32 * ((v42 - v46) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v46, v42, v54);
    v55 = *(this + 48);
    *(this + 48) = v54;
    v56 = *(this + 50);
    v69 = *&v153[8];
    *v22 = *&v153[8];
    *&v153[8] = v55;
    *&v153[16] = v56;
    v152 = v55;
    *v153 = v55;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v152);
    v45 = v69;
  }

  else
  {
    v44 = *buf;
    *buf = 0;
    *v42 = v44;
    *(v42 + 16) = *&buf[16];
    v45 = v42 + 32;
  }

  *(this + 49) = v45;
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, 0);
  vp::vx::data_flow::State<void>::~State(&v104);
  (*(*v21 + 16))(&v152, v21, 0);
  v102 = v152;
  v103 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_bypass", &v102);
  vp::vx::data_flow::State<void>::~State(&v102);
  (*(*v21 + 16))(&v152, v21, 1);
  v100 = v152;
  v101 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_disable", &v100);
  vp::vx::data_flow::State<void>::~State(&v100);
  (*(*v21 + 16))(&v152, v21, 61);
  v98 = v152;
  v99 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_hardware_has_vp", &v98);
  vp::vx::data_flow::State<void>::~State(&v98);
  (*(*v21 + 16))(&v152, v21, 62);
  v96 = v152;
  v97 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_tap_stream_enabled", &v96);
  vp::vx::data_flow::State<void>::~State(&v96);
  (*(*v21 + 16))(&v152, v21, 80);
  v94 = v152;
  v95 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_media_chat_enabled", &v94);
  vp::vx::data_flow::State<void>::~State(&v94);
  (*(*v21 + 16))(&v152, v21, 77);
  v92 = v152;
  v93 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_spatial_chat_enabled", &v92);
  vp::vx::data_flow::State<void>::~State(&v92);
  (*(*v21 + 16))(&v152, v21, 59);
  v57 = v152;
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B45B0;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v57;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  v58 = *buf;
  LODWORD(v149) = *buf;
  v70 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v58;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v90 = v58;
  v91 = v70;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_chat_flavor", &v90);
  vp::vx::data_flow::State<void>::~State(&v90);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 88);
  v88 = v152;
  v89 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_stereo_to_mono_mix_enabled", &v88);
  vp::vx::data_flow::State<void>::~State(&v88);
  (*(*v21 + 16))(&v152, v21, 89);
  v86 = v152;
  v87 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_media_playback_on_external_device_enabled", &v86);
  vp::vx::data_flow::State<void>::~State(&v86);
  (*(*v21 + 16))(&v152, v21, 90);
  v59 = v152;
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B45F8;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v59;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  v60 = *buf;
  LODWORD(v149) = *buf;
  v71 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v60;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v84 = v60;
  v85 = v71;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_other_audio_ducking_configuration_enable_advanced_ducking", &v84);
  vp::vx::data_flow::State<void>::~State(&v84);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 90);
  v61 = v152;
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4640;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v61;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  v62 = *buf;
  LODWORD(v149) = *buf;
  v72 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v62;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v82 = v62;
  v83 = v72;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_other_audio_ducking_configuration_ducking_level", &v82);
  vp::vx::data_flow::State<void>::~State(&v82);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  (*(*v21 + 16))(&v152, v21, 95);
  v80 = v152;
  v81 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_automatic_mic_mode_enabled", &v80);
  vp::vx::data_flow::State<void>::~State(&v80);
  (*(*v21 + 16))(&v152, v21, 96);
  v78 = v152;
  v79 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_camera_is_active", &v78);
  vp::vx::data_flow::State<void>::~State(&v78);
  (*(*v21 + 16))(&v152, v21, 94);
  v63 = v152;
  LODWORD(v142) = v152;
  v143 = *v153;
  *v153 = 0;
  *&v153[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v152);
  v152 = &unk_2881B4688;
  v153[0] = 0;
  *&v153[16] = &v152;
  v148 = v63;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v152);
  v64 = *buf;
  LODWORD(v149) = *buf;
  v73 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v152);
  LODWORD(v144) = v64;
  v150 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v149);
  v76 = v64;
  v77 = v73;
  v145 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_airpods_offload_mode", &v76);
  vp::vx::data_flow::State<void>::~State(&v76);
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  v65 = *(this + 48);
  v66 = *(this + 49);
  while (v65 != v66)
  {
    v67 = *v65;
    v65 += 4;
    (*(*v67 + 16))(v67, this + 328);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  std::__shared_weak_count::__release_shared[abi:ne200100](v74);
}

void sub_2725DD010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100]((v58 - 176), 0);
  vp::vx::data_flow::State<void>::~State(&a57);
  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  _Unwind_Resume(a1);
}

void sub_2725DD228()
{
  if ((v0 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    JUMPOUT(0x2725DD208);
  }

  JUMPOUT(0x2725DD210);
}

void sub_2725DD23C()
{
  if (v0)
  {
    JUMPOUT(0x2725DD218);
  }

  JUMPOUT(0x2725DD208);
}

void sub_2725DD24C()
{
  if (v0)
  {
    JUMPOUT(0x2725DD220);
  }

  JUMPOUT(0x2725DD210);
}

void (****vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(void *a1, const void *a2, int *a3))(void)
{
  v30 = a1[1];
  *&v28 = 0;
  *(&v28 + 1) = v30;
  v29 = xmmword_2727565C0;
  v6 = (*(*v30 + 16))(v30, 48, 8);
  v33 = v6;
  v31[0] = &v33;
  v31[1] = &v30;
  v32 = 0;
  vp::vx::data_flow::State<void>::State(&v34, a3);
  *v6 = &unk_2881B46D0;
  applesauce::CF::StringRef::from_get((v6 + 8), a2);
  *(v6 + 16) = v34;
  *(v6 + 24) = *v35;
  *v35 = 0uLL;
  *(v6 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v34);
  v32 = 1;
  v7 = v33;
  std::__exception_guard_exceptions<std::string* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<std::string> &>(__CFString const*&,vp::vx::data_flow::State<std::string> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v31);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, v7);
  v8 = a1 + 49;
  v9 = a1[49];
  v10 = a1[50];
  if (v9 >= v10)
  {
    v14 = a1[48];
    v15 = (v9 - v14) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v14;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v36 = a1 + 51;
    if (v18)
    {
      v19 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 51), v18);
      v14 = a1[48];
      v9 = a1[49];
    }

    else
    {
      v19 = 0;
    }

    *&v35[16] = v19 + 32 * v18;
    v20 = v28;
    v21 = v29;
    v22 = (v19 + 32 * v15);
    *&v28 = 0;
    *v22 = v20;
    v22[1] = v21;
    *&v35[8] = v22 + 2;
    v23 = &v22[-2 * ((v9 - v14) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v14, v9, v23);
    v24 = a1[48];
    a1[48] = v23;
    v25 = a1[50];
    v27 = *&v35[8];
    *v8 = *&v35[8];
    *&v35[8] = v24;
    *&v35[16] = v25;
    v34 = v24;
    *v35 = v24;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v34);
    v13 = v27;
  }

  else
  {
    v11 = v28;
    v12 = v29;
    *&v28 = 0;
    *v9 = v11;
    *(v9 + 16) = v12;
    v13 = v9 + 32;
  }

  *v8 = v13;
  return std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, 0);
}

void sub_2725DD46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void (****vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(void *a1, const void *a2, int *a3))(void)
{
  v30 = a1[1];
  *&v28 = 0;
  *(&v28 + 1) = v30;
  v29 = xmmword_2727565C0;
  v6 = (*(*v30 + 16))(v30, 48, 8);
  v33 = v6;
  v31[0] = &v33;
  v31[1] = &v30;
  v32 = 0;
  vp::vx::data_flow::State<void>::State(&v34, a3);
  *v6 = &unk_2881B4790;
  applesauce::CF::StringRef::from_get((v6 + 8), a2);
  *(v6 + 16) = v34;
  *(v6 + 24) = *v35;
  *v35 = 0uLL;
  *(v6 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v34);
  v32 = 1;
  v7 = v33;
  std::__exception_guard_exceptions<unsigned int* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<unsigned int> &>(__CFString const*&,vp::vx::data_flow::State<unsigned int> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v31);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, v7);
  v8 = a1 + 49;
  v9 = a1[49];
  v10 = a1[50];
  if (v9 >= v10)
  {
    v14 = a1[48];
    v15 = (v9 - v14) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v14;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v36 = a1 + 51;
    if (v18)
    {
      v19 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 51), v18);
      v14 = a1[48];
      v9 = a1[49];
    }

    else
    {
      v19 = 0;
    }

    *&v35[16] = v19 + 32 * v18;
    v20 = v28;
    v21 = v29;
    v22 = (v19 + 32 * v15);
    *&v28 = 0;
    *v22 = v20;
    v22[1] = v21;
    *&v35[8] = v22 + 2;
    v23 = &v22[-2 * ((v9 - v14) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v14, v9, v23);
    v24 = a1[48];
    a1[48] = v23;
    v25 = a1[50];
    v27 = *&v35[8];
    *v8 = *&v35[8];
    *&v35[8] = v24;
    *&v35[16] = v25;
    v34 = v24;
    *v35 = v24;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v34);
    v13 = v27;
  }

  else
  {
    v11 = v28;
    v12 = v29;
    *&v28 = 0;
    *v9 = v11;
    *(v9 + 16) = v12;
    v13 = v9 + 32;
  }

  *v8 = v13;
  return std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, 0);
}

void sub_2725DD6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void (****vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(void *a1, const void *a2, int *a3))(void)
{
  v30 = a1[1];
  *&v28 = 0;
  *(&v28 + 1) = v30;
  v29 = xmmword_2727565C0;
  v6 = (*(*v30 + 16))(v30, 48, 8);
  v33 = v6;
  v31[0] = &v33;
  v31[1] = &v30;
  v32 = 0;
  vp::vx::data_flow::State<void>::State(&v34, a3);
  *v6 = &unk_2881B4850;
  applesauce::CF::StringRef::from_get((v6 + 8), a2);
  *(v6 + 16) = v34;
  *(v6 + 24) = *v35;
  *v35 = 0uLL;
  *(v6 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v34);
  v32 = 1;
  v7 = v33;
  std::__exception_guard_exceptions<BOOL* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<BOOL> &>(__CFString const*&,vp::vx::data_flow::State<BOOL> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v31);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, v7);
  v8 = a1 + 49;
  v9 = a1[49];
  v10 = a1[50];
  if (v9 >= v10)
  {
    v14 = a1[48];
    v15 = (v9 - v14) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v14;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v36 = a1 + 51;
    if (v18)
    {
      v19 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 51), v18);
      v14 = a1[48];
      v9 = a1[49];
    }

    else
    {
      v19 = 0;
    }

    *&v35[16] = v19 + 32 * v18;
    v20 = v28;
    v21 = v29;
    v22 = (v19 + 32 * v15);
    *&v28 = 0;
    *v22 = v20;
    v22[1] = v21;
    *&v35[8] = v22 + 2;
    v23 = &v22[-2 * ((v9 - v14) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v14, v9, v23);
    v24 = a1[48];
    a1[48] = v23;
    v25 = a1[50];
    v27 = *&v35[8];
    *v8 = *&v35[8];
    *&v35[8] = v24;
    *&v35[16] = v25;
    v34 = v24;
    *v35 = v24;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v34);
    v13 = v27;
  }

  else
  {
    v11 = v28;
    v12 = v29;
    *&v28 = 0;
    *v9 = v11;
    *(v9 + 16) = v12;
    v13 = v9 + 32;
  }

  *v8 = v13;
  return std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, 0);
}

void sub_2725DD8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__14JNS3_20AirPods_Offload_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::legacy_cast<vp::vx::AirPods_Offload_Mode>(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__14JNS3_20AirPods_Offload_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4688;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__13J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__13J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4640;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__12J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) != 0;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__12J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B45F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__11JNS3_11Chat_FlavorEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::Legacy<vp::vx::Chat_Flavor>::cast(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

void sub_2725DDC94(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__11JNS3_11Chat_FlavorEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B45B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

void (****std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(void (****result)(void), void (****a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 16) = *(v5 + 16);
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      result = std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100](v4);
      v4 += 4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100]((i - 32));
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

void (****std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100](void (****result)(void)))(void)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (**v1)(v1);
    return ((*v2[1])[3])(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<double* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<double> &>(__CFString const*&,vp::vx::data_flow::State<double> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::unregister_listener(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 16), v1);
    *(result + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v4[0] = &unk_2881B49B8;
    v4[1] = v3;
    v4[2] = a2;
    v4[3] = v4;
    std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](v5, v4);
    v6 = 0;
    operator new();
  }

  return result;
}

void sub_2725DE1BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4970;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4970;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  valuePtr = *a2;
  v8 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v8);
  if (v4)
  {
    v5 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = v3;
    v5 = *(v3 + 24);
    *(v6 + 24) = v8;
    v8 = v5;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(float *a1, const void **a2, const void **a3, uint64_t *a4)
{
  v9 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v10 = v9;
  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = *(i + 8);
        if (v16 == v10)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(i + 16), a2) == kCFCompareEqualTo)
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = (*(**(a1 + 4) + 16))(*(a1 + 4), 32, 8);
  *i = 0;
  *(i + 8) = v10;
  v17 = *a3;
  if (v17)
  {
    CFRetain(v17);
  }

  v18 = *a4;
  *(i + 16) = v17;
  *(i + 24) = v18;
  *a4 = 0;
  v19 = (*(a1 + 5) + 1);
  v20 = a1[12];
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(a1, v24);
    v11 = *(a1 + 1);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    *i = *v26;
LABEL_40:
    *v26 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v25 + 8 * v4) = a1 + 6;
  if (*i)
  {
    v27 = *(*i + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v27 >= v11)
      {
        v27 %= v11;
      }
    }

    else
    {
      v27 &= v11 - 1;
    }

    v26 = (*a1 + 8 * v27);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
  return i;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B49B8;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B49B8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B49B8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B4940;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

int *vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B4940;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__10JNS3_14Operation_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__10JNS3_14Operation_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4568;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__9JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v10.__r_.__value_.__l.__data_;
  storage[1].n128_u64[0] = v10.__r_.__value_.__r.__words[2];
  *storage = result;
  return result;
}

void sub_2725DED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::compare_value(uint64_t a1, double **a2, double **a3)
{
  v3 = *a2;
  v4 = *a3;
  return **a2 == **a3 && v3[2] == v4[2] && v3[3] == v4[3] && v3[4] == v4[4] && v3[5] == v4[5] && v3[6] == v4[6] && v3[7] == v4[7] && v3[8] == v4[8];
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v5 = (*a3)[1];
  v3[2].n128_u64[0] = (*a3)[2].n128_u64[0];
  *v3 = result;
  v3[1] = v5;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v5 = (*a3)[1];
  v3[2].n128_u64[0] = (*a3)[2].n128_u64[0];
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 40, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__9JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4520;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__8JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v10.__r_.__value_.__l.__data_;
  storage[1].n128_u64[0] = v10.__r_.__value_.__r.__words[2];
  *storage = result;
  return result;
}

void sub_2725DF020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__8JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B44D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__7JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v10.__r_.__value_.__l.__data_;
  storage[1].n128_u64[0] = v10.__r_.__value_.__r.__words[2];
  *storage = result;
  return result;
}

void sub_2725DF154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__7JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4490;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__6JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__6JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4448;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__5JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::legacy_cast<vp::vx::Input_Port_Type>(*v4);
  v6 = v5;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v6;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__5JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4400;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__4JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v10.__r_.__value_.__l.__data_;
  storage[1].n128_u64[0] = v10.__r_.__value_.__r.__words[2];
  *storage = result;
  return result;
}

void sub_2725DF490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__4JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B43B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t std::__exception_guard_exceptions<applesauce::CF::StringRef* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &>(__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::unregister_listener(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 16), v1);
    *(result + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v4[0] = &unk_2881B48F8;
    v4[1] = v3;
    v4[2] = a2;
    v4[3] = v4;
    std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](v5, v4);
    v6 = 0;
    operator new();
  }

  return result;
}

void sub_2725DF794(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v9 = v3;
  }

  else
  {
    CFRetain(@"(null)");
    v4 = CFGetTypeID(@"(null)");
    if (v4 == CFStringGetTypeID())
    {
      CFRetain(@"(null)");
      v9 = @"(null)";
      CFRelease(@"(null)");
    }

    else
    {
      CFRelease(@"(null)");
      v9 = 0;
    }
  }

  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v9);
  if ((v6 & 1) == 0)
  {
    v8 = v5;
    v7 = *(v5 + 24);
    *(v8 + 24) = v9;
    v9 = v7;
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = v9;
  if (v9)
  {
LABEL_10:
    CFRelease(v7);
  }
}

void sub_2725DF89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B48F8;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B48F8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B48F8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B48C8;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

int *vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B48C8;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t std::__exception_guard_exceptions<BOOL* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<BOOL> &>(__CFString const*&,vp::vx::data_flow::State<BOOL> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::unregister_listener(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 16), v1);
    *(result + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v4[0] = &unk_2881B4880;
    v4[1] = v3;
    v4[2] = a2;
    v4[3] = v4;
    std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v5, v4);
    v6 = 0;
    operator new();
  }

  return result;
}

void sub_2725DFDC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  v9 = *v3;
  if (!v9)
  {
    CFRetain(@"(null)");
    v4 = CFGetTypeID(@"(null)");
    if (v4 == CFStringGetTypeID())
    {
      CFRetain(@"(null)");
      v9 = @"(null)";
      CFRelease(@"(null)");
    }

    else
    {
      CFRelease(@"(null)");
      v9 = 0;
    }
  }

  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v9);
  if ((v6 & 1) == 0)
  {
    v8 = v5;
    v7 = *(v5 + 24);
    *(v8 + 24) = v9;
    v9 = v7;
    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = v9;
  if (v9)
  {
LABEL_12:
    CFRelease(v7);
  }
}

void sub_2725DFED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B4880;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4880;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4880;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B4850;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

int *vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B4850;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__3JNS3_18Port_Endpoint_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_2725E022C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Port_Endpoint_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__3JNS3_18Port_Endpoint_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4370;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__2JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__2JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4328;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__1JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::legacy_cast<vp::vx::Output_Port_Type>(*v4);
  v6 = v5;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v6;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__1JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B42E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t std::__exception_guard_exceptions<unsigned int* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<unsigned int> &>(__CFString const*&,vp::vx::data_flow::State<unsigned int> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::unregister_listener(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 16), v1);
    *(result + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v4[0] = &unk_2881B4808;
    v4[1] = v3;
    v4[2] = a2;
    v4[3] = v4;
    std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v5, v4);
    v6 = 0;
    operator new();
  }

  return result;
}

void sub_2725E07CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B47C0;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B47C0;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  valuePtr = *a2;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v8);
  if (v4)
  {
    v5 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = v3;
    v5 = *(v3 + 24);
    *(v6 + 24) = v8;
    v8 = v5;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B4808;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4808;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4808;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B4790;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

int *vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B4790;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t std::__exception_guard_exceptions<std::string* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<std::string> &>(__CFString const*&,vp::vx::data_flow::State<std::string> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::unregister_listener(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((result + 16), v1);
    *(result + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v4[0] = &unk_2881B4748;
    v4[1] = v3;
    v4[2] = a2;
    v4[3] = v4;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v5, v4);
    v6 = 0;
    operator new();
  }

  return result;
}

void sub_2725E11A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4700;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4700;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::operator()(uint64_t a1, const UInt8 *a2)
{
  v3 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  v10 = CFStringCreateWithBytes(0, a2, v4, 0x8000100u, 0);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v10);
  if (v6)
  {
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v8 = v5;
    v7 = *(v5 + 24);
    *(v8 + 24) = v10;
    v10 = v7;
    if (!v7)
    {
      return;
    }
  }

  CFRelease(v7);
}

void sub_2725E164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B4748;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4748;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4748;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B46D0;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

int *vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::~Payload_Key_State_T(int *a1)
{
  *a1 = &unk_2881B46D0;
  vp::vx::data_flow::State<void>::~State(a1 + 4);
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__0JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = *&v10.__r_.__value_.__l.__data_;
  storage[1].n128_u64[0] = v10.__r_.__value_.__r.__words[2];
  *storage = result;
  return result;
}

void sub_2725E19C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__0JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4298;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::Audio_Statistics::set_state_owner(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Audio_Statistics::set_state_observer(uint64_t a1, __int128 *a2)
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

void vp::vx::components::Audio_Statistics::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 216);
  *(a1 + 208) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Statistics::~Audio_Statistics(vp::vx::components::Audio_Statistics *this)
{
  vp::vx::components::Audio_Statistics::~Audio_Statistics(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 48);
  v3 = *(this + 49);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 4;
    (*(*v4 + 24))(v4);
  }

  vp::vx::components::Audio_Statistics::stop_route_timer(this);
  vp::vx::components::Audio_Statistics::report_payload(this);
  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Statistics]", 36);
    v8 = v20;
    v9 = v20;
    v10 = __p[1];
    v11 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (v9 >= 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      v13 = __p[0];
      if (v9 >= 0)
      {
        v13 = __p;
      }

      if (v12)
      {
        v14 = " ";
      }

      else
      {
        v14 = "";
      }

      *buf = 136315394;
      v22 = v13;
      v23 = 2080;
      v24 = v14;
      _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v9) = v20;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 104);
  __p[0] = this + 384;
  std::vector<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(this + 328);
  std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(this + 272);
  v15 = *(this + 33);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 31);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(this + 29);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(this + 27);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  vp::Context::~Context((this + 16));
}

void sub_2725E1CFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t **std::vector<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
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
        v3 -= 4;
        std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100](v3);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v7 = v5[3];
    v8 = (v5[2] - v4) >> 5;

    return std::allocator_traits<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>>::deallocate[abi:ne200100](v7, v4, v8);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__deallocate_node(a1, *(a1 + 24));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v2, *(a1 + 8));
  }

  return a1;
}

void vp::Audio_Unit::~Audio_Unit(OpaqueAudioComponentInstance **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (v2)
  {
    if (AudioComponentInstanceDispose(v2))
    {
      v5 = 0;
      memset(v8, 0, sizeof(v8));
      v3 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      v6 = 134217984;
      v7 = 0;
      _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_2724B4000, v3, 16, "assertion failure: AudioComponentInstanceDispose(m_audio_unit) == noErr -> %llu", &v6);
      _os_crash_msg();
      __break(1u);
    }

    *this = 0;
  }
}

void sub_2725E1ED8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *vp::utility::Audio_Unit_Preset::set_parameter(uint64_t *this, unsigned int a2, float a3)
{
  v3 = this[3];
  if (!v3)
  {
LABEL_4:
    operator new();
  }

  while (1)
  {
    v4 = v3;
    if (!*(v3 + 32))
    {
      break;
    }

    v3 = *v3;
    if (!*v4)
    {
      goto LABEL_4;
    }
  }

  v5 = *(v3 + 48);
  if (!v5)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    v6 = v5;
    if (!*(v5 + 8))
    {
      break;
    }

    v5 = *v5;
    if (!*v6)
    {
      goto LABEL_8;
    }
  }

  v7 = v5[6];
  if (!v7)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 7);
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_15;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = *(v8 + 1);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8[8] = a3;
  return this;
}

void sub_2725E20EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E20D4);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],unsigned int const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "type");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2725E21D8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[8],unsigned int const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "subtype");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2725E22AC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],unsigned int const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "manufacturer");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2725E2380(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const(&)[5],applesauce::CF::DataRef,void,0>(applesauce::CF::TypeRef *a1, const void **a2)
{
  result = applesauce::CF::TypeRef::TypeRef(a1, "data");
  v5 = *a2;
  if (v5)
  {
    result = CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return result;
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const(&)[5],applesauce::CF::StringRef const&,void,0>(applesauce::CF::TypeRef *a1, const void **a2)
{
  result = applesauce::CF::TypeRef::TypeRef(a1, "name");
  v5 = *a2;
  if (v5)
  {
    result = CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return result;
}

void std::__copy_impl::operator()[abi:ne200100]<unsigned char const*,unsigned char const*,std::back_insert_iterator<std::vector<unsigned char>>>(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = &v6[-*a3];
        v10 = (v9 + 1);
        if ((v9 + 1) < 0)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          operator new();
        }

        v13 = &v6[-*a3];
        *v9 = *v5;
        v6 = v9 + 1;
        memcpy(0, v8, v13);
        *a3 = 0;
        *(a3 + 8) = v9 + 1;
        *(a3 + 16) = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,float>>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,float>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,float>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,float>>>>::destroy(a1[1]);
    std::__tree<unsigned int>::destroy(a1[6]);

    operator delete(a1);
  }
}

const void *applesauce::CF::details::at_key<char const(&)[5]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_2725E26C0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E2670);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[8]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_2725E27D8(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E2784);
}

void vp::utility::encode_to_base_64(vp::utility *this, const unsigned __int8 *a2, uint64_t a3)
{
  memset(&v21, 0, sizeof(v21));
  if (!a3)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v4 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = &a2[a3];
  while (v4 != v8)
  {
LABEL_6:
    LOBYTE(v9) = 0;
    v10 = 6;
    v11 = v5;
    do
    {
      if (!v6)
      {
        if (v7)
        {
          v5 = 0;
          v11 = 0;
          v6 = v10;
        }

        else
        {
          v12 = *v4++;
          v5 = v12;
          v6 = 8;
          v11 = v12;
        }
      }

      v13 = v6;
      if (v6 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v6;
      }

      v6 -= v14;
      v9 = (v9 << v14) | (v11 >> v6) & ~(-1 << v14);
      v15 = v10 > v13;
      v10 -= v14;
    }

    while (v15);
    if ((v9 & 0xC0) != 0)
    {
      __assert_rtn("operator()", "base64_from_binary.hpp", 49, "t < 64");
    }

    std::string::push_back(&v21, aAbcdefghijklmn[v9 & 0x3F]);
  }

  if (v6)
  {
    v7 = 1;
    goto LABEL_6;
  }

  while (1)
  {
    v16 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    v17 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v21.__r_.__value_.__s.__data_[8];
    }

    if ((v16 & 3) == 0)
    {
      break;
    }

    std::string::push_back(&v21, 61);
  }

  v18 = v21.__r_.__value_.__r.__words[0];
LABEL_23:
  size = v21.__r_.__value_.__l.__size_;
  v20 = *(&v21.__r_.__value_.__r.__words[1] + 7);
  *this = v18;
  *(this + 1) = size;
  *(this + 15) = v20;
  *(this + 23) = v17;
  *(this + 24) = 1;
}

void sub_2725E299C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  *v15 = 0;
  v15[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x2725E295CLL);
}

void boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_2881B4A18;
  exception[2] = *(a1 + 8);
}

char *boost::archive::iterators::dataflow_exception::what(boost::archive::iterators::dataflow_exception *this)
{
  v1 = *(this + 2);
  if (v1 >= 5)
  {
    __assert_rtn("what", "dataflow_exception.hpp", 69, "false");
  }

  return off_279E4A150[v1];
}

void boost::archive::iterators::dataflow_exception::~dataflow_exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

void *std::unique_ptr<vp::vx::database::Cache,vp::Allocator_Delete<vp::vx::database::Cache>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>::reset[abi:ne200100]((v2 + 24), 0);
    cache_destroy(*(v2 + 16));
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void (****std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
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

uint64_t std::__exception_guard_exceptions<vp::vx::database::Cache * std::pmr::polymorphic_allocator<vp::vx::database::Cache>::new_object[abi:ne200100]<vp::vx::database::Cache,std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>,vp::Allocator<std::byte> &>(std::unique_ptr<vp::vx::Configuration_Database,vp::Allocator_Delete<vp::vx::Configuration_Database>>,vp::Allocator<std::byte> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 64, 8);
  }

  return a1;
}

uint64_t vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::release(uint64_t result, uint64_t a2)
{
  v2 = *(result + 3104) - 1;
  *(result + 3104) = v2;
  if (!v2)
  {
    v4 = result;
    vp::vx::database::Cache::Entry::~Entry((result + 144));
    v5 = *(v4 + 72);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(v4 + 32);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(*a2 + 24);

    return v7(a2, v4, 3112, 8);
  }

  return result;
}

void vp::vx::database::Cache::Entry::~Entry(vp::vx::database::Cache::Entry *this)
{
  for (i = 0; i != -736; i -= 184)
  {
    v3 = (this + i);
    if (*(this + i + 2952) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v3 + 364);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v3 + 359);
    }
  }

  for (j = 0; j != -800; j -= 200)
  {
    v5 = this + j;
    if (*(this + j + 2216) == 1)
    {
      v12 = (v5 + 2184);
      std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v12);
      v6 = *(v5 + 270);
      if (v6)
      {
        *(this + j + 2168) = v6;
        operator delete(v6);
      }

      v12 = (this + j + 2136);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      v12 = (this + j + 2112);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      v12 = (this + j + 2088);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + j + 2048);
      if (*(this + j + 2047) < 0)
      {
        operator delete(*(v5 + 253));
      }
    }
  }

  for (k = 0; k != -552; k -= 184)
  {
    v8 = (this + k);
    if (*(this + k + 1384) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v8 + 168);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v8 + 163);
    }
  }

  v9 = 600;
  do
  {
    v10 = this + v9;
    if (*(this + v9 + 232) == 1)
    {
      v12 = (v10 + 200);
      std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v12);
      v11 = *(v10 + 22);
      if (v11)
      {
        *(this + v9 + 184) = v11;
        operator delete(v11);
      }

      v12 = (this + v9 + 152);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      v12 = (this + v9 + 128);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      v12 = (this + v9 + 104);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + v9 + 64);
      if (*(this + v9 + 63) < 0)
      {
        operator delete(*(v10 + 5));
      }
    }

    v9 -= 200;
  }

  while (v9);
  if (*(this + 232) == 1)
  {
    std::__tree<unsigned int>::destroy(*(this + 24));
  }

  if (*(this + 112) == 1)
  {
    if (*(this + 10))
    {
      boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(this + 7, *(this + 8));
    }

    if (*(this + 5))
    {
      boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(this + 2, *(this + 3));
    }
  }
}

void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;
        std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

BOOL vp::vx::Configuration_Context::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 32), (a2 + 32)) == kCFCompareEqualTo && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64) && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 72), (a2 + 72)) == kCFCompareEqualTo && *(a1 + 80) == *(a2 + 80) && *(a1 + 81) == *(a2 + 81) && *(a1 + 82) == *(a2 + 82) && *(a1 + 83) == *(a2 + 83) && *(a1 + 84) == *(a2 + 84) && *(a1 + 85) == *(a2 + 85) && *(a1 + 86) == *(a2 + 86) && *(a1 + 88) == *(a2 + 88) && *(a1 + 92) == *(a2 + 92) && *(a1 + 96) == *(a2 + 96) && *(a1 + 100) == *(a2 + 100) && *(a1 + 104) == *(a2 + 104) && *(a1 + 108) == *(a2 + 108) && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128) && *(a1 + 129) == *(a2 + 129) && *(a1 + 130) == *(a2 + 130) && *(a1 + 131) == *(a2 + 131) && *(a1 + 132) == *(a2 + 132) && *(a1 + 136) == *(a2 + 136) && *(a1 + 137) == *(a2 + 137))
  {
    return *(a1 + 140) == *(a2 + 140);
  }

  return 0;
}

unint64_t vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::Cache(char const*,std::pmr::memory_resource *)::{lambda(void *,void *)#1}::__invoke(unsigned int *a1)
{
  v2 = a1[5];
  v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[1]) ^ ((0xC6A4A7935BD1E995 * a1[1]) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a1) ^ ((0xC6A4A7935BD1E995 * *a1) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[2]) ^ ((0xC6A4A7935BD1E995 * a1[2]) >> 47)))) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[3]) ^ ((0xC6A4A7935BD1E995 * a1[3]) >> 47)))) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[4]) ^ ((0xC6A4A7935BD1E995 * a1[4]) >> 47)))) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v2) ^ ((0xC6A4A7935BD1E995 * v2) >> 47)))) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[6]) ^ ((0xC6A4A7935BD1E995 * a1[6]) >> 47)))) + 3864292196u;
  v4 = std::hash<applesauce::CF::StringRef>::operator()(*(a1 + 4));
  v5 = a1[15];
  v6 = 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * (v3 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[10]) ^ ((0xC6A4A7935BD1E995 * a1[10]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[11]) ^ ((0xC6A4A7935BD1E995 * a1[11]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[12]) ^ ((0xC6A4A7935BD1E995 * a1[12]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 52)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 52)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[14]) ^ ((0xC6A4A7935BD1E995 * a1[14]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[16]) ^ ((0xC6A4A7935BD1E995 * a1[16]) >> 47))));
  v7 = std::hash<applesauce::CF::StringRef>::operator()(*(a1 + 9));
  v8 = 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * (v6 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 80)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 80)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 81)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 81)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 82)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 82)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 83)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 83)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 84)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 84)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 85)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 85)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 86)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 86)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[22]) ^ ((0xC6A4A7935BD1E995 * a1[22]) >> 47))));
  v9 = a1[27];
  v10 = 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * (v8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[23]) ^ ((0xC6A4A7935BD1E995 * a1[23]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[24]) ^ ((0xC6A4A7935BD1E995 * a1[24]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[25]) ^ ((0xC6A4A7935BD1E995 * a1[25]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[26]) ^ ((0xC6A4A7935BD1E995 * a1[26]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9) ^ ((0xC6A4A7935BD1E995 * v9) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[28]) ^ ((0xC6A4A7935BD1E995 * a1[28]) >> 47))));
  v11 = 0xC6A4A7935BD1E995 * *(a1 + 15);
  if (*(a1 + 15) == 0.0)
  {
    v11 = 0;
  }

  return 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * (v10 ^ (0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 128)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 128)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 129)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 129)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 130)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 130)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 131)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 131)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[33]) ^ ((0xC6A4A7935BD1E995 * a1[33]) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 136)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 136)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 137)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 137)) >> 47))))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a1[35]) ^ ((0xC6A4A7935BD1E995 * a1[35]) >> 47))));
}

uint64_t vp::vx::database::Cache::get_configuration_options(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v5 = 0;
  v7[0] = &v5;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = &v6;
  v7[4] = a4;
  v8[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v8[1] = v7;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>((a1 + 8), a2, v8);
  return v5;
}

{
  v6 = a3;
  v5 = 0;
  v7[0] = &v5;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = &v6;
  v7[4] = a4;
  v8[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v8[1] = v7;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>((a1 + 8), a2, v8);
  return v5;
}

void sub_2725E3760(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E3750);
}

void vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>(cache_t **a1, __int128 *a2, void (**a3)(uint64_t, char *))
{
  value_out = 0;
  cache_get_and_retain(a1[1], a2, &value_out);
  if (value_out)
  {
    v30[0].__ptr_ = 0;
    (*a3)((a3 + 1), value_out + 144);
    cache_release_value(a1[1], value_out);
    std::exception_ptr::~exception_ptr(v30);
  }

  else
  {
    bzero(v30, 0xB90uLL);
    for (i = 0; i != 75; i += 25)
    {
      v7 = &v30[i];
      LOBYTE(v7[30].__ptr_) = 0;
      LOBYTE(v7[54].__ptr_) = 0;
    }

    for (j = 0; j != 69; j += 23)
    {
      v9 = &v30[j];
      LOBYTE(v9[105].__ptr_) = 0;
      LOBYTE(v9[127].__ptr_) = 0;
    }

    v10 = 0;
    v44[0] = 0;
    v44[24] = 0;
    do
    {
      v11 = &v30[v10];
      LOBYTE(v11[178].__ptr_) = 0;
      LOBYTE(v11[202].__ptr_) = 0;
      v10 += 25;
    }

    while (v10 != 100);
    for (k = 0; k != 92; k += 23)
    {
      v13 = &v30[k];
      LOBYTE(v13[278].__ptr_) = 0;
      LOBYTE(v13[300].__ptr_) = 0;
    }

    (*a3)((a3 + 1), v30);
    v14 = (*(**a1 + 16))(*a1, 3112, 8);
    v15 = *a2;
    *(v14 + 12) = *(a2 + 12);
    *v14 = v15;
    v16 = *(a2 + 4);
    if (v16)
    {
      CFRetain(*(a2 + 4));
    }

    *(v14 + 4) = v16;
    v17 = *(a2 + 40);
    *(v14 + 52) = *(a2 + 52);
    *(v14 + 40) = v17;
    v18 = *(a2 + 9);
    if (v18)
    {
      CFRetain(*(a2 + 9));
    }

    *(v14 + 9) = v18;
    v19 = a2[5];
    v20 = a2[6];
    v21 = a2[7];
    v22 = a2[8];
    v14[144] = 0;
    *(v14 + 7) = v21;
    *(v14 + 8) = v22;
    *(v14 + 5) = v19;
    *(v14 + 6) = v20;
    v14[256] = 0;
    if (v34 == 1)
    {
      *(v14 + 9) = *&v30[0].__ptr_;
      *(v14 + 20) = v31[0];
      *(v14 + 21) = v14 + 192;
      *(v14 + 11) = xmmword_2727565D0;
      boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(v14 + 160, v31);
      *(v14 + 25) = v32[0];
      *(v14 + 26) = v14 + 232;
      *(v14 + 216) = xmmword_2727565D0;
      boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(v14 + 200, v32);
      *(v14 + 30) = v32[5];
      *(v14 + 62) = v33;
      v14[256] = 1;
    }

    v14[264] = 0;
    v14[376] = 0;
    if (v43 == 1)
    {
      v23 = v36;
      *(v14 + 264) = v35;
      *(v14 + 280) = v23;
      *(v14 + 296) = v37[0];
      *(v14 + 305) = *(v37 + 9);
      v24 = v14 + 336;
      v25 = v39;
      *(v14 + 41) = v38;
      *(v14 + 42) = v25;
      v26 = v40;
      *(v14 + 43) = v40;
      if (v26)
      {
        *(v25 + 16) = v24;
        v38 = &v39;
        v39 = 0;
        v40 = 0;
      }

      else
      {
        *(v14 + 41) = v24;
      }

      *(v14 + 22) = v41;
      v14[368] = v42;
      v14[376] = 1;
    }

    for (m = 48; m != 123; m += 25)
    {
      std::optional<vp::vx::DSP_Node_Configuration>::optional[abi:ne200100](&v14[m * 8], &v30[m - 18]);
    }

    for (n = 105; n != 174; n += 23)
    {
      std::__optional_move_base<vp::vx::DSP_Node_Configuration_Options,false>::__optional_move_base[abi:ne200100](&v14[n * 8 + 144], &v30[n]);
    }

    *(v14 + 96) = *v44;
    *(v14 + 1548) = *&v44[12];
    for (ii = 178; ii != 278; ii += 25)
    {
      std::optional<vp::vx::DSP_Node_Configuration>::optional[abi:ne200100](&v14[ii * 8 + 144], &v30[ii]);
    }

    do
    {
      std::__optional_move_base<vp::vx::DSP_Node_Configuration_Options,false>::__optional_move_base[abi:ne200100](&v14[ii * 8 + 144], &v30[ii]);
      ii += 23;
    }

    while (ii != 370);
    *(v14 + 776) = 0;
    if (!cache_set_and_retain(a1[1], v14, v14, 0))
    {
      cache_release_value(a1[1], v14);
    }

    vp::vx::database::Cache::Entry::~Entry(v30);
  }
}

void sub_2725E3B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  std::exception_ptr::~exception_ptr((v12 - 88));
  std::exception_ptr::~exception_ptr(&a12);
  _Unwind_Resume(a1);
}

char *boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(char *result, uint64_t a2)
{
  v4 = (a2 + 8);
  v3 = *(a2 + 8);
  if (v4 + 3 == v3)
  {
    result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::move_iterator<vp::vx::Chat_Flavor*>>(result, v3, &v3[4 * *(a2 + 16)]);
    *(a2 + 16) = 0;
  }

  else
  {
    *(result + 1) = v3;
    *(result + 1) = *(a2 + 16);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  return result;
}

uint64_t std::optional<vp::vx::DSP_Node_Configuration>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(a1 + 24, a2 + 3);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    *(a2 + 16) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 19);
    *(a2 + 17) = 0;
    *(a2 + 18) = 0;
    *(a2 + 19) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    *(a2 + 20) = 0;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = 1;
  }

  return a1;
}

uint64_t std::__optional_move_base<vp::vx::DSP_Node_Configuration_Options,false>::__optional_move_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 48) = v6;
    *(a1 + 64) = v7;
    *(a1 + 32) = v5;
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(a1 + 96, (a2 + 96));
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(a1 + 136, (a2 + 136));
    *(a1 + 176) = 1;
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

char *boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::move_iterator<vp::vx::Chat_Flavor*>>(char *result, char *__src, char *a3)
{
  v4 = __src;
  v5 = result;
  v6 = a3 - __src;
  v7 = (a3 - __src) >> 2;
  if (v7 <= *(result + 3))
  {
    v12 = *(result + 1);
    v13 = *(result + 2);
    if (v7 <= v13)
    {
      if (a3 == __src)
      {
LABEL_15:
        *(v5 + 2) = v7;
        return result;
      }
    }

    else
    {
      if (v13)
      {
        memmove(*(result + 1), __src, 4 * v13);
        v4 += 4 * v13;
        v12 += 4 * v13;
      }

      v6 = 4 * (v7 - v13);
    }

    result = memmove(v12, v4, v6);
    goto LABEL_15;
  }

  if (v7 >> 62)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", __src);
  }

  result = (*(**result + 16))();
  v8 = result;
  v9 = *(v5 + 1);
  if (v9)
  {
    *(v5 + 2) = 0;
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v5, v9);
  }

  v10 = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = v7;
  *(v5 + 1) = v8;
  if (!v4 || a3 == v4)
  {
    v11 = v8;
  }

  else
  {
    result = memmove(v8, v4, v6);
    v11 = &v8[v6];
    v10 = *(v5 + 2);
  }

  *(v5 + 2) = v10 + ((v11 - v8) >> 2);
  return result;
}

void caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 32);
  v4 = a2 + 184 * **(*result + 24);
  v5 = v4 + 2224;
  if (*(v4 + 2400) == 1)
  {
    v6 = *(v4 + 2240);
    *v3 = *v5;
    *(v3 + 16) = v6;
    v7 = *(v4 + 2256);
    v8 = *(v4 + 2272);
    v9 = *(v4 + 2288);
    *(v3 + 73) = *(v4 + 2297);
    *(v3 + 48) = v8;
    *(v3 + 64) = v9;
    *(v3 + 32) = v7;
    if (v3 != v5)
    {
      *(v3 + 128) = *(v4 + 2352);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>((v3 + 96), *(v4 + 2336));
      *(v3 + 168) = *(v5 + 168);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>((v3 + 136), *(v5 + 152));
    }
  }

  else
  {
    v10 = *(*(v2 + 8) + 24);
    if (!v10 || !(*(*v10 + 72))(v10, *(v2 + 16)))
    {
      v11 = 0;
      goto LABEL_9;
    }

    std::optional<vp::vx::DSP_Node_Configuration_Options>::operator=[abi:ne200100]<vp::vx::DSP_Node_Configuration_Options&,void>(v5, v3);
  }

  v11 = 1;
LABEL_9:
  **v2 = v11;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        *(v6 + 10) = *(v2 + 10);
        v8 = *v6;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

uint64_t std::optional<vp::vx::DSP_Node_Configuration_Options>::operator=[abi:ne200100]<vp::vx::DSP_Node_Configuration_Options&,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v7 = *(a2 + 48);
  v6 = *(a2 + 64);
  v8 = *(a2 + 32);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v7;
  *(a1 + 64) = v6;
  *(a1 + 32) = v8;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      *(a1 + 128) = *(a2 + 128);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>((a1 + 96), *(a2 + 112));
      *(a1 + 168) = *(a2 + 168);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>((a1 + 136), *(a2 + 152));
    }
  }

  else
  {
    std::unordered_map<std::string,unsigned int>::unordered_map(a1 + 96, a2 + 96);
    std::unordered_map<std::string,unsigned int>::unordered_map(a1 + 136, a2 + 136);
    *(a1 + 176) = 1;
  }

  return a1;
}

uint64_t std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
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

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
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

uint64_t vp::vx::database::Cache::get_configuration(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v5 = 0;
  v7[0] = &v5;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = &v6;
  v7[4] = a4;
  v8[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v8[1] = v7;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>((a1 + 8), a2, v8);
  return v5;
}

{
  v6 = a3;
  v5 = 0;
  v7[0] = &v5;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = &v6;
  v7[4] = a4;
  v8[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v8[1] = v7;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>((a1 + 8), a2, v8);
  return v5;
}

void sub_2725E45BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E45ACLL);
}

uint64_t caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = a2 + 200 * **(*a1 + 24);
  if (*(v4 + 1616) == 1)
  {
    result = vp::vx::DSP_Node_Configuration::operator=(*(*a1 + 32), v4 + 1424);
  }

  else
  {
    result = *(*(v2 + 8) + 24);
    if (!result || (result = (*(*result + 64))(result, *(v2 + 16)), !result))
    {
      v6 = 0;
      goto LABEL_8;
    }

    result = std::optional<vp::vx::DSP_Node_Configuration>::operator=[abi:ne200100]<vp::vx::DSP_Node_Configuration&,void>((v4 + 1424), v3);
  }

  v6 = 1;
LABEL_8:
  **v2 = v6;
  return result;
}

uint64_t vp::vx::DSP_Node_Configuration::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (a1 != a2)
  {
    *(a1 + 56) = *(a2 + 56);
    v4 = *(a2 + 40);
    v5 = *(a1 + 32);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(a1 + 24) + 8 * i) = 0;
      }

      v7 = *(a1 + 40);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      if (v7)
      {
        v8 = v4 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = v7;
      }

      else
      {
        do
        {
          std::string::operator=((v7 + 2), (v4 + 2));
          std::string::operator=((v7 + 5), (v4 + 5));
          v9 = *v7;
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(a1 + 24, v7);
          v4 = *v4;
          if (!v9)
          {
            break;
          }

          v7 = v9;
        }

        while (v4);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v9);
    }

    if (v4)
    {
      operator new();
    }

    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(a1 + 64, *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(a1 + 88, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(a1 + 112, *(a2 + 112), *(a2 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 120) - *(a2 + 112)) >> 3));
    v10 = *(a1 + 136);
    v11 = *(a2 + 136);
    v12 = *(a2 + 144);
    v13 = v12 - v11;
    v14 = *(a1 + 152);
    if (v14 - v10 < (v12 - v11))
    {
      v15 = v13 >> 3;
      if (v10)
      {
        *(a1 + 144) = v10;
        operator delete(v10);
        v14 = 0;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
      }

      if (!(v15 >> 61))
      {
        v16 = v14 >> 2;
        if (v14 >> 2 <= v15)
        {
          v16 = v15;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        std::vector<std::pair<unsigned int,float>>::__vallocate[abi:ne200100]((a1 + 136), v17);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v18 = *(a1 + 144);
    if (v18 - v10 >= v13)
    {
      while (v11 != v12)
      {
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v11 += 8;
        v10 += 8;
      }

      *(a1 + 144) = v10;
    }

    else
    {
      if (v18 != v10)
      {
        v19 = &v11[v18 - v10];
        do
        {
          *v10 = *v11;
          *(v10 + 1) = *(v11 + 1);
          v11 += 8;
          v10 += 8;
        }

        while (v11 != v19);
        v11 = v19;
      }

      while (v11 != v12)
      {
        *v18 = *v11;
        *(v18 + 1) = *(v11 + 1);
        v11 += 8;
        v18 += 8;
      }

      *(a1 + 144) = v18;
    }

    v20 = (a1 + 160);
    v21 = *(a1 + 160);
    v23 = *(a2 + 160);
    v22 = *(a2 + 168);
    v24 = v22 - v23;
    v25 = *(a1 + 176);
    if (v25 - v21 < (v22 - v23))
    {
      v26 = v24 >> 4;
      if (v21)
      {
        v27 = *(a1 + 168);
        v28 = *(a1 + 160);
        if (v27 != v21)
        {
          do
          {
            v29 = v27 - 16;
            std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,0>(*(v27 - 8));
            v27 = v29;
          }

          while (v29 != v21);
          v28 = *v20;
        }

        *(a1 + 168) = v21;
        operator delete(v28);
        v25 = 0;
        *v20 = 0;
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
      }

      if (!(v26 >> 60))
      {
        v30 = v25 >> 3;
        if (v25 >> 3 <= v26)
        {
          v30 = v26;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF0)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__vallocate[abi:ne200100]((a1 + 160), v31);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v32 = *(a1 + 168) - v21;
    if (v32 >= v24)
    {
      std::__copy_impl::operator()[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef> *,std::tuple<unsigned int,applesauce::CF::DictionaryRef> *,std::tuple<unsigned int,applesauce::CF::DictionaryRef> *>(*(a2 + 160), *(a2 + 168), *(a1 + 160));
      v38 = v37;
      v39 = *(a1 + 168);
      if (v39 != v37)
      {
        do
        {
          v40 = v39 - 16;
          std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,0>(*(v39 - 8));
          v39 = v40;
        }

        while (v40 != v38);
      }

      *(a1 + 168) = v38;
    }

    else
    {
      v33 = std::__copy_impl::operator()[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef> *,std::tuple<unsigned int,applesauce::CF::DictionaryRef> *,std::tuple<unsigned int,applesauce::CF::DictionaryRef> *>(*(a2 + 160), v23 + v32, *(a1 + 160));
      v34 = *(a1 + 168);
      if (v22 != v33)
      {
        v35 = v33;
        v36 = *(a1 + 168);
        do
        {
          *v36 = *v35;
          v36 += 4;
          std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::DictionaryRef&,0>(v34 + 1, *(v35 + 8));
          v35 += 16;
          v34 = v36;
        }

        while (v35 != v22);
      }

      *(a1 + 168) = v34;
    }
  }

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

void sub_2725E4AC4(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void sub_2725E4ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::optional<vp::vx::DSP_Node_Configuration>::operator=[abi:ne200100]<vp::vx::DSP_Node_Configuration&,void>(std::string *a1, const vp::vx::DSP_Node_Configuration *a2)
{
  if (a1[8].__r_.__value_.__s.__data_[0] == 1)
  {
    return vp::vx::DSP_Node_Configuration::operator=(a1, a2);
  }

  result = vp::vx::DSP_Node_Configuration::DSP_Node_Configuration(a1, a2);
  result[8].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

std::string *vp::vx::DSP_Node_Configuration::DSP_Node_Configuration(std::string *this, const vp::vx::DSP_Node_Configuration *a2)
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

  std::unordered_map<std::string,std::string>::unordered_map(&this[1], a2 + 24);
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(&this[2].__r_.__value_.__r.__words[2], *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(&this[3].__r_.__value_.__r.__words[2], *(a2 + 11), *(a2 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 12) - *(a2 + 11)) >> 3));
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(&this[4].__r_.__value_.__r.__words[2], *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  v5 = *(a2 + 17);
  v6 = *(a2 + 18);
  if (v6 != v5)
  {
    std::vector<std::pair<unsigned int,float>>::__vallocate[abi:ne200100](&this[5].__r_.__value_.__r.__words[2], (v6 - v5) >> 3);
  }

  this[6].__r_.__value_.__r.__words[2] = 0;
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  v7 = *(a2 + 20);
  v8 = *(a2 + 21);
  if (v8 != v7)
  {
    std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__vallocate[abi:ne200100](&this[6].__r_.__value_.__r.__words[2], (v8 - v7) >> 4);
  }

  this[7].__r_.__value_.__s.__data_[16] = *(a2 + 184);
  return this;
}

void sub_2725E4CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 144) = v12;
    operator delete(v12);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v9 + 24);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
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

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t *std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725E5068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

void *std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::DictionaryRef&,0>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*,std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

void sub_2725E52D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<std::string>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v9++, v6++);
      }

      while (v6 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v9)
    {
      v16 = SHIBYTE(v13[-1].__r_.__value_.__r.__words[2]);
      --v13;
      if (v16 < 0)
      {
        operator delete(v13->__r_.__value_.__l.__data_);
      }
    }

    *(a1 + 8) = v9;
  }

  else
  {
    if (v13 == v9)
    {
      v15 = __str;
    }

    else
    {
      v15 = (__str + v14);
      do
      {
        std::string::operator=(v9++, v6++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*,std::__fs::filesystem::path*,std::__fs::filesystem::path*>(a1, v15, a3, v13);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef> *,std::tuple<unsigned int,applesauce::CF::DictionaryRef> *,std::tuple<unsigned int,applesauce::CF::DictionaryRef> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      *a3 = *v4;
      v6 = *(a3 + 8);
      v7 = *(v4 + 8);
      *(a3 + 8) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v4 += 16;
      a3 += 16;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void sub_2725E5A14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E5A04);
}

void caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = a2 + 184 * **(*a1 + 24);
  v5 = v4 + 840;
  if (*(v4 + 1016) == 1)
  {
    v6 = *(v4 + 856);
    *v3 = *v5;
    *(v3 + 16) = v6;
    v7 = *(v4 + 872);
    v8 = *(v4 + 888);
    v9 = *(v4 + 904);
    *(v3 + 73) = *(v4 + 913);
    *(v3 + 48) = v8;
    *(v3 + 64) = v9;
    *(v3 + 32) = v7;
    if (v3 != v5)
    {
      *(v3 + 128) = *(v4 + 968);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>((v3 + 96), *(v4 + 952));
      *(v3 + 168) = *(v5 + 168);
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>((v3 + 136), *(v5 + 152));
    }
  }

  else
  {
    v10 = *(*(v2 + 8) + 24);
    if (!v10 || !(*(*v10 + 56))(v10, *(v2 + 16)))
    {
      v11 = 0;
      goto LABEL_9;
    }

    std::optional<vp::vx::DSP_Node_Configuration_Options>::operator=[abi:ne200100]<vp::vx::DSP_Node_Configuration_Options&,void>(v5, v3);
  }

  v11 = 1;
LABEL_9:
  **v2 = v11;
}

void sub_2725E5B7C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E5B6CLL);
}

uint64_t caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (a2 + 200 * **(*a1 + 24));
  if (v4[18].__r_.__value_.__s.__data_[0] == 1)
  {
    result = vp::vx::DSP_Node_Configuration::operator=(*(*a1 + 32), &v4[10]);
  }

  else
  {
    result = *(*(v2 + 8) + 24);
    if (!result || (result = (*(*result + 48))(result, *(v2 + 16)), !result))
    {
      v6 = 0;
      goto LABEL_8;
    }

    result = std::optional<vp::vx::DSP_Node_Configuration>::operator=[abi:ne200100]<vp::vx::DSP_Node_Configuration&,void>(v4 + 10, v3);
  }

  v6 = 1;
LABEL_8:
  **v2 = v6;
  return result;
}

uint64_t vp::vx::database::Cache::get_configuration(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = a3;
  v6[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v6[1] = v5;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>((a1 + 8), a2, v6);
  return v4;
}

{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = a3;
  v6[0] = caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>;
  v6[1] = v5;
  vp::containers::Cache<vp::vx::Configuration_Context,vp::vx::database::Cache::Entry,vp::vx::Configuration_Context_Hash,std::equal_to<vp::vx::Configuration_Context>>::read_default<>((a1 + 8), a2, v6);
  return v4;
}

void sub_2725E5C90(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E5C80);
}

uint64_t *caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = (a2 + 1392);
  v4 = *(*result + 24);
  if (*(a2 + 1416) == 1)
  {
    v5 = *v3;
    *(v4 + 2) = *(a2 + 1408);
    *v4 = v5;
    v6 = 1;
  }

  else
  {
    result = *(*(v2 + 8) + 24);
    if (result && (result = (*(*result + 40))(result, *(v2 + 16), v4), result))
    {
      v8 = *(a2 + 1416);
      v9 = *(v4 + 2);
      *v3 = *v4;
      *(v3 + 2) = v9;
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        *(a2 + 1416) = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  **v2 = v6;
  return result;
}

void sub_2725E5DB4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725E5DA4);
}

void caulk::function_ref<void ()(vp::vx::database::Cache::Entry &)>::functor_invoker<vp::vx::database::Cache::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_Configuration &)::{lambda(void)#1}::operator() const(void)::{lambda(vp::vx::database::Cache::Entry &)#1}>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = (a2 + 120);
  v5 = *(*result + 24);
  if (*(a2 + 232) == 1)
  {
    v6 = *v4;
    v7 = *(a2 + 136);
    v8 = *(a2 + 152);
    *(v5 + 41) = *(a2 + 161);
    v5[1] = v7;
    v5[2] = v8;
    *v5 = v6;
    if (v5 != v4)
    {
      std::__tree<std::__value_type<double,int>,std::__map_value_compare<double,std::__value_type<double,int>,std::less<double>,true>,std::allocator<std::__value_type<double,int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>((v5 + 4), *(a2 + 184), (a2 + 192));
    }

    v9 = *(a2 + 208);
    *(v5 + 104) = *(a2 + 224);
    *(v5 + 88) = v9;
  }

  else
  {
    v11 = *(*(v3 + 8) + 24);
    if (!v11 || !(*(*v11 + 32))(v11, *(v3 + 16), v5))
    {
      v10 = 0;
      goto LABEL_13;
    }

    v12 = *(a2 + 232);
    v14 = v5[1];
    v13 = v5[2];
    v15 = *v5;
    *(v4 + 41) = *(v5 + 41);
    v4[1] = v14;
    v4[2] = v13;
    *v4 = v15;
    if (v12 != 1)
    {
      std::map<double,int>::map[abi:ne200100]((a2 + 184), v5 + 8);
      v17 = *(v5 + 88);
      *(a2 + 224) = *(v5 + 104);
      *(a2 + 208) = v17;
      v10 = 1;
      *(a2 + 232) = 1;
      goto LABEL_13;
    }

    if (v4 != v5)
    {
      std::__tree<std::__value_type<double,int>,std::__map_value_compare<double,std::__value_type<double,int>,std::less<double>,true>,std::allocator<std::__value_type<double,int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>(a2 + 184, *(v5 + 8), v5 + 9);
    }

    v16 = *(v5 + 88);
    *(a2 + 224) = *(v5 + 104);
    *(a2 + 208) = v16;
  }

  v10 = 1;
LABEL_13:
  **v3 = v10;
}

void std::__tree<std::__value_type<double,int>,std::__map_value_compare<double,std::__value_type<double,int>,std::less<double>,true>,std::allocator<std::__value_type<double,int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<double,int>,std::__tree_node<std::__value_type<double,int>,void *> *,long>>(uint64_t a1, double *a2, double *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<unsigned int>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<double,int>,std::__map_value_compare<double,std::__value_type<double,int>,std::less<double>,true>,std::allocator<std::__value_type<double,int>>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = v13[4];
      *(v9 + 32) = v14;
      *(v9 + 40) = *(v13 + 10);
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= *(v15 + 4))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<double,int>,std::__map_value_compare<double,std::__value_type<double,int>,std::less<double>,true>,std::allocator<std::__value_type<double,int>>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = *(v13 + 1);
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = *(v13 + 2);
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<unsigned int>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}