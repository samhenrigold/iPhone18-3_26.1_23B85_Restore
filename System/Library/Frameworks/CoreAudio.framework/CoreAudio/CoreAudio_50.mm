void sub_1DE5CCD1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v8 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v8);
  v4 = *(a1 + 64);
  if (v4 != v8)
  {
    v7 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 56) + 1976), *(v2 + 72), v4, &v7);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v10 = "HALS_IOA2Control.cpp";
        v11 = 1024;
        v12 = 766;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting slider control value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v7 == *(a1 + 64))
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v7);
      return (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  return result;
}

void sub_1DE5CD0CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CCFDCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_50(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = CAVolumeCurve::ConvertScalarToRaw((v2 + 120), **(a1 + 56));
  v8 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v8);
  if (v3 != v8)
  {
    v7 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v2 + 72), v3, &v7);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v10 = "HALS_IOA2Control.cpp";
        v11 = 1024;
        v12 = 811;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting level control scalar value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v7 == v3)
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v3);
      return (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  return result;
}

void sub_1DE5CD310(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CD220);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_52(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = CAVolumeCurve::ConvertDBToRaw((v2 + 120), **(a1 + 56));
  v8 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v8);
  if (v3 != v8)
  {
    v7 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v2 + 72), v3, &v7);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v10 = "HALS_IOA2Control.cpp";
        v11 = 1024;
        v12 = 856;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting level control decibel value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v7 == v3)
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v3);
      return (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  return result;
}

void sub_1DE5CD554(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CD464);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_56(uint64_t result)
{
  v1 = *(result + 32);
  v2 = **(result + 40);
  *(v1 + 156) = v2;
  if (v2 > 0xF)
  {
    v5 = 1.0;
    v4 = 2.0;
    v3 = 1;
  }

  else
  {
    v3 = byte_1DE7581D0[v2];
    v4 = flt_1DE75F074[v2];
    v5 = flt_1DE75F0B4[v2];
  }

  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  *(v1 + 164) = v5;
  return result;
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_58(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v8 = 0;
  result = CACFDictionary::GetUInt32(*(v2 + 80), @"value", &v8);
  v4 = *(a1 + 64);
  if (v4 != v8)
  {
    v7 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 56) + 1976), *(v2 + 72), v4, &v7);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v10 = "HALS_IOA2Control.cpp";
        v11 = 1024;
        v12 = 915;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting BOOLean control value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v7 == *(a1 + 64))
    {
      CACFDictionary::AddUInt32((v2 + 80), @"value", v7);
      return (*(*v2 + 208))(v2, *(*(a1 + 40) + 8) + 40);
    }
  }

  return result;
}

void sub_1DE5CD7DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CD6ECLL);
  }

  _Unwind_Resume(a1);
}

void ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_62(uint64_t a1, const __CFDictionary *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (*(v3 + 96) == 1)
  {
    v4 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(v3 + 80), a2);
    v47 = v4;
    v48 = 1;
    if (v4)
    {
      Count = CFArrayGetCount(v4);
    }

    else
    {
      Count = 0;
    }

    v9 = *(a1 + 72);
    if (4 * Count < v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Control.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 955;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v10 = *(a1 + 56);
    v11 = HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(*(v3 + 80), v5);
    *v52 = v11;
    v53 = 1;
    if (v11)
    {
      LODWORD(v11) = CFArrayGetCount(v11);
    }

    v12 = v9 >> 2;
    v45 = v9;
    if (v11 != (v9 >> 2))
    {
      CACFArray::~CACFArray(v52);
      goto LABEL_40;
    }

    std::vector<unsigned int>::vector[abi:ne200100](buf, v9 >> 2);
    if (v9 >= 4)
    {
      v13 = 0;
      do
      {
        v49[0] = 0;
        if (CACFArray::GetUInt32(v52, v13, v49))
        {
          v14 = *&buf[8];
          if (*&buf[8] >= *&buf[16])
          {
            v16 = *buf;
            v17 = *&buf[8] - *buf;
            v18 = (*&buf[8] - *buf) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v20 = *&buf[16] - *buf;
            if ((*&buf[16] - *buf) >> 1 > v19)
            {
              v19 = v20 >> 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v21);
            }

            *(4 * v18) = v49[0];
            v15 = 4 * v18 + 4;
            memcpy(0, v16, v17);
            v22 = *buf;
            *buf = 0;
            *&buf[8] = v15;
            *&buf[16] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            **&buf[8] = v49[0];
            v15 = v14 + 4;
          }

          *&buf[8] = v15;
        }

        ++v13;
      }

      while (v12 != v13);
    }

    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    *v49 = 0;
    v50 = 0;
    v51 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v49, v10, &v10[v12], v12);
    v23 = *v49;
    v24 = v50;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v25 = *buf;
    if (*&buf[8] - *buf == v24 - v23)
    {
      v26 = memcmp(*buf, v23, *&buf[8] - *buf) == 0;
      if (!v23)
      {
LABEL_37:
        if (v25)
        {
          *&buf[8] = v25;
          operator delete(v25);
        }

        CACFArray::~CACFArray(v52);
        if (v26)
        {
          goto LABEL_67;
        }

LABEL_40:
        MEMORY[0x1EEE9AC00](v27);
        v29 = (&v45 - v28);
        v46 = Count;
        bzero(&v45 - v28, 4 * Count);
        *(*(*(a1 + 32) + 8) + 24) = HALS_IOA2UCDevice::SetMultiControlValue((*(a1 + 64) + 1976), *(v3 + 72), v10, v12, v29, Count, &v46);
        v30 = *(*(*(a1 + 32) + 8) + 24);
        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IOA2Control.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 972;
            *&buf[18] = 1024;
            *&buf[20] = v30;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting selector control value on the device, Error: 0x%X", buf, 0x18u);
          }

          v43 = __cxa_allocate_exception(0x10uLL);
          *v43 = off_1F5991DD8;
          v43[2] = 560226676;
        }

        if (v12 != v46)
        {
          goto LABEL_67;
        }

        v31 = v12;
        memset(buf, 0, sizeof(buf));
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(buf, v10, &v10[v12], v12);
        v32 = *buf;
        v33 = *&buf[8];
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        *v49 = 0;
        v50 = 0;
        v51 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v49, v29, &v29[v12], v12);
        v34 = *v49;
        v35 = v50;
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        if (v33 - v32 == v35 - v34)
        {
          v36 = memcmp(v32, v34, v33 - v32) == 0;
          if (!v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v36 = 0;
          if (!v34)
          {
LABEL_47:
            if (v32)
            {
              operator delete(v32);
            }

            if (v36)
            {
              *v49 = *(v3 + 80);
              LOWORD(v50) = 256;
              if (*v49)
              {
                Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
                *v52 = Mutable;
                v53 = 257;
                if (v45 >= 4)
                {
                  do
                  {
                    v39 = *v29++;
                    v38 = v39;
                    if (*v52 && HIBYTE(v53) == 1)
                    {
                      valuePtr = v38;
                      v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      *buf = v40;
                      buf[8] = 1;
                      if (v40 && *v52 && HIBYTE(v53) == 1)
                      {
                        CFArrayAppendValue(*v52, v40);
                      }

                      CACFNumber::~CACFNumber(buf);
                    }

                    --v31;
                  }

                  while (v31);
                  Mutable = *v52;
                }

                if (BYTE1(v50) == 1 && Mutable)
                {
                  if (*v49)
                  {
                    CFDictionarySetValue(*v49, @"value", Mutable);
                  }
                }

                CACFArray::~CACFArray(v52);
              }

              CACFDictionary::~CACFDictionary(v49);
              (*(*v3 + 208))(v3, *(*(a1 + 40) + 8) + 40);
            }

LABEL_67:
            CACFArray::~CACFArray(&v47);
            return;
          }
        }

        operator delete(v34);
        goto LABEL_47;
      }
    }

    else
    {
      v26 = 0;
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    operator delete(v23);
    v25 = *buf;
    goto LABEL_37;
  }

  if (*(a1 + 72) <= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Control.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1011;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::_SetPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem", buf, 0x12u);
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    *v41 = off_1F5991DD8;
    v41[2] = 561211770;
  }

  v7 = **(a1 + 56);
  v49[0] = 0;
  CACFDictionary::GetUInt32(*(v3 + 80), @"value", v49);
  if (v7 != v49[0])
  {
    v52[0] = 0;
    *(*(*(a1 + 32) + 8) + 24) = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v3 + 72), v7, v52);
    v8 = *(*(*(a1 + 32) + 8) + 24);
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_IOA2Control.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1020;
        *&buf[18] = 1024;
        *&buf[20] = v8;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting selector control value on the device, Error: 0x%X", buf, 0x18u);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = off_1F5991DD8;
      v44[2] = 560226676;
    }

    if (v52[0] == v7)
    {
      CACFDictionary::AddUInt32((v3 + 80), @"value", v7);
      (*(*v3 + 208))(v3, *(*(a1 + 40) + 8) + 40);
    }
  }
}

void sub_1DE5CE0C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    CACFArray::~CACFArray((v3 - 136));
    CACFDictionary::~CACFDictionary((v3 - 160));
    CACFArray::~CACFArray((v3 - 176));
    v6 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v6[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CDDA4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_66(uint64_t a1, const __CFDictionary *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = (v3 + 80);
  StereoPanControlInfo_LeftValue = HALS_IOA2UCDevice::GetStereoPanControlInfo_LeftValue(*(v3 + 80), a2);
  StereoPanControlInfo_CenterValue = HALS_IOA2UCDevice::GetStereoPanControlInfo_CenterValue(*(v3 + 80), v6);
  StereoPanControlInfo_RightValue = HALS_IOA2UCDevice::GetStereoPanControlInfo_RightValue(*(v3 + 80), v8);
  v10 = **(a1 + 56);
  if (v10 > 0.0)
  {
    if (v10 == 0.5)
    {
      StereoPanControlInfo_LeftValue = StereoPanControlInfo_CenterValue;
    }

    else if (v10 >= 1.0)
    {
      StereoPanControlInfo_LeftValue = StereoPanControlInfo_RightValue;
    }

    else
    {
      if (v10 >= 0.5)
      {
        v11 = ((v10 + -0.5) + (v10 + -0.5)) * (StereoPanControlInfo_RightValue - StereoPanControlInfo_CenterValue);
        v12 = StereoPanControlInfo_CenterValue;
      }

      else
      {
        v11 = (v10 + v10) * (StereoPanControlInfo_CenterValue - StereoPanControlInfo_LeftValue);
        v12 = StereoPanControlInfo_LeftValue;
      }

      StereoPanControlInfo_LeftValue = (v11 + v12);
    }
  }

  v17 = 0;
  result = CACFDictionary::GetUInt32(*v4, @"value", &v17);
  if (StereoPanControlInfo_LeftValue != v17)
  {
    v16 = 0;
    result = HALS_IOA2UCDevice::SetControlValue((*(a1 + 64) + 1976), *(v3 + 72), StereoPanControlInfo_LeftValue, &v16);
    *(*(*(a1 + 32) + 8) + 24) = result;
    v14 = *(*(*(a1 + 32) + 8) + 24);
    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "HALS_IOA2Control.cpp";
        v20 = 1024;
        v21 = 1094;
        v22 = 1024;
        v23 = v14;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SetControlPropertyData: error setting pan control value on the device, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v16 == StereoPanControlInfo_LeftValue)
    {
      CACFDictionary::AddUInt32(v4, @"value", StereoPanControlInfo_LeftValue);
      return (*(*v3 + 208))(v3, *(*(a1 + 40) + 8) + 40);
    }
  }

  return result;
}

void sub_1DE5CE4EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 32) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5CE3FCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE5CE558(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5CE554);
  }

  JUMPOUT(0x1DE5CE514);
}

void ___ZN16HALS_IOA2Control15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = *(v2 + 112);
    v5 = *(a1 + 64);
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    memcpy(v3, *(a1 + 48), v6);
    HALS_IOA2UCDevice::MoveBlockControlData((*(a1 + 56) + 1976), *(v2 + 72), 1u, v6);
  }
}

void sub_1DE5CE5CC(void *a1, int a2)
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

void __copy_helper_block_e8_56c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 7);
  *(a1 + 56) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void __copy_helper_block_e8_64c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 8);
  *(a1 + 64) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void HALS_IOA2Control::GetPropertyData(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, float *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v98 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1818457189)
  {
    if (mSelector <= 1935894893)
    {
      if (mSelector > 1935892840)
      {
        if (mSelector == 1935892841)
        {
          *v96 = 0;
          *&v96[8] = v96;
          *&v96[16] = 0x2000000000;
          v97 = 0;
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 0x40000000;
          v82[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
          v82[3] = &unk_1E86772D0;
          v82[4] = v96;
          v82[5] = this;
          v83 = a4;
          v82[6] = a6;
          v31 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v31, v82);
        }

        else
        {
          if (mSelector != 1935893353)
          {
            goto LABEL_77;
          }

          *v96 = 0;
          *&v96[8] = v96;
          *&v96[16] = 0x2000000000;
          v97 = 0;
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 0x40000000;
          v84[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_23;
          v84[3] = &unk_1E86772A8;
          v84[5] = this;
          v84[4] = v96;
          v84[6] = a5;
          v84[7] = a6;
          v24 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v24, v84);
        }

        v21 = 4 * *(*&v96[8] + 24);
        goto LABEL_60;
      }

      if (mSelector == 1818457190)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 487;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction", v96, 0x12u);
          }

          v52 = __cxa_allocate_exception(0x10uLL);
          *v52 = off_1F5991DD8;
          v52[2] = 561211770;
        }

        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 0x40000000;
        v86[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_19;
        v86[3] = &__block_descriptor_tmp_20_12537;
        v86[4] = this;
        v86[5] = a6;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v86);
        goto LABEL_81;
      }

      if (mSelector != 1852400499)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (mSelector > 1935962741)
      {
        if (mSelector == 1936745334)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v96 = 136315394;
              *&v96[4] = "HALS_IOA2Control.cpp";
              *&v96[12] = 1024;
              *&v96[14] = 636;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue", v96, 0x12u);
            }

            v61 = __cxa_allocate_exception(0x10uLL);
            *v61 = off_1F5991DD8;
            v61[2] = 561211770;
          }

          *v96 = 0;
          *&v96[8] = v96;
          *&v96[16] = 0x2000000000;
          v97 = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v95 = 0;
          v75 = 0;
          v76 = &v75;
          v77 = 0x2000000000;
          v78 = 0;
          v71 = 0;
          v72 = &v71;
          v73 = 0x2000000000;
          v74 = 0;
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 0x40000000;
          v70[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40;
          v70[3] = &unk_1E8677348;
          v70[7] = &v71;
          v70[8] = this;
          v70[4] = v96;
          v70[5] = buf;
          v70[6] = &v75;
          v36 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v36, v70);
          v37 = *(v72 + 6);
          v38 = *(*&v96[8] + 24);
          v39 = 0.0;
          v40 = v37 - v38;
          if (v37 < v38)
          {
            v41 = *(*&buf[8] + 24);
            v39 = 0.5;
            if (v37 != v41)
            {
              v42 = *(v76 + 6);
              v39 = 1.0;
              if (v37 > v42)
              {
                v43 = v37 >= v41;
                v44 = v37 - v41;
                if (v43)
                {
                  v39 = ((v44 / (v42 - v41)) * 0.5) + 0.5;
                }

                else
                {
                  v39 = (v40 / (v41 - v38)) * 0.5;
                }
              }
            }
          }

          *a6 = v39;
          *a5 = 4;
          _Block_object_dispose(&v71, 8);
          _Block_object_dispose(&v75, 8);
          _Block_object_dispose(buf, 8);
          goto LABEL_85;
        }

        if (mSelector != 1936745315)
        {
          if (mSelector == 1935962742)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v96 = 136315394;
                *&v96[4] = "HALS_IOA2Control.cpp";
                *&v96[12] = 1024;
                *&v96[14] = 412;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyValue", v96, 0x12u);
              }

              v55 = __cxa_allocate_exception(0x10uLL);
              *v55 = off_1F5991DD8;
              v55[2] = 561211770;
            }

            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 0x40000000;
            v93[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
            v93[3] = &__block_descriptor_tmp_6_12521;
            v93[4] = this;
            v93[5] = a6;
            v19 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v19, v93);
            goto LABEL_81;
          }

          goto LABEL_77;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 681;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyPanningChannels", v96, 0x12u);
          }

          v59 = __cxa_allocate_exception(0x10uLL);
          *v59 = off_1F5991DD8;
          v59[2] = 561211770;
        }

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 0x40000000;
        v69[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_42;
        v69[3] = &__block_descriptor_tmp_43_12553;
        v69[4] = this;
        v69[5] = a6;
        v33 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v33, v69);
        goto LABEL_66;
      }

      if (mSelector != 1935894894)
      {
        if (mSelector != 1935962738)
        {
          goto LABEL_77;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 421;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyRange", v96, 0x12u);
          }

          v57 = __cxa_allocate_exception(0x10uLL);
          *v57 = off_1F5991DD8;
          v57[2] = 561211770;
        }

        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 0x40000000;
        v92[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
        v92[3] = &__block_descriptor_tmp_8_12523;
        v92[4] = this;
        v92[5] = a6;
        v26 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v26, v92);
        goto LABEL_66;
      }
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v96 = 136315394;
        *&v96[4] = "HALS_IOA2Control.cpp";
        *&v96[12] = 1024;
        *&v96[14] = 565;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyItemName", v96, 0x12u);
      }

      v48 = __cxa_allocate_exception(0x10uLL);
      *v48 = off_1F5991DD8;
      v48[2] = 561211770;
    }

    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v96 = 136315394;
        *&v96[4] = "HALS_IOA2Control.cpp";
        *&v96[12] = 1024;
        *&v96[14] = 566;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioSelectorControlPropertyItemName", v96, 0x12u);
      }

      v49 = __cxa_allocate_exception(0x10uLL);
      *v49 = off_1F5991DD8;
      v49[2] = 561211770;
    }

    *v96 = 0;
    *&v96[8] = v96;
    *&v96[16] = 0x2000000000;
    LOBYTE(v97) = 0;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 0x40000000;
    v81[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_27;
    v81[3] = &unk_1E86772F8;
    v81[4] = v96;
    v81[5] = this;
    v81[6] = a8;
    v81[7] = a6;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v81);
    *a5 = 8;
    if ((*(*&v96[8] + 24) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Control.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 594;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: item not in item dictionary for kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      *v28 = off_1F5991DD8;
      v28[2] = 1852797029;
    }

    goto LABEL_85;
  }

  if (mSelector > 1818453105)
  {
    if (mSelector <= 1818453109)
    {
      if (mSelector == 1818453106)
      {
        if (a4 <= 0xF)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 453;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelRange", v96, 0x12u);
          }

          v62 = __cxa_allocate_exception(0x10uLL);
          *v62 = off_1F5991DD8;
          v62[2] = 561211770;
        }

        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 0x40000000;
        v89[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13;
        v89[3] = &__block_descriptor_tmp_14_12529;
        v89[4] = this;
        v89[5] = a6;
        v45 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v45, v89);
        v34 = 16;
        goto LABEL_82;
      }

      if (mSelector == 1818453107)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 477;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertDecibelsToScalar", v96, 0x12u);
          }

          v56 = __cxa_allocate_exception(0x10uLL);
          *v56 = off_1F5991DD8;
          v56[2] = 561211770;
        }

        if (a7 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 478;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioLevelControlPropertyConvertDecibelsToScalar", v96, 0x12u);
          }

          v65 = __cxa_allocate_exception(0x10uLL);
          *v65 = off_1F5991DD8;
          v65[2] = 561211770;
        }

        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 0x40000000;
        v87[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17;
        v87[3] = &__block_descriptor_tmp_18_12535;
        v87[4] = this;
        v87[5] = a6;
        v87[6] = a8;
        v25 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v25, v87);
        goto LABEL_81;
      }
    }

    else
    {
      switch(mSelector)
      {
        case 1818453110:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v96 = 136315394;
              *&v96[4] = "HALS_IOA2Control.cpp";
              *&v96[12] = 1024;
              *&v96[14] = 444;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue", v96, 0x12u);
            }

            v60 = __cxa_allocate_exception(0x10uLL);
            *v60 = off_1F5991DD8;
            v60[2] = 561211770;
          }

          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 0x40000000;
          v90[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
          v90[3] = &__block_descriptor_tmp_12_12527;
          v90[4] = this;
          v90[5] = a6;
          v35 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v35, v90);
          goto LABEL_81;
        case 1818456932:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v96 = 136315394;
              *&v96[4] = "HALS_IOA2Control.cpp";
              *&v96[12] = 1024;
              *&v96[14] = 467;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertScalarToDecibels", v96, 0x12u);
            }

            v58 = __cxa_allocate_exception(0x10uLL);
            *v58 = off_1F5991DD8;
            v58[2] = 561211770;
          }

          if (a7 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v96 = 136315394;
              *&v96[4] = "HALS_IOA2Control.cpp";
              *&v96[12] = 1024;
              *&v96[14] = 468;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioLevelControlPropertyConvertScalarToDecibels", v96, 0x12u);
            }

            v64 = __cxa_allocate_exception(0x10uLL);
            *v64 = off_1F5991DD8;
            v64[2] = 561211770;
          }

          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 0x40000000;
          v88[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
          v88[3] = &__block_descriptor_tmp_16_12532;
          v88[4] = this;
          v88[5] = a6;
          v88[6] = a8;
          v32 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v32, v88);
          goto LABEL_81;
        case 1818456950:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v96 = 136315394;
              *&v96[4] = "HALS_IOA2Control.cpp";
              *&v96[12] = 1024;
              *&v96[14] = 435;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue", v96, 0x12u);
            }

            v54 = __cxa_allocate_exception(0x10uLL);
            *v54 = off_1F5991DD8;
            v54[2] = 561211770;
          }

          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 0x40000000;
          v91[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
          v91[3] = &__block_descriptor_tmp_10_12525;
          v91[4] = this;
          v91[5] = a6;
          v18 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v18, v91);
