void ___ZN11HALS_Device32_UpdateClientVolumeScalarDuckingEdd_block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 296))(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void sub_1DE6FAA44(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FAA24);
}

uint64_t HALS_Device::_IsClientOptedOutForDucking(HALS_Device *this, int a2)
{
  v2 = *(this + 68);
  v3 = *(this + 69);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      v2 += 48;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_7:
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 44);
  }

  return v4 & 1;
}

uint64_t HALS_Device::_DuckClientOptOut(HALS_Device *this, HALS_ObjectMap *a2, _BOOL4 a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(this + 68);
  v7 = *(this + 69);
  if (v6 != v7)
  {
    while (*v6 != a2)
    {
      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_9:
    HALS_Device::AppendDuckHistory(this, a2, -1.0, a3);
    v11 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 240);
    }

    else
    {
      v13 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = (*(*this + 224))(this);
      v16 = *(this + 4);
      v17 = "in for";
      v33 = 136316674;
      *v34 = "HALS_Device.cpp";
      *&v34[8] = 1024;
      if (a3)
      {
        v17 = "out for";
      }

      *&v34[10] = 2176;
      v35 = 1024;
      v36 = a2;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = v13;
      HIWORD(v37) = 2080;
      *v38 = v17;
      *&v38[8] = 2080;
      *&v38[10] = v15;
      v39 = 1024;
      v40 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientOptOut: client %u (pid %d) is opting %s ducking on device %s (%u) ", &v33, 0x38u);
    }

    v18 = *(this + 69);
    v33 = a2;
    *&v34[4] = 0;
    *&v34[12] = 1;
    __asm { FMOV            V0.2S, #1.0 }

    v37 = _D0;
    v38[0] = 0;
    *&v38[4] = _D0;
    v38[12] = a3;
    std::vector<HALS_Device::ClientInfo>::insert(this + 68, v18, &v33);
    CACFDictionary::~CACFDictionary(&v34[4]);
    HALS_ObjectMap::ReleaseObject(v12, v24);
  }

  else
  {
    HALS_Device::AppendDuckHistory(this, a2, *(v6 + 36), a3);
    v8 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v9 = v8;
    if (a3)
    {
      if (v8)
      {
        v10 = *(v8 + 240);
      }

      else
      {
        v10 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v25 = (*(*this + 224))(this);
        v26 = *(this + 4);
        v33 = 136316674;
        *v34 = "HALS_Device.cpp";
        *&v34[8] = 1024;
        *&v34[10] = 2145;
        v35 = 1024;
        v36 = a2;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = v10;
        HIWORD(v37) = 2080;
        *v38 = "out for";
        *&v38[8] = 2080;
        *&v38[10] = v25;
        v39 = 1024;
        v40 = v26;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientOptOut: client %u (pid %d) is opting %s ducking on device %s (%u) ", &v33, 0x38u);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v6 + 44) = 1;
      HALS_ObjectMap::ReleaseObject(v9, v27);
    }

    else
    {
      if (v8)
      {
        v14 = *(v8 + 240);
      }

      else
      {
        v14 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v28 = (*(*this + 224))(this);
        v29 = *(this + 4);
        v33 = 136316674;
        *v34 = "HALS_Device.cpp";
        *&v34[8] = 1024;
        *&v34[10] = 2157;
        v35 = 1024;
        v36 = a2;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = v14;
        HIWORD(v37) = 2080;
        *v38 = "in for";
        *&v38[8] = 2080;
        *&v38[10] = v28;
        v39 = 1024;
        v40 = v29;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientOptOut: client %u (pid %d) is opting %s ducking on device %s (%u) ", &v33, 0x38u);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v6 + 44) = 0;
      *(v6 + 36) = 1065353216;
      HALS_ObjectMap::ReleaseObject(v9, v30);
    }
  }

  v31 = (*(*this + 272))(this);
  return (*(*this + 800))(this, 0.0, v31 * 0.0500000007);
}

void HALS_Device::AppendDuckHistory(HALS_Device *this, int a2, double a3, char a4)
{
  v21 = 0;
  time(&v21);
  v8 = *(this + 73);
  v9 = *(this + 72);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v8 - v9) - 1;
  }

  v11 = *(this + 75);
  v12 = *(this + 76) + v11;
  if (v10 == v12)
  {
    v13 = v11 >= 0x80;
    v14 = v11 - 128;
    if (!v13)
    {
      v15 = *(this + 74);
      v16 = *(this + 71);
      if (v8 - v9 < (v15 - v16))
      {
        operator new();
      }

      if (v15 == v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v15 - v16) >> 2;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v17);
    }

    *(this + 75) = v14;
    v22 = *v9;
    *(this + 72) = v9 + 1;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(this + 71, &v22);
    v11 = *(this + 75);
    v9 = *(this + 72);
    v12 = *(this + 76) + v11;
  }

  v18 = *(v9 + ((v12 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v12 & 0x7F);
  *v18 = v21;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = *(this + 76);
  *(this + 76) = v19 + 1;
  if ((v19 + 1) >= 0xB)
  {
    *(this + 76) = v19;
    v20 = v11 + 1;
    *(this + 75) = v20;
    if (v20 >= 0x100)
    {
      operator delete(*v9);
      *(this + 72) += 8;
      *(this + 75) -= 128;
    }
  }
}

void sub_1DE6FB504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<HALS_Device::ClientInfo>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) + 1;
    if (v15 > 0x555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v14) >> 4);
    if (2 * v17 > v15)
    {
      v15 = 2 * v17;
    }

    if (v17 >= 0x2AAAAAAAAAAAAAALL)
    {
      v18 = 0x555555555555555;
    }

    else
    {
      v18 = v15;
    }

    v31 = a1;
    if (v18)
    {
      std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](v18);
    }

    v19 = 16 * (v16 >> 4);
    v28 = 0;
    v29 = v19;
    v30 = v19;
    if (!(0xAAAAAAAAAAAAAAABLL * (v16 >> 4)))
    {
      if (v16 < 1)
      {
        if (v14 == a2)
        {
          v20 = 1;
        }

        else
        {
          v20 = 0x5555555555555556 * (v16 >> 4);
        }

        v32 = a1;
        std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](v20);
      }

      v19 -= 48 * ((1 - 0x5555555555555555 * (v16 >> 4)) >> 1);
      v29 = v19;
      *&v30 = v19;
    }

    std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(v19, a3);
    v21 = v29;
    *&v30 = v30 + 48;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(v4, a1[1], v30);
    v22 = *a1;
    v23 = v29;
    *&v30 = v30 + a1[1] - v4;
    a1[1] = v4;
    v24 = v23 + v22 - v4;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(v22, v4, v24);
    v25 = *a1;
    *a1 = v24;
    v26 = a1[2];
    *(a1 + 1) = v30;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v28 = v25;
    v29 = v25;
    std::__split_buffer<HALS_Device::ClientInfo>::~__split_buffer(&v28);
    return v21;
  }

  else if (a2 == v7)
  {
    std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(a1[1], a3);
    a1[1] = v7 + 48;
  }

  else
  {
    v8 = v7 - 48;
    v9 = a1[1];
    if (v7 >= 0x30)
    {
      v9 = a1[1];
      do
      {
        std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(v9, v8);
        v8 += 48;
        v9 += 48;
      }

      while (v8 < v7);
    }

    a1[1] = v9;
    if (v7 != v4 + 48)
    {
      v10 = 0;
      do
      {
        v11 = v7 + v10;
        *(v7 + v10 - 48) = *(v7 + v10 - 96);
        CACFDictionary::operator=(v7 + v10 - 40, v7 + v10 - 88);
        v12 = *(v7 + v10 - 72);
        *(v11 - 11) = *(v11 - 59);
        *(v11 - 24) = v12;
        v10 -= 48;
      }

      while (v4 - v7 + 48 != v10);
    }

    *v4 = *a3;
    CACFDictionary::operator=(v4 + 8, a3 + 8);
    v13 = *(a3 + 24);
    *(v4 + 37) = *(a3 + 37);
    *(v4 + 24) = v13;
  }

  return v4;
}

uint64_t std::construct_at[abi:ne200100]<HALS_Device::ClientInfo,HALS_Device::ClientInfo,HALS_Device::ClientInfo*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 17) = *(a2 + 17);
  if (v5 == 1 && v4 != 0)
  {
    CFRetain(v4);
  }

  v7 = *(a2 + 24);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 24) = v7;
  return a1;
}

void std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<HALS_Device::ClientInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    CACFDictionary::~CACFDictionary((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = a3 + v6;
      *v8 = *(v5 + v6);
      v9 = *(v5 + v6 + 8);
      *(v8 + 8) = v9;
      v10 = *(v5 + v6 + 16);
      *(v8 + 16) = v10;
      *(v8 + 17) = *(v5 + v6 + 17);
      if (v10 == 1 && v9 != 0)
      {
        CFRetain(v9);
      }

      v12 = *(v7 + 24);
      *(v8 + 37) = *(v7 + 37);
      *(v8 + 24) = v12;
      v6 += 48;
    }

    while (v7 + 48 != a2);
    do
    {
      CACFDictionary::~CACFDictionary((v5 + 8));
      v5 += 48;
    }

    while (v5 != a2);
  }
}

uint64_t HALS_Device::_DuckClientVolumeScalar(HALS_Device *this, HALS_ObjectMap *a2, float a3, double a4, double a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = 0.0;
  if (a3 >= 0.0)
  {
    v9 = a3;
  }

  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = *(this + 68);
  v12 = *(this + 69);
  if (v11 != v12)
  {
    while (*v11 != a2)
    {
      v11 += 48;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }
  }

  if (v11 == v12)
  {
LABEL_14:
    if (a3 != 1.0)
    {
      HALS_Device::AppendDuckHistory(this, a2, v10, 0);
      v16 = HALS_ObjectMap::CopyObjectByObjectID(a2);
      v17 = v16;
      if (v16)
      {
        v18 = *(v16 + 240);
      }

      else
      {
        v18 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v20 = (*(*this + 224))(this);
        v21 = *(this + 4);
        v36 = 136317186;
        *v37 = "HALS_Device.cpp";
        *&v37[8] = 1024;
        *&v37[10] = 2120;
        v38 = 1024;
        v39 = a2;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = v18;
        HIWORD(v40) = 2080;
        v41 = v20;
        *v42 = 1024;
        *&v42[2] = v21;
        v43 = 2048;
        v44 = v10;
        v45 = 2048;
        v46 = a4;
        v47 = 2048;
        v48 = a5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientVolumeScalar: client %u (pid %d) ducking device %s (%u) to %f over (%f, %0.f)", &v36, 0x4Cu);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      v22 = *(this + 69);
      v36 = a2;
      *&v37[4] = 0;
      *&v37[12] = 1;
      __asm { FMOV            V0.2S, #1.0 }

      v40 = _D0;
      LOBYTE(v41) = 1;
      *(&v41 + 1) = v10;
      *v42 = 1065353216;
      v42[4] = 0;
      std::vector<HALS_Device::ClientInfo>::insert(this + 68, v22, &v36);
      CACFDictionary::~CACFDictionary(&v37[4]);
      HALS_ObjectMap::ReleaseObject(v17, v28);
    }
  }

  else
  {
    HALS_Device::AppendDuckHistory(this, a2, v10, *(v11 + 44));
    v13 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v14 = v13;
    if (v10 == 1.0)
    {
      if (v13)
      {
        v19 = *(v13 + 240);
      }

      else
      {
        v19 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v32 = (*(*this + 224))(this);
        v33 = *(this + 4);
        v36 = 136316930;
        *v37 = "HALS_Device.cpp";
        *&v37[8] = 1024;
        *&v37[10] = 2101;
        v38 = 1024;
        v39 = a2;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = v19;
        HIWORD(v40) = 2080;
        v41 = v32;
        *v42 = 1024;
        *&v42[2] = v33;
        v43 = 2048;
        v44 = a4;
        v45 = 2048;
        v46 = a5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientVolumeScalar: client %u (pid %d) unducking device %s (%u) over (%f, %0.f)", &v36, 0x42u);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v11 + 32) = 0;
      *(v11 + 36) = 1065353216;
      HALS_ObjectMap::ReleaseObject(v14, v34);
    }

    else
    {
      if (v13)
      {
        v15 = *(v13 + 240);
      }

      else
      {
        v15 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v29 = (*(*this + 224))(this);
        v30 = *(this + 4);
        v36 = 136317186;
        *v37 = "HALS_Device.cpp";
        *&v37[8] = 1024;
        *&v37[10] = 2088;
        v38 = 1024;
        v39 = a2;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = v15;
        HIWORD(v40) = 2080;
        v41 = v29;
        *v42 = 1024;
        *&v42[2] = v30;
        v43 = 2048;
        v44 = v10;
        v45 = 2048;
        v46 = a4;
        v47 = 2048;
        v48 = a5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_DuckClientVolumeScalar: client %u (pid %d) ducking device %s (%u) to %f over (%f, %0.f)", &v36, 0x4Cu);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      *(v11 + 32) = 1;
      *(v11 + 36) = v10;
      HALS_ObjectMap::ReleaseObject(v14, v31);
    }
  }

  return (*(*this + 800))(this, a4, a5);
}

uint64_t HALS_Device::_SetClientVolumeScalar(HALS_Device *this, int a2, unsigned int a3, float a4)
{
  v4 = a3;
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  v7 = *(this + 68);
  v8 = *(this + 69);
  if (v7 != v8)
  {
    while (*v7 != a2)
    {
      v7 += 12;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_12:
    if (a4 != 1.0)
    {
      v25 = a2;
      if (a3)
      {
        v10 = a4;
      }

      else
      {
        v10 = 1.0;
      }

      if (a3)
      {
        a4 = 1.0;
      }

      v26 = 0;
      v27 = 1;
      v28 = a4;
      v29 = v10;
      v30 = 0;
      __asm { FMOV            V0.2S, #1.0 }

      v31 = _D0;
      v32 = 0;
      v16 = std::vector<HALS_Device::ClientInfo>::insert(this + 68, v8, &v25);
      CACFDictionary::~CACFDictionary(&v26);
      if ((v4 & 1) == 0)
      {
        v19 = *(this + 68);
        v20 = *(this + 69);
        while (v19 != v20)
        {
          if (*(v19 + 32) == 1)
          {
            v21 = *(v19 + 36);
            if (v21 >= *(v16 + 40))
            {
              v21 = *(v16 + 40);
            }

            *(v16 + 40) = v21;
          }

          v19 += 48;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  v9 = v7 + 6;
  if (*&v9[a3] == a4)
  {
    return 0;
  }

  *&v9[a3] = a4;
LABEL_19:
  v17 = (*(*this + 408))(this);
  if (v17)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN11HALS_Device22_SetClientVolumeScalarEjbf_block_invoke;
    v22[3] = &__block_descriptor_tmp_122;
    v22[4] = v17;
    v23 = a2;
    v24 = v4;
    AMCP::Utility::Dispatch_Queue::async(this + 784, v22);
  }

  return 1;
}

void ___ZN11HALS_Device22_SetClientVolumeScalarEjbf_block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 288))(*(a1 + 32), *(a1 + 40), *(a1 + 44));
  v3 = *(a1 + 32);

  HALS_ObjectMap::ReleaseObject(v3, v2);
}

void sub_1DE6FC1F0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FC1D0);
}

float HALS_Device::_GetClientVolumeScalar(HALS_Device *this, int a2, unsigned int a3)
{
  v3 = *(this + 68);
  v4 = *(this + 69);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      v3 += 12;
      if (v3 == v4)
      {
        return 1.0;
      }
    }
  }

  if (v3 == v4)
  {
    return 1.0;
  }

  else
  {
    return *&v3[a3 + 6];
  }
}

CACFDictionary *HALS_Device::_GetCurrentClientKind(HALS_Device *this)
{
  v4 = 0;
  v2 = (*(*this + 736))(this);
  if (*(this + 69) == v2)
  {
    return 0;
  }

  result = *(v2 + 8);
  if (result)
  {
    CACFDictionary::GetUInt32(result, @"kind", &v4);
    return v4;
  }

  return result;
}

uint64_t HALS_Device::_FindHighestPriorityClientDescription(HALS_Device *this)
{
  v2 = *(this + 69);
  for (i = *(this + 68); i != v2; i += 48)
  {
    v4 = *(i + 8);
    if (v4)
    {
      v6 = 0;
      CACFDictionary::GetUInt32(v4, @"kind", &v6);
      if (v6)
      {
        result = i;
      }

      else
      {
        result = v2;
      }

      v2 = *(this + 69);
    }

    else
    {
      result = v2;
    }

    if (result != v2)
    {
      return result;
    }
  }

  return v2;
}

uint64_t HALS_Device::_SetClientDescription(uint64_t *a1, uint64_t a2, CFTypeRef cf)
{
  v5 = a1[68];
  v6 = a1[69];
  if (v5 != v6)
  {
    while (*v5 != *(a2 + 16))
    {
      v5 += 12;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_7:
    v7 = a1 + 69;
    v36 = *(a2 + 16);
    cfa = cf;
    v38 = 1;
    __asm { FMOV            V0.2S, #1.0 }

    *v39 = _D0;
    v39[8] = 0;
    *&v39[12] = _D0;
    v39[20] = 0;
    if (cf)
    {
      CFRetain(cf);
      v6 = *v7;
    }

    v13 = a1[70];
    if (v6 >= v13)
    {
      v18 = a1 + 68;
      v19 = a1[68];
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v19) >> 4);
      if (v20 + 1 > 0x555555555555555)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v19) >> 4);
      v22 = 2 * v21;
      if (2 * v21 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0x555555555555555;
      }

      else
      {
        v23 = v22;
      }

      v43 = a1 + 68;
      if (v23)
      {
        std::allocator<HALS_Device::ClientInfo>::allocate_at_least[abi:ne200100](v23);
      }

      v24 = 48 * v20;
      v40 = 0;
      v41 = v24;
      v42 = v24;
      *v24 = v36;
      v25 = cfa;
      *(v24 + 8) = cfa;
      v26 = v38;
      *(v24 + 16) = v38;
      v27 = v24;
      v28 = v24;
      if (v26 == 1)
      {
        v27 = v24;
        v28 = v24;
        if (v25)
        {
          CFRetain(v25);
          v27 = v41;
          v28 = v42;
        }
      }

      v29 = *v39;
      *(v24 + 37) = *&v39[13];
      *(v24 + 24) = v29;
      *&v42 = v28 + 48;
      v30 = *v18;
      v31 = v27 + *v18 - *v7;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Device::ClientInfo>,HALS_Device::ClientInfo*>(v30, *v7, v31);
      v32 = a1[68];
      a1[68] = v31;
      v33 = a1[70];
      v35 = v42;
      *v7 = v42;
      *&v42 = v32;
      *(&v42 + 1) = v33;
      v40 = v32;
      v41 = v32;
      std::__split_buffer<HALS_Device::ClientInfo>::~__split_buffer(&v40);
      v17 = v35;
    }

    else
    {
      *v6 = v36;
      v14 = cfa;
      *(v6 + 8) = cfa;
      v15 = v38;
      *(v6 + 16) = v38;
      if (v15 == 1 && v14)
      {
        CFRetain(v14);
      }

      v16 = *v39;
      *(v6 + 37) = *&v39[13];
      *(v6 + 24) = v16;
      v17 = v6 + 48;
      *v7 = v6 + 48;
    }

    *v7 = v17;
    CACFDictionary::~CACFDictionary(&cfa);
  }

  else
  {
    CACFDictionary::operator=((v5 + 2), cf);
  }

  return (*(*a1 + 752))(a1, a2);
}