LABEL_81:
          v34 = 4;
          goto LABEL_82;
      }
    }

    goto LABEL_77;
  }

  if (mSelector > 1651272547)
  {
    if (mSelector != 1651272548)
    {
      if (mSelector == 1668049771)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 601;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioClockSourceControlPropertyItemKind", v96, 0x12u);
          }

          v50 = __cxa_allocate_exception(0x10uLL);
          *v50 = off_1F5991DD8;
          v50[2] = 561211770;
        }

        if (a7 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v96 = 136315394;
            *&v96[4] = "HALS_IOA2Control.cpp";
            *&v96[12] = 1024;
            *&v96[14] = 602;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad qualifier data size for kAudioClockSourceControlPropertyItemKind", v96, 0x12u);
          }

          v63 = __cxa_allocate_exception(0x10uLL);
          *v63 = off_1F5991DD8;
          v63[2] = 561211770;
        }

        *v96 = 0;
        *&v96[8] = v96;
        *&v96[16] = 0x2000000000;
        LOBYTE(v97) = 0;
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 0x40000000;
        v79[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32;
        v79[3] = &unk_1E8677320;
        v79[4] = v96;
        v79[5] = this;
        v80 = 4;
        v79[6] = a8;
        v79[7] = a6;
        v22 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v22, v79);
        *a5 = 4;
        if ((*(*&v96[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Control.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 629;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: item not in item dictionary for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
          }

          v23 = __cxa_allocate_exception(0x10uLL);
          *v23 = off_1F5991DD8;
          v23[2] = 1852797029;
        }

        goto LABEL_85;
      }

      goto LABEL_77;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v96 = 136315394;
        *&v96[4] = "HALS_IOA2Control.cpp";
        *&v96[12] = 1024;
        *&v96[14] = 713;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioBlockControlPropertyDescriptor", v96, 0x12u);
      }

      v53 = __cxa_allocate_exception(0x10uLL);
      *v53 = off_1F5991DD8;
      v53[2] = 561211770;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 0x40000000;
    v66[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_46;
    v66[3] = &__block_descriptor_tmp_47_12556;
    v66[4] = this;
    v66[5] = a6;
    v30 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v30, v66);
LABEL_66:
    v34 = 8;
LABEL_82:
    *a5 = v34;
    return;
  }

  if (mSelector == 1650685548)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v96 = 136315394;
        *&v96[4] = "HALS_IOA2Control.cpp";
        *&v96[12] = 1024;
        *&v96[14] = 496;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", v96, 0x12u);
      }

      v51 = __cxa_allocate_exception(0x10uLL);
      *v51 = off_1F5991DD8;
      v51[2] = 561211770;
    }

    if (*(this + 5) == 1702259059)
    {
      *a6 = HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a9);
    }

    else
    {
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 0x40000000;
      v85[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21;
      v85[3] = &__block_descriptor_tmp_22_12539;
      v85[4] = this;
      v85[5] = a6;
      v46 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v46, v85);
    }

    goto LABEL_81;
  }

  if (mSelector == 1651272546)
  {
    *v96 = 0;
    *&v96[8] = v96;
    *&v96[16] = 0x2000000000;
    v97 = 0;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v67[2] = ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_44;
    v67[3] = &unk_1E8677390;
    v67[4] = v96;
    v67[5] = this;
    v68 = a4;
    v67[6] = a6;
    v20 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v20, v67);
    v21 = *(*&v96[8] + 24);
LABEL_60:
    *a5 = v21;
LABEL_85:
    _Block_object_dispose(v96, 8);
    return;
  }

LABEL_77:

  HALS_Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE5D02D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Block_object_dispose((v41 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(*(a1 + 32) + 80), a2);
  **(a1 + 40) = result;
  return result;
}

void sub_1DE5D0368(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v11 = 0;
  v9 = v3;
  v10 = 0;
  if (v3)
  {
    if (!CACFDictionary::GetUInt32(v3, @"minimum value", &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "HALS_IOA2UCDevice.cpp";
        v14 = 1024;
        v15 = 949;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetSliderControlInfoByIndex_MinimumValue: there is no minimum control value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  CACFDictionary::~CACFDictionary(&v9);
  **(a1 + 40) = v4;
  v5 = *(v2 + 80);
  v11 = 0;
  v9 = v5;
  v10 = 0;
  if (v5)
  {
    if (!CACFDictionary::GetUInt32(v5, @"maximum value", &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "HALS_IOA2UCDevice.cpp";
        v14 = 1024;
        v15 = 961;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetSliderControlInfoByIndex_MaximumValue: there is no maximum control value", buf, 0x12u);
      }

      v8 = __cxa_allocate_exception(0x10uLL);
      *v8 = off_1F5991DD8;
      v8[2] = 1852797029;
    }

    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  CACFDictionary::~CACFDictionary(&v9);
  *(*(a1 + 40) + 4) = v6;
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  ControlInfo_Value = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), a2);
  **(a1 + 40) = CAVolumeCurve::ConvertRawToScalar((v3 + 120), ControlInfo_Value);
}

void sub_1DE5D0678(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  ControlInfo_Value = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), a2);
  result = CAVolumeCurve::ConvertRawToDB((v3 + 120), ControlInfo_Value);
  **(a1 + 40) = v6;
  return result;
}

void sub_1DE5D06D8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

double ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[18])
  {
    v2 = *(v1[16] + 36);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(a1 + 40);
  *v3 = v2;
  MaximumDB = CAVolumeCurve::GetMaximumDB((v1 + 15));
  result = *&MaximumDB;
  v3[1] = result;
  return result;
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CAVolumeCurve::ConvertScalarToRaw((v2 + 120), **(a1 + 48));
  result = CAVolumeCurve::ConvertRawToDB((v2 + 120), v3);
  **(a1 + 40) = v5;
  return result;
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CAVolumeCurve::ConvertDBToRaw((v2 + 120), **(a1 + 48));
  **(a1 + 40) = CAVolumeCurve::ConvertRawToScalar((v2 + 120), v3);
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21(uint64_t a1, const __CFDictionary *a2)
{
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(*(a1 + 32) + 80), a2);
  **(a1 + 40) = result;
  return result;
}

void sub_1DE5D0820(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_23(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 96) == 1)
  {
    v4 = HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(*(v3 + 80), a2);
    v9 = v4;
    v10 = 1;
    v5 = **(a1 + 48);
    if (v4)
    {
      LODWORD(v4) = CFArrayGetCount(v4);
    }

    v6 = v5 >> 2;
    if (v4 < v5 >> 2)
    {
      v6 = v4;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        CACFArray::GetUInt32(&v9, v8++, (*(a1 + 56) + v7));
        v7 += 4;
      }

      while (v8 < *(*(*(a1 + 32) + 8) + 24));
    }

    CACFArray::~CACFArray(&v9);
  }

  else
  {
    **(a1 + 56) = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), a2);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1DE5D0930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFArray::~CACFArray(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5D091CLL);
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v14 = v3;
  v15 = 1;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "HALS_IOA2Control.cpp";
      v18 = 1024;
      v19 = 544;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the selector items for kAudioSelectorControlPropertyAvailableItems", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v4 = *(a1 + 56);
  Count = CFArrayGetCount(v3);
  v6 = v4 >> 2;
  if (v4 >> 2 >= Count)
  {
    v6 = Count;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v12 = 0;
      v13 = 0;
      CACFArray::GetCACFDictionary(&v14, v8, &v12);
      if (!v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HALS_IOA2Control.cpp";
          v18 = 1024;
          v19 = 550;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item dictionary for kAudioSelectorControlPropertyAvailableItems", buf, 0x12u);
        }

        v9 = __cxa_allocate_exception(0x10uLL);
        *v9 = off_1F5991DD8;
        v9[2] = 1852797029;
      }

      if ((CACFDictionary::GetUInt32(v12, @"value", (*(a1 + 48) + v7)) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HALS_IOA2Control.cpp";
          v18 = 1024;
          v19 = 553;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item ID for kAudioSelectorControlPropertyAvailableItems", buf, 0x12u);
        }

        v10 = __cxa_allocate_exception(0x10uLL);
        *v10 = off_1F5991DD8;
        v10[2] = 1852797029;
      }

      CACFDictionary::~CACFDictionary(&v12);
      ++v8;
      v7 += 4;
    }

    while (v8 < *(*(*(a1 + 32) + 8) + 24));
  }

  CACFArray::~CACFArray(&v14);
}

void sub_1DE5D0C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    CACFArray::~CACFArray(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5D0A44);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_27(uint64_t a1, const __CFDictionary *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  theArray = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v15 = 1;
  if (!theArray)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "HALS_IOA2Control.cpp";
      v18 = 1024;
      v19 = 572;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the selector items for kAudioSelectorControlPropertyItemName", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v3 = 0;
    do
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v3 >= Count)
      {
        break;
      }

      v12 = 0;
      v13 = 0;
      CACFArray::GetCACFDictionary(&theArray, v3, &v12);
      if (!v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HALS_IOA2Control.cpp";
          v18 = 1024;
          v19 = 577;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item dictionary for kAudioSelectorControlPropertyItemName", buf, 0x12u);
        }

        v6 = __cxa_allocate_exception(0x10uLL);
        *v6 = off_1F5991DD8;
        v6[2] = 1852797029;
      }

      v11 = 0;
      if ((CACFDictionary::GetUInt32(v12, @"value", &v11) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HALS_IOA2Control.cpp";
          v18 = 1024;
          v19 = 581;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item ID for kAudioSelectorControlPropertyItemName", buf, 0x12u);
        }

        v5 = __cxa_allocate_exception(0x10uLL);
        *v5 = off_1F5991DD8;
        v5[2] = 1852797029;
      }

      if (v11 == **(a1 + 48))
      {
        cf = 0;
        v10 = 0;
        CACFDictionary::GetCACFString(&v12, @"name", &cf);
        if (!cf)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v17 = "HALS_IOA2Control.cpp";
            v18 = 1024;
            v19 = 586;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item name for kAudioSelectorControlPropertyItemName", buf, 0x12u);
          }

          v7 = __cxa_allocate_exception(0x10uLL);
          *v7 = off_1F5991DD8;
          v7[2] = 1852797029;
        }

        CFRetain(cf);
        **(a1 + 56) = cf;
        *(*(*(a1 + 32) + 8) + 24) = 1;
        CACFString::~CACFString(&cf);
      }

      CACFDictionary::~CACFDictionary(&v12);
      ++v3;
    }

    while ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0);
  }

  CACFArray::~CACFArray(&theArray);
}

void sub_1DE5D1128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2)
  {
    CACFArray::~CACFArray(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5D0E24);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32(uint64_t a1, const __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v13 = 1;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "HALS_IOA2Control.cpp";
      v16 = 1024;
      v17 = 608;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the selector items for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = 0;
    do
    {
      if (v3 >= *(a1 + 64))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      CACFArray::GetCACFDictionary(&v12, v3, &v10);
      if (!v10)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "HALS_IOA2Control.cpp";
          v16 = 1024;
          v17 = 613;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item dictionary for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
        }

        v7 = __cxa_allocate_exception(0x10uLL);
        *v7 = off_1F5991DD8;
        v7[2] = 1852797029;
      }

      v9 = 0;
      if ((CACFDictionary::GetUInt32(v10, @"IOAudioSelectorControlSelectionValue", &v9) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "HALS_IOA2Control.cpp";
          v16 = 1024;
          v17 = 617;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::GetPropertyData: couldn't get the item ID for kAudioClockSourceControlPropertyItemKind", buf, 0x12u);
        }

        v6 = __cxa_allocate_exception(0x10uLL);
        *v6 = off_1F5991DD8;
        v6[2] = 1852797029;
      }

      if (v9 == **(a1 + 48))
      {
        *buf = 0;
        UInt32 = CACFDictionary::GetUInt32(v10, @"IOAudioSelectorControlClockSourceKey", buf);
        v5 = *buf;
        if (!UInt32)
        {
          v5 = 0;
        }

        **(a1 + 56) = v5;
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      CACFDictionary::~CACFDictionary(&v10);
      ++v3;
    }

    while ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0);
  }

  CACFArray::~CACFArray(&v12);
}

void sub_1DE5D1510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    CACFArray::~CACFArray(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5D12C0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40(void *a1, const __CFDictionary *a2)
{
  v3 = a1[8];
  *(*(a1[4] + 8) + 24) = HALS_IOA2UCDevice::GetStereoPanControlInfo_LeftValue(*(v3 + 80), a2);
  *(*(a1[5] + 8) + 24) = HALS_IOA2UCDevice::GetStereoPanControlInfo_CenterValue(*(v3 + 80), v4);
  *(*(a1[6] + 8) + 24) = HALS_IOA2UCDevice::GetStereoPanControlInfo_RightValue(*(v3 + 80), v5);
  result = HALS_IOA2UCDevice::GetControlInfo_Value(*(v3 + 80), v6);
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_1DE5D15E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_42(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v11 = 0;
  v9 = v3;
  v10 = 0;
  if (v3)
  {
    if (!CACFDictionary::GetUInt32(v3, @"left channel", &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "HALS_IOA2UCDevice.cpp";
        v14 = 1024;
        v15 = 1097;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_LeftChannel: there is no left channel", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  CACFDictionary::~CACFDictionary(&v9);
  **(a1 + 40) = v4;
  v5 = *(v2 + 80);
  v11 = 0;
  v9 = v5;
  v10 = 0;
  if (v5)
  {
    if (!CACFDictionary::GetUInt32(v5, @"right channel", &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "HALS_IOA2UCDevice.cpp";
        v14 = 1024;
        v15 = 1109;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_LeftChannel: there is no right channel", buf, 0x12u);
      }

      v8 = __cxa_allocate_exception(0x10uLL);
      *v8 = off_1F5991DD8;
      v8[2] = 1852797029;
    }

    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  CACFDictionary::~CACFDictionary(&v9);
  *(*(a1 + 40) + 4) = v6;
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_44(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(v3 + 56));
  v6 = v4;
  if (*(v3 + 104))
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v3 + 112);
    if (v8 >= *(a1 + 56))
    {
      v8 = *(a1 + 56);
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
    HALS_IOA2UCDevice::MoveBlockControlData((v4 + 1976), *(v3 + 72), 0, *(*(*(a1 + 32) + 8) + 24));
    memcpy(*(a1 + 48), *(v3 + 104), *(*(*(a1 + 32) + 8) + 24));
  }

  HALS_ObjectMap::ReleaseObject(v6, v5);
}

void sub_1DE5D1950(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HALS_ObjectMap::ReleaseObject(v14, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK16HALS_IOA2Control15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_46(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 80);
  cf = 0;
  v5 = v2;
  v6 = 0;
  if (v2)
  {
    if ((CACFDictionary::GetDictionary(v2, @"descriptor", &cf) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 1121;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetBlockControlInfoByID_Descriptor: there is no descriptor", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v3 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v3 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  **(a1 + 40) = v3;
}

uint64_t HALS_IOA2Control::GetPropertyDataSize(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector == 1651272546)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
    v16[3] = &unk_1E8677160;
    v16[4] = &v19;
    v16[5] = this;
    v13 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v13, v16);
    v12 = *(v20 + 6);
    goto LABEL_9;
  }

  if (mSelector == 1935892841)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
    v17[3] = &unk_1E8677138;
    v17[4] = &v19;
    v17[5] = this;
    v11 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v11, v17);
    goto LABEL_7;
  }

  if (mSelector == 1935893353)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 1;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
    v18[3] = &unk_1E8677110;
    v18[4] = &v19;
    v18[5] = this;
    v10 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v10, v18);
LABEL_7:
    v12 = (4 * *(v20 + 6));
LABEL_9:
    _Block_object_dispose(&v19, 8);
    return v12;
  }

  return HALS_Control::GetPropertyDataSize(this, a2, a3);
}

void ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 96) == 1)
  {
    v4 = HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(*(v2 + 80), a2);
    v5 = v4;
    v6 = 1;
    if (v4)
    {
      LODWORD(v4) = CFArrayGetCount(v4);
    }

    *(*(*(a1 + 32) + 8) + 24) = v4;
    CACFArray::~CACFArray(&v5);
  }
}