void sub_1DE6FC5E0(_Unwind_Exception *a1)
{
  *v2 = v3;
  CACFDictionary::~CACFDictionary((v1 + 8));
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef HALS_Device::_CopyClientDescription(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 544);
  v3 = *(a1 + 552);
  if (v2 != v3)
  {
    while (*v2 != *(a2 + 16))
    {
      v2 += 48;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v7 = Mutable;
    v8 = 257;
    CACFDictionary::AddUInt32(&v7, @"kind", 0);
    if (Mutable)
    {
      CFRetain(Mutable);
      Mutable = v7;
    }

    CACFDictionary::~CACFDictionary(&v7);
  }

  else
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      CFRetain(v4);
      return *(v2 + 8);
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

uint64_t HALS_Device::IsInputMutedForClient(HALS_Device *this, HALS_Client *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1065353216;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_Device21IsInputMutedForClientEP11HALS_Client_block_invoke;
  v5[3] = &unk_1E8678BD0;
  v5[4] = &v6;
  v5[5] = this;
  v5[6] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[6] == 0.0;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1DE6FC860(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::GetClockDeviceNominalSampleRate(HALS_Device *this, HALS_Client *a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3002000000;
  v25 = __Block_byref_object_copy__124;
  v26 = __Block_byref_object_dispose__125;
  cf = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = ___ZNK11HALS_Device31GetClockDeviceNominalSampleRateEP11HALS_Client_block_invoke;
  v21[3] = &unk_1E8678BA8;
  v21[5] = this;
  v21[6] = a2;
  v21[4] = &v22;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v21);
  if (!v23[5])
  {
    goto LABEL_22;
  }

  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&v19, 0, v18);
  if (v19)
  {
    v3 = v23[5];
    v29 = 0;
    v30 = &v29;
    v31 = 0x4002000000;
    v32 = __Block_byref_object_copy__7820;
    v33 = __Block_byref_object_dispose__7821;
    memset(v34, 0, sizeof(v34));
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZNK11HALS_System17CopyIODeviceByUIDEPK10__CFStringP11HALS_Client_block_invoke;
    v28[3] = &unk_1E8675888;
    v28[4] = &v29;
    v28[5] = v19;
    v4 = (*(*v19 + 64))(v19);
    HALB_CommandGate::ExecuteCommand(v4, v28);
    v5 = v30[5];
    v6 = v30[6];
    if (v5 == v6)
    {
LABEL_13:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        if (v3)
        {
          v7 = *v5;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 0x40000000;
          v38[2] = ___ZNK18HALS_DeviceManager16CopyIODeviceListERNS_17BasicIODeviceListEP11HALS_Client_block_invoke;
          v38[3] = &__block_descriptor_tmp_8_11652;
          v38[4] = v7;
          v38[5] = &v35;
          v8 = (*(*v7 + 64))(v7);
          HALB_CommandGate::ExecuteCommand(v8, v38);
          for (i = v35; i != v36; ++i)
          {
            v11 = *i;
            v12 = (*(**i + 208))(*i);
            if (v12 && CFStringCompare(v12, v3, 0) == kCFCompareEqualTo)
            {
              goto LABEL_11;
            }
          }

          v11 = 0;
LABEL_11:
          HALS_ObjectMap::RetainObject(v11, v9);
          HALS_DeviceManager::BasicIODeviceList::~BasicIODeviceList(&v35, v13);
          if (v11)
          {
            break;
          }
        }

        if (++v5 == v6)
        {
          goto LABEL_13;
        }
      }
    }

    _Block_object_dispose(&v29, 8);
    HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v34, v14);
    v16 = v11 ? (*(*v11 + 272))(v11) : 0.0;
    HALS_ObjectMap::ReleaseObject(v11, v15);
  }

  else
  {
    v16 = 0.0;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v16 == 0.0)
  {
LABEL_22:
    v16 = 0.0;
  }

  _Block_object_dispose(&v22, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return *&v16;
}

void sub_1DE6FCC14(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  HALS_ObjectMap::ReleaseObject(v33, a2);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Block_object_dispose(&a21, 8);
  applesauce::CF::StringRef::~StringRef((v34 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__125(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZNK11HALS_Device31GetClockDeviceNominalSampleRateEP11HALS_Client_block_invoke(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a1[5] + 496), *(v1 + 16));
    if (v3)
    {
      v4 = *(v3 + 47);
      if (v4 < 0)
      {
        v5 = v3[3];
        if (!v5)
        {
          v6 = 0;
LABEL_8:
          v7 = *(a1[4] + 8);
          v8 = *(v7 + 40);
          *(v7 + 40) = v6;
          if (v8)
          {
            CFRelease(v8);
          }

          return;
        }

        v4 = v3[4];
      }

      else
      {
        v5 = (v3 + 3);
      }

      v6 = CFStringCreateWithBytes(0, v5, v4, 0x8000100u, 0);
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_8;
    }
  }
}

void sub_1DE6FCDA4(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FCD50);
}

uint64_t HALS_Device::IsClockDeviceUIDSetForAnyClient(uint64_t a1, CFTypeRef *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1174405120;
  v7[2] = ___ZNK11HALS_Device31IsClockDeviceUIDSetForAnyClientEN10applesauce2CF9StringRefE_block_invoke;
  v7[3] = &unk_1F598E358;
  v7[5] = a1;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf = v3;
  v7[4] = &v9;
  v4 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v10 + 24);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1DE6FCEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  applesauce::CF::StringRef::~StringRef((v16 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_Device31IsClockDeviceUIDSetForAnyClientEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 512); i; i = *i)
  {
    v3 = *(i + 47);
    if (v3 < 0)
    {
      v4 = i[3];
      if (!v4)
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(0, (a1 + 48)) == kCFCompareEqualTo)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          return;
        }

        continue;
      }

      v3 = i[4];
    }

    else
    {
      v4 = (i + 3);
    }

    v5 = CFStringCreateWithBytes(0, v4, v3, 0x8000100u, 0);
    v6 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v5, (a1 + 48)) == kCFCompareEqualTo)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      CFRelease(v6);
      return;
    }

    CFRelease(v6);
  }
}

void sub_1DE6FD018(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FCFC4);
}

CFMutableDictionaryRef HALS_Device::_CreateLegacyIOContextDescription(HALS_Device *this, HALS_Client *a2)
{
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v69 = 257;
  CACFDictionary::AddUInt32(&theDict, @"device id", *(this + 4));
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && *(this + 78))
  {
    if (a2)
    {
      v4 = *(a2 + 4);
    }

    else
    {
      v4 = 0;
    }

    HALS_Device::InformOffloadsAvailableOnDevice(this, a2);
    HALS_Device::GetDSPOffloadsRequested(&cf, this, 1);
    if (cf)
    {
      v26 = *(this + 78);
      HALS_Device::GetModelUID(&__p, this);
      HALS_DSPHostPerClientConfiguration::set_offloads_requested(v26, v4, &cf, &__p);
      if (v75 == 1 && SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }
    }

    HALS_DSPHostPerClientConfiguration::serialize_to_description(*(this + 78), v4, theDict);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    goto LABEL_56;
  }

  v5 = 0;
  v6 = theDict;
  do
  {
    v7 = (&HALS_Device::_AddDSPKeysToIOContextDescriptionForClient(HALS_Client *,__CFDictionary *,std::optional<unsigned int>)const::hostedDspKeys + v5);
    HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(&__p, this + 648, (*(&HALS_Device::_AddDSPKeysToIOContextDescriptionForClient(HALS_Client *,__CFDictionary *,std::optional<unsigned int>)const::hostedDspKeys + v5 + 4) == 1768845428), a2);
    if (v74)
    {
      v8 = v7[2];
      if (v8)
      {
        v9 = &v7[v8 + 3];
        v10 = (v7 + 3);
        while (1)
        {
          if (v73)
          {
            v11 = *v10;
            v12 = &v73;
            v13 = v73;
            do
            {
              v14 = v13;
              v15 = v12;
              v16 = *(v13 + 7);
              if (v16 >= v11)
              {
                v12 = v13;
              }

              v13 = v13[v16 < v11];
            }

            while (v13);
            if (v12 != &v73)
            {
              if (v16 < v11)
              {
                v14 = v15;
              }

              if (v11 >= *(v14 + 7))
              {
                break;
              }
            }
          }

          if (++v10 >= v9)
          {
            goto LABEL_20;
          }
        }

        if (v11)
        {
          v18 = *v7;
          if (*v7 == 1934647636)
          {
            LODWORD(valuePtr) = *v10;
            v22 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            cf = v22;
            if (!v22)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            CFDictionarySetValue(v6, @"spatialization type", v22);
            v20 = cf;
            if (cf)
            {
LABEL_35:
              CFRelease(v20);
            }
          }

          else if (v18 == 1983996971)
          {
            LODWORD(valuePtr) = *v10;
            v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            cf = v21;
            if (!v21)
            {
              v56 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v56, "Could not construct");
              __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            CFDictionarySetValue(v6, @"voice activity detection enable", v21);
            v20 = cf;
            if (cf)
            {
              goto LABEL_35;
            }
          }

          else if (v18 == 1986622324)
          {
            LODWORD(valuePtr) = *v10;
            v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            cf = v19;
            if (!v19)
            {
              v55 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v55, "Could not construct");
              __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            CFDictionarySetValue(v6, @"vocal isolation type", v19);
            v20 = cf;
            if (cf)
            {
              goto LABEL_35;
            }
          }
        }
      }
    }

LABEL_20:
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v73);
    v17 = v5 >= 0x28;
    v5 += 20;
  }

  while (!v17);
  v23 = *(this + 79);
  if (v23)
  {
    HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&__p, v23, 1, a2);
    if (__p)
    {
      DSP_Host_OffloadDictionary::deep_copy_to(__p, v6, "device dsp offloads input");
    }
  }

  else
  {
    __p = 0;
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&__p, 0);
  v24 = *(this + 79);
  if (v24)
  {
    HALS_Device_HostedDSP::CopyDSPSettingsForClient(&__p, *v24, 1, a2);
    if (__p)
    {
      DSP_Host_OffloadDictionary::deep_copy_to(__p, v6, "dsp input settings");
    }
  }

  else
  {
    __p = 0;
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&__p, 0);
  HALS_Device_HostedDSP_ClientInfo::get_virtual_channel_layout_for_client(&__p, this + 648, 0, a2);
  if (v75 == 1)
  {
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v71 = 256;
    if ((v75 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    HALS_Device::ConstructDictionaryFromLayout(__p, &cf, v25);
    CFDictionarySetValue(v6, @"spatialization virtual channel layout", cf);
    CACFDictionary::~CACFDictionary(&cf);
    if ((v75 & 1) != 0 && __p)
    {
      v73 = __p;
      operator delete(__p);
    }
  }

LABEL_56:
  v27 = (*(*this + 208))(this);
  if (HIBYTE(v69) == 1 && v27 && theDict != 0)
  {
    CFDictionarySetValue(theDict, @"master uid", v27);
  }

  if (a2)
  {
    v29 = *(a2 + 4);
  }

  else
  {
    v29 = 0;
  }

  v30 = (*(*this + 816))(this, v29);
  cf = v30;
  LOBYTE(v71) = 1;
  if (v30 && HIBYTE(v69) == 1 && theDict)
  {
    CFDictionarySetValue(theDict, @"clock device uid", v30);
  }

  v31 = (*(*this + 392))(this, 1, v30);
  if (v31)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v33 = 0;
    v34 = MEMORY[0x1E695E9E0];
    v35 = MEMORY[0x1E695E9F0];
    valuePtr = Mutable;
    v67 = 257;
    do
    {
      v36 = (*(*this + 400))(this, 1, v33);
      if ((*(*this + 616))(this, v36, a2))
      {
        v64 = CFDictionaryCreateMutable(0, 0, v34, v35);
        v65 = 257;
        v38 = (*(*this + 208))(this);
        if (HIBYTE(v65) == 1 && v38 && v64 != 0)
        {
          CFDictionarySetValue(v64, @"uid", v38);
        }

        CACFDictionary::AddUInt32(&v64, @"index", v33);
        if (valuePtr && HIBYTE(v67) == 1)
        {
          CFArrayAppendValue(valuePtr, v64);
        }

        if (cf)
        {
          CACFDictionary::AddUInt32(&v64, @"drift", 1);
          CACFDictionary::AddUInt32(&v64, @"drift algorithm", 0);
          CACFDictionary::AddUInt32(&v64, @"drift quality", 127);
        }

        CACFDictionary::~CACFDictionary(&v64);
      }

      HALS_ObjectMap::ReleaseObject(v36, v37);
      v33 = (v33 + 1);
    }

    while (v31 != v33);
    if (valuePtr && CFArrayGetCount(valuePtr) && HIBYTE(v69) == 1 && valuePtr && theDict)
    {
      CFDictionarySetValue(theDict, @"grid-in", valuePtr);
    }

    CACFArray::~CACFArray(&valuePtr);
  }

  v40 = (*(*this + 392))(this, 0);
  if (v40)
  {
    v41 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v42 = 0;
    v43 = MEMORY[0x1E695E9E0];
    v44 = MEMORY[0x1E695E9F0];
    v45 = MEMORY[0x1E695E9C8];
    valuePtr = v41;
    v67 = 257;
    do
    {
      v47 = (*(*this + 400))(this, 0, v42);
      if (v47)
      {
        v64 = CFDictionaryCreateMutable(0, 0, v43, v44);
        v65 = 257;
        NumberChannels = HALS_Stream::GetNumberChannels(v47);
        CACFDictionary::AddUInt32(&v64, @"channels", NumberChannels);
        v62 = CFArrayCreateMutable(0, 0, v45);
        v63 = 257;
        theArray = CFArrayCreateMutable(0, 0, v45);
        v61 = 257;
        v58 = CFDictionaryCreateMutable(0, 0, v43, v44);
        v59 = 257;
        v49 = (*(*this + 208))(this);
        if (HIBYTE(v59) == 1 && v49 && v58)
        {
          CFDictionarySetValue(v58, @"uid", v49);
        }

        CACFDictionary::AddUInt32(&v58, @"index", v42);
        if (cf)
        {
          CACFDictionary::AddUInt32(&v58, @"drift", 1);
          CACFDictionary::AddUInt32(&v58, @"drift algorithm", 0);
          CACFDictionary::AddUInt32(&v58, @"drift quality", 127);
        }

        v50 = theArray;
        if (theArray && HIBYTE(v61) == 1)
        {
          CFArrayAppendValue(theArray, v58);
          v50 = theArray;
        }

        v51 = v62;
        if (v62 && HIBYTE(v63) == 1)
        {
          CFArrayAppendValue(v62, v50);
          v51 = v62;
        }

        v52 = v64;
        if (HIBYTE(v65) == 1 && v51 && v64)
        {
          CFDictionarySetValue(v64, @"stream groups", v51);
          v52 = v64;
        }

        if (valuePtr && HIBYTE(v67) == 1)
        {
          CFArrayAppendValue(valuePtr, v52);
        }

        CACFDictionary::~CACFDictionary(&v58);
        CACFArray::~CACFArray(&theArray);
        CACFArray::~CACFArray(&v62);
        CACFDictionary::~CACFDictionary(&v64);
      }

      HALS_ObjectMap::ReleaseObject(v47, v46);
      v42 = (v42 + 1);
    }

    while (v40 != v42);
    if (HIBYTE(v69) == 1 && valuePtr && theDict)
    {
      CFDictionarySetValue(theDict, @"grid-out", valuePtr);
    }

    CACFArray::~CACFArray(&valuePtr);
  }

  if (theDict)
  {
    CFRetain(theDict);
    v53 = theDict;
  }

  else
  {
    v53 = 0;
  }

  CACFString::~CACFString(&cf);
  CACFDictionary::~CACFDictionary(&theDict);
  return v53;
}

void sub_1DE6FDB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, void *__p, void *a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a21);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a24);
  CACFDictionary::~CACFDictionary(&a19);
  _Unwind_Resume(a1);
}

void HALS_Device::InformOffloadsAvailableOnDevice(HALS_Device *this, HALS_Client *a2)
{
  v74[19] = *MEMORY[0x1E69E9840];
  v62[0] = 0;
  v62[1] = 0;
  HALS_System::GetInstance(buf, 0, v62);
  v4 = *(*buf + 1800);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v5 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v61[0] = 0;
  v61[1] = 0;
  HALS_System::GetInstance(buf, 0, v61);
  v6 = *(*buf + 1800);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v7 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  v8 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  only_airpods_studio_voice_mic = AMCP::Feature_Flags::auacc_read_only_airpods_studio_voice_mic(v8);
  if (only_airpods_studio_voice_mic)
  {
    if (v7 != 1)
    {
      if (!(v5 & 1 | ((*(this + 641) & 1) == 0)))
      {
        return;
      }

LABEL_28:
      v58 = 0;
      v59 = 0;
      theDict = 0;
      if (!AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
      {
        HALS_Device_HostedDSP::GetOffloadsAvailableForDevice(*(this + 79), 1, &v58);
        if (v7 == 1)
        {
          DSP_Host_OffloadDictionary::get_offload_id_list(&v56, &v58);
          v30 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
          v31 = v56;
          for (i = v57; v31 != i; v31 += 24)
          {
            v33 = *(v31 + 23);
            if (v33 >= 0)
            {
              v34 = v31;
            }

            else
            {
              v34 = *v31;
            }

            if (v33 >= 0)
            {
              v35 = *(v31 + 23);
            }

            else
            {
              v35 = *(v31 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], v34, v35);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], " ", 1);
          }

          v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v36 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
          }

          v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            v39 = *v38;
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          else
          {
            v39 = *v38;
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str[abi:ne200100](__p, &v71);
            v44 = v55 >= 0 ? __p : __p[0];
            v45 = *(this + 4);
            *v63 = 136315906;
            *&v63[4] = "HALS_Device.cpp";
            v64 = 1024;
            v65 = 5868;
            v66 = 2080;
            v67 = v44;
            v68 = 1024;
            v69 = v45;
            _os_log_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] ADM says offloads (%s) are available for (Device ID: %d)", v63, 0x22u);
            if (v55 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *buf = *MEMORY[0x1E69E54D8];
          v46 = *(MEMORY[0x1E69E54D8] + 72);
          *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
          *&buf[16] = v46;
          v71 = MEMORY[0x1E69E5548] + 16;
          if (v73 < 0)
          {
            operator delete(v72[7].__locale_);
          }

          v71 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v72);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12C15F0](v74);
          *buf = &v56;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
        }

        goto LABEL_73;
      }

      HALS_Device::GetModelUID(buf, this);
      if (v71 == 1)
      {
        v20 = *(this + 78);
        v21 = *v20;
        v22 = **v20;
        std::mutex::lock((v22 + 8));
        AHAL_DSP::HostingInternalState::init(*v21);
        v23 = *(*v21 + 9);
        if (v23)
        {
          v24 = (*(*v23 + 32))(v23, buf, 1);
          std::mutex::unlock((v22 + 8));
          if (v24)
          {
            v56 = v24;
            v25 = CFGetTypeID(v24);
            if (v25 != CFDictionaryGetTypeID())
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            *v63 = v24;
            v63[8] = 1;
            DSP_Host_OffloadDictionary::deep_copy_from(&v58, v24);
            CFRelease(v24);
            goto LABEL_60;
          }
        }

        else
        {
          std::mutex::unlock((v22 + 8));
        }

        v63[0] = 0;
        v63[8] = 0;
      }

LABEL_60:
      if (v71 == 1 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

LABEL_73:
      Count = theDict;
      if (theDict && (Count = CFDictionaryGetCount(theDict)) != 0 && (Count = DSP_Host_OffloadDictionary::has_all_id(&v58), !Count))
      {
        *(this + 320) = (*(*this + 960))(this, 1, a2, &v58) | 0x100;
      }

      else if (v7 == 1)
      {
        v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v48 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(Count);
        }

        v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          v51 = *v50;
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        else
        {
          v51 = *v50;
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(this + 4);
          *buf = 136315650;
          *&buf[4] = "HALS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5875;
          *&buf[18] = 1024;
          *&buf[20] = v52;
          _os_log_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] ADM has no SPECIFIC offloads for (Device ID: %d), won't send anything to device", buf, 0x18u);
        }
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_weak(v59);
      }

      return;
    }

    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    v18 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      v19 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5827;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] Inform available offloads called (Device ID: %d)", buf, 0x18u);
    }

    if (v5 & 1 | ((*(this + 641) & 1) == 0))
    {
      goto LABEL_28;
    }

    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5833;
      *&buf[18] = 1024;
      *&buf[20] = v43;
      v40 = "%32s:%-5d [hal_dsp][offloads] Available offloads has already informed device (Device ID: %d) (cache optimized)";
      v41 = v29;
      v42 = 24;
      goto LABEL_57;
    }
  }

  else if (v7 == 1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
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

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5820;
      v40 = "%32s:%-5d [hal_dsp][offloads] Inform available offloads not called, feature flag is not set.";
      v41 = v17;
      v42 = 18;
LABEL_57:
      _os_log_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    }
  }
}

void sub_1DE6FE554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  __cxa_free_exception(v35);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a13);
  if (a35 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  DSP_Host_OffloadDictionary::~DSP_Host_OffloadDictionary(&a16);
  _Unwind_Resume(a1);
}

void HALS_Device::GetDSPOffloadsRequested(HALS_Device *this, unsigned int *a2, int a3)
{
  *this = 0;
  if (a3)
  {
    if ((*(*a2 + 96))(a2, a2[4], "rOsdtpni", 0))
    {
      v11 = 8;
      cf = 0;
      (*(*a2 + 120))(a2, a2[4], "rOsdtpni", 8, &v11, &cf, 0, 0, 0);
      if (cf)
      {
        v5 = PropertyListDeepImmutableCopy(cf);
        v6 = v5;
        if (v5)
        {
          v7 = CFGetTypeID(v5);
          if (v7 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        v8 = *this;
        *this = v6;
        if (v8)
        {
          CFRelease(v8);
        }

        CFRelease(cf);
      }
    }
  }
}

void sub_1DE6FE784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(v10);
  _Unwind_Resume(a1);
}

void HALS_Device::GetModelUID(HALS_Device *this, unsigned int *a2)
{
  *this = 0;
  *(this + 24) = 0;
  v11 = *"diumbolg";
  v12 = 0;
  if ((*(*a2 + 96))(a2, a2[4], &v11, 0))
  {
    cf = 0;
    v9 = 8;
    (*(*a2 + 120))(a2, a2[4], &v11, 8, &v9, &cf, 0, 0, 0);
    v4 = cf;
    if (cf)
    {
      CFRetain(cf);
      v5 = CFGetTypeID(v4);
      if (v5 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v7, v4);
      *this = v7;
      *(this + 2) = v8;
      v8 = 0;
      v7 = 0uLL;
      *(this + 24) = 1;
      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(cf);
    }
  }
}

void sub_1DE6FE958(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a11);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FE908);
}