void sub_1DE5D1EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFArray::~CACFArray(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5D1ED8);
}

void ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v3 = HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(*(*(a1 + 40) + 80), a2);
  v4 = v3;
  v5 = 1;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayGetCount(v3);
  }

  CACFArray::~CACFArray(&v4);
}

uint64_t ___ZNK16HALS_IOA2Control19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 104))
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 112);
  }

  return result;
}

uint64_t HALS_IOA2Control::IsPropertySettable(HALS_IOA2Control *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  IsPropertySettable = HALS_Control::IsPropertySettable(this, a2, a3);
  if (*(v13 + 24) == 1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK16HALS_IOA2Control18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v11[3] = &unk_1E86770E8;
    v11[4] = &v12;
    v11[5] = this;
    v7 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v7, v11);
    v8 = *(v13 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v8 & 1;
}

void sub_1DE5D2128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK16HALS_IOA2Control18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 80);
  v6 = 0;
  v4 = v2;
  v5 = 0;
  if (v2)
  {
    CACFDictionary::GetBool(v2, @"read only", &v6);
    v3 = !v6;
  }

  else
  {
    v3 = 1;
  }

  CACFDictionary::~CACFDictionary(&v4);
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void sub_1DE5D21B8(void *a1)
{
  CACFDictionary::~CACFDictionary(&v2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOA2Control::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (result)
  {

    return HALS_Control::HasProperty(a1, a2, a3);
  }

  return result;
}

void HALS_IOA2Control::~HALS_IOA2Control(HALS_IOA2Control *this)
{
  HALS_IOA2Control::~HALS_IOA2Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  v16 = *MEMORY[0x1E69E9840];
  *this = &unk_1F597FD88;
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 != v3)
  {
    if (v2 != 1651273579 && v2 != 1936028002 && v3 != 1651273579 && v3 != 1936028002)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (!*(this + 13))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (v2 == 1936028002 || v2 == 1651273579)
  {
    goto LABEL_18;
  }

LABEL_19:
  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *v10;
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "HALS_IOA2Control.cpp";
    v14 = 1024;
    v15 = 73;
    _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOA2Control::~HALS_IOA2Control: somebody forgot to unmap the block control buffer", &v12, 0x12u);
  }

LABEL_26:
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 17));
  CACFDictionary::~CACFDictionary((this + 80));
  HALS_Control::~HALS_Control(this);
}

void sub_1DE5D2440(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_IOA2Control::Activate(HALS_IOA2Control *this)
{
  HALS_IOA2Control::SynchronizeWithDictionary(this);

  HALS_Object::Activate(this, v2);
}

void HALS_IOA2Control::SynchronizeWithDictionary(HALS_IOA2Control *this)
{
  v2 = *(this + 10);
  cf = 0;
  v35 = v2;
  v36 = 0;
  if (v2)
  {
    CACFDictionary::GetArray(v2, @"property selectors", &cf);
    v3 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v3 = 0;
  }

  CACFDictionary::~CACFDictionary(&v35);
  v25 = v3;
  v26 = 1;
  if (!v3)
  {
    *(this + 42) = 0;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(v3);
  if (Count >= 6)
  {
    *(this + 42) = 6;
  }

  else
  {
    *(this + 42) = Count;
    if (!Count)
    {
      goto LABEL_13;
    }
  }

  v5 = 0;
  v6 = (this + 172);
  do
  {
    CACFArray::GetUInt32(&v25, v5++, v6++);
  }

  while (v5 < *(this + 42));
LABEL_13:
  v7 = *(this + 5);
  if (v7 <= 1936028006)
  {
    v8 = v7 == 1818588780;
    v9 = 1886544237;
  }

  else
  {
    v8 = v7 == 1936028007 || v7 == 1937072758;
    v9 = 1986817381;
  }

  if (!v8 && v7 != v9)
  {
    v20 = *(this + 6);
    if (v7 == v20)
    {
      goto LABEL_45;
    }

    if (v20 <= 1936028006)
    {
      if (v20 != 1818588780)
      {
        v21 = 1886544237;
LABEL_67:
        if (v20 != v21)
        {
          goto LABEL_45;
        }
      }
    }

    else if (v20 != 1936028007 && v20 != 1937072758)
    {
      v21 = 1986817381;
      goto LABEL_67;
    }
  }

  v11 = *(this + 10);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 17));
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = this + 136;
  v35 = v11;
  v36 = 0;
  if (v11)
  {
    cf = 0;
    v34 = 1;
    CACFDictionary::GetCACFArray(&v35, @"range map", &cf);
    v12 = cf;
    if (cf)
    {
      v13 = 0;
LABEL_27:
      LODWORD(v12) = CFArrayGetCount(v12);
      while (v13 < v12)
      {
        v31 = 0;
        v32 = 1;
        CACFArray::GetCACFDictionary(&cf, v13, &v31);
        if (v31)
        {
          v30 = 0;
          v29 = 0.0;
          v28 = 0;
          v27 = 0.0;
          CACFDictionary::GetSInt32(v31, @"start int value", &v30);
          CACFDictionary::GetFixed64(v31, @"start db value", &v29);
          CACFDictionary::GetUInt32(v31, @"integer steps", &v28);
          Fixed64 = CACFDictionary::GetFixed64(v31, @"db per step", &v27);
          *&Fixed64 = v29;
          v15 = v29 + v28 * v27;
          CAVolumeCurve::AddRange((this + 120), v30, v28 + v30, Fixed64, v15);
        }

        CACFDictionary::~CACFDictionary(&v31);
        ++v13;
        v12 = cf;
        if (cf)
        {
          goto LABEL_27;
        }
      }
    }

    LODWORD(v31) = 0;
    if (CACFDictionary::GetUInt32(v35, @"transfer function", &v31))
    {
      v16 = v31;
      *(this + 39) = v31;
      if (v16 > 0xF)
      {
        v19 = 1.0;
        v18 = 2.0;
        v17 = 1;
      }

      else
      {
        v17 = byte_1DE7581D0[v16];
        v18 = flt_1DE75F074[v16];
        v19 = flt_1DE75F0B4[v16];
      }

      *(this + 152) = v17;
      *(this + 40) = v18;
      *(this + 41) = v19;
    }

    CACFArray::~CACFArray(&cf);
  }

  CACFDictionary::~CACFDictionary(&v35);
  v7 = *(this + 5);
LABEL_45:
  if (v7 > 1751740517)
  {
    if (v7 == 1751740518 || v7 == 1852601964)
    {
      goto LABEL_53;
    }

    v22 = 1936483188;
  }

  else
  {
    if (v7 == 1668047723 || v7 == 1684370292)
    {
      goto LABEL_53;
    }

    v22 = 1685287523;
  }

  if (v7 != v22)
  {
    v23 = *(this + 6);
    if (v7 == v23)
    {
      goto LABEL_54;
    }

    if (v23 > 1751740517)
    {
      if (v23 == 1751740518 || v23 == 1936483188)
      {
        goto LABEL_53;
      }

      v24 = 1852601964;
    }

    else
    {
      if (v23 == 1668047723 || v23 == 1684370292)
      {
        goto LABEL_53;
      }

      v24 = 1685287523;
    }

    if (v23 != v24)
    {
      goto LABEL_54;
    }
  }

LABEL_53:
  CACFDictionary::GetBool(*(this + 10), @"multi-selector", this + 96);
LABEL_54:
  CACFArray::~CACFArray(&v25);
}

void sub_1DE5D28EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  CACFArray::~CACFArray(&a17);
  CACFDictionary::~CACFDictionary(va);
  CACFArray::~CACFArray(&a9);
  _Unwind_Resume(a1);
}

void HALS_IOA2Control::SynchronizeWithRegistry(HALS_IOA2Control *this)
{
  if (*(this + 15) == 1)
  {
    *(this + 43) = 1650685548;
  }

  else
  {
    v4[5] = v1;
    v4[6] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN16HALS_IOA2Control23SynchronizeWithRegistryEv_block_invoke;
    v4[3] = &__block_descriptor_tmp_76_12601;
    v4[4] = this;
    v3 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v3, v4);
  }
}

void ___ZN16HALS_IOA2Control23SynchronizeWithRegistryEv_block_invoke(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 56));
  v5 = v3;
  if (v3)
  {
    v6 = HALS_IOA2UCDevice::CopyControlDictionaryByID((v3 + 1976), *(v2 + 72));
    v8 = v6;
    v9 = 1;
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "HALS_IOA2Control.cpp";
        v12 = 1024;
        v13 = 1258;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Control::SynchronizeWithRegistry: couldn't find the control dictionary", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    CACFDictionary::SetCFMutableDictionaryFromCopy((v2 + 80), v6);
    HALS_IOA2Control::SynchronizeWithDictionary(v2);
    CACFDictionary::~CACFDictionary(&v8);
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void ___ZN16HALS_IOA2Control12PushNewValueEi_block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(v3 + 56));
  v6 = v4;
  if (v4)
  {
    if (*(v3 + 96))
    {
      (*(*(v4 + 1976) + 16))(v4 + 1976);
      HALS_IOA2Control::SynchronizeWithRegistry(v3);
    }

    else
    {
      v7 = *(v3 + 72);
      v8 = *(a1 + 40);
      theArray = 0;
      HALB_UCObject::CopyProperty_CFArray((v4 + 1976), @"controls", &theArray);
      v9 = 0;
      v10 = theArray;
      v29 = theArray;
      v30 = 1;
      if (!theArray)
      {
        goto LABEL_6;
      }

LABEL_5:
      LODWORD(v10) = CFArrayGetCount(v10);
LABEL_6:
      while (v9 < v10)
      {
        theDict = 0;
        v28 = 0;
        CACFArray::GetCACFDictionary(&v29, v9, &theDict);
        if (theDict)
        {
          v26 = 0;
          UInt32 = CACFDictionary::GetUInt32(theDict, @"control ID", &v26);
          v12 = v26 == v7 ? UInt32 : 0;
          if (v12 == 1)
          {
            v25 = 0;
            CACFDictionary::GetUInt32(theDict, @"base class", &v25);
            v24 = 0;
            CACFDictionary::GetSInt32(theDict, @"value", &v24);
            if (v25 <= 1936483441)
            {
              if (v25 != 1818588780 && v25 != 1936483188)
              {
                goto LABEL_40;
              }
            }

            else if (v25 != 1936483442 && v25 != 1936744814)
            {
              if (v25 != 1953458028)
              {
                goto LABEL_40;
              }

              v13 = (v8 != 0) ^ (v24 == 0);
              if (!v13)
              {
                v8 = v8 != 0;
              }

              if (v13)
              {
                goto LABEL_40;
              }

LABEL_25:
              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
              v23 = 257;
              valuePtr = v8;
              v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              theArray = v14;
              LOBYTE(v32) = 1;
              if (v14 && MutableCopy)
              {
                CFDictionarySetValue(MutableCopy, @"value", v14);
              }

              CACFNumber::~CACFNumber(&theArray);
              if (v29)
              {
                Count = CFArrayGetCount(v29);
                v16 = v29;
              }

              else
              {
                v16 = 0;
                Count = 0;
              }

              v17 = CFArrayCreateMutableCopy(0, Count, v16);
              theArray = v17;
              v32 = 257;
              if (v17)
              {
                v18 = CFArrayGetCount(v17);
                v19 = theArray;
                if (v9 <= v18)
                {
                  CFArraySetValueAtIndex(theArray, v9, MutableCopy);
                  v19 = theArray;
                }
              }

              else
              {
                v19 = 0;
              }

              if (*(v6 + 2001) == 1)
              {
                if (v19)
                {
                  v20 = *(v6 + 1992);
                  if (v20)
                  {
                    CFDictionarySetValue(v20, @"controls", v19);
                  }
                }
              }

              CACFArray::~CACFArray(&theArray);
              CACFDictionary::~CACFDictionary(&MutableCopy);
LABEL_40:
              CACFDictionary::~CACFDictionary(&theDict);
              break;
            }

            if (v24 != v8)
            {
              goto LABEL_25;
            }

            goto LABEL_40;
          }
        }

        CACFDictionary::~CACFDictionary(&theDict);
        ++v9;
        v10 = v29;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      CACFArray::~CACFArray(&v29);
      v21 = HALS_IOA2UCDevice::CopyControlDictionaryByID((v6 + 1976), *(v3 + 72));
      theArray = v21;
      v32 = 1;
      if (v21)
      {
        CACFDictionary::SetCFMutableDictionaryFromCopy((v3 + 80), v21);
        HALS_IOA2Control::SynchronizeWithDictionary(v3);
      }

      CACFDictionary::~CACFDictionary(&theArray);
    }
  }

  HALS_ObjectMap::ReleaseObject(v6, v5);
}

void sub_1DE5D30F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  CACFNumber::~CACFNumber(va3);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  CACFArray::~CACFArray(va2);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  _Unwind_Resume(a1);
}