void sub_1DE6FE9A8(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Device::ConstructDictionaryFromLayout(HALS_Device *this, CFMutableDictionaryRef *a2, CACFDictionary *a3)
{
  CACFDictionary::AddUInt32(a2, @"channel layout tag", *this);
  CACFDictionary::AddUInt32(a2, @"channel bitmap", *(this + 1));
  CACFDictionary::AddUInt32(a2, @"number channels", *(this + 2));
  if (!*this)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v18 = Mutable;
    v19 = 257;
    if (Mutable)
    {
      if (*(this + 2))
      {
        v6 = 0;
        v7 = MEMORY[0x1E695E9E0];
        v8 = MEMORY[0x1E695E9F0];
        v9 = this + 20;
        do
        {
          theDict = CFDictionaryCreateMutable(0, 0, v7, v8);
          v17 = 257;
          if (theDict)
          {
            v10 = (this + 20 * v6 + 12);
            CACFDictionary::AddUInt32(&theDict, @"channel label", *v10);
            CACFDictionary::AddUInt32(&theDict, @"channel flags", v10[1]);
            theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            v15 = 257;
            if (theArray)
            {
              for (i = 0; i != 12; i += 4)
              {
                if (theArray && HIBYTE(v15) == 1)
                {
                  valuePtr = *&v9[i];
                  v12 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
                  v20 = v12;
                  v21 = 1;
                  if (v12 && theArray && HIBYTE(v15) == 1)
                  {
                    CFArrayAppendValue(theArray, v12);
                  }

                  CACFNumber::~CACFNumber(&v20);
                }
              }

              if (HIBYTE(v17) == 1 && theArray && theDict)
              {
                CFDictionarySetValue(theDict, @"coordinates", theArray);
              }
            }

            if (v18 && HIBYTE(v19) == 1)
            {
              CFArrayAppendValue(v18, theDict);
            }

            CACFArray::~CACFArray(&theArray);
          }

          CACFDictionary::~CACFDictionary(&theDict);
          ++v6;
          v9 += 20;
        }

        while (v6 < *(this + 2));
        v13 = v18;
      }

      else
      {
        v13 = Mutable;
      }

      if (*(a2 + 9) == 1 && v13)
      {
        if (*a2)
        {
          CFDictionarySetValue(*a2, @"channel descriptions", v13);
        }
      }
    }

    CACFArray::~CACFArray(&v18);
  }
}

void sub_1DE6FEC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  CACFArray::~CACFArray(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::CopyControlByDescription(HALS_Device *this, int a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK11HALS_Device24CopyControlByDescriptionEjjj_block_invoke;
  v7[3] = &unk_1E8678AE8;
  v7[4] = &v11;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t ___ZNK11HALS_Device24CopyControlByDescriptionEjjj_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 680))(*(a1 + 40), *(a1 + 48), *(a1 + 52), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FEDE0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::CopyControlByIndex(HALS_Device *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_Device18CopyControlByIndexEj_block_invoke;
  v5[3] = &unk_1E8678AC0;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK11HALS_Device18CopyControlByIndexEj_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 672))(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FEF44(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::GetNumberControls(HALS_Device *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_Device17GetNumberControlsEv_block_invoke;
  v4[3] = &unk_1E8678A98;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE6FF02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_Device17GetNumberControlsEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 664))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FF0A0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_Device::CopyControls(HALS_Device *this, HALS_Device::BasicControlList *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK11HALS_Device12CopyControlsERNS_16BasicControlListE_block_invoke;
  v3[3] = &__block_descriptor_tmp_76_19773;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void sub_1DE6FF198(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL HALS_Device::_ClientCanUseStream(uint64_t a1, HALS_Stream *this, uint64_t a3)
{
  if (!this)
  {
    return 0;
  }

  if (*(this + 52) != 1)
  {
    return 1;
  }

  if (*(this + 14) != 1)
  {
    if (HALS_Stream::IsHardwareReferenceStream(this))
    {
      if (*(this + 14) <= 1u)
      {
        goto LABEL_4;
      }

      return 0;
    }

    return 1;
  }

LABEL_4:
  result = 1;
  if (a3 && (*(a1 + 536) & 1) == 0)
  {
    v7 = *(a3 + 16);
    v8 = *(a1 + 448);

    return HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(v8, v7);
  }

  return result;
}

uint64_t HALS_Device::_GetTotalNumberChannelsForClient(std::mutex *this, uint64_t a2, HALS_Client *a3)
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
      goto LABEL_10;
    }

    v6 = 0;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v6);
  if (v7)
  {
    v8 = 9;
    if (a2)
    {
      v8 = 3;
    }

    v9 = v7[v8 + 3];
    if (v9)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZNK14HALS_DSPStream24GetCurrentPhysicalFormatER27AudioStreamBasicDescription_block_invoke;
      v20[3] = &__block_descriptor_tmp_17_17185;
      v20[4] = v9;
      v20[5] = &v18;
      v10 = (*(*v9 + 64))(v9);
      HALB_CommandGate::ExecuteCommand(v10, v20);
      v11 = v19;
      std::mutex::unlock(this + 11);
      return v11;
    }
  }

LABEL_10:
  std::mutex::unlock(this + 11);
  v12 = (*(this->__m_.__sig + 392))(this, a2);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  v11 = 0;
  do
  {
    v15 = (*(this->__m_.__sig + 400))(this, a2, v14);
    if ((*(this->__m_.__sig + 616))(this, v15, a3))
    {
      v11 = HALS_Stream::GetNumberChannels(v15) + v11;
    }

    HALS_ObjectMap::ReleaseObject(v15, v16);
    v14 = (v14 + 1);
  }

  while (v13 != v14);
  return v11;
}

HALS_ObjectMap *HALS_Device::_CopyStreamByIndexForClient(std::mutex *this, uint64_t a2, int a3, HALS_Client *a4)
{
  std::mutex::lock(this + 11);
  if (a4)
  {
    v8 = *(a4 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v8 = 0;
  }

  v9 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v8);
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = 9;
  if (a2)
  {
    v11 = 3;
  }

  v12 = &v9[v11];
  v13 = v12[3];
  if (v13)
  {
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      HALS_ObjectMap::RetainObject(v12[3], v10);
    }

    std::mutex::unlock(this + 11);
    return v13;
  }

LABEL_12:
  std::mutex::unlock(this + 11);
  v14 = (*(this->__m_.__sig + 392))(this, a2);
  if (v14)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = (*(this->__m_.__sig + 400))(this, a2, v16 - 1);
      if ((*(this->__m_.__sig + 616))(this, v17, a4))
      {
        if (v15 == a3)
        {
          HALS_ObjectMap::RetainObject(v17, v18);
          v13 = v17;
          v15 = a3;
        }

        else
        {
          v13 = 0;
          ++v15;
        }
      }

      else
      {
        v13 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v17, v18);
      if (v13)
      {
        break;
      }
    }

    while (v16++ < v14);
  }

  return v13;
}

void sub_1DE6FF67C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6FF52CLL);
}

uint64_t HALS_Device::_GetNumberReferenceStreams(HALS_Device *this, uint64_t a2)
{
  v4 = (*(*this + 392))(this);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (*(*this + 400))(this, a2, v7);
    v10 = v8;
    if (v8 && (*(v8 + 14) == 1 || HALS_Stream::IsHardwareReferenceStream(v8)))
    {
      v6 = (v6 + 1);
    }

    HALS_ObjectMap::ReleaseObject(v10, v9);
    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

uint64_t HALS_Device::_GetNumberStreamsExcludingReferenceStreams(HALS_Device *this, uint64_t a2)
{
  v4 = (*(*this + 392))(this);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (*(*this + 400))(this, a2, v7);
    v10 = v8;
    if (v8 && *(v8 + 14) != 1)
    {
      if (HALS_Stream::IsHardwareReferenceStream(v8))
      {
        v6 = v6;
      }

      else
      {
        v6 = (v6 + 1);
      }
    }

    HALS_ObjectMap::ReleaseObject(v10, v9);
    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

uint64_t HALS_Device::_GetNumberStreamsForClient(std::mutex *this, uint64_t a2, HALS_Client *a3)
{
  v6 = (*(this->__m_.__sig + 392))(this);
  std::mutex::lock(this + 11);
  if (a3)
  {
    v7 = *(a3 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
LABEL_10:
      std::mutex::unlock(this + 11);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v7);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = 9;
  if (a2)
  {
    v9 = 3;
  }

  v10 = v8[v9 + 3];
  std::mutex::unlock(this + 11);
  if (v10)
  {
    return 1;
  }

LABEL_11:
  v11 = 0;
  if (v6)
  {
    v12 = 0;
    do
    {
      v14 = (*(this->__m_.__sig + 400))(this, a2, v12);
      if (v14)
      {
        v11 = v11 + (*(this->__m_.__sig + 616))(this, v14, a3);
      }

      HALS_ObjectMap::ReleaseObject(v14, v13);
      v12 = (v12 + 1);
    }

    while (v6 != v12);
  }

  return v11;
}

HALS_Stream *HALS_Device::_CopyStreamByChannel(HALS_Device *this, uint64_t a2, unsigned int a3)
{
  v6 = (*(*this + 392))(this);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = (*(*this + 400))(this, a2, v9 - 1);
    v12 = HALS_Stream::GetNumberChannels(v10) + v8;
    if (v12 < a3)
    {
      HALS_ObjectMap::ReleaseObject(v10, v11);
      v10 = 0;
      v8 = v12;
    }

    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9 >= v7;
    }

    ++v9;
  }

  while (!v13);
  return v10;
}

uint64_t HALS_Device::GetNumberStreamsForClient(HALS_Device *this, char a2, HALS_Client *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_Device25GetNumberStreamsForClientEbP11HALS_Client_block_invoke;
  v6[3] = &unk_1E86788F0;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZNK11HALS_Device25GetNumberStreamsForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 576))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE6FFCA4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL HALS_Device::IsRunningSomewhereElse(HALS_Device *this, HALS_Client *a2)
{
  if (!AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v22[0] = 0;
    v22[1] = 0;
    HALS_System::GetInstance(&v23, 0, v22);
    v7 = *(this + 4);
    v33 = 0;
    v34 = &v33;
    v35 = 0x4002000000;
    v36 = __Block_byref_object_copy__46;
    v37 = __Block_byref_object_dispose__47;
    memset(v38, 0, 24);
    v27 = MEMORY[0x1E69E9820];
    v28 = 0x40000000;
    v29 = ___ZNK11HALS_System46CountRunningIOContextsForDeviceExcludingClientEjP11HALS_Client_block_invoke;
    v30 = &unk_1E8675E18;
    v31 = &v33;
    v32 = v23;
    v8 = (*(*v23 + 64))(v23);
    HALB_CommandGate::ExecuteCommand(v8, &v27);
    if (a2)
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = -1;
    }

    v19 = v34[5];
    v20 = v34[6];
    if (v19 == v20)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        if (*v19)
        {
          (*(**(*v19 + 104) + 136))(&v25);
          v21 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v25, v7);
          if (**(*v19 + 72) != v9 && (*(**v19 + 240))(*v19) && v21)
          {
            ++v6;
          }

          std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v25);
        }

        ++v19;
      }

      while (v19 != v20);
    }

    _Block_object_dispose(&v33, 8);
    v25 = v38;
    std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v17 = v24;
    if (v24)
    {
      goto LABEL_20;
    }

    return v6 != 0;
  }

  v23 = 0;
  v24 = 0;
  HALS_System::GetInstance(&v25, 0, &v23);
  v4 = v25[218];
  os_unfair_lock_lock(v4 + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((v4 + 40), *(this + 4));
  if (!(mcp_object >> 32))
  {
    v6 = 0;
    goto LABEL_19;
  }

  AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(&v33, *(v4 + 17), mcp_object);
  AMCP::IO_Core::Graph_Manager::find_contexts_using_timebase(&v27, *(v4 + 17), &v33);
  v10 = v27;
  v11 = v28;
  if (v27 == v28)
  {
    v6 = 0;
    if (!v27)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    v12 = v27;
    do
    {
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(v4 + 5, *v12);
      if (v13)
      {
        v14 = HALS_ObjectMap::CopyObjectByObjectID(*(v13 + 5));
        v16 = v14;
        if (v14 && (*(*v14 + 240))(v14) && (!a2 || **(v16 + 9) != *(a2 + 4)))
        {
          ++v6;
        }

        HALS_ObjectMap::ReleaseObject(v16, v15);
      }

      ++v12;
    }

    while (v12 != v11);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  operator delete(v10);
LABEL_18:
  v27 = &v33;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_19:
  os_unfair_lock_unlock(v4 + 4);
  v17 = v26;
  if (v26)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return v6 != 0;
}

void sub_1DE700020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a18 = &a24;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a18);
  os_unfair_lock_unlock(v24 + 4);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_Device::CanBeSeenByProcess(HALS_Device *this, HALS_Client *a2)
{
  if (!a2 || *(a2 + 60) == -1 || !(*(*this + 480))(this))
  {
    return 1;
  }

  v4 = (*(*this + 488))(this);

  return HALS_ClientEntitlements::HasEntitlementWithBooleanValue((a2 + 296), v4);
}

void HALS_Device::ClearDeviceArrivalTime(const __CFString **this)
{
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  Setting = HALS_SettingsManager::ReadSetting(*(v7 + 1776), this[15]);
  v9 = &unk_1F5991008;
  v10 = Setting;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    OS::CF::MutableDictionary::MutableDictionary(&v7, v10);
    OS::CF::MutableDictionary::RemoveKey(v8, @"global.arrival");
    v3[0] = 0;
    v3[1] = 0;
    HALS_System::GetInstance(&v4, 0, v3);
    HALS_SettingsManager::WriteSetting(*(v4 + 1776), this[15], v8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    OS::CF::UntypedObject::~UntypedObject(&v7);
  }

  OS::CF::UntypedObject::~UntypedObject(&v9);
}

void sub_1DE700268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject((v13 - 32));
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::HasValidDSP(HALS_Device *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_Device11HasValidDSPEv_block_invoke;
  v4[3] = &unk_1E8678A30;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE700368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HALS_DSPSettings *___ZNK11HALS_Device11HasValidDSPEv_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = *(*(a1 + 40) + 472);
  if (result)
  {
    result = HALS_DSPSettings::HasValidDSPString(result, a2);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_Device::ReapplyDSP(HALS_Device *this)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN11HALS_Device10ReapplyDSPEv_block_invoke;
  v6[3] = &unk_1E8678A08;
  v6[4] = &v7;
  v6[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v6);
  if (v8[3])
  {
    v3 = 1;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN11HALS_Device19ClearDSPDescriptionEv_block_invoke;
    v11[3] = &__block_descriptor_tmp_74_19818;
    v11[4] = this;
    v4 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v4, v11);
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

void sub_1DE700514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN11HALS_Device10ReapplyDSPEv_block_invoke(uint64_t a1)
{
  result = HALS_Device::_SetDSPSettingsFromDescription(*(a1 + 40), (*(a1 + 40) + 472), *(*(a1 + 40) + 488));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN11HALS_Device19ClearDSPDescriptionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 480) == 1)
  {
    v2 = *(v1 + 472);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  *(v1 + 472) = 0;
  *(v1 + 481) = 0;
  *(v1 + 488) = 0;
}

uint64_t HALS_Device::_SetDSPSettingsFromDescription(HALS_Device *this, const __CFDictionary **a2, AudioObjectPropertyScope a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = v29;
  if (HALS_DSPSettings::HasValidDSPString(*a2, a2))
  {
    HALS_DSPSettings::FromDictionary(v19, *a2);
    v7 = v27;
    if (v7 >= (*(*this + 392))(this, 0))
    {
      v10 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].mSelector = 136315394;
        *&buf[0].mScope = "HALS_Device.cpp";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 1083;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Target stream for DSP is not available or out of range.", buf, 0x12u);
        v10 = 0;
      }
    }

    else
    {
      v8 = (*(*this + 400))(this, 0, v27);
      v10 = HALS_Device::SetStreamDSP(this, v8, v19);
      if (v10)
      {
        memset(buf, 0, sizeof(buf));
        v43 = &unk_1F5991008;
        v44 = 0;
        v45 = &unk_1F5991008;
        v46 = 0u;
        memset(v48, 0, sizeof(v48));
        v50 = &unk_1F5991008;
        v51 = 0;
        v11 = *(this + 59);
        if (v11)
        {
          HALS_DSPSettings::FromDictionary(v29, v11);
          if (SHIBYTE(buf[1].mElement) < 0)
          {
            operator delete(*&buf[0].mSelector);
          }

          *&buf[0].mSelector = *v29;
          v12 = v30;
          HIBYTE(v30) = 0;
          LOBYTE(v29[0]) = 0;
          v13 = v44;
          *&buf[1].mScope = v12;
          v44 = v32;
          v32 = v13;
          v14 = v46;
          v46 = *cf;
          *cf = v14;
          v47 = v35;
          if (*v48)
          {
            *&v48[8] = *v48;
            operator delete(*v48);
          }

          *v48 = __p;
          *&v48[16] = v37;
          v37 = 0;
          __p = 0uLL;
          v49 = v38;
          v15 = v51;
          v51 = v40;
          v40 = v15;
          v52 = v41;
          OS::CF::UntypedObject::~UntypedObject(&v39);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          if (cf[1])
          {
            CFRelease(cf[1]);
          }

          OS::CF::UntypedObject::~UntypedObject(&v33);
          OS::CF::UntypedObject::~UntypedObject(&v31);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }

          LODWORD(v6) = v47;
        }

        v16 = v24;
        OS::CF::UntypedObject::~UntypedObject(&v50);
        if (*v48)
        {
          *&v48[8] = *v48;
          operator delete(*v48);
        }

        if (*(&v46 + 1))
        {
          CFRelease(*(&v46 + 1));
        }

        OS::CF::UntypedObject::~UntypedObject(&v45);
        OS::CF::UntypedObject::~UntypedObject(&v43);
        if (SHIBYTE(buf[1].mElement) < 0)
        {
          operator delete(*&buf[0].mSelector);
        }

        if (v16 != v6)
        {
          v17 = v8[4];
          buf[0].mSelector = 1936092532;
          buf[0].mScope = a3;
          buf[0].mElement = 0;
          HALS_Object::PropertiesChanged(this, v17, 0, 1, buf);
        }
      }

      HALS_ObjectMap::ReleaseObject(v8, v9);
    }

    OS::CF::UntypedObject::~UntypedObject(&v28);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    OS::CF::UntypedObject::~UntypedObject(&v22);
    OS::CF::UntypedObject::~UntypedObject(&v21);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    v10 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "HALS_Device.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 1088;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Given HAL DSP dictionary is missing the DSP description string for kAudioDSPDescriptionKey_DSPGraph key.", buf, 0x12u);
      return 0;
    }
  }

  return v10;
}

void sub_1DE7009FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE700A54(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE700A5CLL);
  }

  JUMPOUT(0x1DE700A40);
}

void sub_1DE700A68(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE700A70);
  }

  JUMPOUT(0x1DE700A40);
}

uint64_t HALS_Device::SetStreamDSP(HALS_Device *this, HALS_Stream *a2, const HALS_DSPSettings *a3)
{
  if (!a2)
  {
    return 0;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = ___ZNK11HALS_Device17GetIndexForStreamEP11HALS_Stream_block_invoke;
  v20 = &unk_1E8678940;
  v21 = &v24;
  v22 = this;
  v23 = a2;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, &v17);
  v7 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);
  v8 = *(a2 + 52);
  if (AMCP::Feature_Flags::run_hybrid_hal(v9, v10))
  {
    v16[0] = 0;
    v16[1] = 0;
    HALS_System::GetInstance(&v17, 0, v16);
    v11 = *(v17 + 1744);
    os_unfair_lock_lock(v11 + 4);
    os_unfair_lock_unlock(v11 + 4);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    return 0;
  }

  v13 = (*(*this + 408))(this);
  v15 = v13;
  if (v13)
  {
    LOBYTE(a3) = (*(*v13 + 496))(v13, v8, v7, a3);
  }

  HALS_ObjectMap::ReleaseObject(v15, v14);
  return (v15 != 0) & a3;
}

void sub_1DE700CB0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE700C88);
}

void ___ZNK11HALS_Device17GetIndexForStreamEP11HALS_Stream_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    if (*(v3 + 56) == 2)
    {
      v4 = 0;
      goto LABEL_18;
    }

    v5 = *(v3 + 52);
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v2 + 392))(a1[5], v5 & 1);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = (*(*v2 + 400))(v2, v5 & 1, v7);
      HALS_ObjectMap::ReleaseObject(v8, v9);
      if (v8 == v3)
      {
        v4 = v7;
      }

      else
      {
        v4 = -1;
      }

      v7 = (v7 + 1);
    }

    while (v4 == -1 && v7 < v6);
  }

  else
  {
    v4 = -1;
  }

LABEL_18:
  *(*(a1[4] + 8) + 24) = v4;
}

void sub_1DE700DFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

float HALS_Device::GetCombinedVolumeScalarForClient(HALS_Device *this, int a2, char a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1065353216;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_Device32GetCombinedVolumeScalarForClientEjb_block_invoke;
  v6[3] = &unk_1E8678B60;
  v6[4] = &v9;
  v6[5] = this;
  v7 = a2;
  v8 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_1DE700F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::DoAnyQueuesHaveWorkAfterFlush(HALS_Device *this)
{
  v1 = atomic_load(this + 817);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = atomic_load(this + 1153);
  }

  return v2 & 1;
}

void HALS_Device::FlushAllQueues(HALS_Device *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));
}