void AMCP::IOAudio1::Device::Device(uint64_t a1, std::string::size_type a2, io_object_t *a3, const __CFDictionary **a4)
{
  v69 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  if (*a4)
  {
    cf.__r_.__value_.__r.__words[0] = &stru_1F5992518;
    v7 = CFGetTypeID(&stru_1F5992518);
    if (v7 == CFStringGetTypeID())
    {
      applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>((a1 + 24), *a4, @"IOAudioEngineGlobalUniqueID", &cf);
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      *(a1 + 32) = 0;
      v8 = *(a1 + 24);
      if (v8)
      {
        applesauce::CF::convert_to<std::string,0>(__p, v8);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0].__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&cf, "%s Work Queue", v9, v10);
        if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_cf = &cf;
        }

        else
        {
          p_cf = cf.__r_.__value_.__r.__words[0];
        }

        v12 = dispatch_queue_create(p_cf, 0);
        AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1 + 40, v12);
        if (v12)
        {
          dispatch_release(v12);
        }

        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v13 = *a3;
        *(a1 + 376) = v13;
        if (!v13 || (v13 = IOObjectRetain(v13), v14 = v13, !v13))
        {
          *(a1 + 384) = 0;
          *(a1 + 392) = 0;
          *(a1 + 400) = AMCP::Utility::Mach_Port::create_port(v13);
          *(a1 + 404) = 257;
          *(a1 + 408) = 850045863;
          *(a1 + 416) = 0u;
          *(a1 + 432) = 0u;
          *(a1 + 448) = 0u;
          *(a1 + 464) = 0u;
          *(a1 + 480) = *a4;
          *a4 = 0;
          std::string::basic_string[abi:ne200100]<0>(&v52, "IOAudioDevice");
          std::string::basic_string[abi:ne200100]<0>(v57, "IOService");
          v67 = 0;
          v68 = 0;
          v66 = 0;
          v15 = *a3;
          LODWORD(v59) = v15;
          if (!v15 || (v16 = IOObjectRetain(v15), !v16))
          {
            if (SHIBYTE(v58) < 0)
            {
              std::string::__init_copy_ctor_external(v54, v57[0], v57[1]);
            }

            else
            {
              *v54 = *v57;
              *&v54[16] = v58;
            }

            LODWORD(cf.__r_.__value_.__l.__data_) = v15;
            LODWORD(v59) = 0;
            *&cf.__r_.__value_.__r.__words[1] = *v54;
            *&v64 = *&v54[16];
            memset(v54, 0, 24);
            object[0] = 0;
            if ((SBYTE7(v64) & 0x80u) == 0)
            {
              p_size = &cf.__r_.__value_.__l.__size_;
            }

            else
            {
              p_size = cf.__r_.__value_.__l.__size_;
            }

            v18 = MEMORY[0x1E12C09A0](v15, p_size, object);
            if (!v18)
            {
              v19 = object[0];
              LODWORD(__p[0].__r_.__value_.__l.__data_) = object[0];
              LODWORD(buf.__r_.__value_.__l.__data_) = object[0];
              if (object[0])
              {
                v20 = IOObjectRetain(object[0]);
                if (v20)
                {
                  exception = __cxa_allocate_exception(0x20uLL);
                  v50 = std::system_category();
                  MEMORY[0x1E12C10C0](exception, v20, v50, "Error on Retain");
                  __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                }

                iterator[0] = v19;
                v21 = IOObjectRetain(v19);
                if (v21)
                {
                  v22 = __cxa_allocate_exception(0x20uLL);
                  v23 = std::system_category();
                  MEMORY[0x1E12C10C0](v22, v21, v23, "Error on Retain");
                  __cxa_throw(v22, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                }
              }

              else
              {
                iterator[0] = 0;
              }

              v24 = IOIteratorNext(v19);
              iterator[1] = v24;
              if (v19)
              {
                IOObjectRelease(v19);
                IOObjectRelease(v19);
                v24 = iterator[1];
              }

              __p[0].__r_.__value_.__r.__words[0] = 0;
              while (v24)
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = v24;
                v25 = IOObjectRetain(v24);
                if (v25)
                {
                  v35 = __cxa_allocate_exception(0x20uLL);
                  v36 = std::system_category();
                  MEMORY[0x1E12C10C0](v35, v25, v36, "Error on Retain");
                  __cxa_throw(v35, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                }

                if (v53 >= 0)
                {
                  v26 = &v52;
                }

                else
                {
                  v26 = v52;
                }

                if (IOObjectConformsTo(v24, v26))
                {
                  std::vector<applesauce::iokit::io_object_holder>::push_back[abi:ne200100](&v66, &buf);
                }

                IOObjectRelease(v24);
                if (!iterator[1])
                {
                  v37 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v37, "io_services_iterator exceeding size");
                  v37->__vftable = (MEMORY[0x1E69E55B8] + 16);
                  __cxa_throw(v37, off_1E8672F68, MEMORY[0x1E69E5280]);
                }

                v24 = IOIteratorNext(iterator[0]);
                v27 = iterator[1];
                iterator[1] = v24;
                if (v27)
                {
                  IOObjectRelease(v27);
                  v24 = iterator[1];
                }
              }

              if (iterator[0])
              {
                IOObjectRelease(iterator[0]);
              }

              if (SBYTE7(v64) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__size_);
              }

              if (LODWORD(cf.__r_.__value_.__l.__data_))
              {
                IOObjectRelease(cf.__r_.__value_.__l.__data_);
              }

              v28 = (a1 + 488);
              if (v66 == v67)
              {
                *v28 = 0;
              }

              else
              {
                v29 = *v66;
                *v28 = *v66;
                if (v29)
                {
                  v30 = IOObjectRetain(v29);
                  if (v30)
                  {
                    v31 = __cxa_allocate_exception(0x20uLL);
                    v32 = std::system_category();
                    MEMORY[0x1E12C10C0](v31, v30, v32, "Error on Retain");
                    __cxa_throw(v31, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
                  }
                }
              }

              cf.__r_.__value_.__r.__words[0] = &v66;
              std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&cf);
              if (SHIBYTE(v58) < 0)
              {
                operator delete(v57[0]);
              }

              if (SHIBYTE(v53) < 0)
              {
                operator delete(v52);
              }

              v33 = *(a1 + 488);
              if (v33)
              {
                applesauce::iokit::get_properties((a1 + 496), v33);
              }

              else
              {
                *(a1 + 496) = 0;
              }

              *(a1 + 552) = 0u;
              v34 = (a1 + 552);
              *(a1 + 584) = 0;
              *(a1 + 568) = 0u;
              *(a1 + 520) = 0u;
              *(a1 + 536) = 0u;
              *(a1 + 504) = 0u;
              std::string::basic_string[abi:ne200100]<0>(&cf, "IOAudioStream");
              std::string::basic_string[abi:ne200100]<0>(__p, "IOService");
              buf.__r_.__value_.__r.__words[0] = &cf;
              _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(v57, *a3, __p, &buf.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              AMCP::IOAudio1::Stream::create_from_service_list(&cf, a1, v57[0], v57[1]);
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__vdeallocate((a1 + 504));
              *(a1 + 504) = cf;
              memset(&cf, 0, sizeof(cf));
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__vdeallocate((a1 + 528));
              *(a1 + 528) = v64;
              *(a1 + 544) = v65;
              v65 = 0;
              v64 = 0uLL;
              __p[0].__r_.__value_.__r.__words[0] = &v64;
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
              __p[0].__r_.__value_.__r.__words[0] = &cf;
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
              std::string::basic_string[abi:ne200100]<0>(&cf, "IOAudioControl");
              std::string::basic_string[abi:ne200100]<0>(__p, "IOService");
              buf.__r_.__value_.__r.__words[0] = &cf;
              _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(iterator, *a3, __p, &buf.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              AMCP::IOAudio1::Control::create_from_service_list(&cf.__r_.__value_.__l.__data_, a1, *iterator, v56);
              if (*v34)
              {
                std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100]((a1 + 552));
                operator delete(*v34);
                *v34 = 0;
                *(a1 + 560) = 0;
                *(a1 + 568) = 0;
              }

              *v34 = *&cf.__r_.__value_.__l.__data_;
              *(a1 + 568) = *(&cf.__r_.__value_.__l + 2);
              memset(&cf, 0, sizeof(cf));
              __p[0].__r_.__value_.__r.__words[0] = &cf;
              std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(&cf, (*(*(*(a1 + 16) + 32) + 32) + 368));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(__p, (*(*(*(a1 + 16) + 32) + 32) + 704));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v61, &cf.__r_.__value_.__l.__data_);
              dispatch_set_target_queue(v61[0], __p[0].__r_.__value_.__l.__data_);
              AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v61);
              operator new();
            }

            v41 = __cxa_allocate_exception(0x18uLL);
            std::string::basic_string[abi:ne200100]<0>(&buf, "Could not find any parents for plane ");
            if ((SBYTE7(v64) & 0x80u) == 0)
            {
              size = &cf.__r_.__value_.__s.__data_[8];
            }

            else
            {
              size = cf.__r_.__value_.__l.__size_;
            }

            if ((SBYTE7(v64) & 0x80u) == 0)
            {
              v43 = BYTE7(v64);
            }

            else
            {
              v43 = cf.__r_.__value_.__r.__words[2];
            }

            v44 = std::string::append(&buf, size, v43);
            __p[0] = *v44;
            v44->__r_.__value_.__l.__size_ = 0;
            v44->__r_.__value_.__r.__words[2] = 0;
            v44->__r_.__value_.__r.__words[0] = 0;
            applesauce::iokit::kern_return_exception::kern_return_exception(v41, &__p[0].__r_.__value_.__l.__data_, v18);
          }

          v47 = __cxa_allocate_exception(0x20uLL);
          v48 = std::system_category();
          MEMORY[0x1E12C10C0](v47, v16, v48, "Error on Retain");
          __cxa_throw(v47, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
        }

        v45 = __cxa_allocate_exception(0x20uLL);
        v46 = std::system_category();
        MEMORY[0x1E12C10C0](v45, v14, v46, "Error on Retain");
        __cxa_throw(v45, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not construct");
      __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v38 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v38, "Could not construct");
  __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE5D4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p)
{
  __cxa_free_exception(v36);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &__p;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v42 = *(v35 + 584);
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  STACK[0x440] = v40;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v39;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v38;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v37);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v35 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v35 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v35 + 40));
  applesauce::CF::StringRef::~StringRef((v35 + 24));
  v43 = *(v35 + 8);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}::~Address(va);
  JUMPOUT(0x1DE5D5180);
}

void sub_1DE5D5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  JUMPOUT(0x1DE5D55B4);
}

void sub_1DE5D50C8()
{
  __cxa_free_exception(v0);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&STACK[0x440]);
  JUMPOUT(0x1DE5D5784);
}

void sub_1DE5D5134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  JUMPOUT(0x1DE5D55A4);
}

void sub_1DE5D5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, io_object_t a47)
{
  applesauce::iokit::io_object_holder::~io_object_holder(&a47);
  applesauce::iokit::io_object_holder::~io_object_holder(&STACK[0x2F0]);
  JUMPOUT(0x1DE5D5624);
}

void sub_1DE5D5170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, ...)
{
  va_start(va, a39);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::optional<applesauce::CF::DictionaryRef>::~optional(va);
  JUMPOUT(0x1DE5D559CLL);
}

void sub_1DE5D518C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _Unwind_Exception *exception_object, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v49 = *(v48 - 128);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  JUMPOUT(0x1DE5D559CLL);
}

void sub_1DE5D5204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  JUMPOUT(0x1DE5D55ACLL);
}

void sub_1DE5D5220()
{
  v1 = *(v0 - 128);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DE5D55B4);
}

void sub_1DE5D5290(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int buf, int a48, int a49, __int16 a50, __int16 a51, __int16 a52, __int16 a53)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v53, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
    v57 = __cxa_begin_catch(a1);
    v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if (a2 == 2)
    {
      v59 = v57;
      if ((v58 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v57);
      }

      v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        v62 = *v61;
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      else
      {
        v62 = *v61;
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v66 = (*(*v59 + 16))(v59);
        buf = 136315650;
        *(v54 + 4) = "IOAudio1_Device.cpp";
        a50 = 1024;
        *(v54 + 14) = 129;
        a53 = 2080;
        *(v54 + 20) = v66;
        _os_log_error_impl(&dword_1DE1F9000, v62, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver's engine: %s", &buf, 0x1Cu);
      }

      __cxa_rethrow();
    }

    if ((v58 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v57);
    }

    v64 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v63 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      v65 = *v64;
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    else
    {
      v65 = *v64;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *(v54 + 4) = "IOAudio1_Device.cpp";
      a50 = 1024;
      *(v54 + 14) = 134;
      _os_log_error_impl(&dword_1DE1F9000, v65, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver's engine", &buf, 0x12u);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5D5450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __cxa_end_catch();
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v40 = *(v35 + 584);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  STACK[0x440] = v39;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v38;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v37;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v36);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v35 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v35 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v35 + 40));
  applesauce::CF::StringRef::~StringRef((v35 + 24));
  v41 = *(v35 + 8);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D5474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a57);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v62 = *(v57 + 584);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  STACK[0x440] = v61;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v60;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v59;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v57 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v57 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v58);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v57 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v57 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v57 + 40));
  applesauce::CF::StringRef::~StringRef((v57 + 24));
  v63 = *(v57 + 8);
  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](&a47);
  if (v53)
  {
    dispatch_release(v53);
  }

  MEMORY[0x1E12C1730](v52, 0x1020C40DCC910D7);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v54 = *(v47 + 584);
  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  STACK[0x440] = v51;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v50;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v49;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v48);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v47 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v47 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v47 + 40));
  applesauce::CF::StringRef::~StringRef((v47 + 24));
  v55 = *(v47 + 8);
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  JUMPOUT(0x1DE5D5790);
}

void sub_1DE5D54C4()
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  JUMPOUT(0x1DE5D56F4);
}

void sub_1DE5D5500()
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  JUMPOUT(0x1DE5D5704);
}

void sub_1DE5D5558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  AMCP::IOKit::Service_Parent_Range_For::~Service_Parent_Range_For(&STACK[0x440]);
  STACK[0x2F0] = v43 - 136;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1DE5D5744);
}

void sub_1DE5D5598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, const void *a42)
{
  std::optional<applesauce::CF::NumberRef>::~optional(&a15);
  std::optional<applesauce::CF::StringRef>::~optional(&a19);
  applesauce::CF::URLRef::~URLRef(&a42);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a23);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v48 = *(v42 + 584);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  STACK[0x440] = v46;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v45;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v44;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v42 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v42 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v43);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v42 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v42 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v42 + 40));
  applesauce::CF::StringRef::~StringRef((v42 + 24));
  v49 = *(v42 + 8);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  _Unwind_Resume(a1);
}

void sub_1DE5D55EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE5D5600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(&STACK[0x2F0]);
  applesauce::iokit::details::io_services_iterator::~io_services_iterator(&a32);
  JUMPOUT(0x1DE5D5624);
}

void sub_1DE5D5660(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, io_object_t *a11, io_object_t *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(&a47);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error((v54 - 136));
  if (v48)
  {
    __cxa_free_exception(v53);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a40);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2F0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x440]);
  STACK[0x440] = &a32;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = &a35;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  v55 = *(v47 + 584);
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  STACK[0x440] = v52;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v51;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  STACK[0x440] = v50;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x440]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 496));
  applesauce::iokit::io_object_holder::~io_object_holder(a11);
  applesauce::CF::DictionaryRef::~DictionaryRef((v47 + 480));
  AMCP::Utility::Mach_Port::~Mach_Port(v49);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v47 + 392), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v47 + 384), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v47 + 40));
  applesauce::CF::StringRef::~StringRef((v47 + 24));
  v56 = *(v47 + 8);
  if (v56)
  {
    std::__shared_weak_count::__release_weak(v56);
  }

  JUMPOUT(0x1DE5D5790);
}

void applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 4;
        std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(io_object_t **a1, uint64_t object, uint64_t a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v39 = object;
  if (object)
  {
    v8 = IOObjectRetain(object);
    if (v8)
    {
      v30 = v8;
      exception = __cxa_allocate_exception(0x20uLL);
      v32 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v30, v32, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a3, *(a3 + 8));
  }

  else
  {
    v38 = *a3;
  }

  v39 = 0;
  v40 = object;
  __p = v38;
  memset(&v38, 0, sizeof(v38));
  v44 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v10 = MEMORY[0x1E12C0980](object, p_p, &v44);
  if (v10)
  {
    v25 = v10;
    v26 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v42, "Could not find any parents for plane ");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v42, v27, size);
    v43 = *v29;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    applesauce::iokit::kern_return_exception::kern_return_exception(v26, &v43.__r_.__value_.__l.__data_, v25);
  }

  v11 = v44;
  LODWORD(v43.__r_.__value_.__l.__data_) = v44;
  LODWORD(v42.__r_.__value_.__l.__data_) = v44;
  if (v44)
  {
    v12 = IOObjectRetain(v44);
    if (v12)
    {
      v33 = v12;
      v34 = __cxa_allocate_exception(0x20uLL);
      v35 = std::system_category();
      MEMORY[0x1E12C10C0](v34, v33, v35, "Error on Retain");
      __cxa_throw(v34, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    iterator = v11;
    v13 = IOObjectRetain(v11);
    if (v13)
    {
      v14 = v13;
      v15 = __cxa_allocate_exception(0x20uLL);
      v16 = std::system_category();
      MEMORY[0x1E12C10C0](v15, v14, v16, "Error on Retain");
      __cxa_throw(v15, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  else
  {
    iterator = 0;
  }

  v17 = IOIteratorNext(v11);
  objecta = v17;
  if (v11)
  {
    IOObjectRelease(v11);
    IOObjectRelease(v11);
  }

  v43.__r_.__value_.__r.__words[0] = 0;
  while (v17)
  {
    LODWORD(v42.__r_.__value_.__l.__data_) = v17;
    v18 = IOObjectRetain(v17);
    if (v18)
    {
      v22 = __cxa_allocate_exception(0x20uLL);
      v23 = std::system_category();
      MEMORY[0x1E12C10C0](v22, v18, v23, "Error on Retain");
      __cxa_throw(v22, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v19 = *a4;
    if ((*a4)[23] < 0)
    {
      v19 = *v19;
    }

    if (IOObjectConformsTo(v17, v19))
    {
      std::vector<applesauce::iokit::io_object_holder>::push_back[abi:ne200100](a1, &v42);
    }

    IOObjectRelease(v17);
    if (!objecta)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v24, "io_services_iterator exceeding size");
      v24->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v24, off_1E8672F68, MEMORY[0x1E69E5280]);
    }

    v17 = IOIteratorNext(iterator);
    v20 = objecta;
    objecta = v17;
    IOObjectRelease(v20);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = v40;
  if (v40)
  {
    return IOObjectRelease(v40);
  }

  return result;
}

void sub_1DE5D5C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, __int16 a17, void *a18, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_8:
      AMCP::IOKit::Service_Child_Range_For::~Service_Child_Range_For(&a18);
      *(v30 - 64) = v27;
      std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100]((v30 - 64));
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

void std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void AMCP::IOAudio1::Device::get_resource_bundle_url(AMCP::IOAudio1::Device *this, uint64_t a2)
{
  v3 = *(a2 + 480);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_20;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&v18, v3, @"IOAudioDeviceLocalizedBundle");
  v5 = v19;
  if (v19)
  {
    goto LABEL_8;
  }

  v6 = *(a2 + 496);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_20:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&cf, v6, @"IOAudioDeviceLocalizedBundle");
  std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::StringRef,false>>(&v18, &cf);
  if (v17 == 1 && cf)
  {
    CFRelease(cf);
  }

  v5 = v19;
  if ((v19 & 1) == 0)
  {
    *this = 0;
    return;
  }

LABEL_8:
  v7 = v18;
  v8 = CFStringCreateWithFormat(0, 0, @"/System/Library/Extensions/%@", v18);
  v9 = v8;
  cf = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 != CFStringGetTypeID())
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v11 = CFURLCreateWithFileSystemPath(0, v9, kCFURLPOSIXPathStyle, 1u);
  *this = v11;
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 != CFURLGetTypeID())
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7 != 0 && (v5 & 1) != 0)
  {
    CFRelease(v7);
  }
}

void sub_1DE5D6020(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v11);
  __clang_call_terminate(a1);
}

void std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::StringRef,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      *a1 = *a2;
      *a2 = v3;
    }
  }

  else if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = 1;
  }
}

void std::__optional_storage_base<applesauce::CF::NumberRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::NumberRef,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      *a1 = *a2;
      *a2 = v3;
    }
  }

  else if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = 1;
  }
}

void AMCP::IOAudio1::Device::update_core_common(uint64_t a1, float *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 480);
  if (v2)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&v12, v2, @"IOAudioEngineDescription");
    if ((v13 & 1) == 0)
    {
      v4 = *(a1 + 496);
      if (!v4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(cf, v4, @"IOAudioDeviceName");
      std::__optional_storage_base<applesauce::CF::StringRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::StringRef,false>>(&v12, cf);
      if (cf[8] == 1)
      {
        v5 = *cf;
        if (*cf)
        {
          CFRelease(*cf);
        }
      }

      if ((v13 & 1) == 0)
      {
        v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v6 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v5);
        }

        v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = *v8;
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        else
        {
          v9 = *v8;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *cf = 136315650;
          *&cf[4] = "IOAudio1_Device.cpp";
          v15 = 1024;
          v16 = 170;
          v17 = 2080;
          v18 = "device_name_opt.operator BOOL() == true";
          _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Devices have to have a name", cf, 0x1Cu);
        }

        abort();
      }
    }

    v19 = 0x676C6F626C6E616DLL;
    LODWORD(v20) = 0;
    AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(cf, &v19, v12);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(v10);
  __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE5D867C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (a2)
  {
    __cxa_free_exception(v59);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a59);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device10build_coreEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!*(v2 + 376))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = CFStringCreateWithBytes(0, "IOAudioEngineClientDescription", 30, 0x8000100u, 0);
  cf = v4;
  if (!v4)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = *a2;
  if (v5)
  {
    CFRetain(v5);
    v6 = cf;
  }

  else
  {
    v6 = v4;
  }

  v9 = v5;
  applesauce::iokit::io_object_proxy::set_properties(*(v2 + 376), v6, &v9);
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE5D8FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980D20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = 0;
  v4 = *(v3 + 376);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOAudioEngineClientDescription", 0, 0);
  v6 = CFProperty;
  if (CFProperty)
  {
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = CFGetTypeID(v6);
      if (v8 != CFDictionaryGetTypeID())
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "Could not construct");
        __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *a2 = v6;
    }

    else
    {
      CFRelease(v6);
    }
  }
}