void HALS_Device::HandleOwnedObjectPropertiesChanged(HALS_Device *this, const HALS_Object *a2, unsigned int a3, int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  v54 = a6;
  v55 = a3;
  LODWORD(v7) = a4;
  memset(v64, 0, sizeof(v64));
  __p = 0;
  v62 = 0;
  v63 = 0;
  v10 = *(a2 + 5);
  IsSubClass = HALB_Info::IsSubClass(v10, 1633907820);
  v13 = *(a2 + 6);
  v57 = this;
  if (v10 == v13 || IsSubClass)
  {
    v14 = v10 != v13 || IsSubClass;
    if (v14 != 1)
    {
      goto LABEL_188;
    }
  }

  else if (!HALB_Info::IsSubClass(v13, 1633907820))
  {
LABEL_188:
    v56 = 0;
    goto LABEL_189;
  }

  v15 = *(a2 + 13);
  v53 = v7;
  if (v7)
  {
    v16 = *(a2 + 12);
    qmemcpy(v52, "srhturtpurhturtpbnsldpatmlovnscl", sizeof(v52));
    v56 = 1835295859;
    v17 = a5;
    for (i = v53; i; --i)
    {
      mSelector = v17->mSelector;
      ++v17;
      v19 = mSelector;
      if (mSelector <= 1818456931)
      {
        if (v19 <= 1668049770)
        {
          if (v19 != 1650685548)
          {
            if (v19 == 1651272546)
            {
              if (v10 == 1936028002)
              {
                LODWORD(v60) = 1936811108;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else if (v19 == 1651272548 && v10 == 1936028002)
            {
              LODWORD(v60) = 1936811109;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v10 <= 1819504225)
          {
            if (v10 <= 1702259058)
            {
              switch(v10)
              {
                case 1650602615:
                  LODWORD(v60) = 1650602615;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1668049264:
                  LODWORD(v60) = 1668049264;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1684895092:
                  LODWORD(v60) = 1684895092;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }

            else if (v10 > 1784767338)
            {
              if (v10 == 1784767339)
              {
                LODWORD(v60) = 1784767339;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1815241314)
              {
                LODWORD(v60) = 1815241314;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else if (v10 == 1702259059)
            {
              *&v60 = __PAIR64__(v16, HIDWORD(v52[2]));
              DWORD2(v60) = v15;
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            else if (v10 == 1718432370)
            {
              LODWORD(v60) = 1718432370;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v10 > 1936682094)
          {
            if (v10 > 1952541793)
            {
              if (v10 == 1952541794)
              {
                LODWORD(v60) = 1952541794;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1999790690)
              {
                LODWORD(v60) = 1999790690;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              continue;
            }

            if (v10 != 1936682095)
            {
              if (v10 == 1937072749)
              {
                LODWORD(v60) = 1936553332;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              continue;
            }

            if (v16 == 1886679669)
            {
              *&v60 = v52[0];
            }

            else
            {
              LODWORD(v60) = 1936682095;
              DWORD1(v60) = v16;
            }

            goto LABEL_160;
          }

          if (v10 > 1885888877)
          {
            if (v10 == 1885888878)
            {
              LODWORD(v60) = 1885888878;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            else if (v10 == 1885893481)
            {
              LODWORD(v60) = 1885893481;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v10 == 1819504226)
          {
            *&v60 = __PAIR64__(v16, v52[2]);
            DWORD2(v60) = v15;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
          }

          else if (v10 == 1836414053)
          {
            if (v16 == 1886679669)
            {
              *&v60 = v52[1];
            }

            else
            {
              LODWORD(v60) = 1836414053;
              DWORD1(v60) = v16;
            }

            goto LABEL_160;
          }
        }

        else if (v19 > 1818453106)
        {
          if (v19 == 1818453107)
          {
            switch(v10)
            {
              case 1936028007:
                LODWORD(v60) = 1936811878;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1937072758:
                LODWORD(v60) = 1935946358;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1986817381:
                if (v16 == 1886679669)
                {
                  *&v60 = 0x707472756D763273;
                }

                else
                {
                  LODWORD(v60) = 1684157046;
                  DWORD1(v60) = v16;
                }

                goto LABEL_160;
            }
          }

          else if (v19 == 1818453110)
          {
            switch(v10)
            {
              case 1936028007:
                LODWORD(v60) = 1936811876;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1937072758:
                LODWORD(v60) = 1937140836;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1986817381:
                if (v16 == 1886679669)
                {
                  *&v60 = 0x707472756D766462;
                }

                else
                {
                  LODWORD(v60) = 1987013732;
                  DWORD1(v60) = v16;
                }

                goto LABEL_160;
            }
          }
        }

        else
        {
          if (v19 == 1668049771)
          {
            if (v10 == 1668047723)
            {
              LODWORD(v60) = 1668506475;
              *(&v60 + 4) = __PAIR64__(v15, v16);
              CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            }

            continue;
          }

          if (v19 == 1818453106)
          {
            switch(v10)
            {
              case 1936028007:
                LODWORD(v60) = 1936811890;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1937072758:
                LODWORD(v60) = 1937138723;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                break;
              case 1986817381:
                if (v16 == 1886679669)
                {
                  *&v60 = 0x707472756D766423;
                }

                else
                {
                  LODWORD(v60) = 1986290211;
                  DWORD1(v60) = v16;
                }

                goto LABEL_160;
            }
          }
        }
      }

      else if (v19 > 1935893352)
      {
        if (v19 <= 1936745314)
        {
          if (v19 == 1935893353)
          {
            if (v10 <= 1685287522)
            {
              if (v10 == 1668047723)
              {
                LODWORD(v60) = 1668510307;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1684370292)
              {
                *&v60 = __PAIR64__(v16, v56);
                DWORD2(v60) = v15;
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else
            {
              switch(v10)
              {
                case 1852601964:
                  LODWORD(v60) = 1852601964;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1751740518:
                  LODWORD(v60) = 1751740518;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1685287523:
                  LODWORD(v60) = 1936945763;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }
          }

          else if (v19 == 1935894894)
          {
            if (v10 <= 1685287522)
            {
              if (v10 == 1668047723)
              {
                *&v60 = __PAIR64__(v16, HIDWORD(v52[3]));
                DWORD2(v60) = v15;
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1684370292)
              {
                LODWORD(v60) = 1835295843;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else
            {
              switch(v10)
              {
                case 1852601964:
                  LODWORD(v60) = 1818455660;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1751740518:
                  LODWORD(v60) = 1751740524;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1685287523:
                  LODWORD(v60) = 1819501422;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }
          }

          continue;
        }

        if (v19 != 1936745315)
        {
          if (v19 != 1936745334 || v10 != 1936744814)
          {
            continue;
          }

          if (v16 == 1886679669)
          {
            *&v60 = 0x707472756D73706ELL;
          }

          else
          {
            LODWORD(v60) = 1936744814;
            DWORD1(v60) = v16;
          }

          goto LABEL_160;
        }

        if (v10 == 1936744814)
        {
          if (v16 == 1886679669)
          {
            *&v60 = 0x707472756D737023;
          }

          else
          {
            LODWORD(v60) = 1936748067;
            DWORD1(v60) = v16;
          }

          goto LABEL_160;
        }
      }

      else if (v19 > 1818457189)
      {
        if (v19 != 1818457190)
        {
          if (v19 == 1935892841)
          {
            if (v10 <= 1685287522)
            {
              if (v10 == 1668047723)
              {
                LODWORD(v60) = 1668506403;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }

              else if (v10 == 1684370292)
              {
                LODWORD(v60) = 1835295779;
                *(&v60 + 4) = __PAIR64__(v15, v16);
                CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
              }
            }

            else
            {
              switch(v10)
              {
                case 1852601964:
                  LODWORD(v60) = 1852601891;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1751740518:
                  LODWORD(v60) = 1751740451;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
                case 1685287523:
                  LODWORD(v60) = 1936941859;
                  *(&v60 + 4) = __PAIR64__(v15, v16);
                  CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
                  break;
              }
            }
          }

          continue;
        }

        if (v10 == 1937072758)
        {
          LODWORD(v60) = 1937142886;
          *(&v60 + 4) = __PAIR64__(v15, v16);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
        }

        else if (v10 == 1986817381)
        {
          if (v16 == 1886679669)
          {
            *&v60 = 0x707472756D767466;
          }

          else
          {
            LODWORD(v60) = 1986229350;
            DWORD1(v60) = v16;
          }

          goto LABEL_160;
        }
      }

      else if (v19 == 1818456932)
      {
        switch(v10)
        {
          case 1936028007:
            LODWORD(v60) = 1936811892;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1937072758:
            LODWORD(v60) = 1937125988;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1986817381:
            if (v16 == 1886679669)
            {
              *&v60 = 0x707472756D763264;
            }

            else
            {
              LODWORD(v60) = 1983013986;
              DWORD1(v60) = v16;
            }

            goto LABEL_160;
        }
      }

      else if (v19 == 1818456950)
      {
        switch(v10)
        {
          case 1936028007:
            LODWORD(v60) = 1936811891;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1937072758:
            LODWORD(v60) = 1937140845;
            *(&v60 + 4) = __PAIR64__(v15, v16);
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
          case 1986817381:
            if (v16 == 1886679669)
            {
              *&v60 = 0x707472756D767363;
            }

            else
            {
              *&v60 = __PAIR64__(v16, v52[3]);
            }

LABEL_160:
            DWORD2(v60) = v15;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v12);
            break;
        }
      }
    }
  }

  TransportType = HALS_IODevice::GetTransportType(v57);
  v10 = *(a2 + 5);
  LODWORD(v13) = *(a2 + 6);
  LODWORD(v7) = v53;
  if (TransportType != 1651274862)
  {
    goto LABEL_188;
  }

  v22 = v10 == v13;
  v23 = v10 == 1685287523;
  if (v10 == 1685287523)
  {
    v22 = 1;
  }

  if (v10 != v13)
  {
    v23 = 1;
  }

  v24 = v22 ? v23 : v13 == 1685287523;
  if (v24 != 1 || v15 != 0)
  {
    goto LABEL_188;
  }

  v26 = a5;
  if (v53)
  {
    v27 = 12 * v53;
    v26 = a5;
    while (v26->mSelector != 1935893353)
    {
      ++v26;
      v27 -= 12;
      if (!v27)
      {
        goto LABEL_188;
      }
    }
  }

  if (v26 == &a5[v53])
  {
    goto LABEL_188;
  }

  HALS_Device::UpdateDeviceArrivalTime(v57);
  v28 = *(v57 + 4);
  v29 = v62;
  if (v62 >= v63)
  {
    v45 = __p;
    v46 = v62 - __p;
    v47 = (v62 - __p) >> 2;
    v48 = v47 + 1;
    if ((v47 + 1) >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v49 = v63 - __p;
    if ((v63 - __p) >> 1 > v48)
    {
      v48 = v49 >> 1;
    }

    if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v50 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v48;
    }

    if (v50)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v50);
    }

    v51 = (4 * v47);
    *v51 = v28;
    v7 = (v51 + 1);
    memcpy(0, v45, v46);
    __p = 0;
    v63 = 0;
    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    *v62 = v28;
    v7 = v29 + 4;
  }

  v62 = v7;
  v56 = 1;
  v10 = *(a2 + 5);
  LODWORD(v13) = *(a2 + 6);
  LODWORD(v7) = v53;
LABEL_189:
  if (v10 == v13 || v10 == 1634956402)
  {
    if (v10 != 1634956402 && v10 == v13)
    {
      goto LABEL_214;
    }
  }

  else if (v13 != 1634956402)
  {
    goto LABEL_214;
  }

  v30 = *(a2 + 4);
  *&v60 = 0x676C6F627363686ELL;
  DWORD2(v60) = 0;
  v65[0] = 0;
  (*(*a2 + 120))(a2, v30, &v60, 4, v65, v65 + 4, 0, 0, 0);
  v31 = HIDWORD(v65[0]);
  v32 = *(a2 + 4);
  *&v60 = 0x676C6F6273646972;
  DWORD2(v60) = 0;
  v65[0] = 0;
  (*(*a2 + 120))(a2, v32, &v60, 4, v65, v65 + 4, 0, 0, 0);
  if (HIDWORD(v65[0]))
  {
    v34 = 1768845428;
  }

  else
  {
    v34 = 1869968496;
  }

  if (v7)
  {
    v7 = v7;
    do
    {
      v36 = a5->mSelector;
      ++a5;
      v35 = v36;
      if (v36 > 1936092512)
      {
        if (v35 == 1936092513)
        {
          LODWORD(v60) = 1936092513;
          *(&v60 + 4) = __PAIR64__(v31, v34);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          LODWORD(v60) = 1936092451;
          *(&v60 + 4) = __PAIR64__(v31, v34);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v39);
          if (v31 == 1)
          {
            LODWORD(v60) = 1936092513;
            *(&v60 + 4) = v34;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
            LODWORD(v60) = 1936092451;
            *(&v60 + 4) = v34;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v40);
          }
        }

        else if (v35 == 1936092532)
        {
          LODWORD(v60) = 1936092532;
          *(&v60 + 4) = __PAIR64__(v31, v34);
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          if (v31 == 1)
          {
            LODWORD(v60) = 1936092532;
            *(&v60 + 4) = v34;
            CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          }
        }
      }

      else if (v35 == 1885762592)
      {
        LODWORD(v60) = 1885762592;
        *(&v60 + 4) = __PAIR64__(v31, v34);
        CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
        if (v31 == 1)
        {
          LODWORD(v60) = 1885762592;
          *(&v60 + 4) = v34;
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
        }
      }

      else if (v35 == 1885762657)
      {
        LODWORD(v60) = 1885762657;
        *(&v60 + 4) = __PAIR64__(v31, v34);
        CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
        LODWORD(v60) = 1885762595;
        *(&v60 + 4) = __PAIR64__(v31, v34);
        CAPropertyAddressList::AppendUniqueItem(v64, &v60, v37);
        if (v31 == 1)
        {
          LODWORD(v60) = 1885762657;
          *(&v60 + 4) = v34;
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v33);
          LODWORD(v60) = 1885762595;
          *(&v60 + 4) = v34;
          CAPropertyAddressList::AppendUniqueItem(v64, &v60, v38);
        }
      }

      --v7;
    }

    while (v7);
  }

LABEL_214:
  v41 = *&v64[0];
  if (*&v64[0] != *(&v64[0] + 1))
  {
    v42 = *(v57 + 4);
    v43 = -1431655765 * ((*(&v64[0] + 1) - *&v64[0]) >> 2);
    if (v54)
    {
      HALS_Object::PropertiesChanged_Sync(v57, v42, v55, v43, *&v64[0]);
    }

    else
    {
      HALS_Object::PropertiesChanged(v57, v42, v55, v43, *&v64[0]);
    }
  }

  v44 = __p;
  if (v56)
  {
    if (__p == v62)
    {
      v59[0] = 0;
      v59[1] = 0;
      HALS_System::GetInstance(&v60, 0, v59);
      HALS_System::CheckForDefaultDeviceChanges(v60);
    }

    else
    {
      v58[0] = 0;
      v58[1] = 0;
      HALS_System::GetInstance(&v60, 0, v58);
      HALS_System::CheckForDefaultDeviceChanges(v60, &__p);
    }

    if (*(&v60 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
    }
  }

  if (v44)
  {
    operator delete(v44);
  }

  if (v41)
  {
    operator delete(v41);
  }
}

void sub_1DE7023A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Device::UpdateDeviceArrivalTime(HALS_Device *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (HALS_IODevice::GetTransportType(this) == 1651274862 && ((v2 = (*(*this + 648))(this, 1685287523, 1869968496, 0)) == 0 && (v2 = (*(*this + 648))(this, 1685287523, 1768845428, 0), pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize), !v2) ? (v5 = 0) : (v4 = v2[4], v18 = 0x676C6F6273636369, LODWORD(v19) = 0, v16 = 0, LODWORD(v14) = 0, (*(*v2 + 120))(v2, v4, &v18, 4, &v14, &v16, 0, 0, 0), v5 = v16), (HALS_ObjectMap::ReleaseObject(v2, v3), v5 == 1769173099) || v5 == 1768778083) || (IsHidden = HALS_Device::IsHidden(this)))
  {
    *(this + 53) = 0;
    *(this + 54) = 0;
  }

  else
  {
    *(this + 53) = HALS_System::GetCurrentDeviceArrivalTime(IsHidden);
    *(this + 54) = v7;
  }

  OS::CF::MutableDictionary::MutableDictionary(&v16);
  v13[0] = 0;
  v13[1] = 0;
  HALS_System::GetInstance(&v18, 0, v13);
  Setting = HALS_SettingsManager::ReadSetting(*(v18 + 1776), *(this + 15));
  v14 = &unk_1F5991008;
  theDict = Setting;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (theDict)
  {
    OS::CF::MutableDictionary::operator=(&v16, theDict);
  }

  OS::CF::Number::Number<unsigned long long>(&v10, *(this + 53));
  v18 = @"seed";
  v19 = v11;
  OS::CF::Number::Number<unsigned long long>(v9, *(this + 54));
  v20 = @"time";
  v21 = v9[1];
  OS::CF::Dictionary::Dictionary(v12, &v18, 2uLL);
  OS::CF::UntypedObject::~UntypedObject(v9);
  OS::CF::UntypedObject::~UntypedObject(&v10);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Dictionary>(v17, @"global.arrival", v12[1]);
  v10 = 0;
  v11 = 0;
  HALS_System::GetInstance(&v18, 0, &v10);
  HALS_SettingsManager::WriteSetting(*(v18 + 1776), *(this + 15), v17);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  OS::CF::UntypedObject::~UntypedObject(v12);
  OS::CF::UntypedObject::~UntypedObject(&v14);
  OS::CF::UntypedObject::~UntypedObject(&v16);
}

void HALS_Device::SetPropertyData(HALS_Device *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, unsigned int a4, float *a5, unsigned int a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v8 = a8;
  v394 = *MEMORY[0x1E69E9840];
  v381 = a4;
  v380 = a5;
  v379 = a6;
  v378 = a7;
  v377 = a8;
  v376[0] = this;
  v376[1] = &v377;
  v376[2] = a3;
  v376[3] = &v381;
  v376[4] = &v380;
  v376[5] = &v379;
  v376[6] = &v378;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, a2))
  {
    v12 = atomic_load(this + 40);
    if (v8)
    {
      mSelector = v8[20].mSelector;
    }

    else
    {
      mSelector = getpid();
    }

    if (v12 != -1 && v12 != mSelector)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4536;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: the given process does not own hog mode", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    v8 = v377;
  }

  v14 = (*(*this + 184))(this, a3, v8);
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4537;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: the given process is just plain not allowed", buf, 0x12u);
    }

    v284 = __cxa_allocate_exception(0x10uLL);
    *v284 = off_1F5991DD8;
    v284[2] = 560492391;
  }

  v15 = a3->mSelector;
  if (a3->mSelector > 1751413615)
  {
    if (v15 <= 1934647618)
    {
      if (v15 <= 1852793962)
      {
        if (v15 == 1751413616)
        {
          if (v381 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4862;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyDSPDescription", buf, 0x12u);
            }

            v292 = __cxa_allocate_exception(0x10uLL);
            *v292 = off_1F5991DD8;
            v292[2] = 561211770;
          }

          if (!v380)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4863;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: null CFStringRef specificed for kAudioDevicePropertyDSPDescription", buf, 0x12u);
            }

            v297 = __cxa_allocate_exception(0x10uLL);
            *v297 = off_1F5991DD8;
            v297[2] = 2003329396;
          }

          *theDict = 0;
          *&theDict[8] = theDict;
          *&theDict[16] = 0x2000000000;
          LOBYTE(v383) = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3002000000;
          *&buf[24] = __Block_byref_object_copy__227;
          *&buf[32] = __Block_byref_object_dispose__228;
          *&buf[40] = 0;
          v343[0] = MEMORY[0x1E69E9820];
          v343[1] = 0x40000000;
          v343[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_229;
          v343[3] = &unk_1E8679118;
          v343[5] = this;
          v343[4] = buf;
          v54 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v54, v343);
          v56 = *(*&buf[8] + 40);
          if (v56)
          {
            memset(v392, 0, sizeof(v392));
            (*(*v56 + 224))(v56, v392);
            v342[0] = MEMORY[0x1E69E9820];
            v342[1] = 0x40000000;
            v342[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2_231;
            v342[3] = &unk_1E8679140;
            v342[5] = this;
            v342[4] = theDict;
            v342[6] = v380;
            v342[7] = a3;
            v57 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v57, v342);
            (*(**(*&buf[8] + 40) + 232))(*(*&buf[8] + 40), v392);
            v56 = *&v392[0].mSelector;
            if (*&v392[0].mSelector)
            {
              *&v392[0].mElement = *&v392[0].mSelector;
              operator delete(*&v392[0].mSelector);
            }
          }

          if (AMCP::Feature_Flags::run_hybrid_hal(v56, v55))
          {
            v341[0] = MEMORY[0x1E69E9820];
            v341[1] = 0x40000000;
            v341[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_3;
            v341[3] = &unk_1E8679168;
            v341[5] = this;
            v341[4] = theDict;
            v341[6] = v380;
            v341[7] = a3;
            v58 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v58, v341);
          }

          if (*(*&theDict[8] + 24) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v392[0].mSelector = 136315394;
              *&v392[0].mScope = "HALS_Device.cpp";
              LOWORD(v392[1].mSelector) = 1024;
              *(&v392[1].mSelector + 2) = 4889;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Could not set given DSP description.", v392, 0x12u);
            }

            v304 = __cxa_allocate_exception(0x10uLL);
            *v304 = off_1F5991DD8;
            v304[2] = 1852797029;
          }

          v59 = *(this + 4);
          if (v377)
          {
            mScope = v377[1].mScope;
          }

          else
          {
            mScope = 0;
          }

          v139 = a3->mScope;
          v392[0].mSelector = 1751413616;
          *&v392[0].mScope = v139;
          HALS_Object::PropertiesChanged(this, v59, mScope, 1, v392);
          _Block_object_dispose(buf, 8);
          HALS_ObjectMap::ReleaseObject(*&buf[40], v140);
          goto LABEL_304;
        }

        if (v15 == 1818454126)
        {
          if (v381 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4546;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioObjectPropertyElementName", buf, 0x12u);
            }

            v290 = __cxa_allocate_exception(0x10uLL);
            *v290 = off_1F5991DD8;
            v290[2] = 561211770;
          }

          v375[0] = MEMORY[0x1E69E9820];
          v375[1] = 0x40000000;
          v375[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
          v375[3] = &__block_descriptor_tmp_209;
          v375[4] = this;
          v375[5] = a3;
          v375[6] = v380;
          v35 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v35, v375);
          v36 = *(this + 4);
          if (v377)
          {
            v37 = v377[1].mScope;
          }

          else
          {
            v37 = 0;
          }

          *buf = 1818454126;
          *&buf[4] = *&a3->mScope;
          HALS_Object::PropertiesChanged(this, v36, v37, 1, buf);
          return;
        }
      }

      else
      {
        switch(v15)
        {
          case 1852793963:
            if (v381 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4828;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessDuckOptOut", buf, 0x12u);
              }

              v295 = __cxa_allocate_exception(0x10uLL);
              *v295 = off_1F5991DD8;
              v295[2] = 561211770;
            }

            v71 = HALS_Device::CopyIOEngineReplacerOwningDevice(this);
            v72 = v71;
            if (v71)
            {
              v73 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v73 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v71);
              }

              v75 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v74)
              {
                atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                v76 = *v75;
                std::__shared_weak_count::__release_shared[abi:ne200100](v74);
              }

              else
              {
                v76 = *v75;
              }

              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                v146 = (*(*v72 + 224))(v72);
                *buf = 136315906;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4833;
                *&buf[18] = 2082;
                *&buf[20] = this + 164;
                *&buf[28] = 2082;
                *&buf[30] = v146;
                _os_log_impl(&dword_1DE1F9000, v76, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Device '%{public}s' has a engine replacer '%{public}s', forwarding volume ducking command", buf, 0x26u);
              }

              (*(*v72 + 128))(v72, v72[4], a3, v381, v380, v379, v378, v377);
            }

            v147 = *v380 != 0;
            v346[0] = MEMORY[0x1E69E9820];
            v346[1] = 0x40000000;
            v346[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_223;
            v346[3] = &__block_descriptor_tmp_224;
            v346[4] = this;
            v346[5] = v377;
            v347 = v147;
            v148 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v148, v346);
            HALS_ObjectMap::ReleaseObject(v72, v149);
            return;
          case 1853059700:
            if (v381 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4611;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
              }

              v98 = __cxa_allocate_exception(0x10uLL);
              *v98 = off_1F5991DD8;
              v98[2] = 561211770;
            }

            return;
          case 1869180523:
            if (v381 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4561;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyHogMode", buf, 0x12u);
              }

              v287 = __cxa_allocate_exception(0x10uLL);
              *v287 = off_1F5991DD8;
              v287[2] = 561211770;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2000000000;
            v19 = v377;
            if (v377)
            {
              v20 = v377[20].mSelector;
            }

            else
            {
              v20 = getpid();
              v19 = v377;
            }

            *&buf[24] = v20;
            *theDict = 0;
            *&theDict[8] = theDict;
            *&theDict[16] = 0x2000000000;
            LODWORD(v383) = 0;
            *&v392[0].mSelector = 0;
            *&v392[0].mElement = v392;
            *&v392[1].mScope = 0x2000000000;
            LOBYTE(v393) = 0;
            v374[0] = MEMORY[0x1E69E9820];
            v374[1] = 0x40000000;
            v374[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_210;
            v374[3] = &unk_1E8678FC0;
            v374[8] = v19;
            v374[4] = buf;
            v374[5] = v392;
            v374[7] = this;
            v374[6] = theDict;
            v129 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v129, v374);
            if (*(*&theDict[8] + 24))
            {
              v300 = __cxa_allocate_exception(0x10uLL);
              v301 = *(*&theDict[8] + 24);
              *v300 = off_1F5991DD8;
              v300[2] = v301;
            }

            if (*(*&v392[0].mElement + 24) == 1)
            {
              v130 = (*(*this + 408))(this);
              v132 = v130;
              if (v130)
              {
                v130 = (*(*v130 + 304))(v130, *(*&buf[8] + 24));
              }

              if (AMCP::Feature_Flags::run_hybrid_hal(v130, v131))
              {
                v373[1] = 0;
                v373[0] = 0;
                HALS_System::GetInstance(&v390, 0, v373);
                HALS_IOContext_Manager::hog_mode_owner_changed(*(v390 + 1744), this, *(*&buf[8] + 24));
                if (*(&v390 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v390 + 1));
                }
              }

              v372[1] = 0;
              v372[0] = 0;
              HALS_System::GetInstance(&v390, 0, v372);
              HALS_System::CheckForDefaultDeviceChanges(v390);
              if (*(&v390 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v390 + 1));
              }

              v133 = *(this + 4);
              if (v377)
              {
                v134 = v377[1].mScope;
              }

              else
              {
                v134 = 0;
              }

              *&v390 = 0x676C6F626F696E6BLL;
              DWORD2(v390) = 0;
              HALS_Object::PropertiesChanged(this, v133, v134, 1, &v390);
              HALS_ObjectMap::ReleaseObject(v132, v160);
            }

            *v380 = *(*&buf[8] + 24);
            _Block_object_dispose(v392, 8);
LABEL_271:
            _Block_object_dispose(theDict, 8);
LABEL_296:
            v163 = buf;
LABEL_297:
            _Block_object_dispose(v163, 8);
            return;
        }
      }

LABEL_606:
      if (HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376))
      {
        AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
      }

      HALS_Object::SetPropertyData(this, a2, a3, v306, v307, v308, v309, v377);
    }

    if (v15 <= 1936879203)
    {
      if (v15 == 1934647619)
      {
        v64 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376);
        if (v64)
        {
          v64 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        if (a3->mScope == 1768845428)
        {
          v172 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v172 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v64);
          }

          v174 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v173 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v173)
          {
            atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
            v175 = *v174;
            std::__shared_weak_count::__release_shared[abi:ne200100](v173);
          }

          else
          {
            v175 = *v174;
          }

          if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5060;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == true";
            _os_log_error_impl(&dword_1DE1F9000, v175, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for output scope kAudioDevicePropertySpatializationVirtualChannelLayout", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5060;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v65 = v380;
        if (!v380)
        {
          v192 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v192 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v64);
          }

          v194 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v193 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v193)
          {
            atomic_fetch_add_explicit(&v193->__shared_owners_, 1uLL, memory_order_relaxed);
            v195 = *v194;
            std::__shared_weak_count::__release_shared[abi:ne200100](v193);
          }

          else
          {
            v195 = *v194;
          }

          if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5062;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v195, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertySpatializationVirtualChannelLayout", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5062;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v66 = v381;
        v67 = caulk::numeric::exceptional_mul<unsigned int>(*(v380 + 2));
        v68 = caulk::numeric::exceptional_add<unsigned int>(v67);
        if (v66 < v68)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5064;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: kAudioDevicePropertySpatializationVirtualChannelLayout: the provided size is smaller than what is specified in the data", buf, 0x12u);
          }

          v305 = __cxa_allocate_exception(0x10uLL);
          *v305 = off_1F5991DD8;
          v305[2] = 561211770;
        }

        if (!v377)
        {
          v228 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v228 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v68);
          }

          v230 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v229 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v229)
          {
            atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
            v231 = *v230;
            std::__shared_weak_count::__release_shared[abi:ne200100](v229);
          }

          else
          {
            v231 = *v230;
          }

          if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5066;
            *&buf[18] = 2080;
            *&buf[20] = "inClient == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v231, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertySpatializationVirtualChannelLayout", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5066;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZN11HALS_Device35SetDSPVirtualChannelLayoutForClientEbP11HALS_ClientPK18AudioChannelLayout_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_303;
        v389 = 0;
        *&buf[32] = this;
        *&buf[40] = v377;
        v388 = v65;
        v69 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v69, buf);
        return;
      }

      if (v15 == 1934647636)
      {
        v46 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376);
        if (v46)
        {
          v46 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        v47 = a3->mScope == 1768845428;
        if (a3->mScope == 1768845428)
        {
          v168 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v168 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v170 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v169 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v169)
          {
            atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
            v171 = *v170;
            std::__shared_weak_count::__release_shared[abi:ne200100](v169);
          }

          else
          {
            v171 = *v170;
          }

          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5019;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == true";
            _os_log_error_impl(&dword_1DE1F9000, v171, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for output scope kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5019;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (!v380)
        {
          v188 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v188 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v190 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v189 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v189)
          {
            atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
            v191 = *v190;
            std::__shared_weak_count::__release_shared[abi:ne200100](v189);
          }

          else
          {
            v191 = *v190;
          }

          if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5020;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v191, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5020;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (v381 != 4)
        {
          v212 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v212 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v214 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v213 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v213)
          {
            atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
            v215 = *v214;
            std::__shared_weak_count::__release_shared[abi:ne200100](v213);
          }

          else
          {
            v215 = *v214;
          }

          if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5021;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize != sizeof(UInt32)";
            _os_log_error_impl(&dword_1DE1F9000, v215, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5021;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v48 = *v380;
        if (*v380 >= 3u)
        {
          v232 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v232 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v234 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v233 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v233)
          {
            atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
            v235 = *v234;
            std::__shared_weak_count::__release_shared[abi:ne200100](v233);
          }

          else
          {
            v235 = *v234;
          }

          if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5024;
            *&buf[18] = 2080;
            *&buf[20] = "dataValue > kAudioDevicePropertySpatializationTypeSpatialize";
            _os_log_error_impl(&dword_1DE1F9000, v235, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData inData is an invalid value for kAudioDevicePropertySpatializationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5024;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        buf[24] = 0;
        v324[0] = MEMORY[0x1E69E9820];
        v324[1] = 0x40000000;
        v324[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_244;
        v324[3] = &unk_1E8679208;
        v325 = v48;
        v324[4] = buf;
        v324[5] = this;
        v326 = v47;
        v324[6] = v377;
        v49 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v49, v324);
        if (*(*&buf[8] + 24) == 1)
        {
          v50 = *(this + 4);
          if (v377)
          {
            v51 = v377[1].mScope;
          }

          else
          {
            v51 = 0;
          }

          strcpy(theDict, "TaPsptuo");
          theDict[9] = 0;
          *&theDict[10] = 0;
          HALS_Object::PropertiesChanged(this, v50, v51, 1, theDict);
        }

        goto LABEL_296;
      }

      goto LABEL_606;
    }

    if (v15 != 1936879204)
    {
      if (v15 == 1983996971)
      {
        v103 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376);
        if (v103)
        {
          v103 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        v104 = a3->mScope == 1768845428;
        if (a3->mScope != 1768845428)
        {
          v180 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v180 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v182 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v181 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v181)
          {
            atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
            v183 = *v182;
            std::__shared_weak_count::__release_shared[abi:ne200100](v181);
          }

          else
          {
            v183 = *v182;
          }

          if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5081;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == false";
            _os_log_error_impl(&dword_1DE1F9000, v183, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for input scope kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5081;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (!v380)
        {
          v204 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v204 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v206 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v205 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v205)
          {
            atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
            v207 = *v206;
            std::__shared_weak_count::__release_shared[abi:ne200100](v205);
          }

          else
          {
            v207 = *v206;
          }

          if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5082;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v207, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5082;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (v381 != 4)
        {
          v220 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v220 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v222 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v221 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v221)
          {
            atomic_fetch_add_explicit(&v221->__shared_owners_, 1uLL, memory_order_relaxed);
            v223 = *v222;
            std::__shared_weak_count::__release_shared[abi:ne200100](v221);
          }

          else
          {
            v223 = *v222;
          }

          if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5083;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize != sizeof(UInt32)";
            _os_log_error_impl(&dword_1DE1F9000, v223, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5083;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (!v377)
        {
          v240 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v240 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v242 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v241 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v241)
          {
            atomic_fetch_add_explicit(&v241->__shared_owners_, 1uLL, memory_order_relaxed);
            v243 = *v242;
            std::__shared_weak_count::__release_shared[abi:ne200100](v241);
          }

          else
          {
            v243 = *v242;
          }

          if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5084;
            *&buf[18] = 2080;
            *&buf[20] = "inClient == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v243, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5084;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v105 = atomic_load(&v377[22].mScope);
        if ((v105 & 1) == 0)
        {
          v252 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v252 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v254 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v253 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v253)
          {
            atomic_fetch_add_explicit(&v253->__shared_owners_, 1uLL, memory_order_relaxed);
            v255 = *v254;
            std::__shared_weak_count::__release_shared[abi:ne200100](v253);
          }

          else
          {
            v255 = *v254;
          }

          if (os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5085;
            *&buf[18] = 2080;
            *&buf[20] = "!inClient->SandboxAllowsMicAccess()";
            _os_log_error_impl(&dword_1DE1F9000, v255, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient does not have permission to set kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 560492391;
          *&theDict[8] = 560492391;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5085;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v106 = *v380;
        if (*v380 >= 2u)
        {
          v264 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v264 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v103);
          }

          v266 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v265 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v265)
          {
            atomic_fetch_add_explicit(&v265->__shared_owners_, 1uLL, memory_order_relaxed);
            v267 = *v266;
            std::__shared_weak_count::__release_shared[abi:ne200100](v265);
          }

          else
          {
            v267 = *v266;
          }

          if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5088;
            *&buf[18] = 2080;
            *&buf[20] = "dataValue > 1";
            _os_log_error_impl(&dword_1DE1F9000, v267, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData inData is an invalid value for kAudioDevicePropertyVoiceActivityDetectionEnable", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 5088;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        buf[24] = 0;
        v321[0] = MEMORY[0x1E69E9820];
        v321[1] = 0x40000000;
        v321[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_247;
        v321[3] = &unk_1E8679230;
        v322 = v106;
        v321[4] = buf;
        v321[5] = this;
        v323 = v104;
        v321[6] = v377;
        v107 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v107, v321);
        if (*(*&buf[8] + 24) == 1)
        {
          v108 = *(this + 4);
          if (v377)
          {
            v109 = v377[1].mScope;
          }

          else
          {
            v109 = 0;
          }

          strcpy(theDict, "+dAvtpni");
          theDict[9] = 0;
          *&theDict[10] = 0;
          HALS_Object::PropertiesChanged(this, v108, v109, 1, theDict);
        }

        goto LABEL_296;
      }

      if (v15 == 1986622324)
      {
        if (HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376))
        {
          AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
        if (!NumberStreamsExcludingReferenceStreams)
        {
          v184 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v184 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v186 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v185 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v185)
          {
            atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
            v187 = *v186;
            std::__shared_weak_count::__release_shared[abi:ne200100](v185);
          }

          else
          {
            v187 = *v186;
          }

          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4974;
            *&buf[18] = 2080;
            *&buf[20] = "hasNonReferenceInputStream == false";
            _os_log_error_impl(&dword_1DE1F9000, v187, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: Device does not have non-reference input streams kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4974;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v28 = a3->mScope == 1768845428;
        if (a3->mScope != 1768845428)
        {
          v208 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v208 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v210 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v209 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v209)
          {
            atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
            v211 = *v210;
            std::__shared_weak_count::__release_shared[abi:ne200100](v209);
          }

          else
          {
            v211 = *v210;
          }

          if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4976;
            *&buf[18] = 2080;
            *&buf[20] = "isInput == false";
            _os_log_error_impl(&dword_1DE1F9000, v211, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: only valid for input scope kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4976;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (!v380)
        {
          v224 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v224 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v226 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v225 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v225)
          {
            atomic_fetch_add_explicit(&v225->__shared_owners_, 1uLL, memory_order_relaxed);
            v227 = *v226;
            std::__shared_weak_count::__release_shared[abi:ne200100](v225);
          }

          else
          {
            v227 = *v226;
          }

          if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4977;
            *&buf[18] = 2080;
            *&buf[20] = "inData == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v227, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4977;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (v381 != 4)
        {
          v244 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v244 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v246 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v245 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v245)
          {
            atomic_fetch_add_explicit(&v245->__shared_owners_, 1uLL, memory_order_relaxed);
            v247 = *v246;
            std::__shared_weak_count::__release_shared[abi:ne200100](v245);
          }

          else
          {
            v247 = *v246;
          }

          if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4978;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize != sizeof(UInt32)";
            _os_log_error_impl(&dword_1DE1F9000, v247, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4978;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        if (!v377)
        {
          v256 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v256 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v258 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v257 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v257)
          {
            atomic_fetch_add_explicit(&v257->__shared_owners_, 1uLL, memory_order_relaxed);
            v259 = *v258;
            std::__shared_weak_count::__release_shared[abi:ne200100](v257);
          }

          else
          {
            v259 = *v258;
          }

          if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4979;
            *&buf[18] = 2080;
            *&buf[20] = "inClient == nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v259, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4979;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v29 = atomic_load(&v377[22].mScope);
        if ((v29 & 1) == 0)
        {
          v268 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v268 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v270 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v269 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v269)
          {
            atomic_fetch_add_explicit(&v269->__shared_owners_, 1uLL, memory_order_relaxed);
            v271 = *v270;
            std::__shared_weak_count::__release_shared[abi:ne200100](v269);
          }

          else
          {
            v271 = *v270;
          }

          if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4980;
            *&buf[18] = 2080;
            *&buf[20] = "!inClient->SandboxAllowsMicAccess()";
            _os_log_error_impl(&dword_1DE1F9000, v271, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::GetPropertyData: inClient does not have permission to set kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 560492391;
          *&theDict[8] = 560492391;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4980;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        v30 = *v380;
        if (*v380 >= 3u)
        {
          v276 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v276 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
          }

          v278 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v277 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v277)
          {
            atomic_fetch_add_explicit(&v277->__shared_owners_, 1uLL, memory_order_relaxed);
            v279 = *v278;
            std::__shared_weak_count::__release_shared[abi:ne200100](v277);
          }

          else
          {
            v279 = *v278;
          }

          if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4983;
            *&buf[18] = 2080;
            *&buf[20] = "dataValue > kAudioDevicePropertyVocalIsolationTypeBasic";
            _os_log_error_impl(&dword_1DE1F9000, v279, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData inData is an invalid value for kAudioDevicePropertyVocalIsolationType", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
          __cxa_allocate_exception(0x40uLL);
          v330 = off_1F5991DD8;
          v331 = 1852797029;
          *&theDict[8] = 1852797029;
          v385 = 0;
          v383 = 0;
          v384 = 0;
          v386 = -1;
          *theDict = &unk_1F598E5D8;
          *&theDict[16] = &unk_1F598E600;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
          *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
          LODWORD(v388) = 4983;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        buf[24] = 0;
        v327[0] = MEMORY[0x1E69E9820];
        v327[1] = 0x40000000;
        v327[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_241;
        v327[3] = &unk_1E86791E0;
        v328 = v30;
        v327[4] = buf;
        v327[5] = this;
        v329 = v28;
        v327[6] = v377;
        v31 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v31, v327);
        if (*(*&buf[8] + 24) == 1)
        {
          v32 = *(this + 4);
          if (v377)
          {
            v33 = v377[1].mScope;
          }

          else
          {
            v33 = 0;
          }

          strcpy(theDict, "tsivtpni");
          theDict[9] = 0;
          *&theDict[10] = 0;
          HALS_Object::PropertiesChanged(this, v32, v33, 1, theDict);
        }

        goto LABEL_296;
      }

      goto LABEL_606;
    }

    TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, a3->mScope == 1768845428, v377);
    v83 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
    v84 = caulk::numeric::exceptional_add<unsigned int>(v83);
    v85 = v381;
    if (v381 < v84)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4655;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyPreferredChannelLayout", buf, 0x12u);
      }

      v299 = __cxa_allocate_exception(0x10uLL);
      *v299 = off_1F5991DD8;
      v299[2] = 561211770;
    }

    v86 = v380;
    v87 = caulk::numeric::exceptional_mul<unsigned int>(*(v380 + 2));
    if (v85 < caulk::numeric::exceptional_add<unsigned int>(v87))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4659;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: kAudioDevicePropertyPreferredChannelLayout: the provided size is smaller than what is specified in the data", buf, 0x12u);
      }

      v303 = __cxa_allocate_exception(0x10uLL);
      *v303 = off_1F5991DD8;
      v303[2] = 561211770;
    }

    v368[1] = 0;
    v368[0] = 0;
    HALS_System::GetInstance(theDict, 0, v368);
    *buf = HALS_SettingsManager::ReadSetting(*(*theDict + 1776), *(this + 15));
    *&buf[8] = 1;
    if (*&theDict[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&theDict[8]);
    }

    *theDict = 0;
    *&theDict[8] = 257;
    if (*buf)
    {
      CACFDictionary::SetCFMutableDictionaryFromCopy(theDict, *buf);
    }

    else
    {
      CACFDictionary::SetCFMutableDictionaryToEmpty(theDict);
    }

    *&v392[0].mSelector = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    LOWORD(v392[0].mElement) = 257;
    HALS_Device::ConstructDictionaryFromLayout(v86, v392, v135);
    v136 = a3->mScope;
    if (v136 == 1869968496)
    {
      if (theDict[9] == 1 && *&v392[0].mSelector && *theDict)
      {
        CFDictionarySetValue(*theDict, @"output.surround", *&v392[0].mSelector);
      }

      v366[1] = 0;
      v366[0] = 0;
      HALS_System::GetInstance(&v390, 0, v366);
      HALS_SettingsManager::WriteSetting(*(v390 + 1776), *(this + 15), *theDict);
      if (*(&v390 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v390 + 1));
      }

      v144 = *(this + 4);
      if (v377)
      {
        v145 = v377[1].mScope;
      }

      else
      {
        v145 = 0;
      }

      *&v390 = 0x6F75747073726E64;
      DWORD2(v390) = 0;
      HALS_Object::PropertiesChanged(this, v144, v145, 1, &v390);
    }

    else if (v136 == 1768845428)
    {
      if (theDict[9] == 1 && *&v392[0].mSelector && *theDict)
      {
        CFDictionarySetValue(*theDict, @"input.surround", *&v392[0].mSelector);
      }

      v367[1] = 0;
      v367[0] = 0;
      HALS_System::GetInstance(&v390, 0, v367);
      HALS_SettingsManager::WriteSetting(*(v390 + 1776), *(this + 15), *theDict);
      if (*(&v390 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v390 + 1));
      }

      v137 = *(this + 4);
      if (v377)
      {
        v138 = v377[1].mScope;
      }

      else
      {
        v138 = 0;
      }

      *&v390 = 0x696E707473726E64;
      DWORD2(v390) = 0;
      HALS_Object::PropertiesChanged(this, v137, v138, 1, &v390);
    }

    CACFDictionary::~CACFDictionary(v392);
LABEL_293:
    CACFDictionary::~CACFDictionary(theDict);
    CACFDictionary::~CACFDictionary(buf);
    return;
  }

  if (v15 > 1684236337)
  {
    if (v15 > 1684500593)
    {
      switch(v15)
      {
        case 1684500594:
          if (!v378)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4942;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: inQualifierData is nullptr for kAudioDevicePropertyDSPGraphProperty", buf, 0x12u);
            }

            v296 = __cxa_allocate_exception(0x10uLL);
            *v296 = off_1F5991DD8;
            v296[2] = 1852797029;
          }

          if (v379 != 4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4944;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inQualifierDataSize for kAudioDevicePropertyDSPGraphProperty", buf, 0x12u);
            }

            v298 = __cxa_allocate_exception(0x10uLL);
            *v298 = off_1F5991DD8;
            v298[2] = 1852797029;
          }

          v77 = a3->mScope;
          if (v77 != 1768845428 && v77 != 1869968496)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4946;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inAddress.mScope for kAudioDevicePropertyDSPGraphProperty", buf, 0x12u);
            }

            v310 = __cxa_allocate_exception(0x10uLL);
            *v310 = off_1F5991DD8;
            v310[2] = 1852797029;
          }

          v78 = *v378;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          buf[24] = 0;
          v333[0] = MEMORY[0x1E69E9820];
          v333[1] = 0x40000000;
          v333[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_236;
          v333[3] = &unk_1E86791B8;
          v333[4] = buf;
          v333[5] = this;
          v336 = v77 == 1768845428;
          v334 = v78;
          v335 = v381;
          v333[6] = a3;
          v333[7] = v380;
          v79 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v79, v333);
          if (*(*&buf[8] + 24) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *theDict = 136315394;
              *&theDict[4] = "HALS_Device.cpp";
              *&theDict[12] = 1024;
              *&theDict[14] = 4959;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  SetStreamDSPProperty failure", theDict, 0x12u);
            }

            v302 = __cxa_allocate_exception(0x10uLL);
            *v302 = off_1F5991DD8;
            v302[2] = 1852797029;
          }

          v80 = *(this + 4);
          if (v377)
          {
            v81 = v377[1].mScope;
          }

          else
          {
            v81 = 0;
          }

          *theDict = 1684500594;
          *&theDict[4] = *&a3->mScope;
          HALS_Object::PropertiesChanged(this, v80, v81, 1, theDict);
          goto LABEL_296;
        case 1685278562:
          v99 = HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376);
          if (v99)
          {
            v99 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          }

          if (!v380)
          {
            v176 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v176 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v99);
            }

            v178 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v177 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v177)
            {
              atomic_fetch_add_explicit(&v177->__shared_owners_, 1uLL, memory_order_relaxed);
              v179 = *v178;
              std::__shared_weak_count::__release_shared[abi:ne200100](v177);
            }

            else
            {
              v179 = *v178;
            }

            if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5119;
              *&buf[18] = 2080;
              *&buf[20] = "inData == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v179, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: outData is nullptr for kAudioDevicePropertyDSPOffloadBypass", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
            __cxa_allocate_exception(0x40uLL);
            v330 = off_1F5991DD8;
            v331 = 1852797029;
            *&theDict[8] = 1852797029;
            v385 = 0;
            v383 = 0;
            v384 = 0;
            v386 = -1;
            *theDict = &unk_1F598E5D8;
            *&theDict[16] = &unk_1F598E600;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
            *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
            LODWORD(v388) = 5119;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
          }

          if (v381 != 8)
          {
            v200 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v200 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v99);
            }

            v202 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v201 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v201)
            {
              atomic_fetch_add_explicit(&v201->__shared_owners_, 1uLL, memory_order_relaxed);
              v203 = *v202;
              std::__shared_weak_count::__release_shared[abi:ne200100](v201);
            }

            else
            {
              v203 = *v202;
            }

            if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5120;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize != sizeof(CFDictionaryRef)";
              _os_log_error_impl(&dword_1DE1F9000, v203, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not CFDictionaryRef for kAudioDevicePropertyDSPOffloadBypass", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
            __cxa_allocate_exception(0x40uLL);
            v330 = off_1F5991DD8;
            v331 = 1852797029;
            *&theDict[8] = 1852797029;
            v385 = 0;
            v383 = 0;
            v384 = 0;
            v386 = -1;
            *theDict = &unk_1F598E5D8;
            *&theDict[16] = &unk_1F598E600;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
            *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
            LODWORD(v388) = 5120;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
          }

          if (!v377 && (*(this + 660) & 1) == 0)
          {
            v280 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v280 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v99);
            }

            v282 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v281 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v281)
            {
              atomic_fetch_add_explicit(&v281->__shared_owners_, 1uLL, memory_order_relaxed);
              v283 = *v282;
              std::__shared_weak_count::__release_shared[abi:ne200100](v281);
            }

            else
            {
              v283 = *v282;
            }

            if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5121;
              *&buf[18] = 2080;
              *&buf[20] = "inClient == nullptr && !mHostedDSPClientInfo.allows_null_client()";
              _os_log_error_impl(&dword_1DE1F9000, v283, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyDSPOffloadBypass", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
            __cxa_allocate_exception(0x40uLL);
            v330 = off_1F5991DD8;
            v331 = 1852797029;
            *&theDict[8] = 1852797029;
            v385 = 0;
            v383 = 0;
            v384 = 0;
            v386 = -1;
            *theDict = &unk_1F598E5D8;
            *&theDict[16] = &unk_1F598E600;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
            *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
            LODWORD(v388) = 5121;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3002000000;
          *&buf[24] = __Block_byref_object_copy__249;
          *&buf[32] = __Block_byref_object_dispose__250;
          *&buf[40] = 0;
          v320[0] = MEMORY[0x1E69E9820];
          v320[1] = 0x40000000;
          v320[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_251;
          v320[3] = &unk_1E8679258;
          v320[4] = buf;
          v320[5] = this;
          v320[6] = a3;
          v320[7] = v377;
          v320[8] = v380;
          v100 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v100, v320);
          if (*(*&buf[8] + 40) == 1)
          {
            v101 = *(this + 4);
            if (v377)
            {
              v102 = v377[1].mScope;
            }

            else
            {
              v102 = 0;
            }

            mElement = a3->mElement;
            *theDict = *&a3->mSelector;
            *&theDict[8] = mElement;
            HALS_Object::PropertiesChanged(this, v101, v102, 1, theDict);
          }

          goto LABEL_296;
        case 1685414763:
          if (v381 <= 0xF)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4803;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessDuck", buf, 0x12u);
            }

            v288 = __cxa_allocate_exception(0x10uLL);
            *v288 = off_1F5991DD8;
            v288[2] = 561211770;
          }

          v21 = HALS_Device::CopyIOEngineReplacerOwningDevice(this);
          v22 = v21;
          if (v21)
          {
            v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v23 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v21);
            }

            v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              v26 = *v25;
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            else
            {
              v26 = *v25;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v150 = (*(*v22 + 224))(v22);
              *buf = 136315906;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4808;
              *&buf[18] = 2082;
              *&buf[20] = this + 164;
              *&buf[28] = 2082;
              *&buf[30] = v150;
              _os_log_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Device '%{public}s' has a engine replacer '%{public}s', forwarding volume ducking command", buf, 0x26u);
            }

            (*(*v22 + 128))(v22, v22[4], a3, v381, v380, v379, v378, v377);
          }

          v151 = *v380;
          v152 = v380[2];
          v153 = v380[3];
          (*(*this + 272))(this);
          v155 = 0.0;
          if (v153 >= 0.0)
          {
            v156 = v153;
          }

          else
          {
            v156 = 0.0;
          }

          if (v152 >= 0.0)
          {
            v155 = v152;
          }

          if (v155 > 1.0)
          {
            v155 = 1.0;
          }

          v157 = v154 * v156;
          if (v157 < 1.0)
          {
            v157 = 1.0;
          }

          v348[0] = MEMORY[0x1E69E9820];
          v348[1] = 0x40000000;
          v348[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_221;
          v348[3] = &__block_descriptor_tmp_222;
          v348[4] = this;
          v348[5] = v377;
          v348[6] = v151;
          v349 = v155;
          v350 = v157;
          v158 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v158, v348);
          HALS_ObjectMap::ReleaseObject(v22, v159);
          return;
      }

      goto LABEL_606;
    }

    if (v15 != 1684236338)
    {
      if (v15 == 1684500589)
      {
        if (HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(v376))
        {
          AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
        }

        HasProperty = HALS_Device_HostedDSP::HasProperty(*(this + 79), a3, v377, v38);
        if ((HasProperty & 0x100) == 0)
        {
          if (!v380)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4910;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: inData in nullptr for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v311 = __cxa_allocate_exception(0x10uLL);
            *v311 = off_1F5991DD8;
            v311[2] = 1852797029;
          }

          if (v381 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4912;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v312 = __cxa_allocate_exception(0x10uLL);
            *v312 = off_1F5991DD8;
            v312[2] = 561211770;
          }

          if (!v378)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4914;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: inQualifierData is nullptr for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v313 = __cxa_allocate_exception(0x10uLL);
            *v313 = off_1F5991DD8;
            v313[2] = 1852797029;
          }

          if (v379 != 4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4916;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inQualifierDataSize for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v314 = __cxa_allocate_exception(0x10uLL);
            *v314 = off_1F5991DD8;
            v314[2] = 1852797029;
          }

          v40 = a3->mScope;
          if (v40 != 1768845428 && v40 != 1869968496)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4918;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: incorrect inAddress.mScope for kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
            }

            v316 = __cxa_allocate_exception(0x10uLL);
            *v316 = off_1F5991DD8;
            v316[2] = 1852797029;
          }

          v41 = *v380;
          v42 = *v378;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          buf[24] = 0;
          v337[0] = MEMORY[0x1E69E9820];
          v337[1] = 0x40000000;
          v337[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_234;
          v337[3] = &unk_1E8679190;
          v337[4] = buf;
          v337[5] = this;
          v340 = v40 == 1768845428;
          v337[6] = a3;
          v338 = v42;
          v339 = v41;
          v43 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v43, v337);
          if (*(*&buf[8] + 24) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *theDict = 136315394;
              *&theDict[4] = "HALS_Device.cpp";
              *&theDict[12] = 1024;
              *&theDict[14] = 4932;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  SetStreamDSPParameter failure", theDict, 0x12u);
            }

            v315 = __cxa_allocate_exception(0x10uLL);
            *v315 = off_1F5991DD8;
            v315[2] = 1852797029;
          }

          v44 = *(this + 4);
          if (v377)
          {
            v45 = v377[1].mScope;
          }

          else
          {
            v45 = 0;
          }

          *theDict = 1684500589;
          *&theDict[4] = *&a3->mScope;
          HALS_Object::PropertiesChanged(this, v44, v45, 1, theDict);
          goto LABEL_296;
        }

        if (a3->mSelector == 1684500589)
        {
          v110 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v110 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(HasProperty);
          }

          v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v111 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v111)
          {
            atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
            v113 = *v112;
            std::__shared_weak_count::__release_shared[abi:ne200100](v111);
          }

          else
          {
            v113 = *v112;
          }

          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Device_HostedDSP.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 656;
            _os_log_impl(&dword_1DE1F9000, v113, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][graph] Hosted DSP is processing a kAudioDevicePropertyDSPGraphParameter", buf, 0x12u);
          }

          *theDict = *&a3->mSelector;
          *&theDict[8] = a3->mElement;
          operator new();
        }

        return;
      }

      goto LABEL_606;
    }

    if (v381 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4619;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyPreferredChannelsForStereo", buf, 0x12u);
      }

      v293 = __cxa_allocate_exception(0x10uLL);
      *v293 = off_1F5991DD8;
      v293[2] = 561211770;
    }

    v371[1] = 0;
    v371[0] = 0;
    HALS_System::GetInstance(theDict, 0, v371);
    *buf = HALS_SettingsManager::ReadSetting(*(*theDict + 1776), *(this + 15));
    *&buf[8] = 1;
    if (*&theDict[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&theDict[8]);
    }

    *theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    *&theDict[8] = 257;
    if (*buf)
    {
      CACFDictionary::SetCFMutableDictionaryFromCopy(theDict, *buf);
    }

    v61 = a3->mScope;
    if (v61 == 1869968496)
    {
      v141 = v380;
      *(this + 38) = *v380;
      *(this + 39) = v141[1];
      CACFDictionary::AddUInt32(theDict, @"output.stereo.left", *v141);
      CACFDictionary::AddUInt32(theDict, @"output.stereo.right", *(v380 + 1));
      v369[1] = 0;
      v369[0] = 0;
      HALS_System::GetInstance(v392, 0, v369);
      HALS_SettingsManager::WriteSetting(*(*&v392[0].mSelector + 1776), *(this + 15), *theDict);
      if (*&v392[0].mElement)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v392[0].mElement);
      }

      v142 = *(this + 4);
      if (v377)
      {
        v143 = v377[1].mScope;
      }

      else
      {
        v143 = 0;
      }

      strcpy(v392, "2hcdptuo");
      BYTE1(v392[0].mElement) = 0;
      HIWORD(v392[0].mElement) = 0;
      HALS_Object::PropertiesChanged(this, v142, v143, 1, v392);
    }

    else if (v61 == 1768845428)
    {
      CACFDictionary::AddUInt32(theDict, @"input.stereo.left", *v380);
      CACFDictionary::AddUInt32(theDict, @"input.stereo.right", *(v380 + 1));
      v370[1] = 0;
      v370[0] = 0;
      HALS_System::GetInstance(v392, 0, v370);
      HALS_SettingsManager::WriteSetting(*(*&v392[0].mSelector + 1776), *(this + 15), *theDict);
      if (*&v392[0].mElement)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v392[0].mElement);
      }

      v62 = *(this + 4);
      if (v377)
      {
        v63 = v377[1].mScope;
      }

      else
      {
        v63 = 0;
      }

      strcpy(v392, "2hcdtpni");
      BYTE1(v392[0].mElement) = 0;
      HIWORD(v392[0].mElement) = 0;
      HALS_Object::PropertiesChanged(this, v62, v63, 1, v392);
    }

    goto LABEL_293;
  }

  if (v15 <= 1634758773)
  {
    if (v15 == 1634755428)
    {
      if (v381 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4847;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyClockDevice", buf, 0x12u);
        }

        v291 = __cxa_allocate_exception(0x10uLL);
        *v291 = off_1F5991DD8;
        v291[2] = 561211770;
      }

      v52 = v377;
      if (v377)
      {
        v52 = v377[1].mScope;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      buf[24] = 0;
      v344[0] = MEMORY[0x1E69E9820];
      v344[1] = 0x40000000;
      v344[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_225;
      v344[3] = &unk_1E86790F0;
      v344[5] = this;
      v344[4] = buf;
      v345 = v52;
      v344[6] = v380;
      v53 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v53, v344);
      goto LABEL_296;
    }

    if (v15 != 1634758765)
    {
      goto LABEL_606;
    }

    if (v381 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4763;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessMute", buf, 0x12u);
      }

      v289 = __cxa_allocate_exception(0x10uLL);
      *v289 = off_1F5991DD8;
      v289[2] = 561211770;
    }

    if (v377)
    {
      v34 = v377[1].mScope;
    }

    else
    {
      v34 = 0;
    }

    v114 = a3->mScope;
    *theDict = 0;
    *&theDict[8] = theDict;
    *&theDict[16] = 0x2000000000;
    LODWORD(v383) = 1065353216;
    v355[0] = MEMORY[0x1E69E9820];
    v355[1] = 0x40000000;
    v355[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_217;
    v355[3] = &unk_1E8679060;
    v355[5] = this;
    v355[4] = theDict;
    v356 = v34;
    v357 = v114 == 1768845428;
    v115 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v115, v355);
    v116 = *v380;
    if (*v380)
    {
      v117 = 0.0;
    }

    else
    {
      v117 = 1.0;
    }

    if (v117 != *(*&theDict[8] + 24))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v118 = *(this + 4);
        if (a3->mScope == 1768845428)
        {
          v119 = "input";
        }

        else
        {
          v119 = "output";
        }

        v120 = "on";
        *buf = 136316162;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[14] = 4774;
        *&buf[12] = 1024;
        *&buf[18] = 1024;
        if (v117 != 0.0)
        {
          v120 = "off";
        }

        *&buf[20] = v118;
        *&buf[24] = 2080;
        *&buf[26] = v119;
        *&buf[34] = 2080;
        *&buf[36] = v120;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_SetPropertyData: Object ID: %d setting process %s mute: %s", buf, 0x2Cu);
      }

      *&v392[0].mSelector = 0;
      *&v392[0].mElement = v392;
      *&v392[1].mScope = 0x2000000000;
      LOBYTE(v393) = 0;
      v351[0] = MEMORY[0x1E69E9820];
      v351[1] = 0x40000000;
      v351[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_219;
      v351[3] = &unk_1E8679088;
      v351[5] = this;
      v351[4] = v392;
      v352 = v34;
      v354 = v114 == 1768845428;
      v353 = v117;
      v121 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v121, v351);
      if (*(*&v392[0].mElement + 24) == 1)
      {
        if (v114 == 1768845428)
        {
          HALS_Device::ProcessMuteStateChanged(this, v377, v116 != 0);
        }

        v122 = a3->mScope;
        *buf = 1634758774;
        *&buf[4] = v122;
        *&buf[8] = 0x6170706D00000000;
        *&buf[16] = v122;
        v391 = 0;
        v390 = 0uLL;
        std::vector<CA::PropertyAddress>::__init_with_size[abi:ne200100]<CA::PropertyAddress const*,CA::PropertyAddress const*>(&v390, buf, &buf[24], 2uLL);
      }

      _Block_object_dispose(v392, 8);
    }