void sub_1DE5D91F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a9);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980C30;
  a2[1] = v2;
  return result;
}

const void **AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}::~Address(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN10applesauce2CF13DictionaryRefEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::operator()@<X0>(CFTypeRef result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  *a2 = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::__clone(CFTypeRef result, void *a2)
{
  *a2 = &unk_1F5980B20;
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  a2[1] = v3;
  return result;
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980B20;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::DictionaryRef>(AMCP::Address const&,applesauce::CF::DictionaryRef const&)::{lambda(void)#1}>,applesauce::CF::DictionaryRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980B20;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DE5D972C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __cxa_free_exception(v10);
  std::optional<applesauce::CF::NumberRef>::~optional(&a9);
  std::optional<applesauce::CF::BooleanRef>::~optional(va);
  _Unwind_Resume(a1);
}

const void *AMCP::IOAudio1::Device_Sub_Object::get_registry_entries(AMCP::IOAudio1::Device_Sub_Object *this, io_registry_entry_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::iokit::get_properties(this, a2);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v2, (*(*(a1 + 16) + 32) + 704));
  operator new();
}

void sub_1DE5D9C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v27);
  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v29);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a24);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio1::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5980728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::$_2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v13 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v6, v13, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    CFRetain(*(a2 + 32));
  }

  *(a1 + 32) = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 68);
  *(a1 + 88) = 0;
  *(a1 + 68) = v10;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>((a1 + 88), *(a2 + 88), *(a2 + 96), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>((a1 + 112), *(a2 + 112), *(a2 + 120), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  return a1;
}

void sub_1DE5DA080(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59806B8;
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59806B8;
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(double const&)>::operator()(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(*(v3 + 16) + 32) + 16);
  v16 = &unk_1F5980378;
  v17 = v3;
  v19 = &v16;
  AMCP::Core::Broker::fetch_first_core_if (&v10, v4, &v16);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v16);
  v5 = v10;
  if (v10)
  {
    AMCP::Core::Core::get_simple_required_property<1718444404u>(&v9, v10);
    if (*&v9 != *a2)
    {
      *&v9 = *a2;
      v14 = 0x676C6F62666D6174;
      v15 = 0;
      if (AMCP::Core::Core::is_property_settable(v5, &v14))
      {
        AMCP::Core::Core::find_operation(&v12, v5, &v14);
        v6 = v12;
        if (v12)
        {
          v7 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
          if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
          {
            AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(v6, &v9);
          }

          else
          {
            v8 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v8))
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
              operator new();
            }
          }
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1DE5DA484(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5DA49C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a2)
  {
    AMCP::Thing::~Thing((v18 - 64));
    if (a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5DA3C8);
  }

  JUMPOUT(0x1DE5DA48CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device18update_core_commonERNS2_4Core13Operation_SetEENK3__0clERKdEUlRKT_E_NS_9allocatorISE_EEFbRKNS_10shared_ptrINS5_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEENK3$_0clERKdEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP8IOAudio16Device18update_core_commonERNS2_4Core13Operation_SetEENK3__0clERKdEUlRKT_E_NS_9allocatorISE_EEFbRKNS_10shared_ptrINS5_4CoreEEEEEclESL_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(v3 + 32) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device18update_core_commonERNS2_4Core13Operation_SetEENK3__0clERKdEUlRKT_E_NS_9allocatorISE_EEFbRKNS_10shared_ptrINS5_4CoreEEEEE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980378;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59802F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio1::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980178;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(*(v3[2] + 4) + 16);
  v12 = &unk_1F5980860;
  v13 = v3;
  v14 = &v12;
  AMCP::Core::Broker::fetch_first_core_if (&v9, v4, &v12);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v12);
  AMCP::Core::Core::get_simple_required_property<1718449187u>(&v12, v9);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = v12;
  v6 = v13;
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    while (v7 != v8)
    {
      CA::ValueRangeList::AddRange(a2, v7);
      v7 += 2;
    }

    v5 += 8;
  }

  v11 = &v12;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE5DA904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, char a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  a11 = &a12;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP8IOAudio16Device10build_coreEvENK3$_0clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP8IOAudio16Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  v3 = *(a1 + 8);
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(v3 + 32) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio16Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5980860;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio1::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59807E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, unsigned int a6)
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v7 = AMCP::Utility::Mach_Port::receive_message(*(v6 + 100), 0x30u, &v97, 1);
  v8 = v7;
  AMCP::Utility::Kernel_Error_Category::get(v7);
  if (v8)
  {
    return;
  }

  if (SDWORD2(v98) > 3)
  {
    switch(DWORD2(v98))
    {
      case 4:
        v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v30 & 1) == 0)
        {
          v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(v31 + 16);
        if (v32 != 3)
        {
          if (v32 != 2)
          {
            if (v32 != 1)
            {
              goto LABEL_174;
            }

            v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v33 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v9);
            }

            v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              v23 = *v35;
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            else
            {
              v23 = *v35;
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v74 = v6[3];
            if (v74)
            {
              applesauce::CF::convert_to<std::string,0>(__p, v74);
              if (v101 >= 0)
              {
                v75 = __p;
              }

              else
              {
                v75 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "IOAudio1_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 721;
              *&buf[18] = 2080;
              *&buf[20] = v75;
              v73 = "%32s:%-5d 'Stopped' notification for device '%s'";
              goto LABEL_170;
            }

            goto LABEL_176;
          }

          v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v42 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v9);
          }

          v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            v45 = *v44;
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          else
          {
            v45 = *v44;
          }

          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_174;
          }

          v68 = applesauce::CF::StringRef::operator->(v6 + 3);
          applesauce::CF::convert_to<std::string,0>(__p, *v68);
          if (v101 >= 0)
          {
            v69 = __p;
          }

          else
          {
            v69 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 721;
          *&buf[18] = 2080;
          *&buf[20] = v69;
          v70 = "%32s:%-5d 'Stopped' notification for device '%s'";
          goto LABEL_126;
        }

        v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v46 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          v49 = *v48;
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        else
        {
          v49 = *v48;
        }

        if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          goto LABEL_174;
        }

        v71 = v6[3];
        if (!v71)
        {
          goto LABEL_176;
        }

        applesauce::CF::convert_to<std::string,0>(__p, v71);
        if (v101 >= 0)
        {
          v72 = __p;
        }

        else
        {
          v72 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "IOAudio1_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 721;
        *&buf[18] = 2080;
        *&buf[20] = v72;
        v73 = "%32s:%-5d 'Stopped' notification for device '%s'";
        break;
      case 5:
        v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v36 & 1) == 0)
        {
          v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(v37 + 16);
        if (v38 != 3)
        {
          if (v38 != 2)
          {
            if (v38 != 1)
            {
              goto LABEL_174;
            }

            v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v39 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v9);
            }

            v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              v23 = *v41;
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            else
            {
              v23 = *v41;
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v94 = v6[3];
            if (v94)
            {
              applesauce::CF::convert_to<std::string,0>(__p, v94);
              if (v101 >= 0)
              {
                v95 = __p;
              }

              else
              {
                v95 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "IOAudio1_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 725;
              *&buf[18] = 2080;
              *&buf[20] = v95;
              v73 = "%32s:%-5d 'Paused' notification for device '%s'";
              goto LABEL_170;
            }

            goto LABEL_176;
          }

          v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v56 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v9);
          }

          v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            v45 = *v58;
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }

          else
          {
            v45 = *v58;
          }

          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_174;
          }

          v80 = applesauce::CF::StringRef::operator->(v6 + 3);
          applesauce::CF::convert_to<std::string,0>(__p, *v80);
          if (v101 >= 0)
          {
            v81 = __p;
          }

          else
          {
            v81 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 725;
          *&buf[18] = 2080;
          *&buf[20] = v81;
          v70 = "%32s:%-5d 'Paused' notification for device '%s'";
          goto LABEL_126;
        }

        v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v65 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          v49 = *v67;
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        else
        {
          v49 = *v67;
        }

        if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          goto LABEL_174;
        }

        v88 = v6[3];
        if (!v88)
        {
          goto LABEL_176;
        }

        applesauce::CF::convert_to<std::string,0>(__p, v88);
        if (v101 >= 0)
        {
          v89 = __p;
        }

        else
        {
          v89 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "IOAudio1_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 725;
        *&buf[18] = 2080;
        *&buf[20] = v89;
        v73 = "%32s:%-5d 'Paused' notification for device '%s'";
        break;
      case 6:
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *(v17 + 16);
        if (v19 != 3)
        {
          if (v19 != 2)
          {
            if (v19 != 1)
            {
              goto LABEL_174;
            }

            v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v20 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v9);
            }

            v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              v23 = *v22;
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            else
            {
              v23 = *v22;
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v92 = v6[3];
            if (v92)
            {
              applesauce::CF::convert_to<std::string,0>(__p, v92);
              if (v101 >= 0)
              {
                v93 = __p;
              }

              else
              {
                v93 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "IOAudio1_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 729;
              *&buf[18] = 2080;
              *&buf[20] = v93;
              v73 = "%32s:%-5d 'Resumed' notification for device '%s'";
              goto LABEL_170;
            }

LABEL_176:
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v53 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v9);
          }

          v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            v45 = *v55;
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }

          else
          {
            v45 = *v55;
          }

          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_174;
          }

          v78 = applesauce::CF::StringRef::operator->(v6 + 3);
          applesauce::CF::convert_to<std::string,0>(__p, *v78);
          if (v101 >= 0)
          {
            v79 = __p;
          }

          else
          {
            v79 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 729;
          *&buf[18] = 2080;
          *&buf[20] = v79;
          v70 = "%32s:%-5d 'Resumed' notification for device '%s'";
LABEL_126:
          _os_log_debug_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_DEBUG, v70, buf, 0x1Cu);
          goto LABEL_172;
        }

        v62 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v62 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v64 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v63 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          v49 = *v64;
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        else
        {
          v49 = *v64;
        }

        if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          goto LABEL_174;
        }

        v86 = v6[3];
        if (!v86)
        {
          goto LABEL_176;
        }

        applesauce::CF::convert_to<std::string,0>(__p, v86);
        if (v101 >= 0)
        {
          v87 = __p;
        }

        else
        {
          v87 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "IOAudio1_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 729;
        *&buf[18] = 2080;
        *&buf[20] = v87;
        v73 = "%32s:%-5d 'Resumed' notification for device '%s'";
        break;
      default:
        return;
    }
  }

  else
  {
    if ((DWORD2(v98) - 1) < 2)
    {
      v10 = v6[1];
      v11 = v6[2];
      v12 = *(*(v11 + 32) + 32);
      v13 = *(v11 + 48);
      v14 = *(v6 + 8);
      v15 = *v6;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
      }

      *buf = &unk_1F5980E30;
      *&buf[8] = v15;
      *&buf[16] = v10;
      *&buf[24] = buf;
      AMCP::Core::Conductor::enqueue_config_change(v12, v13, v14, 1, buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
      return;
    }

    if (DWORD2(v98) != 3)
    {
      return;
    }

    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *(v25 + 16);
    if (v26 != 3)
    {
      if (v26 != 2)
      {
        if (v26 != 1)
        {
          goto LABEL_174;
        }

        v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v27 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *v29;
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        else
        {
          v23 = *v29;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_174;
        }

        v84 = v6[3];
        if (v84)
        {
          applesauce::CF::convert_to<std::string,0>(__p, v84);
          if (v101 >= 0)
          {
            v85 = __p;
          }

          else
          {
            v85 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 717;
          *&buf[18] = 2080;
          *&buf[20] = v85;
          v73 = "%32s:%-5d 'Started' notification for device '%s'";
LABEL_170:
          v90 = v23;
          v91 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_171;
        }

        goto LABEL_176;
      }

      v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v50 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v51 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        v45 = *v52;
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      else
      {
        v45 = *v52;
      }

      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_174;
      }

      v76 = applesauce::CF::StringRef::operator->(v6 + 3);
      applesauce::CF::convert_to<std::string,0>(__p, *v76);
      if (v101 >= 0)
      {
        v77 = __p;
      }

      else
      {
        v77 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "IOAudio1_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 717;
      *&buf[18] = 2080;
      *&buf[20] = v77;
      v70 = "%32s:%-5d 'Started' notification for device '%s'";
      goto LABEL_126;
    }

    v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v59 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      v49 = *v61;
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    else
    {
      v49 = *v61;
    }

    if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      goto LABEL_174;
    }

    v82 = v6[3];
    if (!v82)
    {
      goto LABEL_176;
    }

    applesauce::CF::convert_to<std::string,0>(__p, v82);
    if (v101 >= 0)
    {
      v83 = __p;
    }

    else
    {
      v83 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "IOAudio1_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 717;
    *&buf[18] = 2080;
    *&buf[20] = v83;
    v73 = "%32s:%-5d 'Started' notification for device '%s'";
  }

  v90 = v49;
  v91 = OS_LOG_TYPE_INFO;
LABEL_171:
  _os_log_impl(&dword_1DE1F9000, v90, v91, v73, buf, 0x1Cu);
LABEL_172:
  if (v101 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_174:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1DE5DB790(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v139 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_207:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        v3 = AMCP::Log::AMCP_Scope_Registry::initialize(v3);
      }

      v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 16);
      switch(v9)
      {
        case 1:
          v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v18 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v3);
          }

          v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            v21 = *v20;
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          else
          {
            v21 = *v20;
          }

          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          v24 = *(v5 + 24);
          if (!v24)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(__p, v24);
          if (v120 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          v133 = 1024;
          v134 = 611;
          v135 = 2080;
          v136[0] = v25;
          v26 = v21;
          v27 = OS_LOG_TYPE_DEFAULT;
          break;
        case 2:
          v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v14 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_46;
          }

          v22 = applesauce::CF::StringRef::operator->((v5 + 24));
          applesauce::CF::convert_to<std::string,0>(__p, *v22);
          if (v120 >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          v133 = 1024;
          v134 = 611;
          v135 = 2080;
          v136[0] = v23;
          _os_log_debug_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEBUG, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
          goto LABEL_44;
        case 3:
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

          if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          v28 = *(v5 + 24);
          if (!v28)
          {
            v116 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v116, "Could not construct");
            __cxa_throw(v116, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(__p, v28);
          if (v120 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "IOAudio1_Device.cpp";
          v133 = 1024;
          v134 = 611;
          v135 = 2080;
          v136[0] = v29;
          v26 = v13;
          v27 = OS_LOG_TYPE_INFO;
          break;
        default:
          goto LABEL_46;
      }

      _os_log_impl(&dword_1DE1F9000, v26, v27, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
LABEL_44:
      if (SHIBYTE(v120) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_46:
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      kdebug_trace();
      v30 = *(v5 + 376);
      if (!v30)
      {
        v113 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v113, "cannot create io_object_proxy from null io_object");
        __cxa_throw(v113, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::iokit::get_properties(buf, v30);
      v31 = *(v5 + 480);
      *(v5 + 480) = *buf;
      *buf = v31;
      if (v31)
      {
        CFRelease(v31);
      }

      v32 = *(v5 + 488);
      if (!v32)
      {
        v114 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v114, "cannot create io_object_proxy from null io_object");
        __cxa_throw(v114, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::iokit::get_properties(buf, v32);
      v33 = *(v5 + 496);
      *(v5 + 496) = *buf;
      *buf = v33;
      if (v33)
      {
        CFRelease(v33);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "IOAudioStream");
      std::string::basic_string[abi:ne200100]<0>(__p, "IOService");
      *v137 = buf;
      _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(v126, *(v5 + 376), __p, v137);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE3(v136[0]) < 0)
      {
        operator delete(*buf);
      }

      AMCP::IOAudio1::Stream::create_from_service_list(buf, v5, v126[0], v126[1]);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10unique_ptrINS2_6StreamENS_14default_deleteISC_EEEENS_9allocatorISF_EEEESJ_EEEEEENS_13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSN_((v5 + 504), buf);
      _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10unique_ptrINS2_6StreamENS_14default_deleteISC_EEEENS_9allocatorISF_EEEESJ_EEEEEENS_13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSN_((v5 + 528), (v136 + 4));
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      std::string::basic_string[abi:ne200100]<0>(__p, "IOAudioControl");
      std::string::basic_string[abi:ne200100]<0>(v137, "IOService");
      v127[0] = __p;
      _ZN4AMCP5IOKit22find_child_services_ifIZNS0_33find_child_services_by_class_nameERKN10applesauce5iokit16io_object_holderERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_EUlRKT_E_EENS7_6vectorIS4_NSB_IS4_EEEES6_SF_SI_(v125, *(v5 + 376), v137, v127);
      if (v137[23] < 0)
      {
        operator delete(*v137);
      }

      if (SHIBYTE(v120) < 0)
      {
        operator delete(__p[0]);
      }

      AMCP::IOAudio1::Control::create_from_service_list(&v123, v5, v125[0], v125[1]);
      memset(v137, 0, 24);
      v35 = v123;
      v34 = v124;
      v127[0] = v123;
      while (v35 != v34)
      {
        v36 = *(v5 + 552);
        v37 = *(v5 + 560);
        if (v36 != v37)
        {
          do
          {
            v38 = *(*v36 + 20);
            v39 = *(*v35 + 20);
            if (v38)
            {
              v40 = v39 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (v40)
            {
              if (!(v38 | v39))
              {
                goto LABEL_75;
              }
            }

            else if (IOObjectIsEqualTo(v38, v39))
            {
              goto LABEL_75;
            }

            v36 += 8;
          }

          while (v36 != v37);
          v36 = v37;
LABEL_75:
          v37 = *(v5 + 560);
        }

        if (v36 == v37)
        {
          std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v137, v127);
        }

        v35 += 8;
        v127[0] = v35;
        v34 = v124;
      }

      v128 = 0;
      v41 = 0uLL;
      *v127 = 0u;
      v42 = *(v5 + 552);
      v130 = v42;
      v43 = *(v5 + 560);
      if (v42 == v43)
      {
        v49 = 0;
      }

      else
      {
        do
        {
          v44 = v123;
          v45 = v124;
          if (v123 != v124)
          {
            do
            {
              v46 = *(*v44 + 20);
              v47 = *(*v42 + 20);
              if (v46)
              {
                v48 = v47 == 0;
              }

              else
              {
                v48 = 1;
              }

              if (v48)
              {
                if (!(v46 | v47))
                {
                  goto LABEL_91;
                }
              }

              else if (IOObjectIsEqualTo(v46, v47))
              {
                goto LABEL_91;
              }

              v44 += 8;
            }

            while (v44 != v45);
            v44 = v45;
LABEL_91:
            v45 = v124;
          }

          if (v44 == v45)
          {
            std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v127, &v130);
          }

          v42 += 8;
          v130 = v42;
          v43 = *(v5 + 560);
        }

        while (v42 != v43);
        v41 = *v127;
        v49 = v128;
      }

      v50 = (v5 + 552);
      *__p = *v137;
      v120 = *&v137[16];
      *v121 = v41;
      v122 = v49;
      v51 = v41;
      v52 = *&v137[8];
      v53 = *v137;
      if (v41 != *(&v41 + 1))
      {
        v54 = v41;
        do
        {
          v55 = *v54++;
          v56 = *v55;
          AMCP::Core::Broker::destroy_core(*(*(*(*(*v55 + 8) + 16) + 32) + 16), *(*v55 + 16));
          *(v56 + 16) = 0;
        }

        while (v54 != *(&v51 + 1));
        v43 = *(v5 + 552);
        v57 = *(v5 + 560);
        if (v43 != v57)
        {
          while (2)
          {
            v58 = v51;
            while (*v43 != **v58)
            {
              if (++v58 == *(&v51 + 1))
              {
                goto LABEL_106;
              }
            }

            if (v58 != *(&v51 + 1))
            {
              if (v43 != v57)
              {
                v59 = v43 + 1;
                if (v43 + 1 != v57)
                {
                  do
                  {
                    v60 = *v59;
                    v61 = v51;
                    while (v60 != **v61)
                    {
                      if (++v61 == *(&v51 + 1))
                      {
                        goto LABEL_115;
                      }
                    }

                    if (v61 != *(&v51 + 1))
                    {
                      goto LABEL_118;
                    }

LABEL_115:
                    *v59 = 0;
                    v62 = *v43;
                    *v43 = v60;
                    if (v62)
                    {
                      (*(*v62 + 8))(v62);
                    }

                    ++v43;
LABEL_118:
                    ++v59;
                  }

                  while (v59 != v57);
                  v57 = *(v5 + 560);
                }
              }

              break;
            }

LABEL_106:
            if (++v43 != v57)
            {
              continue;
            }

            goto LABEL_126;
          }
        }

        if (v43 == v57)
        {
LABEL_126:
          v43 = v57;
          goto LABEL_127;
        }

        while (v57 != v43)
        {
          v64 = *--v57;
          v63 = v64;
          *v57 = 0;
          if (v64)
          {
            (*(*v63 + 8))(v63);
          }
        }

        *(v5 + 560) = v43;
      }

LABEL_127:
      while (v53 != v52)
      {
        v65 = *v53;
        v66 = *(v5 + 568);
        if (v43 >= v66)
        {
          v68 = *v50;
          v69 = v43 - *v50;
          v70 = (v69 >> 3) + 1;
          if (v70 >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v71 = v66 - v68;
          if (v71 >> 2 > v70)
          {
            v70 = v71 >> 2;
          }

          if (v71 >= 0x7FFFFFFFFFFFFFF8)
          {
            v72 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v70;
          }

          v138 = v5 + 552;
          if (v72)
          {
            std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v72);
          }

          v73 = (8 * (v69 >> 3));
          v74 = *v65;
          *v65 = 0;
          *v73 = v74;
          v43 = v73 + 1;
          memcpy(0, v68, v69);
          v75 = *(v5 + 552);
          *(v5 + 552) = 0;
          *(v5 + 560) = v43;
          v76 = *(v5 + 568);
          *(v5 + 568) = 0;
          *&v137[16] = v75;
          *&v137[24] = v76;
          *v137 = v75;
          *&v137[8] = v75;
          std::__split_buffer<std::unique_ptr<AMCP::IOAudio1::Stream>>::~__split_buffer(v137);
        }

        else
        {
          v67 = *v65;
          *v65 = 0;
          *v43++ = v67;
        }

        *(v5 + 560) = v43;
        ++v53;
      }

      v77 = *v50;
      if (*v50 != v43)
      {
        do
        {
          v78 = *v77;
          v79 = *(*v77 + 4);
          if (!v79)
          {
            AMCP::IOAudio1::Control::build_core(*v77);
          }

          AMCP::Core::Broker::fetch_core(&v130, *(*(*(*(v78 + 1) + 16) + 32) + 16), v79);
          v80 = v130;
          if (v130)
          {
            memset(v137, 0, sizeof(v137));
            LODWORD(v138) = 1065353216;
            v83 = *(v78 + 5);
            v82 = (v78 + 20);
            v81 = v83;
            if (!v83)
            {
              v112 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v112, "cannot create io_object_proxy from null io_object");
              __cxa_throw(v112, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::iokit::get_properties(&cf, v81);
            simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v80);
            AMCP::IOAudio1::update_control_value(simple_required, v137, v82, &cf);
            AMCP::IOAudio1::update_control_range(simple_required, v137, &cf);
            v127[0] = (v80 + 48);
            LOBYTE(v127[1]) = 1;
            caulk::concurrent::shared_spin_lock::lock((v80 + 48));
            v85 = *&v137[16];
            if (*&v137[16])
            {
              do
              {
                std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v80 + 8), (v85[4] + 40), v85 + 4);
                v85 = *v85;
              }

              while (v85);
            }

            caulk::concurrent::shared_spin_lock::unlock((v80 + 48));
            v127[0] = 0x676C6F626F776E72;
            LODWORD(v127[1]) = 0;
            *(v80 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v80, v127, &AMCP::k_object_id_unknown);
            if (cf)
            {
              CFRelease(cf);
            }

            std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*&v137[16]);
            v86 = *v137;
            *v137 = 0;
            if (v86)
            {
              operator delete(v86);
            }
          }

          if (v131)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v131);
          }

          ++v77;
        }

        while (v77 != v43);
      }

      AMCP::Core::Broker::fetch_core(&v130, *(*(*(v5 + 16) + 32) + 16), *(v5 + 32));
      if (v130)
      {
        memset(v137, 0, sizeof(v137));
        LODWORD(v138) = 1065353216;
        AMCP::IOAudio1::Device::update_core_common(v5, v137);
      }

      if (v131)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v131);
      }

      v87 = kdebug_trace();
      v88 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v88 & 1) == 0)
      {
        v87 = AMCP::Log::AMCP_Scope_Registry::initialize(v87);
      }

      v89 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v90 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v91 = *(v89 + 16);
      switch(v91)
      {
        case 1:
          v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v100 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v87);
          }

          v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v101)
          {
            atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
            v103 = *v102;
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          else
          {
            v103 = *v102;
          }

          if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_200;
          }

          v106 = *(v5 + 24);
          if (!v106)
          {
            v117 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v117, "Could not construct");
            __cxa_throw(v117, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(v127, v106);
          if (v128 >= 0)
          {
            v107 = v127;
          }

          else
          {
            v107 = v127[0];
          }

          *v137 = 136315650;
          *&v137[4] = "IOAudio1_Device.cpp";
          *&v137[12] = 1024;
          *&v137[14] = 705;
          *&v137[18] = 2080;
          *&v137[20] = v107;
          v108 = v103;
          v109 = OS_LOG_TYPE_DEFAULT;
          break;
        case 2:
          v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v96 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v87);
          }

          v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v99 = *v98;
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          else
          {
            v99 = *v98;
          }

          if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_200;
          }

          v104 = applesauce::CF::StringRef::operator->((v5 + 24));
          applesauce::CF::convert_to<std::string,0>(v127, *v104);
          if (v128 >= 0)
          {
            v105 = v127;
          }

          else
          {
            v105 = v127[0];
          }

          *v137 = 136315650;
          *&v137[4] = "IOAudio1_Device.cpp";
          *&v137[12] = 1024;
          *&v137[14] = 705;
          *&v137[18] = 2080;
          *&v137[20] = v105;
          _os_log_debug_impl(&dword_1DE1F9000, v99, OS_LOG_TYPE_DEBUG, "%32s:%-5d End configuration change for device '%s'", v137, 0x1Cu);
          goto LABEL_198;
        case 3:
          v92 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v92 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v87);
          }

          v94 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v93 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
            v95 = *v94;
            std::__shared_weak_count::__release_shared[abi:ne200100](v93);
          }

          else
          {
            v95 = *v94;
          }

          if (!os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            goto LABEL_200;
          }

          v110 = *(v5 + 24);
          if (!v110)
          {
            v118 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v118, "Could not construct");
            __cxa_throw(v118, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(v127, v110);
          if (v128 >= 0)
          {
            v111 = v127;
          }

          else
          {
            v111 = v127[0];
          }

          *v137 = 136315650;
          *&v137[4] = "IOAudio1_Device.cpp";
          *&v137[12] = 1024;
          *&v137[14] = 705;
          *&v137[18] = 2080;
          *&v137[20] = v111;
          v108 = v95;
          v109 = OS_LOG_TYPE_INFO;
          break;
        default:
          goto LABEL_200;
      }

      _os_log_impl(&dword_1DE1F9000, v108, v109, "%32s:%-5d End configuration change for device '%s'", v137, 0x1Cu);
LABEL_198:
      if (SHIBYTE(v128) < 0)
      {
        operator delete(v127[0]);
      }

LABEL_200:
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      if (v121[0])
      {
        operator delete(v121[0]);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      __p[0] = &v123;
      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v125;
      std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v136 + 4;
      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = buf;
      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](__p);
      *buf = v126;
      std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_207;
    }
  }
}

void sub_1DE5DC808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_free_exception(v42);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(&__p);
  __p = &a21;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a24;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::tuple<std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>,std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>>::~tuple(&a36);
  a36 = &a27;
  std::vector<applesauce::iokit::io_object_holder>::__destroy_vector::operator()[abi:ne200100](&a36);
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  _Unwind_Resume(a1);
}

void _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio16Device34handle_driver_configuration_changeEvENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10unique_ptrINS2_6StreamENS_14default_deleteISC_EEEENS_9allocatorISF_EEEESJ_EEEEEENS_13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSN_(uint64_t *a1, CFTypeRef *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v5 = *a2;
  v4 = a2[1];
  v55[0] = *a2;
  while (v5 != v4)
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      do
      {
        v8 = *(*v6 + 20);
        v9 = *(*v5 + 20);
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (!(v8 | v9))
          {
            goto LABEL_14;
          }
        }

        else if (IOObjectIsEqualTo(v8, v9))
        {
          goto LABEL_14;
        }

        v6 += 8;
      }

      while (v6 != v7);
      v6 = v7;
LABEL_14:
      v7 = a1[1];
    }

    if (v6 == v7)
    {
      std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](__p, v55);
    }

    v5 += 8;
    v55[0] = v5;
    v4 = a2[1];
  }

  v56 = 0;
  v11 = 0uLL;
  *v55 = 0u;
  v13 = a1[1];
  v61 = *a1;
  v12 = v61;
  if (v61 != v13)
  {
    do
    {
      v14 = *a2;
      v15 = a2[1];
      if (*a2 != v15)
      {
        do
        {
          v16 = *(*v14 + 20);
          v17 = *(*v12 + 20);
          if (v16)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            if (!(v16 | v17))
            {
              goto LABEL_30;
            }
          }

          else if (IOObjectIsEqualTo(v16, v17))
          {
            goto LABEL_30;
          }

          v14 += 8;
        }

        while (v14 != v15);
        v14 = v15;
LABEL_30:
        v13 = a1[1];
      }

      if (v14 == v13)
      {
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v55, &v61);
        v13 = a1[1];
      }

      v12 += 8;
      v61 = v12;
    }

    while (v12 != v13);
    v11 = *v55;
  }

  v54 = *__p;
  v19 = v11;
  if (v11 == *(&v11 + 1))
  {
    goto LABEL_60;
  }

  v20 = v11;
  do
  {
    v21 = *v20++;
    v22 = *v21;
    AMCP::Core::Broker::destroy_core(*(*(*(*(*v21 + 8) + 16) + 32) + 16), *(*v21 + 16));
    *(v22 + 16) = 0;
  }

  while (v20 != *(&v19 + 1));
  v13 = *a1;
  v23 = a1[1];
  if (*a1 == v23)
  {
    goto LABEL_53;
  }

  do
  {
    v24 = v19;
    while (1)
    {
      v25 = *(*v13 + 20);
      v26 = *(**v24 + 20);
      if (v25)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (!(v25 | v26))
        {
          break;
        }

        goto LABEL_48;
      }

      if (IOObjectIsEqualTo(v25, v26))
      {
        break;
      }

LABEL_48:
      v24 += 8;
      if (v24 == *(&v19 + 1))
      {
        goto LABEL_51;
      }
    }

    if (v24 != *(&v19 + 1))
    {
      if (v13 == v23)
      {
        goto LABEL_53;
      }

      v46 = v13 + 8;
LABEL_87:
      if (v46 == v23)
      {
        goto LABEL_53;
      }

      v47 = v19;
      while (1)
      {
        v48 = *(*v46 + 20);
        v49 = *(**v47 + 20);
        if (v48)
        {
          v50 = v49 == 0;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          if (!(v48 | v49))
          {
            goto LABEL_99;
          }
        }

        else if (IOObjectIsEqualTo(v48, v49))
        {
LABEL_99:
          if (v47 != *(&v19 + 1))
          {
            goto LABEL_103;
          }

LABEL_100:
          v51 = *v46;
          *v46 = 0;
          v52 = *v13;
          *v13 = v51;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }

          v13 += 8;
LABEL_103:
          v46 += 8;
          goto LABEL_87;
        }

        v47 += 8;
        if (v47 == *(&v19 + 1))
        {
          goto LABEL_100;
        }
      }
    }

LABEL_51:
    v13 += 8;
  }

  while (v13 != v23);
  v13 = v23;
LABEL_53:
  v28 = a1[1];
  if (v13 == v28)
  {
    v13 = a1[1];
  }

  else
  {
    while (v28 != v13)
    {
      v30 = *--v28;
      v29 = v30;
      *v28 = 0;
      if (v30)
      {
        (*(*v29 + 8))(v29);
      }
    }

    a1[1] = v13;
  }

LABEL_60:
  if (v54 != *(&v54 + 1))
  {
    v31 = v54;
    do
    {
      v32 = *v31;
      v34 = *a1;
      v33 = a1[1];
      if (v33 != *a1)
      {
        v35 = &v33[-*a1] >> 3;
        do
        {
          v36 = v35 >> 1;
          v37 = &v34[8 * (v35 >> 1)];
          v39 = *v37;
          v38 = v37 + 8;
          v35 += ~(v35 >> 1);
          if (*(v39 + 28) < *(*v32 + 28))
          {
            v34 = v38;
          }

          else
          {
            v35 = v36;
          }
        }

        while (v35);
        v33 = v34;
      }

      std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::emplace<std::unique_ptr<AMCP::IOAudio1::Stream>>(a1, v33, v32);
      ++v31;
    }

    while (v31 != *(&v54 + 1));
    v13 = a1[1];
  }

  for (i = *a1; i != v13; ++i)
  {
    v41 = *i;
    v42 = *(*i + 4);
    if (!v42)
    {
      AMCP::IOAudio1::Stream::build_core(*i);
    }

    AMCP::Core::Broker::fetch_core(&v61, *(*(*(*(v41 + 1) + 16) + 32) + 16), v42);
    if (v61)
    {
      *__p = 0u;
      *v59 = 0u;
      v60 = 1065353216;
      AMCP::IOAudio1::Device::get_engine_registry_entries(v55, *(*(v41 + 1) + 480));
      v45 = *(v41 + 5);
      v44 = (v41 + 20);
      v43 = v45;
      if (v45)
      {
        applesauce::iokit::get_properties(&cf, v43);
        AMCP::IOAudio1::update_stream_core(__p, v44, v55, &cf);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }
  }

  if (v19)
  {
    operator delete(v19);
  }

  if (v54)
  {
    operator delete(v54);
  }
}

void sub_1DE5DCFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, const void *);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va2);
  v7 = *(v5 - 112);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(va);
  _Unwind_Resume(a1);
}

void **std::tuple<std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>,std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>>::~tuple(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5980E30;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980E30;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0,std::allocator<AMCP::IOAudio1::Device::handle_driver_configuration_change(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5980E30;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59800F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio16DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::operator()(uint64_t result, _DWORD *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a2 == -536870896)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    if (v3 != v4)
    {
      while (*v3 != *(result + 16))
      {
        v3 += 2;
        if (v3 == v4)
        {
          return result;
        }
      }
    }

    v5 = v3;
    if (v3 != v4)
    {
      operator new();
    }
  }

  return result;
}