LABEL_304:
    v163 = theDict;
    goto LABEL_297;
  }

  if (v15 == 1634758774)
  {
    if (v381 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4722;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessVolumeScalar", buf, 0x12u);
      }

      v294 = __cxa_allocate_exception(0x10uLL);
      *v294 = off_1F5991DD8;
      v294[2] = 561211770;
    }

    if (v377)
    {
      v70 = v377[1].mScope;
    }

    else
    {
      v70 = 0;
    }

    v123 = a3->mScope == 1768845428;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    *&buf[24] = 1065353216;
    v362[0] = MEMORY[0x1E69E9820];
    v362[1] = 0x40000000;
    v362[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_214;
    v362[3] = &unk_1E8679010;
    v362[5] = this;
    v362[4] = buf;
    v363 = v70;
    v364 = v123;
    v124 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v124, v362);
    *&v125 = 0.0;
    if (*v380 < 0.0 || (v126 = 1.0, v125 = *v380, *v380 <= 1.0))
    {
      v126 = *&v125;
    }

    if (v126 == *(*&buf[8] + 24))
    {
      goto LABEL_296;
    }

    *theDict = 0;
    *&theDict[8] = theDict;
    *&theDict[16] = 0x2000000000;
    LOBYTE(v383) = 0;
    v358[0] = MEMORY[0x1E69E9820];
    v358[1] = 0x40000000;
    v358[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2;
    v358[3] = &unk_1E8679038;
    v358[5] = this;
    v358[4] = theDict;
    v359 = v70;
    v361 = v123;
    v360 = v126;
    v127 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v127, v358);
    if (*(*&theDict[8] + 24) == 1)
    {
      v128 = a3->mScope;
      LODWORD(v390) = 1634758774;
      *(&v390 + 4) = v128;
      memset(v392, 0, sizeof(v392));
      std::vector<CA::PropertyAddress>::__init_with_size[abi:ne200100]<CA::PropertyAddress const*,CA::PropertyAddress const*>(v392, &v390, (&v390 + 12), 1uLL);
    }

    goto LABEL_271;
  }

  if (v15 == 1667461733)
  {
    only_ios_high_quality_recording = AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(v14);
    if ((only_ios_high_quality_recording & 1) == 0)
    {
      only_macos_high_quality_local_recording = AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(only_ios_high_quality_recording);
      if ((only_macos_high_quality_local_recording & 1) == 0)
      {
        v164 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v164 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
        }

        v166 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v165 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v165)
        {
          atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
          v167 = *v166;
          std::__shared_weak_count::__release_shared[abi:ne200100](v165);
        }

        else
        {
          v167 = *v166;
        }

        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5138;
          *&buf[18] = 2080;
          *&buf[20] = "allowEC == false";
          _os_log_error_impl(&dword_1DE1F9000, v167, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: kAudioDevicePropertyContentCreationRecording feature disabled", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
        __cxa_allocate_exception(0x40uLL);
        v330 = off_1F5991DD8;
        v331 = 1852797029;
        *&theDict[8] = 1852797029;
        v385 = 0;
        v383 = 0;
        v384 = 0;
        v386 = -1;
        *theDict = &unk_1F598E5D8;
        *&theDict[16] = &unk_1F598E600;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
        *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
        LODWORD(v388) = 5138;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
      }
    }

    v90 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
    if (!v90)
    {
      v196 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v196 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v198 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v197 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v197)
      {
        atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
        v199 = *v198;
        std::__shared_weak_count::__release_shared[abi:ne200100](v197);
      }

      else
      {
        v199 = *v198;
      }

      if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5140;
        *&buf[18] = 2080;
        *&buf[20] = "hasNonReferenceInputStream == false";
        _os_log_error_impl(&dword_1DE1F9000, v199, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: Device does not have non-reference input streams kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
      __cxa_allocate_exception(0x40uLL);
      v330 = off_1F5991DD8;
      v331 = 1852797029;
      *&theDict[8] = 1852797029;
      v385 = 0;
      v383 = 0;
      v384 = 0;
      v386 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v388) = 5140;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
    }

    v91 = a3->mScope == 1768845428;
    if (a3->mScope != 1768845428)
    {
      v216 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v216 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v218 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v217 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v217)
      {
        atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
        v219 = *v218;
        std::__shared_weak_count::__release_shared[abi:ne200100](v217);
      }

      else
      {
        v219 = *v218;
      }

      if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5142;
        *&buf[18] = 2080;
        *&buf[20] = "isInput == false";
        _os_log_error_impl(&dword_1DE1F9000, v219, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: kAudioDevicePropertyContentCreationRecording is only valid for input scope", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
      __cxa_allocate_exception(0x40uLL);
      v330 = off_1F5991DD8;
      v331 = 1852797029;
      *&theDict[8] = 1852797029;
      v385 = 0;
      v383 = 0;
      v384 = 0;
      v386 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v388) = 5142;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
    }

    if (!v380)
    {
      v236 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v236 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v238 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v237 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v237)
      {
        atomic_fetch_add_explicit(&v237->__shared_owners_, 1uLL, memory_order_relaxed);
        v239 = *v238;
        std::__shared_weak_count::__release_shared[abi:ne200100](v237);
      }

      else
      {
        v239 = *v238;
      }

      if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5143;
        *&buf[18] = 2080;
        *&buf[20] = "inData == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v239, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inData is nullptr for kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
      __cxa_allocate_exception(0x40uLL);
      v330 = off_1F5991DD8;
      v331 = 1852797029;
      *&theDict[8] = 1852797029;
      v385 = 0;
      v383 = 0;
      v384 = 0;
      v386 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v388) = 5143;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
    }

    if (v381 != 4)
    {
      v248 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v248 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v250 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v249 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v249)
      {
        atomic_fetch_add_explicit(&v249->__shared_owners_, 1uLL, memory_order_relaxed);
        v251 = *v250;
        std::__shared_weak_count::__release_shared[abi:ne200100](v249);
      }

      else
      {
        v251 = *v250;
      }

      if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5144;
        *&buf[18] = 2080;
        *&buf[20] = "inDataSize != sizeof(UInt32)";
        _os_log_error_impl(&dword_1DE1F9000, v251, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
      __cxa_allocate_exception(0x40uLL);
      v330 = off_1F5991DD8;
      v331 = 1852797029;
      *&theDict[8] = 1852797029;
      v385 = 0;
      v383 = 0;
      v384 = 0;
      v386 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v388) = 5144;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
    }

    if (!v377)
    {
      v260 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v260 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v262 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v261 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v261)
      {
        atomic_fetch_add_explicit(&v261->__shared_owners_, 1uLL, memory_order_relaxed);
        v263 = *v262;
        std::__shared_weak_count::__release_shared[abi:ne200100](v261);
      }

      else
      {
        v263 = *v262;
      }

      if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5145;
        *&buf[18] = 2080;
        *&buf[20] = "inClient == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v263, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient is null for kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
      __cxa_allocate_exception(0x40uLL);
      v330 = off_1F5991DD8;
      v331 = 1852797029;
      *&theDict[8] = 1852797029;
      v385 = 0;
      v383 = 0;
      v384 = 0;
      v386 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v388) = 5145;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
    }

    v92 = atomic_load(&v377[22].mScope);
    if ((v92 & 1) == 0)
    {
      v272 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v272 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v90);
      }

      v274 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v273 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v273)
      {
        atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
        v275 = *v274;
        std::__shared_weak_count::__release_shared[abi:ne200100](v273);
      }

      else
      {
        v275 = *v274;
      }

      if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5146;
        *&buf[18] = 2080;
        *&buf[20] = "!inClient->SandboxAllowsMicAccess()";
        _os_log_error_impl(&dword_1DE1F9000, v275, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::SetPropertyData: inClient does not have permission to set kAudioDevicePropertyContentCreationRecording", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v332);
      __cxa_allocate_exception(0x40uLL);
      v330 = off_1F5991DD8;
      v331 = 560492391;
      *&theDict[8] = 560492391;
      v385 = 0;
      v383 = 0;
      v384 = 0;
      v386 = -1;
      *theDict = &unk_1F598E5D8;
      *&theDict[16] = &unk_1F598E600;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, theDict);
      *&buf[32] = "virtual void HALS_Device::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device.cpp";
      LODWORD(v388) = 5146;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v390);
    }

    v93 = *v380 != 0;
    v94 = v378;
    if (v378)
    {
      v94 = *v378;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    buf[24] = 0;
    v317[0] = MEMORY[0x1E69E9820];
    v317[1] = 0x40000000;
    v317[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_254;
    v317[3] = &unk_1E8679280;
    v317[4] = buf;
    v317[5] = this;
    v318 = v91;
    v319 = v93;
    v317[6] = v377;
    v317[7] = v94;
    v95 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v95, v317);
    if (*(*&buf[8] + 24) == 1)
    {
      v96 = *(this + 4);
      if (v377)
      {
        v97 = v377[1].mScope;
      }

      else
      {
        v97 = 0;
      }

      v162 = a3->mElement;
      *theDict = *&a3->mSelector;
      *&theDict[8] = v162;
      HALS_Object::PropertiesChanged(this, v96, v97, 1, theDict);
    }

    goto LABEL_296;
  }

  if (v15 != 1667523955)
  {
    goto LABEL_606;
  }

  if (v381 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4698;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: bad property data size for kAudioDevicePropertyClientDescription", buf, 0x12u);
    }

    v286 = __cxa_allocate_exception(0x10uLL);
    *v286 = off_1F5991DD8;
    v286[2] = 561211770;
  }

  if (v377)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    buf[24] = 0;
    v365[0] = MEMORY[0x1E69E9820];
    v365[1] = 0x40000000;
    v365[2] = ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_212;
    v365[3] = &unk_1E8678FE8;
    v365[6] = v377;
    v365[7] = v380;
    v365[5] = this;
    v365[4] = buf;
    v16 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v16, v365);
    if (*(*&buf[8] + 24) == 1)
    {
      v17 = *(this + 4);
      if (v377)
      {
        v18 = v377[1].mScope;
      }

      else
      {
        v18 = 0;
      }

      strcpy(theDict, "sedcbolg");
      theDict[9] = 0;
      *&theDict[10] = 0;
      HALS_Object::PropertiesChanged(this, v17, v18, 1, theDict);
    }

    goto LABEL_296;
  }
}

void sub_1DE709D84(_Unwind_Exception *a1)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    operator delete(v3);
  }

  _Block_object_dispose(&STACK[0x600], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4 = *(v1 + 4);
  v3 = *(v1 + 8);
  v5 = a1[6];
  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&Mutable, 0, v18);
  Setting = HALS_SettingsManager::ReadSetting(Mutable[222], *(v2 + 120));
  v22 = 1;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  LOWORD(v20) = 257;
  if (Setting)
  {
    CACFDictionary::SetCFMutableDictionaryFromCopy(&Mutable, Setting);
  }

  v6 = 0;
  if (v4 > 1869968495)
  {
    if (v4 == 1869968496)
    {
      v6 = @"output.elementnames";
    }

    else if (v4 == 1886679669)
    {
      v6 = @"through.elementnames";
    }
  }

  else if (v4 == 1735159650)
  {
    v6 = @"global.elementnames";
  }

  else if (v4 == 1768845428)
  {
    v6 = @"input.elementnames";
  }

  v16 = 0;
  v17 = 1;
  CACFDictionary::GetCACFDictionary(&Mutable, v6, &v16);
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v15 = 257;
  if (v16)
  {
    CACFDictionary::SetCFMutableDictionaryFromCopy(&theDict, v16);
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%lu", v3);
  key = v7;
  v13 = 1;
  if (v5 && (v8 = CFStringCompare(*v5, &stru_1F5992518, 1uLL), v7 = key, v8))
  {
    if (HIBYTE(v15) == 1 && *v5 && theDict)
    {
      CFDictionarySetValue(theDict, key, *v5);
    }
  }

  else if (HIBYTE(v15) == 1 && theDict)
  {
    CFDictionaryRemoveValue(theDict, v7);
  }

  if (BYTE1(v20) == 1 && theDict && Mutable)
  {
    CFDictionarySetValue(Mutable, v6, theDict);
  }

  v9[0] = 0;
  v9[1] = 0;
  HALS_System::GetInstance(&v10, 0, v9);
  HALS_SettingsManager::WriteSetting(*(v10 + 1776), *(v2 + 120), Mutable);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  CACFString::~CACFString(&key);
  CACFDictionary::~CACFDictionary(&theDict);
  CACFDictionary::~CACFDictionary(&v16);
  CACFDictionary::~CACFDictionary(&Mutable);
  CACFDictionary::~CACFDictionary(&Setting);
}

void sub_1DE70A378(void *a1)
{
  CACFDictionary::~CACFDictionary(&v3);
  CACFDictionary::~CACFDictionary(&v4);
  CACFDictionary::~CACFDictionary((v1 - 80));
  CACFDictionary::~CACFDictionary((v1 - 64));
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

unsigned int *___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_210(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = a1[7];
  v3 = *(*(a1[4] + 8) + 24);
  v4 = atomic_load(result + 40);
  v5 = atomic_load(result + 40);
  if (v4 == v3)
  {
    if (v5 == -1)
    {
      return result;
    }

    *(*(a1[4] + 8) + 24) = -1;
    result = HALS_Device::_SetHogModeOwner(result, *(*(a1[4] + 8) + 24));
  }

  else
  {
    if (v5 != -1 && a1[8])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "HALS_Device.cpp";
        v9 = 1024;
        v10 = 4569;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_SetPropertyData: kAudioDevicePropertyHogMode: hog mode is owned by another process", &v7, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    result = HALS_Device::_SetHogModeOwner(result, *(*(a1[4] + 8) + 24));
  }

  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_1DE70A5A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 48) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 48) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE70A4C0);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_Device::GetTotalNumberChannelsForClient(HALS_Device *this, char a2, HALS_Client *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_Device31GetTotalNumberChannelsForClientEbP11HALS_Client_block_invoke;
  v6[3] = &unk_1E8678990;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_212(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 744))(v2);
  (*(*v2 + 728))(v2, *(a1 + 48), **(a1 + 56));
  result = (*(*v2 + 744))(v2);
  *(*(*(a1 + 32) + 8) + 24) = v3 != result;
  return result;
}

void sub_1DE70A7B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE70A75CLL);
}

void sub_1DE70A820(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 768))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70A8A8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE70A934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Device::ProcessMuteStateChanged(HALS_Device *this, HALS_Client *a2, uint64_t a3)
{
  v32[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v18[0] = 0;
    v18[1] = 0;
    HALS_System::GetInstance(&v19, 0, v18);
    if (!v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2063;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::ProcessMuteStateChanged: there is no system", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4002000000;
    v30 = __Block_byref_object_copy__48;
    v31 = __Block_byref_object_dispose__49;
    memset(v32, 0, 24);
    v22 = 0;
    v23 = &v22;
    v24 = 0x4002000000;
    v25 = __Block_byref_object_copy__46;
    v26 = __Block_byref_object_dispose__47;
    memset(v27, 0, sizeof(v27));
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN11HALS_System23ProcessMuteStateChangedEPK11HALS_DeviceP11HALS_Clientb_block_invoke;
    v21[3] = &unk_1E86759F0;
    v21[5] = &v22;
    v21[6] = v19;
    v21[4] = buf;
    v6 = (*(*v19 + 64))(v19);
    HALB_CommandGate::ExecuteCommand(v6, v21);
    v7 = v23[5];
    v8 = v23[6];
    while (v7 != v8)
    {
      v9 = *(this + 4);
      if (v9 == (*(**(*v7 + 13) + 768))(*(*v7 + 13)))
      {
        v10 = **(*v7 + 9);
        if (v10 == *(a2 + 4) || v10 == 0)
        {
          (*(**(*v7 + 13) + 96))(*(*v7 + 13), a3);
        }
      }

      ++v7;
    }

    _Block_object_dispose(&v22, 8);
    v28 = v27;
    std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v28);
    _Block_object_dispose(buf, 8);
    v22 = v32;
    std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v22);
    platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v12);
    (*(*platform_behaviors + 64))(platform_behaviors);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZNK11HALS_Device23ProcessMuteStateChangedEP11HALS_Clientb_block_invoke;
    v16[3] = &__block_descriptor_tmp_128_19945;
    v16[4] = this;
    v16[5] = a2;
    v17 = a3;
    v14 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v14, v16);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }
}

uint64_t std::vector<CA::PropertyAddress>::__emplace_back_slow_path<CA::PropertyAddress>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v5 = 0x1555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 12 * v2;
  v7 = *a2;
  *(v6 + 8) = *(a2 + 2);
  *v6 = v7;
  v8 = 12 * v2 + 12;
  v9 = *(a1 + 8) - *a1;
  v10 = 12 * v2 - v9;
  memcpy((v6 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_1DE70AEC4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_219(uint64_t a1)
{
  result = (*(**(a1 + 40) + 768))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70AF4C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_ObjectMap *HALS_Device::CopyIOEngineReplacerOwningDevice(HALS_Device *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!AMCP::Feature_Flags::allow_unified_device_engine_replacer(this))
  {
    return 0;
  }

  v2 = *(this + 4);
  v38 = 0x676C6F6261657245;
  v39 = 0;
  if (((*(*this + 96))(this, v2, &v38, 0) & 1) == 0)
  {
    return 0;
  }

  *buf = 0;
  LODWORD(__p) = 0;
  (*(*this + 120))(this, v2, &v38, 4, &__p, buf, 0, 0, 0);
  if (!*buf)
  {
    return 0;
  }

  v36 = 0x676C6F6261657255;
  v37 = 0;
  v3 = (*(*this + 96))(this, v2, &v36, 0);
  if ((v3 & 1) == 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6258;
      *&buf[18] = 2080;
      *&buf[20] = this + 164;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d %s replacer engine property is not supported", buf, 0x1Cu);
    }

    return 0;
  }

  *buf = 0;
  LODWORD(__p) = 0;
  (*(*this + 120))(this, v2, &v36, 8, &__p, buf, 0, 0, 0);
  TypeID = *buf;
  cf = *buf;
  if (!*buf)
  {
    goto LABEL_17;
  }

  v5 = CFGetTypeID(*buf);
  TypeID = CFStringGetTypeID();
  if (v5 != TypeID)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf)
  {
LABEL_17:
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(TypeID);
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

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6265;
      *&buf[18] = 2080;
      *&buf[20] = this + 164;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d %s replacer engine uid is null", buf, 0x1Cu);
    }

    goto LABEL_27;
  }

  v34[0] = 0;
  v34[1] = 0;
  HALS_System::GetInstance(&__p, 0, v34);
  memset(buf, 0, 32);
  *&buf[32] = 1065353216;
  v6 = HALS_System::CopyDeviceByUID(__p, cf, 0, buf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
  v7 = v32;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (!v6)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      applesauce::CF::StringRef_proxy::StringRef_proxy(&v40, &cf);
      applesauce::CF::convert_to<std::string,0>(&__p, *v40);
      v27 = v33 >= 0 ? &__p : __p;
      *buf = 136315906;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6272;
      *&buf[18] = 2080;
      *&buf[20] = this + 164;
      *&buf[28] = 2080;
      *&buf[30] = v27;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d %s replacer engine object is null for UID %s", buf, 0x26u);
      if (v33 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  v8 = (*(*v6 + 40))(v6);
  if (v8)
  {
    v9 = 1;
    goto LABEL_29;
  }

  v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v23 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v8);
  }

  v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    v26 = *v25;
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  else
  {
    v26 = *v25;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v29 = (*(*v6 + 224))(v6);
    *buf = 136315906;
    *&buf[4] = "HALS_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6277;
    *&buf[18] = 2080;
    *&buf[20] = this + 164;
    *&buf[28] = 2080;
    *&buf[30] = v29;
    _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d %s the engine replacer device %s is not yet active", buf, 0x26u);
  }

  HALS_ObjectMap::ReleaseObject(v6, v28);
LABEL_28:
  v9 = 0;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return v6;
}

void sub_1DE70B56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(&a15);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE70B2B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_221(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  return (*(*v2 + 776))(v2, v4, *(a1 + 56), *(a1 + 48), *(a1 + 60));
}

void sub_1DE70B6A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_223(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  return (*(*v2 + 784))(v2, v4, *(a1 + 48));
}

void sub_1DE70B720(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_225(uint64_t a1)
{
  result = (*(**(a1 + 40) + 824))(*(a1 + 40), *(a1 + 56), **(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70B7A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__227(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_229(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 408))(*(a1 + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  HALS_ObjectMap::ReleaseObject(v5, v3);
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_2_231(uint64_t a1)
{
  result = HALS_Device::_SetDSPDescription(*(a1 + 40), **(a1 + 48), *(*(a1 + 56) + 4));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70B8A8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_3(uint64_t a1)
{
  result = HALS_Device::_SetDSPDescription(*(a1 + 40), **(a1 + 48), *(*(a1 + 56) + 4));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE70B908(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL HALS_Device::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0::operator()(uint64_t a1)
{
  v2 = *a1;
  if (!AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    return 0;
  }

  v3 = **(a1 + 8);
  v4 = v3 ? *(v3 + 16) : 0;
  HALS_Device::DSP_Config_Properties(&v11, v2, v4);
  v5 = v11;
  if (v11 && (*(*v11 + 24))(v11, *(a1 + 16)) && !(*(*v5 + 48))(v5, *(a1 + 16), **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48)))
  {
    v7 = 0;
  }

  else
  {
    HALS_Device::DSP_Instance_Properties(&v9, v2, **(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8) | 0x100000000);
    v6 = v9;
    v7 = !v9 || !(*(*v9 + 24))(v9, *(a1 + 16)) || (*(*v6 + 48))(v6, *(a1 + 16), **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return !v7;
}

void sub_1DE70BAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_234(uint64_t a1, const BOOL *a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  if (AMCP::Feature_Flags::run_hybrid_hal(a1, a2))
  {
    v13[0] = 0;
    v13[1] = 0;
    HALS_System::GetInstance(&v14, 0, v13);
    v8 = *(v14 + 1744);
    os_unfair_lock_lock(v8 + 4);
    os_unfair_lock_unlock(v8 + 4);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v9 = 0;
  }

  else
  {
    v10 = (*(*v4 + 408))(v4);
    v12 = v10;
    if (v10)
    {
      LOBYTE(v3) = (*(*v10 + 560))(v10, v3, v5, v6, v7);
    }

    HALS_ObjectMap::ReleaseObject(v12, v11);
    v9 = (v12 != 0) & v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
}

void sub_1DE70BC60(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  HALS_ObjectMap::ReleaseObject(v22, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_236(uint64_t a1, const BOOL *a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  v8 = *(a1 + 56);
  if (AMCP::Feature_Flags::run_hybrid_hal(a1, a2))
  {
    v14[0] = 0;
    v14[1] = 0;
    HALS_System::GetInstance(&v15, 0, v14);
    v9 = *(v15 + 1744);
    os_unfair_lock_lock(v9 + 4);
    os_unfair_lock_unlock(v9 + 4);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v10 = 0;
  }

  else
  {
    v11 = (*(*v4 + 408))(v4);
    v13 = v11;
    if (v11)
    {
      LOBYTE(v3) = (*(*v11 + 528))(v11, v3, v5, v6, v7, v8);
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
    v10 = (v13 != 0) & v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v10;
}

void sub_1DE70BDF4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  HALS_ObjectMap::ReleaseObject(v22, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::GetNumberStreamsExcludingReferenceStreams(HALS_Device *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_Device41GetNumberStreamsExcludingReferenceStreamsEb_block_invoke;
  v5[3] = &unk_1E8678918;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_241(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  if (v3 == 2)
  {
    v7 = *(a1 + 48);
    LODWORD(v16[0]) = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v12, v16, 1);
    v13 = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v11, &v13, 1);
    *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v7, v12, v11);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v11[1]);
    v6 = v12[1];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v3 == 1)
    {
      LODWORD(v16[0]) = 2;
      std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v15, v16, 1);
      v13 = 3;
      std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v14, &v13, 1);
      *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v5, v15, v14);
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v14[1]);
      v6 = v15[1];
    }

    else
    {
      v10[0] = 0;
      v10[1] = 0;
      v9 = v10;
      v16[0] = 0x200000003;
      std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v8, v16, 2);
      *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v5, &v9, v8);
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v8[1]);
      v6 = v10[0];
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v6);
}

void sub_1DE70C0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a2)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a17);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a20);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE70C0A8);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_244(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  if (v3 == 2)
  {
    v7 = *(a1 + 48);
    LODWORD(v16[0]) = 5;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v12, v16, 1);
    v13 = 4;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v11, &v13, 1);
    *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v7, v12, v11);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v11[1]);
    v6 = v12[1];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v3 == 1)
    {
      LODWORD(v16[0]) = 4;
      std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v15, v16, 1);
      v13 = 5;
      std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v14, &v13, 1);
      *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v5, v15, v14);
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v14[1]);
      v6 = v15[1];
    }

    else
    {
      v10[0] = 0;
      v10[1] = 0;
      v9 = v10;
      v16[0] = 0x400000005;
      std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v8, v16, 2);
      *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v5, &v9, v8);
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v8[1]);
      v6 = v10[0];
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v6);
}