void sub_1DE5DD4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v14 - 72);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5DD4B4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio1::Device::Device(AMCP::IOAudio1::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980068;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::vector<applesauce::iokit::io_object_holder>::push_back[abi:ne200100](io_object_t **a1, io_object_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v8 = v4 - *a1;
    if ((v8 + 1) >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - *a1;
    v10 = v9 >> 1;
    if (v9 >> 1 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v31 = a1;
    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (4 * v8);
    v27 = 0;
    v28 = v12;
    v29 = 4 * v8;
    v30 = 0;
    v13 = *a2;
    *v12 = *a2;
    if (v13)
    {
      v14 = IOObjectRetain(v13);
      if (v14)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        v26 = std::system_category();
        MEMORY[0x1E12C10C0](exception, v14, v26, "Error on Retain");
        __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      v12 = v28;
      v15 = v29;
    }

    else
    {
      v15 = 4 * v8;
    }

    v7 = (v15 + 4);
    v16 = *a1;
    v17 = a1[1];
    v18 = (v12 + *a1 - v17);
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v18;
      do
      {
        *v20 = 0;
        *v20++ = *v19;
        *v19++ = 0;
      }

      while (v19 != v17);
      do
      {
        v21 = *v16++;
        std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(v21);
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v7;
    v22 = a1[2];
    a1[2] = v30;
    v29 = v16;
    v30 = v22;
    v27 = v16;
    v28 = v16;
    result = std::__split_buffer<applesauce::iokit::io_object_holder>::~__split_buffer(&v27);
  }

  else
  {
    result = *a2;
    *v4 = result;
    if (result)
    {
      result = IOObjectRetain(result);
      v6 = result;
      if (result)
      {
        v23 = __cxa_allocate_exception(0x20uLL);
        v24 = std::system_category();
        MEMORY[0x1E12C10C0](v23, v6, v24, "Error on Retain");
        __cxa_throw(v23, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }
    }

    v7 = v4 + 1;
    a1[1] = v4 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1DE5DD820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v9);
  std::__split_buffer<applesauce::iokit::io_object_holder>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AMCP::IOKit::Service_Child_Range_For::~Service_Child_Range_For(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  if (*this)
  {
    IOObjectRelease(*this);
  }
}

uint64_t std::__split_buffer<applesauce::iokit::io_object_holder>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 4);
    *(a1 + 16) = i - 4;
    std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<applesauce::iokit::io_object_holder,0>(uint64_t result)
{
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t applesauce::iokit::kern_return_exception::kern_return_exception(uint64_t a1, const void **a2, mach_error_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 32;
  v9 = mach_error_string(a3);
  v10 = strlen(v9);
  v11 = std::string::append(&v14, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F5980040;
  *(a1 + 16) = a3;
  return a1;
}

void sub_1DE5DDA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void applesauce::iokit::kern_return_exception::~kern_return_exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IOKit::Service_Parent_Range_For::~Service_Parent_Range_For(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  if (*this)
  {
    IOObjectRelease(*this);
  }
}

void HALS_RemotePlugInEngine::_FreeTempBuffers(HALS_RemotePlugInEngine *this)
{
  v1 = this;
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 142);
  v4 = *(v2 + 416);
  v3 = *(v2 + 424);
  *buf = v4;
  v26 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(&v23, buf);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (*(v1 + 102))
  {
    HALS_UCRemotePlugIn::unregister_shared_buffer(v23, *(v1 + 331), 0, 0, 3u);
  }

  if (*(v1 + 103))
  {
    HALS_UCRemotePlugIn::unregister_shared_buffer(v23, *(v1 + 331), 0, 0, 4u);
  }

  HALS_IOEngine2::_GetExternalDriverStreamMixBufferInfoList(&v21, *(v1 + 101));
  v5 = v22;
  v6 = v21;
  if (v22 == v21)
  {
    v7 = 0;
  }

  else
  {
    v20 = v1;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[1];
      v10 = *(v6 + 5);
      v11 = v8 - v7;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v7 >> 3) > v13)
      {
        v13 = 0x5555555555555556 * (-v7 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 3) >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::allocator<std::tuple<unsigned int,void *,unsigned int>>::allocate_at_least[abi:ne200100](v14);
      }

      v15 = 24 * v12;
      *v15 = *v6;
      *(v15 + 8) = v9;
      *(v15 + 16) = v10;
      v8 = 24 * v12 + 24;
      v16 = (v15 + 24 * (v11 / -24));
      memcpy(v16, v7, v11);
      if (v7)
      {
        operator delete(v7);
      }

      v7 = v16;
      v6 += 4;
    }

    while (v6 != v5);
    if (v16 != v8)
    {
      v17 = v23;
      v18 = v20[331];
      v19 = v7;
      do
      {
        HALS_UCRemotePlugIn::unregister_shared_buffer(v17, v18, 0, *v19, 2u);
        v19 += 6;
      }

      while (v19 != v8);
    }

    v1 = v20;
    v6 = v21;
  }

  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](v1 + 102, 0);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](v1 + 103, 0);
  if (v6)
  {
    operator delete(v6);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_1DE5DDE54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, int buf, uint64_t a22, __int16 a23, int a24, __int16 a25, int a26, __int16 a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(v29);
}

void std::allocator<std::tuple<unsigned int,void *,unsigned int>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_RemotePlugInEngine::_AllocateTempBuffers(void ***this)
{
  HALS_IOEngine2::_AllocateTempBuffers(this);
  v2 = this[142];
  v4 = v2[52];
  v3 = v2[53];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(v7, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  HALS_UCRemotePlugIn::register_shared_buffer(*v7, *(this + 331), 0, 0, 3u, *this[102], *(this[102] + 2));
}

void sub_1DE5DE3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void HALS_RemotePlugInEngine::UnregisterIOBuffer(HALS_RemotePlugInEngine *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN23HALS_RemotePlugInEngine18UnregisterIOBufferEbjjjPv_block_invoke;
  v16[3] = &unk_1E86774B0;
  v16[5] = &v19;
  v16[6] = this;
  v18 = a2;
  v17 = a3;
  v16[4] = &v23;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v16);
  if (v24[3])
  {
    v12 = *(v20 + 6);
    if (v12)
    {
      v13 = *(this + 142);
      v14 = *(v13 + 416);
      v15 = *(v13 + 424);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *(v20 + 6);
      }

      (*(*v14 + 160))(v14, *(this + 331), v12, a4, a2, a5, a6);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void sub_1DE5DE5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN23HALS_RemotePlugInEngine18UnregisterIOBufferEbjjjPv_block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(*(*(result + 48) + 808) + 24 * *(result + 60) + 48);
  v3 = (*(*(*(result + 48) + 808) + 24 * *(result + 60) + 56) - v2) >> 3;
  if (v1 >= v3)
  {
    v4 = 0;
  }

  else
  {
    if (v3 <= v1)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v4 = *(v2 + 8 * v1);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  v5 = *(*(*(result + 32) + 8) + 24);
  if (v5)
  {
    *(*(*(result + 40) + 8) + 24) = *(v5 + 16);
  }

  return result;
}

uint64_t HALS_RemotePlugInEngine::RegisterIOBuffer(HALS_RemotePlugInEngine *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___ZN23HALS_RemotePlugInEngine16RegisterIOBufferEbjjjPv_block_invoke;
  v18[3] = &unk_1E86774B0;
  v18[5] = &v21;
  v18[6] = this;
  v20 = a2;
  v19 = a3;
  v18[4] = &v25;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v18);
  v12 = 560947818;
  if (v26[3])
  {
    v13 = *(v22 + 6);
    if (v13)
    {
      v14 = *(this + 142);
      v15 = *(v14 + 416);
      v16 = *(v14 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *(v22 + 6);
      }

      v12 = (*(*v15 + 152))(v15, *(this + 331), v13, a4, a2, a5, a6);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v12;
}

void sub_1DE5DE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN23HALS_RemotePlugInEngine16RegisterIOBufferEbjjjPv_block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(*(*(result + 48) + 808) + 24 * *(result + 60) + 48);
  v3 = (*(*(*(result + 48) + 808) + 24 * *(result + 60) + 56) - v2) >> 3;
  if (v1 >= v3)
  {
    v4 = 0;
  }

  else
  {
    if (v3 <= v1)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v4 = *(v2 + 8 * v1);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  v5 = *(*(*(result + 32) + 8) + 24);
  if (v5)
  {
    *(*(*(result + 40) + 8) + 24) = *(v5 + 16);
  }

  return result;
}

uint64_t HALS_RemotePlugInEngine::Unregister_IOThread(HALS_RemotePlugInEngine *this)
{
  v2 = *(this + 142);
  v3 = *(v2 + 416);
  v4 = *(v2 + 424);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 176))(v3, *(this + 331));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1DE5DE93C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_RemotePlugInEngine::Register_IOThread(HALS_RemotePlugInEngine *this, __n128 a2)
{
  v3 = *(this + 142);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 168))(v4, *(this + 331), a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

void sub_1DE5DE9C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_RemotePlugInEngine::GetZeroTimeStamp(HALS_RemotePlugInEngine *this, int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZNK23HALS_RemotePlugInEngine16GetZeroTimeStampEjRdRyS1__block_invoke;
  v8[3] = &unk_1E8677488;
  v8[4] = &v10;
  v8[5] = this;
  v9 = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void ___ZNK23HALS_RemotePlugInEngine16GetZeroTimeStampEjRdRyS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1136);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(*(a1 + 32) + 8) + 24) = (*(*v4 + 200))(v4, *(v2 + 1324), *(a1 + 72), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE5DEB6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_RemotePlugInEngine::~HALS_RemotePlugInEngine(HALS_RemotePlugInEngine *this)
{
  HALS_PlugInEngine::~HALS_PlugInEngine(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::create_device_node_uid_from_device_uid_and_direction(const __CFString **a1@<X0>, int a2@<W1>, void ***a3@<X8>)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(__p, *a1);
  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  if (a2)
  {
    v6 = "-in";
  }

  else
  {
    v6 = "-out";
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  std::string::basic_string[abi:ne200100](a3, v5 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v5)
  {
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    memmove(a3, v8, v5);
  }

  v9 = a3 + v5;
  memcpy(v9, v6, v7);
  v9[v7] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *HALS_IOEngine2::_FreeTempBuffers(HALS_IOEngine2 *this)
{
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 102, 0);

  return std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 103, 0);
}

uint64_t *std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    HALB_IOBufferManager_Server::FreeBuffer(*v2, *(v2 + 8));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t HALS_IOEngine2::_AllocateTempBuffers(HALS_IOEngine2 *this)
{
  v1 = *(this + 101);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = v1 + 48 + 24 * v2;
      v7 = *v6;
      v8 = *(v6 + 8);
      while (v7 != v8)
      {
        v10 = *v7++;
        v9 = v10;
        v11 = *(v10 + 68);
        if (v11 <= v3)
        {
          v11 = v3;
        }

        v12 = *(v9 + 108);
        if (v12 <= v11)
        {
          v3 = v11;
        }

        else
        {
          v3 = v12;
        }
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
    operator new();
  }

  return 0;
}

void sub_1DE5DEEB8(void *a1)
{
  MEMORY[0x1E12C1730](v1, 0x1010C40113C0ABBLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5DEE9CLL);
}

void HALS_IOEngine2::InitializeAudioIssueDetectorNodes(HALS_IOEngine2 *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    HALS_IssueDetector::Initialize(*(v1 + 32));
  }
}

void HALS_IOEngine2::RegisterAudioIssueDetectorNode(const std::string::value_type *this, CA::StreamDescription *a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(this + 6))
  {
    memset(&v30, 0, sizeof(v30));
    if (!strncmp(this + 836, "Baseband Voice", 0x100uLL) || !strncmp(this + 836, "MaggieDebug", 0x100uLL) || !strncmp(this + 836, "Hawking", 0x100uLL) || !strncmp(this + 836, "Mikeybus Secondary", 0x100uLL) || !strncmp(this + 836, "Reference", 0x100uLL) || !strncmp(this + 836, "Speaker", 0x100uLL) || !strncmp(this + 836, "Codec", 0x100uLL) || !strncmp(this + 836, "AOP Audio-1", 0x100uLL) || !strncmp(this + 836, "Actuator", 0x100uLL))
    {
      std::string::__assign_external(&v30, this + 836);
    }

    std::string::append(&v30, "-", 1uLL);
    if (a3)
    {
      v12 = "Input";
    }

    else
    {
      v12 = "Output";
    }

    if (a3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 6;
    }

    std::string::append(&v30, v12, v13);
    if (a6)
    {
      goto LABEL_40;
    }

    v14 = *(this + 6);
    v15 = v14[4];
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v16 = AudioIssueDetectorLibraryLoader(void)::libSym(v15, &v30, a4, a3 ^ 1u, a2, a5);
      if (!v16)
      {
        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17)
        {
          v20 = v14[1];
          v21 = v18 - v20;
          v22 = (v18 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v24 = v17 - v20;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = v22;
          v27 = (8 * v22);
          v28 = a4;
          v29 = &v27[-v26];
          *v27 = v28;
          v19 = v27 + 1;
          memcpy(v29, v20, v21);
          v14[1] = v29;
          v14[2] = v19;
          v14[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v18 = a4;
          v19 = v18 + 8;
        }

        v14[2] = v19;
LABEL_40:
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    else
    {
      v16 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = "HALS_IssueDetector.h";
      v33 = 1024;
      v34 = 139;
      v35 = 1024;
      v36 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  err = %d calling AudioIssueDetectorClientSetNodeFormat", buf, 0x18u);
    }

    goto LABEL_40;
  }
}

void sub_1DE5DF278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOEngine2::_GetStartSample(HALS_IOEngine2 *this)
{
  v1 = *(this + 101);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[6];
  if (v1[7] == v2 && (v2 = v1[9], v1[10] == v2))
  {
    return 0;
  }

  else
  {
    return *(*v2 + 456);
  }
}

void HALS_IOEngine2::_SetStartSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a1 + 808))
  {
    v6 = atomic_load((a1 + 1112));
    if (v6 == 2)
    {
      if (a2)
      {
        for (i = *(a1 + 776); i != *(a1 + 784); ++i)
        {
          v9 = *i;
          if (*(*(*i + 32) + 16) == a2)
          {
            goto LABEL_9;
          }
        }
      }

      v9 = 0;
LABEL_9:
      v10 = *(a1 + 808);
      v27 = a3;
      v26 = a4;
      if (*(v9 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v9 + 136), *(v9 + 144));
      }

      else
      {
        __p = *(v9 + 136);
      }

      v11 = 0;
      v12 = v10 + 48;
      v13 = &v27;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = *(v12 + 24 * v11);
        v17 = *(v12 + 24 * v11 + 8) - v16;
        if ((v17 & 0x7FFFFFFF8) != 0)
        {
          v18 = (v17 >> 3);
          v19 = *v13;
          v20 = v17 >> 3;
          do
          {
            if (!v20)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v21 = *v16;
            if ((a6 ^ 1 | *(*v16 + 20)))
            {
              v22 = *(v21 + 456);
              v23 = v22 != 0 && v19 < v22;
              v24 = v19 < v22 || v22 == 0;
              if (!v23 && v24)
              {
                *(v21 + 456) = v19;
              }
            }

            --v20;
            ++v16;
            --v18;
          }

          while (v18);
        }

        v14 = 0;
        v13 = &v26;
        v11 = 1;
      }

      while ((v15 & 1) != 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1DE5DF424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IOEngine2::_InitializePositionsForOutputStreams(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v5 = *(this + 97);
  v6 = *v5;
  if (*(*(*v5 + 32) + 16) != a2)
  {
    v7 = v5 + 1;
    do
    {
      v8 = *v7++;
      v6 = v8;
    }

    while (*(*(v8 + 32) + 16) != a2);
  }

  result = HALS_IOEngine2_IOContextInfo::HasAnActiveOutputStream(*(v6 + 56), *(v6 + 64));
  if (result && *(a3 + 504) == 0)
  {
    v20 = *(v6 + 112);
    v21 = *(v6 + 120);
    if (v20 != v21)
    {
      v22 = 0;
      *&v23 = *(a3 + 92);
      v24 = *(a3 + 55) + *&v23;
      LODWORD(v23) = *(*(this + 101) + 20);
      v25 = v24 + v23;
      *&v26 = *(a3 + 100);
      v27 = v25 + *&v26;
      LODWORD(v26) = *(a3 + 104);
      LODWORD(v10) = *(a3 + 190);
      v28 = (v27 + v26 + round(*(a3 + 96) * v10) + v10);
      v29 = (v21 - v20 - 40) / 0x28uLL;
      v30 = (v29 + 2) & 0xFFFFFFFFFFFFFFELL;
      v31 = vdupq_n_s64(v29);
      v32 = (v20 + 64);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v22), xmmword_1DE757E30)));
        if (v33.i8[0])
        {
          *(v32 - 5) = v28;
        }

        if (v33.i8[4])
        {
          *v32 = v28;
        }

        v22 += 2;
        v32 += 10;
      }

      while (v30 != v22);
      do
      {
        if (*(v20 + 32) <= v28)
        {
          *(v20 + 32) = v28;
        }

        v20 += 40;
      }

      while (v20 != v21);
    }
  }

  else
  {
    v12 = *(v6 + 112);
    v13 = *(v6 + 120);
    if (v12 != v13)
    {
      v14 = 0;
      v15 = (v13 - v12 - 40) / 0x28uLL;
      v16 = (v15 + 2) & 0xFFFFFFFFFFFFFFELL;
      v17 = vdupq_n_s64(v15);
      v18 = (v12 + 64);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v14), xmmword_1DE757E30)));
        if (v19.i8[0])
        {
          *(v18 - 5) = 0;
        }

        if (v19.i8[4])
        {
          *v18 = 0;
        }

        v14 += 2;
        v18 += 10;
      }

      while (v16 != v14);
      do
      {
        if (*(v12 + 32) <= 0)
        {
          *(v12 + 32) = 0;
        }

        v12 += 40;
      }

      while (v12 != v13);
    }
  }

  return result;
}