void sub_1DE70C31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a2)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a17);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a20);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE70C2ECLL);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_247(uint64_t a1)
{
  v2 = *(a1 + 60);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v11 = 6;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v12, &v11, 1);
    v10[0] = 0;
    v10[1] = 0;
    v9 = v10;
    *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v4, v2, v3, v12, &v9);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v10[0]);
    v5 = v12[1];
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    v11 = 6;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v6, &v11, 1);
    *(*(*(a1 + 32) + 8) + 24) = HALS_Device::_ConfigureDSPTypesForClient(v4, v2, v3, &v7, v6);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v6[1]);
    v5 = v8[0];
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v5);
}

void sub_1DE70C4B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a11);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a14);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE70C49CLL);
}

uint64_t *___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_251(uint64_t *result)
{
  v1 = result;
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(result[5] + 632);
  if (v2)
  {
    if (*(result[6] + 4) != 1768845428)
    {
      v9 = 0;
      LOWORD(v10) = 0;
LABEL_94:
      v8 = v9 | (v10 << 8);
      v7 = *(v1[4] + 8);
      goto LABEL_95;
    }

    v3 = result[7];
    v4 = *result[8];
    if (v3)
    {
      v5 = *(v3 + 16);
      v6 = *&(*v2)[9].__m_.__opaque[48];
      if (v6)
      {
        HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&v55, v6, 1, result[7]);
LABEL_12:
        v12 = *v2;
        std::mutex::lock(*v2 + 11);
        v13 = HALS_Device_HostedDSP_ClientInfo::find(v12[10].__m_.__opaque, v3, 1uLL);
        if (!v13)
        {
          goto LABEL_16;
        }

        v14 = v13 + 4;
        v15 = v13[4];
        if (!v15)
        {
          operator new();
        }

        DSP_Host_OffloadDictionary::get_offload_id_list(v60, v15);
        DSP_Host_OffloadDictionary::deep_copy_from(v15, v4);
        v56 = 0;
        v57 = 0;
        v58 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v56, *v60, *&v60[8], 0xAAAAAAAAAAAAAAABLL * ((*&v60[8] - *v60) >> 3));
        has_same_ids = DSP_Host_OffloadDictionary::has_same_ids(v15, &v56);
        v59 = &v56;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
        v59 = v60;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
        if (!has_same_ids)
        {
          v56 = 0;
          v57 = 0;
          HALS_System::GetInstance(v60, 0, &v56);
          v17 = *(*v60 + 1800);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            v18 = HALS_DSPDeveloperPreferences::sInitValues;
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          else
          {
            v18 = HALS_DSPDeveloperPreferences::sInitValues;
          }

          v19 = *&v60[8];
          if (*&v60[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v60[8]);
          }

          if (v18 < 0)
          {
            goto LABEL_40;
          }

          v20 = *v14;
          v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v21 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v19);
          }

          v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            v24 = *v23;
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          else
          {
            v24 = *v23;
          }

          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
LABEL_40:
            v9 = 1;
          }

          else
          {
            v54 = v5;
            v25 = 0;
            v26 = 0;
            v27 = 47;
            do
            {
              v28 = &aLibraryCachesC_39[v25];
              if (v27 == 47)
              {
                v26 = &aLibraryCachesC_39[v25];
              }

              v27 = v28[1];
              if (!v28[1])
              {
                break;
              }
            }

            while (v25++ < 0xFFF);
            if (v26)
            {
              v30 = v26 + 1;
            }

            else
            {
              v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP_ClientInfo.cpp";
            }

            if (v3)
            {
              v31 = *(v3 + 16);
            }

            else
            {
              v31 = 0;
            }

            v32 = *&v12[10].__m_.__opaque[8];
            DSP_Host_OffloadDictionary::get_debug_string(&v56, *v14);
            if (v58 >= 0)
            {
              v33 = &v56;
            }

            else
            {
              v33 = v56;
            }

            *v60 = 136316418;
            *&v60[4] = v30;
            *&v60[12] = 1024;
            *&v60[14] = 218;
            v61 = 1024;
            v62 = v31;
            v63 = 1024;
            v64 = v32;
            v65 = 2048;
            v66 = v20;
            v67 = 2080;
            v68 = v33;
            _os_log_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads][bypass] (Client ID: %d) (Device ID: %d) (Storage: %p) is bypassing %s", v60, 0x32u);
            if (SHIBYTE(v58) < 0)
            {
              operator delete(v56);
            }

            v9 = 1;
            v5 = v54;
          }
        }

        else
        {
LABEL_16:
          v9 = 0;
        }

        std::mutex::unlock(v12 + 11);
        v34 = *&(*v2)[9].__m_.__opaque[48];
        if (v34)
        {
          HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&v59, v34, 1, v3);
          v35 = v59;
        }

        else
        {
          v35 = 0;
          v59 = 0;
        }

        v36 = v55;
        if (v55)
        {
          if (v35)
          {
            v37 = v35[2];
            if (v37)
            {
              if (CFDictionaryGetCount(v37))
              {
                if (!DSP_Host_OffloadDictionary::has_all_id(v35))
                {
                  v38 = *(v36 + 2);
                  if (v38)
                  {
                    if (CFDictionaryGetCount(v38) && !DSP_Host_OffloadDictionary::has_all_id(v36))
                    {
                      has_all_id = DSP_Host_OffloadDictionary::has_same_ids(v35, v36);
LABEL_67:
                      v10 = !has_all_id;
LABEL_69:
                      v56 = 0;
                      v57 = 0;
                      HALS_System::GetInstance(v60, 0, &v56);
                      v42 = *(*v60 + 1800);
                      if (v42)
                      {
                        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
                        v43 = HALS_DSPDeveloperPreferences::sInitValues;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
                      }

                      else
                      {
                        v43 = HALS_DSPDeveloperPreferences::sInitValues;
                      }

                      v44 = *&v60[8];
                      if (*&v60[8])
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*&v60[8]);
                      }

                      if ((v43 & 0x80000000) == 0)
                      {
                        v45 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                        if ((v45 & 1) == 0)
                        {
                          AMCP::Log::AMCP_Scope_Registry::initialize(v44);
                        }

                        v47 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                        v46 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                        if (v46)
                        {
                          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
                          v48 = *v47;
                          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
                        }

                        else
                        {
                          v48 = *v47;
                        }

                        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                        {
                          v49 = v5;
                          v50 = *&(*v2)->__m_.__opaque[8];
                          if (v10)
                          {
                            v51 = "";
                          }

                          else
                          {
                            v51 = "_NO_";
                          }

                          if (v59)
                          {
                            v52 = v59[2];
                            v53 = "NOPE, NO OFFLOADS";
                            if (v52 && CFDictionaryGetCount(v52))
                            {
                              v53 = "WITH OFFLOADS";
                            }
                          }

                          else
                          {
                            v53 = "NOPE, NO OFFLOADS";
                          }

                          *v60 = 136316418;
                          *&v60[4] = "HALS_Device_HostedDSP.cpp";
                          *&v60[12] = 1024;
                          *&v60[14] = 219;
                          v61 = 1024;
                          v62 = v49;
                          v63 = 1024;
                          v64 = v50;
                          v65 = 2080;
                          v66 = v51;
                          v67 = 2080;
                          v68 = v53;
                          _os_log_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads][bypass] (Client ID: %d) (Device ID: %d) Bypass change causes %sPROCESSING change = %s", v60, 0x32u);
                        }
                      }

                      if (v10)
                      {
                        HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(v60, (*v2)[10].__m_.__opaque, 1, v3);
                        (*((*v2)->__m_.__sig + 968))(*v2, 1, v3, v60);
                        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*&v60[8]);
                      }

                      std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v59, 0);
                      result = std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v55, 0);
                      goto LABEL_94;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v41 = v55[2];
            if (v41 && CFDictionaryGetCount(v41))
            {
              has_all_id = DSP_Host_OffloadDictionary::has_all_id(v36);
              goto LABEL_67;
            }
          }
        }

        else if (v35)
        {
          v40 = v35[2];
          if (v40)
          {
            if (CFDictionaryGetCount(v40))
            {
              has_all_id = DSP_Host_OffloadDictionary::has_all_id(v35);
              goto LABEL_67;
            }
          }
        }

        v10 = 0;
        goto LABEL_69;
      }
    }

    else
    {
      v11 = *&(*v2)[9].__m_.__opaque[48];
      if (v11)
      {
        HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&v55, v11, 1, 0);
        v5 = 0;
        goto LABEL_12;
      }

      v5 = 0;
    }

    v55 = 0;
    goto LABEL_12;
  }

  v7 = *(result[4] + 8);
  v8 = *(v7 + 40);
LABEL_95:
  *(v7 + 40) = v8;
  return result;
}

void ___ZN11HALS_Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_254(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 632);
  if (!v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 65);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  std::string::basic_string[abi:ne200100]<0>(&v68, "content creation recording");
  if (!v3)
  {
    goto LABEL_103;
  }

  v7 = *v2;
  v8 = HALS_Device_HostedDSP_ClientInfo::find(*v2 + 648, v5, 1uLL);
  if (!v8)
  {
    goto LABEL_103;
  }

  v9 = v8 + 5;
  v10 = v8[5];
  if (!v10)
  {
    operator new();
  }

  if (v4)
  {
    DSP_Host_OffloadDictionary::get_offload_id_list(buf, v10);
    v71 = 0;
    if (v6)
    {
      v11 = PropertyListDeepImmutableCopy(v6);
      v12 = v11;
      __p = v11;
      if (v11)
      {
        v13 = CFGetTypeID(v11);
        if (v13 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }
    }

    else
    {
      v21 = CFDictionaryCreate(*MEMORY[0x1E695E478], 0, 0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v12 = v21;
      __p = v21;
      if (v21)
      {
        v22 = CFGetTypeID(v21);
        if (v22 != CFDictionaryGetTypeID())
        {
          v65 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v65, "Could not construct");
          __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }
    }

    v71 = v12;
    v23 = *(v10 + 16);
    if (v23)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v23);
      v25 = MutableCopy;
      __p = MutableCopy;
      if ((v70 & 0x80u) == 0)
      {
        v26 = &v68;
      }

      else
      {
        v26 = v68;
      }

      if (v26)
      {
        if ((v70 & 0x80u) == 0)
        {
          v27 = v70;
        }

        else
        {
          v27 = v69;
        }

        v28 = CFStringCreateWithBytes(0, v26, v27, 0x8000100u, 0);
        p_isa = &v28->isa;
        if (!v28)
        {
          v62 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v62, "Could not construct");
          __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(v25, v28, v12);
        CFRelease(v28);
      }

      else
      {
        p_isa = 0;
        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(MutableCopy, 0, v12);
      }

      mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v25);
      v37 = cf;
      cf = 0;
      p_isa = v37;
      if (v37)
      {
        v38 = CFGetTypeID(v37);
        if (v38 != CFDictionaryGetTypeID())
        {
          v64 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v64, "Could not construct");
          __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      v39 = *(v10 + 16);
      *(v10 + 16) = v37;
      p_isa = v39;
      if (v39)
      {
        CFRelease(v39);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v25)
      {
        goto LABEL_71;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v25 = Mutable;
      __p = Mutable;
      if ((v70 & 0x80u) == 0)
      {
        v30 = &v68;
      }

      else
      {
        v30 = v68;
      }

      if (v30)
      {
        if ((v70 & 0x80u) == 0)
        {
          v31 = v70;
        }

        else
        {
          v31 = v69;
        }

        v32 = CFStringCreateWithBytes(0, v30, v31, 0x8000100u, 0);
        p_isa = &v32->isa;
        if (!v32)
        {
          v66 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v66, "Could not construct");
          __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(v25, v32, v12);
        CFRelease(v32);
      }

      else
      {
        p_isa = 0;
        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(Mutable, 0, v12);
      }

      mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v25);
      v40 = cf;
      cf = 0;
      p_isa = v40;
      if (v40)
      {
        v41 = CFGetTypeID(v40);
        if (v41 != CFDictionaryGetTypeID())
        {
          v67 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v67, "Could not construct");
          __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      v42 = *(v10 + 16);
      *(v10 + 16) = v40;
      p_isa = v42;
      if (v42)
      {
        CFRelease(v42);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v25)
      {
        goto LABEL_71;
      }
    }

    CFRelease(v25);
LABEL_71:
    __p = 0;
    v73 = 0;
    v74 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
    has_same_ids = DSP_Host_OffloadDictionary::has_same_ids(v10, &__p);
    p_isa = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_isa);
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_73;
  }

  DSP_Host_OffloadDictionary::get_offload_id_list(buf, v10);
  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = CFDictionaryCreateMutableCopy(0, 0, v15);
    v17 = v16;
    __p = v16;
    if ((v70 & 0x80u) == 0)
    {
      v18 = &v68;
    }

    else
    {
      v18 = v68;
    }

    if (v18)
    {
      if ((v70 & 0x80u) == 0)
      {
        v19 = v70;
      }

      else
      {
        v19 = v69;
      }

      v20 = CFStringCreateWithBytes(0, v18, v19, 0x8000100u, 0);
      p_isa = &v20->isa;
      if (!v20)
      {
        v61 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v61, "Could not construct");
        __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::remove_value<applesauce::CF::StringRef>(v17, v20);
      CFRelease(v20);
    }

    else
    {
      p_isa = 0;
      mcp_applesauce::CF::Dictionary_Builder::remove_value<applesauce::CF::StringRef>(v16, 0);
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v17);
    v33 = cf;
    cf = 0;
    p_isa = v33;
    if (v33)
    {
      v34 = CFGetTypeID(v33);
      if (v34 != CFDictionaryGetTypeID())
      {
        v63 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v63, "Could not construct");
        __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v35 = *(v10 + 16);
    *(v10 + 16) = v33;
    p_isa = v35;
    if (v35)
    {
      CFRelease(v35);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
  has_same_ids = DSP_Host_OffloadDictionary::has_same_ids(v10, &__p);
  p_isa = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_isa);
LABEL_73:
  p_isa = buf;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_isa);
  __p = 0;
  v73 = 0;
  HALS_System::GetInstance(buf, 0, &__p);
  v43 = *(*buf + 1800);
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    v44 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  else
  {
    v44 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  v45 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if ((v44 & 0x80000000) == 0)
  {
    v46 = *v9;
    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v45);
    }

    v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *v49;
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      v50 = *v49;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = 0;
      v52 = 0;
      v53 = 47;
      do
      {
        v54 = &aLibraryCachesC_39[v51];
        if (v53 == 47)
        {
          v52 = &aLibraryCachesC_39[v51];
        }

        v53 = v54[1];
        if (!v54[1])
        {
          break;
        }
      }

      while (v51++ < 0xFFF);
      if (v52)
      {
        v56 = v52 + 1;
      }

      else
      {
        v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP_ClientInfo.cpp";
      }

      if (v5)
      {
        v57 = *(v5 + 16);
      }

      else
      {
        v57 = 0;
      }

      v58 = *(v7 + 656);
      DSP_Host_OffloadDictionary::get_debug_string(&__p, *v9);
      if (v74 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136316418;
      *&buf[4] = v56;
      *&buf[12] = 1024;
      *&buf[14] = 494;
      v78 = 1024;
      v79 = v57;
      v80 = 1024;
      v81 = v58;
      v82 = 2048;
      v83 = v46;
      v84 = 2080;
      v85 = p_p;
      _os_log_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][content creation][settings] (Client ID: %d) (Device ID: %d) (Storage: %p) settings: %s", buf, 0x32u);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (has_same_ids)
  {
LABEL_103:
    v60 = 0;
    goto LABEL_104;
  }

  HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(buf, *v2 + 648, 1, v5);
  (*(**v2 + 968))(*v2, 1, v5, buf);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*&buf[8]);
  v60 = 1;
LABEL_104:
  *(*(*(a1 + 32) + 8) + 24) = v60;
  if (v70 < 0)
  {
    operator delete(v68);
  }
}

void sub_1DE70D5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, uint64_t a18, uint64_t a19, const void *a20, char *a21, char a22, uint64_t a23)
{
  if (a2)
  {
    __cxa_free_exception(v23);
    applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a21);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a20);
    mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a17);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a16);
    a21 = &a22;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
    if (a15 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE70D388);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Device::_ConfigureDSPTypesForClient(std::mutex *a1, const BOOL *a2, uint64_t a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if ((AMCP::Feature_Flags::force_mock_dsp_type(0, a2) & 1) == 0 && (AMCP::Feature_Flags::allow_adm_dsp_spatial(0, v10) & 1) == 0)
  {
    v11 = std::__tree<DSP_Host_Types::AudioProcessingType>::__erase_unique<DSP_Host_Types::AudioProcessingType>(a4, 4u);
    v12 = std::__tree<DSP_Host_Types::AudioProcessingType>::__erase_unique<DSP_Host_Types::AudioProcessingType>(a4, 5u);
    if ((v12 + v11))
    {
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
      }

      v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *v15;
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      else
      {
        v16 = *v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_Device.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 5938;
        _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_INFO, "%32s:%-5d [hal_dsp] Spatial is disabled by feature flag.", &buf, 0x12u);
      }
    }
  }

  if (!a4[2] && !a5[2])
  {
    return 0;
  }

  memset(&buf, 0, sizeof(buf));
  v17 = (*(a1->__m_.__sig + 600))(a1, a2, 0, 0);
  if (v17)
  {
    HALS_Stream::GetCurrentVirtualFormat(v17, &buf);
  }

  v48 = 0;
  v49 = 0;
  v47 = &v48;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v45, a4);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v43, a5);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v48);
  v48 = 0;
  v49 = 0;
  v47 = &v48;
  std::mutex::lock(a1 + 11);
  v18 = HALS_Device_HostedDSP_ClientInfo::find(a1[10].__m_.__opaque, a3, v46[1] != 0);
  v19 = v18;
  if (!v18)
  {
    goto LABEL_47;
  }

  v20 = 6;
  if (a2)
  {
    v20 = 0;
  }

  v21 = &v18[v20];
  v22 = v45;
  if (v45 == v46)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      v24 = std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v21, *(v22 + 7), v22 + 7);
      v25 = v22[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v22[2];
          v27 = *v26 == v22;
          v22 = v26;
        }

        while (!v27);
      }

      v23 |= v24;
      v22 = v26;
    }

    while (v26 != v46);
  }

  v42 = v19;
  v28 = v43;
  if (v43 != v44)
  {
    do
    {
      v29 = std::__tree<DSP_Host_Types::AudioProcessingType>::__erase_unique<DSP_Host_Types::AudioProcessingType>(v21, *(v28 + 7)) != 0;
      v30 = v28[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v28[2];
          v27 = *v31 == v28;
          v28 = v31;
        }

        while (!v27);
      }

      v23 |= v29;
      v28 = v31;
    }

    while (v31 != v44);
  }

  if (v23)
  {
    v32 = *v21;
    if (*v21 == v21 + 1)
    {
      v37 = 0;
      v33 = v42;
    }

    else
    {
      v33 = v42;
      while (1)
      {
        v34 = *(v32 + 7) - 2;
        if (v34 < 9 && ((0x14Fu >> v34) & 1) != 0)
        {
          break;
        }

        v35 = v32[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v32[2];
            v27 = *v36 == v32;
            v32 = v36;
          }

          while (!v27);
        }

        v32 = v36;
        if (v36 == v21 + 1)
        {
          v37 = 0;
          goto LABEL_51;
        }
      }

      v37 = 1;
    }

LABEL_51:
    if ((AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) & 1) == 0)
    {
      if (a2)
      {
        v39 = 24;
      }

      else
      {
        v39 = 72;
      }

      v40 = *(v33 + v39);
      if (v37)
      {
        if (!v40)
        {
          operator new();
        }
      }

      else if (v40)
      {
        HALS_Device_HostedDSP_ClientInfo::PerClientInfo::deactivate_stream(v33, a2);
      }
    }

    if (v21 != &v47)
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(&v47, *v21, v21 + 1);
    }

    v38 = 1;
  }

  else
  {
LABEL_47:
    v38 = 0;
  }

  std::mutex::unlock(a1 + 11);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v44[0]);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v46[0]);
  if (v38)
  {
    (*(a1->__m_.__sig + 968))(a1, a2, a3, &v47);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v48);
  return v38;
}