BOOL HALS_IOEngine2_IOContextInfo::HasAnActiveOutputStream(HALS_IOEngine2_IOContextInfo *this, unint64_t a2)
{
  if (a2 <= 0x3F && (a2 & 0x3F) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = (this + 8 * (a2 >> 6));
  while (1)
  {
    v4 = (*this & (1 << v2)) != 0;
    if ((*this & (1 << v2)) != 0)
    {
      break;
    }

    this = (this + 8 * (v2 == 63));
    if (v2 == 63)
    {
      v2 = 0;
    }

    else
    {
      ++v2;
    }

    if (this == v3 && v2 == (a2 & 0x3F))
    {
      return 0;
    }
  }

  return v4;
}

uint64_t HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (*a6)
  {
    v12 = (*a6 + *(a6 + 8));
  }

  else
  {
    v12 = 0;
  }

  bzero(v12, *(a6 + 12));
  kdebug_trace();
  v63 = 0.0;
  v61 = 0;
  v62 = 0.0;
  LODWORD(v60[0]) = *(a1 + 16);
  v60[1] = &v63;
  v60[2] = &v62;
  v60[3] = &v61;
  if (!a4)
  {
    v18 = 7;
    goto LABEL_15;
  }

  v13 = *(a1 + 808);
  v14 = *(v13 + 48);
  v15 = (*(v13 + 56) - v14) >> 3;
  if (v15 <= a3)
  {
    goto LABEL_13;
  }

  if (v15 <= a3)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = *(v14 + 8 * a3);
  if (!v16)
  {
LABEL_13:
    v18 = 1;
    goto LABEL_15;
  }

  if (v16[12] != 1819304813 || (v16[13] & 0x40) != 0)
  {
    v18 = 2;
LABEL_15:
    v61 = v18;
    goto LABEL_16;
  }

  if (v16[16] > *(a6 + 12))
  {
    v18 = 3;
    goto LABEL_15;
  }

  if (a2)
  {
    v20 = *(a1 + 776);
    v21 = *(a1 + 784);
    if (v20 != v21)
    {
      v22 = *(v13 + 16);
      v23 = *(a1 + 776);
      while (1)
      {
        v24 = *v23;
        if (*(*(*v23 + 32) + 16) == a2)
        {
          break;
        }

        if (++v23 == v21)
        {
          goto LABEL_16;
        }
      }

      if ((v21 - v20) >= 9 && !*(a5 + 504))
      {
        v25 = *(v24 + 112);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v24 + 120) - v25) >> 3) > a3)
        {
          v26 = v25 + 40 * a3;
          v28 = *(v26 + 32);
          v27 = (v26 + 32);
          if (!v28)
          {
            v29 = *(a5 + 656);
            if ((v29 & 0x8000000000000000) == 0)
            {
              *v27 = v29;
            }
          }
        }

        v30 = (*(*a1 + 1320))(a1, a2, a3);
        v62 = v30;
        v31 = *(v24 + 112);
        v32 = 0.0;
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v24 + 120) - v31) >> 3) > a3)
        {
          v32 = *(v31 + 40 * a3 + 32);
        }

        v63 = v32;
        if (v30 <= 0.0 || v30 <= v32)
        {
          v18 = 4;
          goto LABEL_15;
        }

        LODWORD(v34) = (v30 - v32);
        if (v22 >= 0x2000)
        {
          v35 = 0x2000;
        }

        else
        {
          v35 = v22;
        }

        if (v22 <= 0)
        {
          v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v51 = *(v49 + 8);
          v59 = 16;
          *&v55 = "HALS_IOEngine2.cpp";
          DWORD2(v55) = 3726;
          HIDWORD(v55) = a2;
          v56 = (v30 - v32);
          v57 = v22;
          caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>(v51, &v59, &v55);
          if (v50)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }

          v18 = 6;
          goto LABEL_15;
        }

        v36 = v34 - v35;
        if (v34 > v35)
        {
          LODWORD(v34) = v35 & ~(v35 >> 31);
          v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = v38;
          v39 = *(v37 + 8);
          v59 = 16;
          *&v55 = "HALS_IOEngine2.cpp";
          DWORD2(v55) = 3737;
          HIDWORD(v55) = a2;
          v54 = v36;
          v56 = v36;
          v57 = v34;
          v58 = v22;
          caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>(v39, &v59, &v55);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          v40 = v63 + v54;
          v41 = *(v24 + 112);
          if (0xCCCCCCCCCCCCCCCDLL * ((*(v24 + 120) - v41) >> 3) <= a3)
          {
            *(a5 + 656) = v40;
          }

          else
          {
            v42 = v40;
            v43 = v41 + 40 * a3;
            v45 = *(v43 + 32);
            v44 = (v43 + 32);
            if (v45 <= v40)
            {
              *v44 = v42;
            }

            *(a5 + 656) = v40;
            v46 = v41 + 40 * a3;
            v48 = *(v46 + 24);
            v47 = (v46 + 24);
            if (v40 < v48)
            {
              *v47 = v42;
            }
          }
        }

        if (v34 >= 1)
        {
          while (1)
          {
            v52 = v34 - a4;
            v34 = v34 >= a4 ? a4 : v34;
            if ((*(*a1 + 1208))(a1, a2, a3, v34, a5, a6, 0))
            {
              break;
            }

            *(a5 + 656) = *(a5 + 656) + v34;
            LODWORD(v34) = v52;
            if (v52 <= 0)
            {
              goto LABEL_16;
            }
          }

          v18 = 5;
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v60);
  return 0;
}

void sub_1DE5DFAE0(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5981E78;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5981E20;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5981EF8;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = a3[1];
    *(v7 + 24) = v8;
    *v7 = &unk_1F5981EA0;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::perform(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v11 = *(a1 + 48);
    v12 = 136316418;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d _WriteToStream_CommitTrailingSilence: the context (%u), context is too far behind, updating write position by %d frames, max size %d, rb size %d", &v12, 0x2Au);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_2,std::tuple<char const*,int,unsigned int,int,int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::perform(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v11 = 136316162;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d _WriteToStream_CommitTrailingSilence: the context (%u) cannot commit trailing silence, max size is 0, wants to commit %d, rb size is %d", &v11, 0x24u);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_WriteToStream_CommitTrailingSilence(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo &,HALS_BufferInfo const&)::$_1,std::tuple<char const*,int,unsigned int,int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::_WriteToStream_ConvertFromTempBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 160);
  ioOutputDataSize = 0;
  v10 = *a5;
  if (*a6)
  {
    v11 = (*a6 + *(a6 + 8));
  }

  else
  {
    v11 = 0;
  }

  if (*a8)
  {
    v12 = (*a8 + *(a8 + 8));
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = *(a5 + 2);
    ioOutputDataSize = *(a5 + 3);
    result = AudioConverterConvertBuffer(*v9, ioOutputDataSize, (v10 + v13), &ioOutputDataSize, v12);
  }

  if (v11)
  {
    return AudioConverterConvertBuffer(*v9, *(a6 + 12), v11, &ioOutputDataSize, &v12[ioOutputDataSize]);
  }

  return result;
}

void HALS_IOEngine2::_WriteToStream_ApplyStreamDSP(HALS_IOEngine2 *this, uint64_t a2, HALS_IOEngine2_StreamInfo *a3, const AudioServerPlugInIOCycleInfo *a4, double a5, unsigned int a6)
{
  v7 = **(a3 + 23);
  if (v7 && (*(*v7 + 16))(v7, a2))
  {
    p_mOutputTime = &a4->mOutputTime;
    kdebug_trace();
    HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v29, a3, p_mOutputTime->mSampleTime, a6);
    v14 = v29;
    if (v32)
    {
      v15 = v32 + v33;
    }

    else
    {
      v15 = 0;
    }

    if (v29)
    {
      v16 = v34;
      v17 = v31;
      v18 = v30;
      HALS_IOEngine2::GetExtraInputStreamsForOutputProcessing(this, a3, a5, v31, v13);
      HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v17 << 32), v14 + v18, 0);
      v28 = 0;
      v19 = *&p_mOutputTime->mRateScalar;
      *v27 = *&p_mOutputTime->mSampleTime;
      *&v27[16] = v19;
      v20 = *&p_mOutputTime->mSMPTETime.mHours;
      *&v27[32] = *&p_mOutputTime->mSMPTETime.mSubframes;
      *&v27[48] = v20;
      v21 = (*(*this + 344))(this);
      HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v27, 0, (*(a3 + 23) + 128), v14 + v18, &v28, v21);
      if (v15)
      {
        mSampleTime = p_mOutputTime->mSampleTime;
        v23 = *&p_mOutputTime->mWordClockTime;
        *&v27[8] = *&p_mOutputTime->mHostTime;
        *&v27[24] = v23;
        *&v27[40] = *&p_mOutputTime->mSMPTETime.mType;
        v24.n128_u64[1] = *&v27[48];
        *&v27[56] = *&p_mOutputTime->mFlags;
        v24.n128_f64[0] = v17;
        v25 = mSampleTime + v17;
        HALS_IOEngine2::GetExtraInputStreamsForOutputProcessing(this, a3, v17 + a5, v16, v24);
        HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v16 << 32), v15, 0);
        *v27 = v25;
        v26 = (*(*this + 344))(this);
        HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v27, 1, (*(a3 + 23) + 128), v15, &v28, v26);
      }
    }

    kdebug_trace();
  }
}

void HALS_IOEngine2::GetExtraInputStreamsForOutputProcessing(HALS_IOEngine2 *this, HALS_IOEngine2_StreamInfo *a2, double a3, uint64_t a4, __n128 a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  if (v6 != v7)
  {
    v12 = 0;
    v13 = a4 << 32;
    v14 = 1;
    do
    {
      v15 = *v6;
      v16 = *(*(this + 101) + 72);
      v17 = (*(*(this + 101) + 80) - v16) >> 3;
      if (v15 >= v17)
      {
        goto LABEL_17;
      }

      if (v17 <= v15)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *(v16 + 8 * v15);
      if (!v18)
      {
LABEL_17:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v23 = 136315394;
          *&v23[4] = "HALS_IOEngine2.cpp";
          LOWORD(v24) = 1024;
          *(&v24 + 2) = 4275;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetExtraInputStreamsForOutputProcessing: no such stream", v23, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      v19 = *(*(a2 + 23) + 104);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*(a2 + 23) + 112) - v19) >> 3) <= v14 - 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v19 + v12);
      }

      v21 = *(v18 + 64) * a4;
      *v23 = v20;
      *&v23[8] = 0;
      v24 = __PAIR64__(a4, v21);
      (*(*this + 1184))(this, v18, a4, v23, a3, a5);
      HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a2 + 23) + 128), *(*(a2 + 23) + 136), v13 | *(v18 + 68), v20, v14++);
      ++v6;
      v12 += 24;
    }

    while (v6 != v7);
  }
}

uint64_t HALS_IOEngine2::_WriteToStream_Mix(HALS_IOEngine2 *this, unsigned int a2, HALS_IOEngine2_StreamInfo *a3, double a4, unsigned int a5)
{
  v9 = a4;
  result = HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v35, a3, a4, a5);
  if (v35)
  {
    v11 = (v35 + v36);
  }

  else
  {
    v11 = 0;
  }

  if (v38)
  {
    v12 = (v38 + v39);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 97);
  v14 = *(this + 98);
  if (v13 != v14)
  {
    v30 = v37;
    v15 = v40;
    v16 = (a5 + a4);
    v17 = 1;
    do
    {
      v18 = atomic_load((*v13 + 48));
      if (v18)
      {
        __src = 0;
        v31 = 0;
        result = HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(*v13, *(a3 + 3), v9, a5, &v34, &__src, &v32, &v31);
        if (v17)
        {
          if (__src && v11)
          {
            result = memcpy(v11, __src, (*(a3 + 16) * v30));
          }

          if (v31 && v12)
          {
            result = memcpy(v12, v31, (*(a3 + 16) * v15));
          }
        }

        else
        {
          v19 = *(a3 + 17);
          v20 = __src;
          if (__src)
          {
            if (v11)
            {
              v21 = (v19 * v30);
              if (v21)
              {
                v22 = v11;
                do
                {
                  v23 = *v20++;
                  *v22 = v23 + *v22;
                  ++v22;
                  --v21;
                }

                while (v21);
              }
            }
          }

          v24 = v31;
          if (v31)
          {
            v25 = v12 == 0;
          }

          else
          {
            v25 = 1;
          }

          v26 = (v19 * v15);
          if (!v25 && v26 != 0)
          {
            v28 = v12;
            do
            {
              v29 = *v24++;
              *v28 = v29 + *v28;
              ++v28;
              --v26;
            }

            while (v26);
          }
        }

        if (*(a3 + 57) <= v16)
        {
          *(a3 + 57) = v16;
        }

        v17 = 0;
      }

      ++v13;
    }

    while (v13 != v14);
  }

  return result;
}

void *HALS_IOEngine2::_WriteToStream_Store(int a1, HALS_IOEngine2_IOContextInfo *this, unsigned int a3, int a4, unsigned int a5, double a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  __dst = 0;
  v25 = 0;
  v24 = 0;
  HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(this, a3, a6, a5, &v27, &__dst, &v25, &v24);
  if (*a7)
  {
    v13 = (*a7 + *(a7 + 8));
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "HALS_IOEngine2.cpp";
      v30 = 1024;
      v31 = 3835;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::_WriteToStream_Store: ERROR: theInputBuffer is null", buf, 0x12u);
    }

    v13 = 0;
  }

  if (__dst)
  {
    v14 = v27 * a4;
    memcpy(__dst, v13, v14);
  }

  else
  {
    v14 = 0;
  }

  result = v24;
  if (v24)
  {
    result = memcpy(v24, &v13[v14], v25 * a4);
  }

  v16 = *(this + 14);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v16) >> 3) > a3)
  {
    v17 = v16 + 40 * a3;
    v19 = *(v17 + 24);
    v18 = (v17 + 24);
    if (!v19)
    {
      *v18 = a6;
    }

    v20 = a5 + a6;
    v21 = v16 + 40 * a3;
    v23 = *(v21 + 32);
    v22 = (v21 + 32);
    if (v23 <= v20)
    {
      *v22 = v20;
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::_HandleOverload(void *a1, int a2, unsigned int a3, unsigned int a4, int32x2_t *a5)
{
  if (a2)
  {
    v5 = a1[97];
    v6 = a1[98];
    if (v5 == v6)
    {
      goto LABEL_15;
    }

    v7 = a1[97];
    while (1)
    {
      v8 = *v7;
      if (*(*&(*v7)[4] + 16) == a2)
      {
        break;
      }

      if (++v7 == v6)
      {
        goto LABEL_14;
      }
    }

    a5[2] = vadd_s32(a5[2], v8[2]);
    v10 = *&v8[1] <= *&a5[1] ? a5 : v8;
    *a5->i8 = *v10->i8;
    v6 = a1[98];
    v5 = a1[97];
LABEL_14:
    if ((v6 - v5) <= 8)
    {
LABEL_15:
      v9 = 1852797029;
      while (v5 != v6)
      {
        v11 = *v5;
        if (*(*(*v5 + 4) + 16) == a2)
        {
          v12 = *(a1[101] + 48);
          v13 = (*(a1[101] + 56) - v12) >> 3;
          if (v13 > a3)
          {
            if (v13 <= a3)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v14 = a3;
            v15 = *(v12 + 8 * a3);
            if (v15)
            {
              if (*(v15 + 48) == 1819304813 && (*(v15 + 52) & 0x40) == 0)
              {
                HALS_IOEngine2_IOContextInfo::AdjustOutputCountersForOverload(v11, a3, a4, *(v15 + 456));
                v17 = *(v11 + 14);
                v18 = 0xCCCCCCCCCCCCCCCDLL * ((*(v11 + 15) - v17) >> 3) <= v14 ? 0 : *(v17 + 40 * v14 + 32);
                if (*(v15 + 456) <= v18)
                {
                  v9 = 0;
                  *(v15 + 456) = v18;
                  return v9;
                }
              }
            }
          }

          return 0;
        }

        ++v5;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (a1[98] - a1[97] <= 8uLL)
  {
    return 1852797029;
  }

  else
  {
    return 0;
  }

  return v9;
}

void HALS_IOEngine2_IOContextInfo::AdjustOutputCountersForOverload(HALS_IOEngine2_IOContextInfo *this, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - *(this + 14)) >> 3) > a2)
  {
    v8 = a2;
    memset(&v43, 0, sizeof(v43));
    v43.mFlags = 1;
    v10 = this + 24;
    v9 = *(this + 3);
    v11 = *(*(v10 + 1) + 104);
    v12 = *(v11 + 1568);
    v13 = *(v11 + 1576);
    if (v12 != v13)
    {
      while (*(*v12 + 88) != v9)
      {
        if (++v12 == v13)
        {
          mSampleTime = 0.0;
          goto LABEL_10;
        }
      }
    }

    mSampleTime = 0.0;
    if (v12 != v13)
    {
      v15 = *v12;
      if (v15)
      {
        if (*(v15 + 88))
        {
          HALS_IOClock::GetCurrentTime(*(v15 + 368), &v43);
          v9 = *(this + 3);
          mSampleTime = v43.mSampleTime;
        }
      }
    }

LABEL_10:
    v16 = (*(*v9 + 360))(v9, 0);
    v17 = (*(**(*(this + 4) + 104) + 304))();
    v18 = *(*(this + 4) + 104);
    v19 = *(v18 + 1568);
    v20 = *(v18 + 1576);
    if (v19 != v20)
    {
      while (*(*v19 + 88) != *(this + 3))
      {
        if (++v19 == v20)
        {
          v21 = 0.0;
          goto LABEL_18;
        }
      }
    }

    v21 = 0.0;
    if (v19 != v20)
    {
      v22 = *v19;
      if (v22)
      {
        if (*(v22 + 88))
        {
          v21 = *(v22 + 872);
        }
      }
    }

LABEL_18:
    v23 = *(this + 14);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v23) >> 3) > v8)
    {
      v24 = *(v23 + 40 * v8 + 32);
      if (v24 >= 1 && v21 > 0.0 && v21 <= (mSampleTime - v16))
      {
        v25 = (mSampleTime + v16 + a3);
        if (a4 + a3 > v25)
        {
          v25 = a4 + a3;
        }

        if (v24 <= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        if (v24 >= v25)
        {
          v27 = v24;
        }

        else
        {
          v27 = v24 + 1;
        }

        v28 = v26 - v27;
        if (v17 <= 1uLL)
        {
          v29 = 1;
        }

        else
        {
          v29 = v17;
        }

        v30 = v24 < v25;
        v31 = v28 / v29;
        if (v30)
        {
          LODWORD(v31) = v31 + 1;
        }

        v32 = v31 * v17;
        kdebug_trace();
        v33 = v24;
        v34 = *(*(this + 14) + 40 * v8 + 16);
        v47 = 0;
        v46 = 0;
        v45 = 0;
        v44 = 0;
        HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(this, a2, v24, v32, &v47, &v46, &v45, &v44);
        if (v46)
        {
          bzero(v46, v47 * v34);
        }

        if (v44)
        {
          bzero(v44, v45 * v34);
        }

        v35 = *(this + 14);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 15) - v35) >> 3) > v8)
        {
          v36 = v35 + 40 * v8;
          v38 = *(v36 + 24);
          v37 = (v36 + 24);
          if (!v38)
          {
            *v37 = v33;
          }

          v39 = v32 + v33;
          v40 = v35 + 40 * v8;
          v42 = *(v40 + 32);
          v41 = (v40 + 32);
          if (v42 <= v39)
          {
            *v41 = v39;
          }
        }
      }
    }
  }
}

caulk::rt_safe_memory_resource *HALS_IOEngine2::_WriteToStream(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a1[101];
  if (!v6)
  {
    return 0;
  }

  v7 = 1852797029;
  if (a2)
  {
    for (i = a1[97]; i != a1[98]; i += 8)
    {
      if (*(*(*i + 32) + 16) == a2)
      {
        v11 = v6 + 48;
        v10 = *(v6 + 48);
        v12 = (*(v11 + 8) - v10) >> 3;
        if (v12 > a3)
        {
          if (v12 <= a3)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *(v10 + 8 * a3);
          if (v13)
          {
            if (*(v13 + 48) == 1819304813 && (*(v13 + 52) & 0x40) == 0)
            {

              return HALS_IOEngine2::_WriteToStream_Mixable(a1, a2, v13, a4, a5, a6);
            }

            else
            {

              return HALS_IOEngine2::_WriteToStream_NonMixable(a1, a2, v13, a4, a5, a6);
            }
          }
        }

        return v7;
      }
    }
  }

  return v7;
}