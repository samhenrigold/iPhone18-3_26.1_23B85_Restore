void sub_272536FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  v57 = *(v55 - 240);
  if (v57)
  {
    operator delete(v57);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(a1 + 16));
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

float VoiceProcessorV2::GetHeadsetSensitivity(int **this)
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  v2 = (this + 1536);
  outData = 105.0;
  RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(this);
  if (!HIDWORD(RefPortOwningDeviceID) || (v4 = RefPortOwningDeviceID, *&inAddress.mSelector = 0x676C6F62646F7365, inAddress.mElement = 0, ioDataSize = 4, AudioObjectGetPropertyData(RefPortOwningDeviceID, &inAddress, 0, 0, &ioDataSize, &outData)) || (outData > 50.0 ? (v5 = outData < 150.0) : (v5 = 0), !v5))
  {
    v6 = *(this + 600);
    if (v6 <= 1647521841)
    {
      if (v6 <= 1633759843)
      {
        if (v6 == 1214329654)
        {
          goto LABEL_23;
        }

        v8 = 1214394677;
      }

      else
      {
        if (v6 == 1633759844 || v6 == 1634231920)
        {
          goto LABEL_23;
        }

        v8 = 1647393080;
      }
    }

    else
    {
      if (v6 <= 1647718502)
      {
        if (v6 == 1647521842)
        {
          goto LABEL_40;
        }

        if (v6 != 1647522096)
        {
          if (v6 == 1647718502)
          {
            v7 = 1120980173;
LABEL_24:
            outData = *&v7;
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v9 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v20 = "vpInitializeDownlink.cpp";
                v21 = 1024;
                v22 = 861;
                v23 = 2048;
                *v24 = outData;
                _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Unable to read sensitivity from device setting default (%f)", buf, 0x1Cu);
              }
            }

            v11 = this[1588];
            if (v11 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v11, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 861, "GetHeadsetSensitivity", "Unable to read sensitivity from device setting default (%f)");
            }

            return outData;
          }

LABEL_40:
          v7 = 1121058816;
          goto LABEL_24;
        }

LABEL_23:
        v7 = 1120403456;
        goto LABEL_24;
      }

      if (v6 == 1647718503)
      {
        v7 = 1121045709;
        goto LABEL_24;
      }

      if (v6 == 1752709424)
      {
        goto LABEL_23;
      }

      v8 = 2003068262;
    }

    if (v6 != v8)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v13 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = "vpInitializeDownlink.cpp";
      v21 = 1024;
      v22 = 812;
      v23 = 1024;
      v24[0] = v4;
      LOWORD(v24[1]) = 2048;
      *(&v24[1] + 2) = outData;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Sensitivity from device(%u) = %f", buf, 0x22u);
    }
  }

  v15 = this[1588];
  if (v15 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v15, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 812, "GetHeadsetSensitivity", "Sensitivity from device(%u) = %f");
  }

  return outData;
}

uint64_t VoiceProcessorV2::GetOutputPortProductIDForPME(VoiceProcessorV2 *this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 600) >> 1 == 823859251)
  {
    return 8210;
  }

  if ((**(this + 294) | 0x20) != 0x70687062)
  {
    return 0;
  }

  result = VoiceProcessorV2::IsRefPortOwningDeviceBluetoothAppleProduct(this);
  if (result)
  {
    outData = 0;
    RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(this);
    v4 = RefPortOwningDeviceID;
    if (HIDWORD(RefPortOwningDeviceID))
    {
      *&inAddress.mSelector = 0x676C6F6262616964;
      inAddress.mElement = 0;
      ioDataSize = 4;
      PropertyData = AudioObjectGetPropertyData(RefPortOwningDeviceID, &inAddress, 0, 0, &ioDataSize, &outData);
      if (PropertyData)
      {
        v6 = PropertyData;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v8 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            ioDataSize = 136315906;
            v15 = "vpInitializeDownlink.cpp";
            v16 = 1024;
            v17 = 704;
            v18 = 1024;
            v19 = v6;
            v20 = 1024;
            v21 = v4;
            _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting Bluetooth product ID for reference device %u", &ioDataSize, 0x1Eu);
          }
        }

        v10 = *(this + 1588);
        if (v10 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            v11 = *(this + 1588);
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            v10 = v11;
          }

          CALegacyLog::log(v10, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 704, "GetRefPortOwningDeviceBluetoothProductID", "error %d getting Bluetooth product ID for reference device %u", v6, v4);
        }

        v5 = 0;
      }

      else
      {
        v5 = 0x100000000;
        v6 = outData;
      }
    }

    else
    {
      v5 = 0x100000000;
      v6 = RefPortOwningDeviceID;
    }

    if ((v5 & 0x100000000) != 0)
    {
      return v6 | v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t VoiceProcessorV2::GetRefPortUIDForPME(VoiceProcessorV2 *this, VoiceProcessorV2 *a2)
{
  result = VoiceProcessorV2::GetRefPortID(a2);
  if (HIDWORD(result) && (outData = 0, *&v6.mSelector = 0x6F75747070756964, v6.mElement = 0, ioDataSize = 8, result = AudioObjectGetPropertyData(result, &v6, 0, 0, &ioDataSize, &outData), !result))
  {
    result = outData;
    *this = outData;
    if (result)
    {
      v4 = CFGetTypeID(result);
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

void sub_272537FD8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::NumberRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

uint64_t VoiceProcessorV2::GetRefPortOwningDeviceID(int **this)
{
  v22 = *MEMORY[0x277D85DE8];
  outData = 0;
  RefPortID = VoiceProcessorV2::GetRefPortID(this);
  v3 = RefPortID;
  if (HIDWORD(RefPortID))
  {
    *&inAddress.mSelector = 0x676C6F62706F776ELL;
    inAddress.mElement = 0;
    ioDataSize = 4;
    PropertyData = AudioObjectGetPropertyData(RefPortID, &inAddress, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v5 = PropertyData;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v7 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ioDataSize = 136315906;
          v15 = "vpInitializeDownlink.cpp";
          v16 = 1024;
          v17 = 669;
          v18 = 1024;
          v19 = v5;
          v20 = 1024;
          v21 = v3;
          _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting owning device ID for reference port %u", &ioDataSize, 0x1Eu);
        }
      }

      v9 = this[1588];
      if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v11 = this[1588];
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v9 = v11;
        }

        CALegacyLog::log(v9, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 669, "GetRefPortOwningDeviceID", "error %d getting owning device ID for reference port %u", v5, v3);
      }

      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
      v5 = outData;
    }
  }

  else
  {
    v4 = 0x100000000;
    v5 = RefPortID;
  }

  return v4 | v5;
}

uint64_t VoiceProcessorV2::GetRefPortID(VoiceProcessorV2 *this)
{
  v25 = *MEMORY[0x277D85DE8];
  outData = 0;
  *&inAddress.mSelector = 0x6F75747064637073;
  inAddress.mElement = 0;
  v2 = *(this + 286);
  v3 = *(this + 294);
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(v2, &inAddress, 4u, v3, &ioDataSize, &outData);
  if (!PropertyData)
  {
    v10 = outData;
    if (outData)
    {
      v11 = CFGetTypeID(outData);
      if (v11 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v10))
        {
          v12 = applesauce::CF::details::at_as<unsigned int>(v10);
          if ((v12 & 0x100000000) != 0)
          {
            PropertyData = v12;
          }

          else
          {
            PropertyData = 0;
          }
        }

        else
        {
          PropertyData = 0;
        }

        CFRelease(v10);
        goto LABEL_28;
      }

      CFRelease(v10);
    }

    PropertyData = 0;
LABEL_28:
    v9 = 0x100000000;
    return v9 | PropertyData;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v5 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 286);
      ioDataSize = 136315906;
      v18 = "vpInitializeDownlink.cpp";
      v19 = 1024;
      v20 = 641;
      v21 = 1024;
      v22 = PropertyData;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting port ID for reference device %u", &ioDataSize, 0x1Eu);
    }
  }

  v8 = *(this + 1588);
  if (v8 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      v14 = *(this + 1588);
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      v8 = v14;
    }

    CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 641, "GetRefPortID", "error %d getting port ID for reference device %u", PropertyData, *(this + 286));
  }

  v9 = 0;
  return v9 | PropertyData;
}

void sub_2725384C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::at_as<unsigned int>(const __CFArray *a1)
{
  if (CFArrayGetCount(a1) && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0)) != 0)
  {
    v3 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
    v4 = v3 & 0xFF00000000;
    v5 = v3 & 0xFFFFFF00;
    v6 = v3;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
  }

  return v6 | v4 | v5;
}

BOOL VoiceProcessorV2::IsRefPortOwningDeviceBluetoothAppleProduct(int **this)
{
  outData = 0;
  RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(this);
  v2 = 0;
  if (HIDWORD(RefPortOwningDeviceID))
  {
    *&inAddress.mSelector = 0x676C6F6269616170;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(RefPortOwningDeviceID, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      v3 = 1;
    }

    else
    {
      v3 = outData == 0;
    }

    return !v3;
  }

  return v2;
}

void **std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<float>::__vallocate[abi:ne200100](v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_27253887C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float>(float **a1)
{
  v2 = a1[1] - *a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v13;
    do
    {
      v6 = *v3;
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>((8 * v7), v6);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(v5++, *v3);
      }

      v13 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_2725389F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,void,0>(CFNumberRef *a1, float a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void std::__shared_ptr_emplace<PowerLogManager>::__on_zero_shared(uint64_t a1)
{
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        CACFDictionary::~CACFDictionary((v3 - 16));
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<PowerLogManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B1FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV2::InitializeSpeakerTelemetryInput(VoiceProcessorV2 *this, const AudioStreamBasicDescription *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = this + 2408;
  v19 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v7 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(&v17, a2);
      *buf = 136315906;
      *&buf[4] = "vpInitializeDownlink.cpp";
      v21 = 1024;
      v22 = 286;
      v23 = 2080;
      v24 = v17;
      v25 = 1024;
      v26 = a3;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initspkrtel: asbd = %s, blksz = %d", buf, 0x22u);
      if (v17)
      {
        free(v17);
      }
    }
  }

  v9 = *(this + 1588);
  if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a2);
    CALegacyLog::log(v9, 5, v10, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 286, "InitializeSpeakerTelemetryInput", "initspkrtel: asbd = %s, blksz = %d", *buf, a3);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 12648) == 1)
    {
      LODWORD(v6) = *(this + 384);
      VoiceProcessorV2::WriteTSOverload(this, *(this + 1580) - v6, *(this + 1580) - v6, 3);
    }

    *(this + 12648) = 0;
  }

  v11 = *&a2->mSampleRate;
  v12 = *&a2->mBytesPerPacket;
  *(this + 191) = *&a2->mBitsPerChannel;
  *(this + 1496) = v11;
  *(this + 1512) = v12;
  *(this + 384) = a3;
  v13 = *(this + 381);
  *(this + 386) = 5 * a3;
  *(this + 387) = v13;
  *(this + 390) = 0;
  *(this + 194) = 0;
  v14 = *(this + 197);
  v15 = *(this + 196);
  if (v13 * 5 * a3 == (v14 - v15) >> 2)
  {
    if (v14 != v15)
    {
      bzero(v15, v14 - v15);
    }
  }

  else
  {
    std::valarray<float>::resize(this + 1568, (v13 * 5 * a3));
    a3 = *(this + 384);
  }

  myAllocABLDynamic((this + 1496), a3, this + 198);
  *(this + 486) = 1;
  if (*(this + 3180))
  {
    VoiceProcessorV2::CreateSignalSaveFiles(this, 3);
  }

  if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
  {
    VoiceProcessorV2::PListWriteInitializeSpkrTelParameters(this);
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v19 == 1)
  {
    (*(*v18 + 24))(v18);
  }

  return 0;
}

void sub_272538F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_fetch_add((v15 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a13);
  _Unwind_Resume(a1);
}

uint64_t VoiceProcessorV2::GetRefPortHLC2chStateForPME(VoiceProcessorV2 *this)
{
  RefPortID = VoiceProcessorV2::GetRefPortID(this);
  if (!HIDWORD(RefPortID))
  {
    return 0;
  }

  *&inAddress.mSelector = 0x6F75747073706D65;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(RefPortID, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

uint64_t VoiceProcessorV2::InitializeHWInput(VoiceProcessorV2 *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int *a13)
{
  v167 = *MEMORY[0x277D85DE8];
  v153 = this + 2408;
  v154 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 1696) == 1)
    {
      LODWORD(v17) = *(this + 125);
      VoiceProcessorV2::WriteTSOverload(this, *(this + 213) - v17, *(this + 213) - v17, 0);
    }

    if (*(this + 1697) == 1 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      LODWORD(v17) = *(this + 126);
      VoiceProcessorV2::WriteTSOverload(this, *(this + 214) - v17, *(this + 214) - v17, 1);
    }
  }

  *(this + 848) = 0;
  if (*(this + 1864) == 1)
  {
    *(this + 1864) = 0;
  }

  *(this + 286) = a5;
  *(this + 287) = a11;
  ++VoiceProcessorV2::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::InitHWCallCount;
  v149 = this + 12604;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v18 = &unk_28133C000;
  v19 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v20 = (*v19 ? *v19 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 47;
      *&buf[18] = 1024;
      *&buf[20] = VoiceProcessorV2::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::InitHWCallCount;
      _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> call num %u", buf, 0x18u);
    }
  }

  v21 = *(this + 1588);
  if (v21 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v21, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 47, "InitializeHWInput", "call num %u", VoiceProcessorV2::InitializeHWInput(AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*,AudioStreamBasicDescription const&,AudioChannelLayout const*,unsigned int,unsigned int,unsigned int,unsigned int const*)::InitHWCallCount);
  }

  v148 = 0;
  if (a6 && a7)
  {
    v148 = *a7;
  }

  v147 = 0;
  if (a12 && a13)
  {
    v147 = *a13;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v22 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = (*(*this + 112))(this);
      CAX4CCString::CAX4CCString(v155, v148);
      CAFormatter::CAFormatter(&v152, a2);
      v25 = v152;
      CAX4CCString::CAX4CCString(v157, v147);
      CAFormatter::CAFormatter(&v151, a8);
      *buf = 136317186;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      *&buf[24] = 2080;
      *&buf[26] = v155;
      *&buf[34] = 2080;
      *&buf[36] = v25;
      v159 = 2048;
      v160 = a4;
      v161 = 2080;
      v162 = v157;
      v163 = 2080;
      v164 = v151;
      v165 = 2048;
      v166 = a10;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> VPV%u REF %s %s (blksz %lu) MIC %s %s (blksz %lu)", buf, 0x54u);
      if (v151)
      {
        free(v151);
      }

      if (v152)
      {
        free(v152);
      }
    }
  }

  v26 = *(this + 1588);
  if (v26 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v27 = VPLogScope(void)::scope;
    v28 = (*(*this + 112))(this);
    CAX4CCString::CAX4CCString(buf, v148);
    CAFormatter::CAFormatter(v157, a2);
    v29 = v157[0];
    CAX4CCString::CAX4CCString(v155, v147);
    CAFormatter::CAFormatter(&v152, a8);
    CALegacyLog::log(v26, 4, v27, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 55, "InitializeHWInput", "VPV%u REF %s %s (blksz %lu) MIC %s %s (blksz %lu)", v28, buf, v29, a4, v155, v152, a10);
    v18 = &unk_28133C000;
    if (v152)
    {
      free(v152);
    }

    if (v157[0])
    {
      free(v157[0]);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v30 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v31 = (*v30 ? *v30 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 58;
      *&buf[18] = 2048;
      *&buf[20] = a5;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref audiodeviceid = %lu      mic audiodeviceid = %lu", buf, 0x26u);
    }
  }

  v32 = *(this + 1588);
  if (v32 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v32, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 58, "InitializeHWInput", "ref audiodeviceid = %lu      mic audiodeviceid = %lu", a5, a11);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v33 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(v155, a2);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 64;
      *&buf[18] = 2080;
      *&buf[20] = *v155;
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> inRefASBD passed in = %s", buf, 0x1Cu);
      if (*v155)
      {
        free(*v155);
      }
    }
  }

  v35 = *(this + 1588);
  if (v35 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v36 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a2);
    CALegacyLog::log(v35, 5, v36, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 64, "InitializeHWInput", "inRefASBD passed in = %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v37 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(v155, a8);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 65;
      *&buf[18] = 2080;
      *&buf[20] = *v155;
      _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> inMicASBD passed in = %s", buf, 0x1Cu);
      if (*v155)
      {
        free(*v155);
      }
    }
  }

  v39 = *(this + 1588);
  if (v39 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v40 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a8);
    CALegacyLog::log(v39, 5, v40, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 65, "InitializeHWInput", "inMicASBD passed in = %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v41 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v42 = (*v41 ? *v41 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 67;
      *&buf[18] = 2048;
      *&buf[20] = a4;
      *&buf[28] = 2048;
      *&buf[30] = a10;
      _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> hw io blocksizes passed in REF = %lu MIC = %lu", buf, 0x26u);
    }
  }

  v43 = *(this + 1588);
  if (v43 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v43, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 67, "InitializeHWInput", "hw io blocksizes passed in REF = %lu MIC = %lu", a4, a10);
  }

  mSampleRate = a2->mSampleRate;
  mFormatID = a2->mFormatID;
  mFormatFlags = a2->mFormatFlags;
  mBytesPerPacket = a2->mBytesPerPacket;
  mFramesPerPacket = a2->mFramesPerPacket;
  mBytesPerFrame = a2->mBytesPerFrame;
  mChannelsPerFrame = a2->mChannelsPerFrame;
  mBitsPerChannel = a2->mBitsPerChannel;
  v52 = a8->mSampleRate;
  v54 = a8->mFormatID;
  v53 = a8->mFormatFlags;
  v55 = a8->mBytesPerPacket;
  v56 = a8->mFramesPerPacket;
  v57 = a8->mBytesPerFrame;
  v58 = a8->mChannelsPerFrame;
  v59 = a8->mBitsPerChannel;
  v60 = mBitsPerChannel >> 3;
  if (mFormatID == 1819304813 && mFramesPerPacket == 1 && mBytesPerFrame == mBytesPerPacket && v60 <= mBytesPerFrame && mChannelsPerFrame && ((v61 = a2->mBytesPerPacket, (mFormatFlags & 0x20) != 0) || (v61 = mBytesPerPacket / mChannelsPerFrame, !(mBytesPerPacket % mChannelsPerFrame))) && ((mFormatFlags & 2) == 0 && 8 * v61 == mBitsPerChannel && (a2->mFormatFlags & 5) == 4 && ((v63 = (mFormatFlags >> 7) & 0x3F, v63 != 24) || v61 != 4) && !v63 && v61 == 2 || ((v61 = a2->mBytesPerPacket, (mFormatFlags & 0x20) != 0) || (v61 = mBytesPerPacket / mChannelsPerFrame, !(mBytesPerPacket % mChannelsPerFrame))) && (mFormatFlags & 2) == 0 && 8 * v61 == mBitsPerChannel && (mFormatFlags & 1) != 0 && (mFormatFlags & 0x1F84) == 0 && v61 == 4))
  {
    v65 = 1;
  }

  else
  {
    v61 = 0;
    if (mFormatID == 1819304813 && mFramesPerPacket == 1 && mBytesPerFrame == mBytesPerPacket && v60 <= mBytesPerFrame)
    {
      v62 = 0;
      if (mChannelsPerFrame)
      {
        if ((mFormatFlags & 0x20) != 0 || (v64 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v64))
        {
          v61 = 0;
          v62 = 1;
          if ((mFormatFlags & 2) == 0 && 8 * mBytesPerPacket == mBitsPerChannel)
          {
            if (mFormatFlags)
            {
              v61 = 0;
              v62 = (a2->mFormatFlags & 0x1F84) == 0;
            }

            else if ((mFormatFlags & 4) != 0)
            {
              v64 = (a2->mFormatFlags & 0x1F80) == 0xC00 && mBytesPerPacket == 4;
              v61 = v64;
            }

            else
            {
              v61 = 0;
            }
          }
        }

        else
        {
          v61 = 0;
          v62 = 0;
        }
      }
    }

    else
    {
      v62 = 0;
    }

    v65 = v61 & v62;
  }

  v66 = v59 >> 3;
  if (v54 == 1819304813 && v56 == 1 && v57 == v55 && v66 <= v57 && v58 && ((v69 = a8->mBytesPerPacket, (v53 & 0x20) != 0) || (v69 = v55 / v58, !(v55 % v58))) && ((v53 & 2) == 0 && 8 * v69 == v59 && (a8->mFormatFlags & 5) == 4 && ((v70 = (v53 >> 7) & 0x3F, v70 != 24) || v69 != 4) && !v70 && v69 == 2 || ((v71 = a8->mBytesPerPacket, (v53 & 0x20) != 0) || (v71 = v55 / v58, !(v55 % v58))) && (v53 & 2) == 0 && 8 * v71 == v59 && (v53 & 1) != 0 && (v53 & 0x1F84) == 0 && v71 == 4))
  {
    v73 = 1;
  }

  else
  {
    v67 = 0;
    if (v54 == 1819304813 && v56 == 1 && v57 == v55 && v66 <= v57)
    {
      v68 = 0;
      if (v58)
      {
        if ((v53 & 0x20) != 0 || (v64 = v55 == v55 / v58 * v58, v55 /= v58, v64))
        {
          v67 = 0;
          v68 = 1;
          if ((v53 & 2) == 0 && 8 * v55 == v59)
          {
            if (v53)
            {
              v67 = 0;
              v68 = (a8->mFormatFlags & 0x1F84) == 0;
            }

            else
            {
              v67 = (v53 & 4) != 0 && (a8->mFormatFlags & 0x1F80) == 0xC00 && v55 == 4;
            }
          }
        }

        else
        {
          v67 = 0;
          v68 = 0;
        }
      }
    }

    else
    {
      v68 = 0;
    }

    v73 = v67 && v68;
  }

  LOBYTE(v151) = 0;
  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_allow_multi_ch_ref", 0, &v151, v61);
  LOBYTE(v151) = v151 | (v148 == 1886745455);
  v74 = _os_feature_enabled_impl();
  v76 = v151;
  if (v74)
  {
    v76 = v151 | (v148 == 1885889645);
    LOBYTE(v151) = v76;
  }

  if ((v76 & 1) == 0 && mChannelsPerFrame >= 9)
  {
    v65 = 0;
  }

  v150 = 0;
  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_allow_multi_ch_mic", 0, &v150, v75);
  v150 |= v147 == 1886745449;
  if ((v150 & 1) == 0 && v58 >= 6)
  {
    v73 = 0;
  }

  if ((v65 & v73 & 1) == 0)
  {
    v77 = 1650879860;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_218;
    }

    *buf = 136315394;
    *&buf[4] = "vpInitializeUplink.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 116;
    v78 = MEMORY[0x277D86220];
    v79 = "%25s:%-5d  unsupported stream format";
    goto LABEL_217;
  }

  if (mSampleRate == 0.0)
  {
    v77 = 1852008051;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_218;
    }

    *buf = 136315394;
    *&buf[4] = "vpInitializeUplink.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 118;
    v78 = MEMORY[0x277D86220];
    v79 = "%25s:%-5d  unsupported Ref sample rate";
    goto LABEL_217;
  }

  if (v52 == 0.0)
  {
    v77 = 1852008051;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      v78 = MEMORY[0x277D86220];
      v79 = "%25s:%-5d  unsupported Mic sample rate";
LABEL_217:
      _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_ERROR, v79, buf, 0x12u);
      goto LABEL_218;
    }

    goto LABEL_218;
  }

  if (!a6 || !a7)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v95 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v96 = (*v95 ? *v95 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 123;
        _os_log_impl(&dword_2724B4000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to initialize - no reference ports", buf, 0x12u);
      }
    }

    v77 = *(this + 1588);
    if (!v77)
    {
      goto LABEL_218;
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v77, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 123, "InitializeHWInput", "failed to initialize - no reference ports");
    }

LABEL_294:
    v77 = 0;
    goto LABEL_218;
  }

  memset(buf, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(buf, a7, &a7[a6], a6);
  v81 = *(this + 294);
  if (v81)
  {
    *(this + 295) = v81;
    operator delete(v81);
    *(this + 294) = 0;
    *(this + 295) = 0;
    *(this + 296) = 0;
  }

  *(this + 147) = *buf;
  *(this + 296) = *&buf[16];
  if (a12 && a13)
  {
    memset(buf, 0, 24);
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(buf, a13, &a13[a12], a12);
    v82 = (this + 2376);
    v83 = *(this + 297);
    if (v83)
    {
      *(this + 298) = v83;
      operator delete(v83);
      *v82 = 0;
      *(this + 298) = 0;
      *(this + 299) = 0;
    }

    *v82 = *buf;
    *(this + 299) = *&buf[16];
    VoiceProcessorV2::ApplyPortTypeOverride(this);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v84 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
    if (v84)
    {
      v85 = v84;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 145;
        *&buf[18] = 1024;
        *&buf[20] = a6;
        *&buf[24] = 1024;
        *&buf[26] = a12;
        _os_log_impl(&dword_2724B4000, v85, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> inNumRefPorts = %u  inNumMicPorts = %u ", buf, 0x1Eu);
      }
    }

    v86 = *(this + 1588);
    if (v86 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v86, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 145, "InitializeHWInput", "inNumRefPorts = %u  inNumMicPorts = %u ", a6, a12);
    }

    if (*(this + 295) != *(this + 294))
    {
      v87 = 0;
      do
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v88 = v18[115];
        if (v88 && CALegacyLog::LogEnabled(5, v18[115], 0))
        {
          v89 = (*v88 ? *v88 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            v90 = a7[v87];
            CAX4CCString::CAX4CCString(v155, v90);
            *buf = 136316162;
            *&buf[4] = "vpInitializeUplink.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 149;
            *&buf[18] = 2048;
            *&buf[20] = v87;
            *&buf[28] = 1024;
            *&buf[30] = v90;
            *&buf[34] = 2080;
            *&buf[36] = v155;
            _os_log_impl(&dword_2724B4000, v89, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> refPortType %lu = %u = %s", buf, 0x2Cu);
          }
        }

        v91 = *(this + 1588);
        if (v91 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v92 = v18;
          v93 = v18[115];
          v94 = a7[v87];
          CAX4CCString::CAX4CCString(buf, v94);
          CALegacyLog::log(v91, 5, v93, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 149, "InitializeHWInput", "refPortType %lu = %u = %s", v87, v94, buf);
          v18 = v92;
        }

        ++v87;
      }

      while (v87 < (*(this + 295) - *(this + 294)) >> 2);
    }

    if (*(this + 298) != *(this + 297))
    {
      v99 = 0;
      do
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v100 = v18[115];
        if (v100 && CALegacyLog::LogEnabled(5, v18[115], 0))
        {
          v101 = (*v100 ? *v100 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            v102 = v18;
            v103 = a13[v99];
            CAX4CCString::CAX4CCString(v155, v103);
            *buf = 136316162;
            *&buf[4] = "vpInitializeUplink.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 153;
            *&buf[18] = 2048;
            *&buf[20] = v99;
            *&buf[28] = 1024;
            *&buf[30] = v103;
            *&buf[34] = 2080;
            *&buf[36] = v155;
            _os_log_impl(&dword_2724B4000, v101, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> micPortType %lu = %u = %s", buf, 0x2Cu);
            v18 = v102;
          }
        }

        v104 = *(this + 1588);
        if (v104 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v105 = v18;
          v106 = v18[115];
          v107 = a13[v99];
          CAX4CCString::CAX4CCString(buf, v107);
          CALegacyLog::log(v104, 5, v106, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 153, "InitializeHWInput", "micPortType %lu = %u = %s", v99, v107, buf);
          v18 = v105;
        }

        ++v99;
      }

      while (v99 < (*(this + 298) - *(this + 297)) >> 2);
    }

    if ((*(this + 16161) & 1) == 0)
    {
      *(this + 600) = 0;
      v108 = *(this + 294);
      v109 = *v108;
      if ((v109 - 1885892674) <= 0x35 && ((1 << (v109 - 66)) & 0x20000100000001) != 0)
      {
        VoiceProcessorV2::GetAndPrintPortSubtype(*(this + 286), v109, this + 600);
        v108 = *(this + 294);
      }

      *(this + 601) = 0;
      GetAndPrintPortTypeProperty(0x6F757470u, *v108, *(this + 286), 0x70657074u, "end point", this + 601);
    }

    v111 = *&a8->mSampleRate;
    v112 = *&a8->mBytesPerPacket;
    *(this + 83) = *&a8->mBitsPerChannel;
    *(this + 632) = v111;
    *(this + 648) = v112;
    *(this + 126) = a10;
    v113 = *&a2->mSampleRate;
    v114 = *&a2->mBytesPerPacket;
    *(this + 73) = *&a2->mBitsPerChannel;
    *(this + 552) = v113;
    *(this + 568) = v114;
    *(this + 124) = a4;
    if (VoiceProcessorV2::ShouldGenerateReferenceSignalInternally(this))
    {
      v115 = a2->mChannelsPerFrame;
      *v155 = a2->mSampleRate;
      *&v155[8] = xmmword_272756340;
      *&v155[24] = 4;
      *&v155[28] = v115;
      v156 = 32;
      if (CAStreamBasicDescription::IsEqual(v155, (this + 592)) && *(this + 125) == a4)
      {
        if (*v149 == 1)
        {
          if (*(this + 123) == a4 && CAStreamBasicDescription::IsEqual((this + 336), (this + 592)))
          {
            *v149 = 0;
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v116 = CALog::LogObjIfEnabled(5, v18[115]);
            if (v116)
            {
              v117 = v116;
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "vpInitializeUplink.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 199;
                _os_log_impl(&dword_2724B4000, v117, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ul-dl config no longer out of sync", buf, 0x12u);
              }
            }

            v118 = *(this + 1588);
            if (v118 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v118, 5, v18[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 199, "InitializeHWInput", "ul-dl config no longer out of sync");
            }
          }

          else
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v141 = CALog::LogObjIfEnabled(1, v18[115]);
            if (v141)
            {
              v142 = v141;
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "vpInitializeUplink.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 201;
                _os_log_impl(&dword_2724B4000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ul-dl config still out of sync ?!", buf, 0x12u);
              }
            }

            v143 = *(this + 1588);
            if (v143 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v143, 1, v18[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 201, "InitializeHWInput", "ul-dl config still out of sync ?!");
            }
          }
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v120 = CALog::LogObjIfEnabled(5, v18[115]);
        if (v120)
        {
          v121 = v120;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
          {
            CAFormatter::CAFormatter(v157, (this + 592));
            v122 = v157[0];
            v123 = *(this + 125);
            CAFormatter::CAFormatter(&v152, a8);
            *buf = 136316418;
            *&buf[4] = "vpInitializeUplink.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 192;
            *&buf[18] = 2080;
            *&buf[20] = v122;
            *&buf[28] = 1024;
            *&buf[30] = v123;
            *&buf[34] = 2080;
            *&buf[36] = v152;
            v159 = 1024;
            LODWORD(v160) = a10;
            _os_log_impl(&dword_2724B4000, v121, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ul-dl config out of sync mHwRefASBD = %s, %d\t inMicASBD = %s %d", buf, 0x32u);
            if (v152)
            {
              free(v152);
            }

            if (v157[0])
            {
              free(v157[0]);
            }
          }
        }

        v124 = *(this + 1588);
        if (v124 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v125 = v18[115];
          CAFormatter::CAFormatter(buf, (this + 592));
          v126 = *buf;
          v127 = *(this + 125);
          CAFormatter::CAFormatter(v157, a8);
          CALegacyLog::log(v124, 5, v125, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 192, "InitializeHWInput", "ul-dl config out of sync mHwRefASBD = %s, %d\t inMicASBD = %s %d", v126, v127, v157[0], a10);
          if (v157[0])
          {
            free(v157[0]);
          }

          if (*buf)
          {
            free(*buf);
          }
        }

        v128 = *&v155[16];
        *(this + 37) = *v155;
        *(this + 38) = v128;
        *(this + 78) = v156;
        *(this + 125) = a4;
        *v149 = 1;
      }
    }

    else
    {
      *(this + 125) = *(this + 124);
      v119 = *(this + 568);
      *(this + 37) = *(this + 552);
      *(this + 38) = v119;
      *(this + 78) = *(this + 73);
    }

    if (*(this + 79) != *(this + 74))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v129 = CALog::LogObjIfEnabled(1, v18[115]);
      if (v129)
      {
        v130 = v129;
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          v131 = *(this + 74);
          v132 = *(this + 79);
          *buf = 136315906;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 209;
          *&buf[18] = 2048;
          *&buf[20] = v131;
          *&buf[28] = 2048;
          *&buf[30] = v132;
          _os_log_impl(&dword_2724B4000, v130, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> fs mismatched! REF=%fHz, MIC=%fHz", buf, 0x26u);
        }
      }

      v133 = *(this + 1588);
      if (v133 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v133, 1, v18[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 209, "InitializeHWInput", "fs mismatched! REF=%fHz, MIC=%fHz", *(this + 74), *(this + 79));
      }
    }

    *(this + 264) = *(this + 263);
    *(this + 268) = *(this + 267);
    applesauce::CF::ObjectRef<__CFArray const*>::operator=(this + 270);
    v134 = *(this + 275);
    if (v134)
    {
      free(v134);
      *(this + 275) = 0;
    }

    *(this + 552) = 0;
    v135 = *(this + 278);
    if (v135)
    {
      CFRelease(v135);
      *(this + 278) = 0;
    }

    v136 = *(this + 279);
    if (v136)
    {
      CFRelease(v136);
      *(this + 279) = 0;
    }

    *(this + 482) = 1;
    if (*(this + 483) == 1)
    {
      v77 = (*(*this + 240))(this);
    }

    else
    {
      v77 = 0;
    }

    if ((*(this + 16161) & 1) == 0)
    {
      (*(*this + 312))(this);
    }

    if (*(this + 15800) == 1)
    {
      fflush(*MEMORY[0x277D85DF8]);
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::PListWriteInitializeHwInputParameters(this);
      if (*(this + 15881))
      {
        VoiceProcessorV2::LoopBackInitialize(this, v137, v138, v139, v140);
      }
    }

    goto LABEL_218;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v97 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
  if (v97)
  {
    v98 = v97;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 131;
      _os_log_impl(&dword_2724B4000, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to initialize - no microphone ports", buf, 0x12u);
    }
  }

  v77 = *(this + 1588);
  if (v77)
  {
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v77, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 131, "InitializeHWInput", "failed to initialize - no microphone ports");
    }

    goto LABEL_294;
  }

LABEL_218:
  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v154 == 1)
  {
    (*(*v153 + 24))(v153);
  }

  return v77;
}

void sub_27253B06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  atomic_fetch_add((v37 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a30);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::operator=(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VoiceProcessorV2::InitializeOutput(VoiceProcessorV2 *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v65 = *MEMORY[0x277D85DE8];
  v57 = this + 2408;
  v58 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  ++VoiceProcessorV2::InitializeOutput(AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &)::InitOutputCallCount;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v13 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 258;
      HIWORD(buf.mBytesPerPacket) = 1024;
      buf.mFramesPerPacket = VoiceProcessorV2::InitializeOutput(AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &)::InitOutputCallCount;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> call num %u", &buf, 0x18u);
    }
  }

  v15 = *(this + 1588);
  if (v15 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v15, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 258, "InitializeOutput", "call num %u", VoiceProcessorV2::InitializeOutput(AudioStreamBasicDescription &,AudioChannelLayout *,unsigned int &,unsigned int &,unsigned int &)::InitOutputCallCount);
  }

  if (*(this + 483) != 1)
  {
    goto LABEL_47;
  }

  v16 = *&a2->mBytesPerPacket;
  *&buf.mSampleRate = *&a2->mSampleRate;
  *&buf.mBytesPerPacket = v16;
  *&buf.mBitsPerChannel = *&a2->mBitsPerChannel;
  if (buf.mSampleRate != *(this + 124))
  {
    goto LABEL_47;
  }

  if (buf.mFormatID != *(this + 250))
  {
    goto LABEL_47;
  }

  if (buf.mBytesPerPacket != *(this + 252))
  {
    goto LABEL_47;
  }

  if (buf.mFramesPerPacket != *(this + 253))
  {
    goto LABEL_47;
  }

  if (buf.mChannelsPerFrame != *(this + 255))
  {
    goto LABEL_47;
  }

  if (buf.mBitsPerChannel != *(this + 256))
  {
    goto LABEL_47;
  }

  if (!CA::Implementation::EquivalentFormatFlags(&buf, (this + 992), v12))
  {
    goto LABEL_47;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  v17 = *(this + 289);
  mChannelLayoutTag = a3->mChannelLayoutTag;
  if (a3->mChannelLayoutTag != v17[4])
  {
    goto LABEL_47;
  }

  if (mChannelLayoutTag == 0x10000)
  {
    if (a3->mChannelBitmap != v17[5])
    {
      goto LABEL_47;
    }

LABEL_133:
    *(this + 483) = 1;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope && *(VPLogScope(void)::scope + 8) >= 6)
    {
      v50 = *VPLogScope(void)::scope ? *VPLogScope(void)::scope : MEMORY[0x277D86220];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        CAFormatter::CAFormatter(v59, a2);
        LODWORD(buf.mSampleRate) = 136315650;
        *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 327;
        HIWORD(buf.mBytesPerPacket) = 2080;
        *&buf.mFramesPerPacket = *v59;
        _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initialize output: ioOutASBD passed OUT = %s", &buf, 0x1Cu);
        if (*v59)
        {
          free(*v59);
        }
      }
    }

    v51 = *(this + 1588);
    if (v51 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v52 = VPLogScope(void)::scope;
      CAFormatter::CAFormatter(&buf, a2);
      CALegacyLog::log(v51, 6, v52, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 327, "InitializeOutput", "initialize output: ioOutASBD passed OUT = %s", *&buf.mSampleRate);
      if (*&buf.mSampleRate)
      {
        free(*&buf.mSampleRate);
      }
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::PListWriteInitializeOutputParameters(this);
      if (*(this + 15881))
      {
        VoiceProcessorV2::LoopBackInitialize(this, v53, v54, v55, v56);
      }
    }

    v28 = 0;
    goto LABEL_108;
  }

  if (mChannelLayoutTag)
  {
    goto LABEL_133;
  }

  mNumberChannelDescriptions = a3->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions != v17[6])
  {
    goto LABEL_47;
  }

  if (!mNumberChannelDescriptions)
  {
    goto LABEL_133;
  }

  mChannelDescriptions = a3->mChannelDescriptions;
  v21 = v17 + 7;
  while (mChannelDescriptions->mChannelLabel == *v21)
  {
    if (mChannelDescriptions->mChannelLabel == 100)
    {
      v22 = *&mChannelDescriptions->mChannelLabel == *v21 && *mChannelDescriptions->mCoordinates == *(v21 + 1);
      if (!v22 || LODWORD(mChannelDescriptions->mCoordinates[2]) != v21[4])
      {
        break;
      }
    }

    v21 += 5;
    ++mChannelDescriptions;
    if (!--mNumberChannelDescriptions)
    {
      goto LABEL_133;
    }
  }

LABEL_47:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v24 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      CAFormatter::CAFormatter(v59, a2);
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 265;
      HIWORD(buf.mBytesPerPacket) = 2080;
      *&buf.mFramesPerPacket = *v59;
      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> ioOutASBD passed in = %s", &buf, 0x1Cu);
      if (*v59)
      {
        free(*v59);
      }
    }
  }

  v26 = *(this + 1588);
  if (v26 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v27 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(&buf, a2);
    CALegacyLog::log(v26, 4, v27, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 265, "InitializeOutput", "ioOutASBD passed in = %s", *&buf.mSampleRate);
    if (*&buf.mSampleRate)
    {
      free(*&buf.mSampleRate);
    }
  }

  if (a2->mSampleRate == 0.0)
  {
    v28 = 1852008051;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 269;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  unsupported Out sample rate";
    goto LABEL_107;
  }

  if (a2->mFormatID != 1819304813)
  {
    v28 = 1852008051;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 271;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  unsupported out format";
    goto LABEL_107;
  }

  if (a2->mChannelsPerFrame != 1)
  {
    v31 = a2->mBitsPerChannel >> 3;
    a2->mBytesPerFrame = v31;
    a2->mChannelsPerFrame = 1;
    a2->mBytesPerPacket = v31;
    a2->mFramesPerPacket = 1;
  }

  if (!a3)
  {
    mSampleRate = COERCE_DOUBLE(CAAudioChannelLayout::RefCountedLayout::operator new(0xC));
    **&mSampleRate = &unk_2881B2480;
    *(*&mSampleRate + 8) = 0xC00000001;
    *(*&mSampleRate + 16) = 0;
    *(*&mSampleRate + 24) = 0;
    *(*&mSampleRate + 16) = 6553601;
    buf.mSampleRate = mSampleRate;
    v33 = *(this + 289);
    if (v33 != *&mSampleRate)
    {
      if (v33)
      {
        if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v33 + 16))(v33);
        }

        mSampleRate = buf.mSampleRate;
        *(this + 289) = *&buf.mSampleRate;
        if (mSampleRate == 0.0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        *(this + 289) = mSampleRate;
      }

      atomic_fetch_add((*&mSampleRate + 8), 1u);
    }

LABEL_85:
    CAAudioChannelLayout::~CAAudioChannelLayout(&buf);
    goto LABEL_86;
  }

  if (LOWORD(a3->mChannelLayoutTag) != 1)
  {
    v28 = 593717363;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_108;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 285;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  number of channels mismatches";
    goto LABEL_107;
  }

  CAAudioChannelLayout::operator=(this + 289, a3);
LABEL_86:
  v34 = *&a2->mSampleRate;
  v35 = *&a2->mBytesPerPacket;
  *(this + 128) = *&a2->mBitsPerChannel;
  *(this + 62) = v34;
  *(this + 63) = v35;
  if (*(this + 482) == 1)
  {
    v28 = (*(*this + 240))(this);
    if (v28)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_108;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 294;
      v29 = MEMORY[0x277D86220];
      v30 = "%25s:%-5d  could not initialize EC/ES";
      goto LABEL_107;
    }

    *a4 = *(this + 422);
    *a5 = *(this + 423);
    *a6 = 0;
    if (!*(this + 159))
    {
      LODWORD(v36) = *(this + 126);
      v41 = vcvtpd_u64_f64(*(this + 124) * v36 / *(this + 79));
      if (v41 <= *(this + 422))
      {
        v41 = *(this + 422);
      }

      if (v41 <= 0x1000)
      {
        v42 = 4096;
      }

      else
      {
        v42 = v41;
      }

      v43 = *(this + 63);
      *&buf.mSampleRate = *(this + 62);
      *&buf.mBytesPerPacket = v43;
      *&buf.mBitsPerChannel = *(this + 128);
      buf.mChannelsPerFrame = 2;
      myAllocABLDynamic(&buf, v42, this + 159);
      v44 = *(this + 159);
      if (*v44)
      {
        v45 = 0;
        v46 = (v44 + 4);
        do
        {
          bzero(*v46, *(v46 - 1));
          ++v45;
          v46 += 2;
        }

        while (v45 < *v44);
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v47 = CALog::LogObjIfEnabled(4, VPLogScope(void)::scope);
      if (v47)
      {
        v48 = v47;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *v59 = 136315650;
          *&v59[4] = "vpInitializeUplink.cpp";
          v60 = 1024;
          v61 = 320;
          v62 = 1024;
          v63 = v42;
          _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> UL fade data size = %u", v59, 0x18u);
        }
      }

      v49 = *(this + 1588);
      if (v49 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v49, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 320, "InitializeOutput", "UL fade data size = %u", v42);
      }
    }

    goto LABEL_133;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v37 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 298;
      _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: Initialize output called before Initialize hw input was called!", &buf, 0x12u);
    }
  }

  v39 = *(this + 1588);
  if (v39 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v39, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 298, "InitializeOutput", "ERROR: Initialize output called before Initialize hw input was called!");
  }

  v28 = 1768843636;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "vpInitializeUplink.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 300;
    v29 = MEMORY[0x277D86220];
    v30 = "%25s:%-5d  Initialize output called before init hw was called";
LABEL_107:
    _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, v30, &buf, 0x12u);
  }

LABEL_108:
  if (*(this + 15800) == 1)
  {
    fflush(*MEMORY[0x277D85DF8]);
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v58 == 1)
  {
    (*(*v57 + 24))(v57);
  }

  return v28;
}

void sub_27253BE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  atomic_fetch_add((v17 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a11);
  _Unwind_Resume(a1);
}

BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  v5 = v4 & 0xFFFFFFBF;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_14;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v4 & 0xFFFFFFB7 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_14:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  v20 = v19 & 0xFFFFFFBF;
  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v19 & 0xFFFFFFB7 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_44:
    v26 = mBitsPerChannel == 0;
    goto LABEL_45;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_44;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_45:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

uint64_t VoiceProcessorV2::GetMaxOutputPacketInfo(VoiceProcessorV2 *this, AudioStreamBasicDescription *a2, AudioChannelLayout *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = this + 2408;
  v20 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  if (*(this + 483))
  {
    *a4 = *(this + 422);
    *a5 = *(this + 423);
    *a6 = 0;
    if (*(this + 15881) == 1)
    {
      if (*(this + 1906))
      {
        *buf = 0;
        VoiceProcessorV2::PListCopyDictionaryForWrite(this, buf);
        v12 = *buf;
        if (*buf)
        {
          VPGetPropsPListStringForKey(&cf, 55);
          WriteItemToDictionary(buf, &cf, 1, 4uLL, this + 1688);
          if (cf)
          {
            CFRelease(cf);
          }

          VPGetPropsPListStringForKey(&cf, 56);
          WriteItemToDictionary(buf, &cf, 1, 4uLL, this + 1692);
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v12);
        }
      }
    }

    v13 = 0;
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v14 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "vpInitializeUplink.cpp";
        v23 = 1024;
        v24 = 355;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> GetMaxOutputPacketInfo : InitializeOutput hasn't been called yet!", buf, 0x12u);
      }
    }

    v16 = *(this + 1588);
    if (v16 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v18 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v16 = v18;
      }

      CALegacyLog::log(v16, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 355, "GetMaxOutputPacketInfo", "GetMaxOutputPacketInfo : InitializeOutput hasn't been called yet!");
    }

    v13 = (*(*this + 24))(this, a2, a3, a4, a5, a6);
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v20 == 1)
  {
    (*(*v19 + 24))(v19);
  }

  return v13;
}

void sub_27253C3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = *(a1 + 8);
      v6 = *a1;
      if (v5 != v4)
      {
        do
        {
          std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](--v5, 0);
        }

        while (v5 != v4);
        v6 = *a1;
      }

      *(a1 + 8) = v4;
      operator delete(v6);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t VoiceProcessorV2::Initialize(VoiceProcessorV2 *this)
{
  v1 = this;
  v236 = *MEMORY[0x277D85DE8];
  CADeprecated::CAMutex::Lock((this + 2592));
  *(v1 + 3148) = 0;
  CADeprecated::CAMutex::Unlock((v1 + 2592));
  *(v1 + 3149) = 0;
  CAAudioChannelLayout::operator=(v1 + 289, 0);
  v2.i32[0] = *(v1 + 102);
  v2.i32[1] = *(v1 + 114);
  v3 = vceqz_s32(v2);
  *(v1 + 52) = vsub_s32(vbic_s8(vpaddl_u16(vpaddl_u8(vcnt_s8(v2))), v3), v3);
  v4 = vcnt_s8(*(v1 + 103));
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if (!*(v1 + 103))
  {
    v5 = 1;
  }

  *(v1 + 106) = v5;
  if (VoiceProcessorV2::ShouldInteractWithControlCenter(v1))
  {
    v233 = v1;
    if (atomic_load_explicit(v1 + 2066, memory_order_acquire) != -1)
    {
      *buf = &v233;
      __src[0] = buf;
      std::__call_once(v1 + 2066, __src, std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::Initialize(void)::$_0 &&>>);
    }
  }

  (*(*v1 + 576))(v1);
  v226 = v1 + 15309;
  if (*(v1 + 16161) != 1 || (v9 = *(v1 + 4049), v9 == 0.0))
  {
    if (*(v1 + 15881) != 1 || (LOBYTE(__src[0]) = 0, *buf = 0, VoiceProcessorV2::ReadDefaultsOverride(@"vp_epio_samplerate", 2, buf, __src, v6), !LOBYTE(__src[0])) || (v9 = *buf, *buf == 0.0))
    {
      v10 = *(v1 + 124);
      v11 = *(v1 + 20);
      if (v11 - 5 <= 1)
      {
        v12 = COERCE_DOUBLE(GetVPPreferredClientSampleRate(*(v1 + 18), v11));
        if (v13)
        {
          v10 = v12;
        }
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 513;
          *&buf[18] = 2048;
          *&buf[20] = v10;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> preferredClientSampleRate: %g", buf, 0x1Cu);
        }
      }

      v16 = *(v1 + 1588);
      if (v16 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v16, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 513, "CalcEpIoSampleRate", "preferredClientSampleRate: %g", v10);
      }

      v17 = *(v1 + 79);
      v18 = 32000.0;
      if (v17 == 44100.0 && *(v1 + 124) == 44100.0)
      {
        *v7.i64 = vcvtd_n_f64_u32(*(v1 + 126), 1uLL);
        *v8.i64 = *v7.i64 - trunc(*v7.i64);
        v19.f64[0] = NAN;
        v19.f64[1] = NAN;
        if (*vbslq_s8(vnegq_f64(v19), v8, v7).i64 == 0.0)
        {
          v18 = 22050.0;
        }
      }

      if (v17 == 48000.0 && *(v1 + 20) == 1 && *(v1 + 124) == 48000.0)
      {
        v20 = *(v1 + 297);
        if (v20 != *(v1 + 298) && *v20 != 1886614633)
        {
          v21 = *(v1 + 554);
          if (v21 == 0.0)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v22 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
            if (v22)
            {
              v23 = v22;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "vpInitializeUplink.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 539;
                _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> calcasbds: mPrimaryCodecSampleRate should be used to determin epio sample rate, but it is zero! setting the max epio sample rate to 16000", buf, 0x12u);
              }
            }

            v24 = *(v1 + 1588);
            v18 = 16000.0;
            if (v24 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v24, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 539, "CalcEpIoSampleRate", "calcasbds: mPrimaryCodecSampleRate should be used to determin epio sample rate, but it is zero! setting the max epio sample rate to 16000");
            }
          }

          else
          {
            v18 = fmax(v21, 16000.0);
          }
        }
      }

      v25 = *(v1 + 554);
      if (v25 > 0.0 && v25 <= 16000.0 && (*(*v1 + 232))(v1) && v18 > 16000.0)
      {
        v18 = 16000.0;
      }

      v26 = *(v1 + 19);
      if (v26 == 48 || v26 == 45)
      {
        v27 = 0;
        while (v10 != *&dword_272759F44[v27])
        {
          if (++v27 == 3)
          {
            if (*(v1 + 20))
            {
              break;
            }

            v9 = 24000.0;
            goto LABEL_79;
          }
        }
      }

      v28 = *(v1 + 79);
      if (v28 >= v10)
      {
        v28 = v10;
      }

      if (v18 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v18;
      }

      if ((*(v1 + 16568) & 1) == 0)
      {
        if ((*(v1 + 2262) & 1) != 0 || (*(v1 + 2288) != 1 ? (AutomaticChatFlavor = *(v1 + 4134)) : (AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(v1)), AutomaticChatFlavor == 2))
        {
          if ((*(v1 + 16544) & 4) != 0)
          {
            v29 = 24000.0;
          }
        }
      }

      v9 = v29;
    }
  }

LABEL_79:
  v31 = *(v1 + 104);
  v32 = v9;
  v33 = (v1 + 792);
  *(v1 + 99) = v32;
  *(v1 + 50) = xmmword_272756340;
  *(v1 + 204) = 4;
  *(v1 + 205) = v31;
  *(v1 + 103) = 32;
  v34 = *(v1 + 105);
  *(v1 + 104) = v32;
  *(v1 + 840) = xmmword_272756340;
  *(v1 + 214) = 4;
  *(v1 + 215) = v34;
  *(v1 + 108) = 32;
  v35 = *(v1 + 106);
  *(v1 + 114) = v32;
  v213 = v1 + 840;
  *(v1 + 920) = xmmword_272756340;
  *(v1 + 234) = 4;
  *(v1 + 235) = v35;
  *(v1 + 118) = 32;
  v36 = *(v1 + 792);
  v37 = *(v1 + 808);
  *(v1 + 93) = *(v1 + 103);
  *(v1 + 712) = v36;
  *(v1 + 728) = v37;
  v215 = (v1 + 712);
  *(v1 + 89) = *(v1 + 74);
  v38 = *(v1 + 52);
  v39 = *(v1 + 53);
  *(v1 + 98) = *(v1 + 108);
  *(v1 + 47) = v38;
  *(v1 + 48) = v39;
  *(v1 + 94) = *(v1 + 79);
  v40 = *(v1 + 62);
  v41 = *(v1 + 63);
  *(v1 + 123) = *(v1 + 128);
  *(v1 + 952) = v40;
  *(v1 + 968) = v41;
  v216 = (v1 + 952);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v42 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v43 = (*v42 ? *v42 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(__src, (v1 + 792));
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 623;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> calcasbds: mEpRefASBD format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v44 = *(v1 + 1588);
  if (v44 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v45 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (v1 + 792));
    CALegacyLog::log(v44, 5, v45, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 623, "CalcASBDs", "calcasbds: mEpRefASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v219 = (v1 + 832);
  v46 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v47 = (*v46 ? *v46 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(__src, v219);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 625;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcasbds: mEpMicASBD (ignore the # of channels) format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v48 = *(v1 + 1588);
  if (v48 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v49 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, v219);
    CALegacyLog::log(v48, 3, v49, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 625, "CalcASBDs", "calcasbds: mEpMicASBD (ignore the # of channels) format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v222 = (v1 + 912);
  v50 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v51 = (*v50 ? *v50 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(__src, v222);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 626;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcasbds: mEpOutASBD format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v52 = *(v1 + 1588);
  if (v52 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v53 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, v222);
    CALegacyLog::log(v52, 3, v53, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 626, "CalcASBDs", "calcasbds: mEpOutASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v54 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v55 = (*v54 ? *v54 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(__src, v216);
      *buf = 136315650;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 627;
      *&buf[18] = 2080;
      *&buf[20] = __src[0];
      _os_log_impl(&dword_2724B4000, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcasbds: mUsOutASBD format: %s", buf, 0x1Cu);
      if (__src[0])
      {
        free(__src[0]);
      }
    }
  }

  v56 = *(v1 + 1588);
  if (v56 && ((*(v1 + 15881) & 1) != 0 || *(v1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v57 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, v216);
    CALegacyLog::log(v56, 3, v57, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 627, "CalcASBDs", "calcasbds: mUsOutASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  std::vector<std::string>::clear[abi:ne200100](v1 + 1995);
  v58 = *(v1 + 2002);
  v59 = *(v1 + 2001);
  while (v58 != v59)
  {
    v58 -= 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v58);
  }

  *(v1 + 2002) = v59;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(v1 + 4648);
  VoiceProcessorV2::InitializeVPParams(v1);
  if ((*(v1 + 4691) & 0x10) != 0)
  {
    (*(*v1 + 392))(v1);
  }

  if ((*(v1 + 4696) & 0x40) != 0)
  {
    (*(*v1 + 400))(v1);
  }

  v60 = vcnt_s8(*(v1 + 114));
  v60.i16[0] = vaddlv_u8(v60);
  v61 = v60.i32[0];
  if (!*(v1 + 114))
  {
    v61 = 1;
  }

  *(v1 + 105) = v61;
  *(v1 + 215) = v61;
  *(v1 + 195) = v61;
  v62 = v1 + 1936;
  if (*(v1 + 1960) == 1)
  {
    *buf = v1 + 1936;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1960) = 0;
  }

  v223 = v1 + 1968;
  if (*(v1 + 1992) == 1)
  {
    *buf = v1 + 1968;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1992) = 0;
  }

  v220 = v1 + 1376;
  if (*(v1 + 1400) == 1)
  {
    *buf = v1 + 1376;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1400) = 0;
  }

  v217 = (v1 + 2000);
  v63 = std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](v1 + 250, 0);
  *v225 = v1;
  if (*(v1 + 74) == *(v1 + 99))
  {
LABEL_179:
    v214 = (v1 + 992);
    if (*(v1 + 79) == v219->mSampleRate)
    {
      v82 = 0;
    }

    else
    {
      v212 = v33;
      __src[0] = 0;
      __src[1] = 0;
      *&v228 = 0;
      v233 = 0;
      v234 = 0;
      v235 = 0;
      if (*(v1 + 215))
      {
        v82 = 0;
        v83 = 0;
        v218 = 1651532146;
        v84 = MEMORY[0x277D86220];
        v85 = *v225;
        while (1)
        {
          VoiceProcessorV2::CreateSRC(&outData, v85[79], v85[104], v85, 1, v64, v65);
          v88 = outData;
          if (!outData)
          {
            break;
          }

          v89 = __src[1];
          if (__src[1] >= v228)
          {
            v91 = __src[0];
            v92 = __src[1] - __src[0];
            v93 = (__src[1] - __src[0]) >> 3;
            v94 = v93 + 1;
            if ((v93 + 1) >> 61)
            {
              std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
            }

            v95 = v228 - __src[0];
            if ((v228 - __src[0]) >> 2 > v94)
            {
              v94 = v95 >> 2;
            }

            if (v95 >= 0x7FFFFFFFFFFFFFF8)
            {
              v96 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v96 = v94;
            }

            *&buf[32] = __src;
            if (v96)
            {
              std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v96);
            }

            outData = 0;
            *(8 * v93) = v88;
            v90 = (8 * v93 + 8);
            memcpy(0, v91, v92);
            v97 = __src[0];
            v98 = v228;
            __src[0] = 0;
            __src[1] = v90;
            *&v228 = 0;
            *&buf[16] = v97;
            *&buf[24] = v98;
            *buf = v97;
            *&buf[8] = v97;
            std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(buf);
          }

          else
          {
            outData = 0;
            *__src[1] = v88;
            v90 = v89 + 8;
          }

          __src[1] = v90;
          VoiceProcessorV2::CreateSRC(ioDataSize, *(*v225 + 632), *(*v225 + 832), *v225, 1, v86, v87);
          v99 = *ioDataSize;
          if (*ioDataSize)
          {
            v100 = v234;
            if (v234 >= v235)
            {
              v102 = v233;
              v103 = v234 - v233;
              v104 = (v234 - v233) >> 3;
              v105 = v104 + 1;
              if ((v104 + 1) >> 61)
              {
                std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
              }

              v106 = v235 - v233;
              if ((v235 - v233) >> 2 > v105)
              {
                v105 = v106 >> 2;
              }

              if (v106 >= 0x7FFFFFFFFFFFFFF8)
              {
                v107 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v107 = v105;
              }

              *&buf[32] = &v233;
              if (v107)
              {
                std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v107);
              }

              v108 = (8 * v104);
              *ioDataSize = 0;
              v109 = &v108[-((v234 - v233) >> 3)];
              *v108 = v99;
              v101 = v108 + 1;
              memcpy(v109, v102, v103);
              v110 = v233;
              v111 = v235;
              v233 = v109;
              v234 = v101;
              v235 = 0;
              *&buf[16] = v110;
              *&buf[24] = v111;
              *buf = v110;
              *&buf[8] = v110;
              std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(buf);
            }

            else
            {
              *ioDataSize = 0;
              *v234 = v99;
              v101 = v100 + 1;
            }

            v234 = v101;
          }

          else
          {
            v82 = 1651532146;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "vpInitializeUplink.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 758;
              _os_log_impl(&dword_2724B4000, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create mic clip src", buf, 0x12u);
            }
          }

          std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](ioDataSize, 0);
          std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&outData, 0);
          if (!v99)
          {
            *buf = &v233;
            std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
            *buf = __src;
            std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
            v1 = *v225;
            v33 = v212;
            goto LABEL_228;
          }

          ++v83;
          v85 = *v225;
          if (v83 >= *(*v225 + 860))
          {
            goto LABEL_217;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 754;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create mic src", buf, 0x12u);
        }

        std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&outData, 0);
        *buf = &v233;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
        *buf = __src;
        std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
        v1 = *v225;
        goto LABEL_229;
      }

      v82 = 0;
      v85 = *v225;
LABEL_217:
      std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(v223, __src);
      std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(v220, &v233);
      *buf = &v233;
      std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = __src;
      std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
      v1 = v85;
      v33 = v212;
    }

    v67.i64[0] = *&v214->mSampleRate;
    if (v222->mSampleRate != v214->mSampleRate)
    {
      VoiceProcessorV2::CreateSRC(__src, v222->mSampleRate, *v67.i64, v1, 1, v64, v65);
      v112 = __src[0];
      if (__src[0])
      {
        __src[0] = 0;
        std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](v217, v112);
      }

      else
      {
        v82 = 1651532146;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 768;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create output src", buf, 0x12u);
        }
      }

      v63 = std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](__src, 0);
    }

LABEL_228:
    v218 = v82;
    if (v82)
    {
      goto LABEL_229;
    }

    v116 = *(v1 + 125);
    *(v1 + 127) = v116;
    v117 = *(v1 + 126);
    *(v1 + 128) = v117;
    if (*(v1 + 1960) == 1)
    {
      v67.i64[0] = *(v1 + 74);
      *(v1 + 127) = vcvtpd_u64_f64(*(v1 + 99) * v116 / *v67.i64);
    }

    if (*(v1 + 1992) == 1)
    {
      v67.i64[0] = *(v1 + 79);
      *(v1 + 128) = vcvtpd_u64_f64(*(v1 + 104) * v117 / *v67.i64);
    }

    if (v226[852] != 1 || (v118 = *(v1 + 4048)) == 0)
    {
      if (v226[572] == 1)
      {
        LOBYTE(v233) = 0;
        *buf = 0;
        VoiceProcessorV2::ReadDefaultsOverride(@"vp_epio_blksz", 1, buf, &v233, v65);
        if (v233)
        {
          v118 = *buf;
          if (*buf)
          {
            goto LABEL_265;
          }
        }

        LOBYTE(outData) = 0;
        LODWORD(__src[0]) = 0;
        VoiceProcessorV2::ReadDefaultsOverride(@"vp_epio_blksz_ms", 2, __src, &outData, v119);
        if (outData && *__src != 0.0)
        {
          v118 = (v219->mSampleRate * *__src * 0.001);
          goto LABEL_265;
        }
      }

      v120 = *(v1 + 20);
      if ((v120 - 2) < 5)
      {
        goto LABEL_263;
      }

      if (v120 == 1)
      {
        ShouldUseOptimizedBlockSizeForFacePlant = VoiceProcessorV2::ShouldUseOptimizedBlockSizeForFacePlant(v1);
        v195 = 0.012;
        if (ShouldUseOptimizedBlockSizeForFacePlant)
        {
          v195 = 0.01;
        }

        LODWORD(ShouldUseOptimizedBlockSizeForFacePlant) = vcvtpd_u64_f64(v195 * *(v1 + 104));
        NextFFTFriendlyBlkSz = BlockSizeHelper::GetNextFFTFriendlyBlkSz(ShouldUseOptimizedBlockSizeForFacePlant);
        goto LABEL_264;
      }

      if (v120 == 8 || ((v192 = *(v1 + 104), *(v1 + 1992) != 1) ? (*v69.i32 = *(v1 + 126)) : (LODWORD(v68) = *(v1 + 126), *v67.i64 = v192 / *(v1 + 79) * v68, *v69.i32 = *v67.i64), *v67.i32 = *v69.i32 - truncf(*v69.i32), v196.i64[0] = 0x8000000080000000, v196.i64[1] = 0x8000000080000000, *vbslq_s8(v196, v67, v69).i32 != 0.0))
      {
LABEL_263:
        LODWORD(v63) = vcvtpd_u64_f64(v219->mSampleRate * 0.01);
        NextFFTFriendlyBlkSz = BlockSizeHelper::GetNextFFTFriendlyBlkSz(v63);
LABEL_264:
        v118 = NextFFTFriendlyBlkSz;
        goto LABEL_265;
      }

      *v196.i64 = v192 * 0.02;
      v197 = vcvtpd_u64_f64(v192 * 0.008);
      v198 = vcvtmd_u64_f64(v192 * 0.02);
      v199 = *v69.i32 < v197 || *v69.i32 > v198;
      v221 = *v69.i32;
      if (v199)
      {
        *v66.i64 = v192 * 0.01;
        v200 = vcvtpd_u64_f64(*v66.i64);
        v201 = -1;
        v202 = 0.0;
        for (i = 2; i != 8; ++i)
        {
          if (*v69.i32 < v197)
          {
            *v196.i32 = *v69.i32 * i;
          }

          else
          {
            *v196.i32 = *v69.i32 / i;
          }

          if (*v196.i32 < v197 || ((*v66.i32 = *v196.i32 - truncf(*v196.i32), v204.i64[0] = 0x8000000080000000, v204.i64[1] = 0x8000000080000000, v66 = vbslq_s8(v204, v66, v196), *v66.i32 == 0.0) ? (v205 = *v196.i32 > v198) : (v205 = 1), v205))
          {
            v206 = v202;
          }

          else
          {
            v224 = *v196.i32;
            v63 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(*v196.i32);
            v206 = v224;
            if (v224 == v63)
            {
              v207 = vabds_f32(v224, v200);
              v199 = v201 > v207;
              v201 = v207;
              *v69.i32 = v221;
              if (!v199)
              {
                break;
              }
            }

            else
            {
              v206 = v202;
              *v69.i32 = v221;
            }
          }

          v202 = v206;
        }

        if (v202 == 0.0)
        {
          goto LABEL_263;
        }

        v118 = v202;
      }

      else
      {
        v118 = *v69.i32;
        v63 = BlockSizeHelper::GetNextFFTFriendlyBlkSz(*v69.i32);
        if (v221 != v63)
        {
          goto LABEL_263;
        }
      }
    }

LABEL_265:
    *(v1 + 129) = v118;
    *(v1 + 133) = v118;
    if (*(v1 + 250))
    {
      *(v1 + 133) = vcvtpd_u64_f64(*(v1 + 124) * v118 / *(v1 + 114));
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v122 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v123 = (*v122 ? *v122 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        v124 = *(v1 + 125);
        v125 = *(v1 + 126);
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 591;
        *&buf[18] = 2048;
        *&buf[20] = v124;
        *&buf[28] = 2048;
        *&buf[30] = v125;
        _os_log_impl(&dword_2724B4000, v123, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcblkzsizes: mHwRefBlkSz = %lu, mHwMicBlkSz = %lu", buf, 0x26u);
      }
    }

    v126 = *(v1 + 1588);
    if (v126 && ((v226[572] & 1) != 0 || v226[573] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v126, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 591, "CalcBlkSzs", "calcblkzsizes: mHwRefBlkSz = %lu, mHwMicBlkSz = %lu", *(v1 + 125), *(v1 + 126));
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v127 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v128 = (*v127 ? *v127 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v129 = *(v1 + 127);
        v130 = *(v1 + 128);
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 593;
        *&buf[18] = 2048;
        *&buf[20] = v129;
        *&buf[28] = 2048;
        *&buf[30] = v130;
        _os_log_impl(&dword_2724B4000, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcblkzsizes: mDsRefBlkSz = %lu, mDsMicBlkSz = %lu", buf, 0x26u);
      }
    }

    v131 = *(v1 + 1588);
    if (v131 && ((v226[572] & 1) != 0 || v226[573] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v131, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 593, "CalcBlkSzs", "calcblkzsizes: mDsRefBlkSz = %lu, mDsMicBlkSz = %lu", *(v1 + 127), *(v1 + 128));
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v132 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v133 = (*v132 ? *v132 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = *(v1 + 129);
        v135 = *(v1 + 133);
        *buf = 136315906;
        *&buf[4] = "vpInitializeUplink.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 595;
        *&buf[18] = 2048;
        *&buf[20] = v134;
        *&buf[28] = 2048;
        *&buf[30] = v135;
        _os_log_impl(&dword_2724B4000, v133, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> calcblkzsizes: mEpIoBlkSz  = %lu, mUsOutBlkSz = %lu", buf, 0x26u);
      }
    }

    v136 = *(v1 + 1588);
    if (v136 && ((v226[572] & 1) != 0 || v226[573] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v136, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 595, "CalcBlkSzs", "calcblkzsizes: mEpIoBlkSz  = %lu, mUsOutBlkSz = %lu", *(v1 + 129), *(v1 + 133));
    }

    if (*(v1 + 250) == 1819304813)
    {
      v137 = *(v1 + 255);
      if (v137 >= 2)
      {
        *(v1 + 252) /= v137;
        *(v1 + 254) /= v137;
        *(v1 + 255) = 1;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v138 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v139 = (*v138 ? *v138 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          CAFormatter::CAFormatter(__src, v214);
          *buf = 136315650;
          *&buf[4] = "vpInitializeUplink.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1059;
          *&buf[18] = 2080;
          *&buf[20] = __src[0];
          _os_log_impl(&dword_2724B4000, v139, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initialize: mOutASBD computed = %s", buf, 0x1Cu);
          if (__src[0])
          {
            free(__src[0]);
          }
        }
      }

      v140 = *(v1 + 1588);
      if (v140 && ((v226[572] & 1) != 0 || v226[573] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v141 = VPLogScope(void)::scope;
        CAFormatter::CAFormatter(buf, v214);
        CALegacyLog::log(v140, 5, v141, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 1059, "Initialize", "initialize: mOutASBD computed = %s", *buf);
        if (*buf)
        {
          free(*buf);
        }
      }
    }

    myAllocABLDynamic(v215, *(v1 + 125), v1 + 129);
    myAllocABLDynamic((v1 + 752), *(v1 + 126), v1 + 130);
    myAllocABLDynamic(v215, *(v1 + 125), v1 + 131);
    myAllocABLDynamic((v1 + 752), *(v1 + 126), v1 + 132);
    myAllocABLDynamic(v33, *(v1 + 127), v1 + 133);
    myAllocABLDynamic(v219, *(v1 + 128), v1 + 134);
    myAllocABLDynamic(v33, *(v1 + 129), v1 + 135);
    myAllocABLDynamic(v219, *(v1 + 129), v1 + 136);
    myAllocABLDynamic(v222, *(v1 + 129), v1 + 137);
    myAllocABLDynamic(v216, *(v1 + 133), v1 + 138);
    if (*(v1 + 2260) == 1 && *(v1 + 19) == 19)
    {
      myAllocABLDynamic(v33, *(v1 + 420), v1 + 208);
      v142 = *(v1 + 208);
      if (*v142)
      {
        v143 = 0;
        v144 = (v142 + 4);
        do
        {
          bzero(*v144, *(v144 - 1));
          ++v143;
          v144 += 2;
        }

        while (v143 < *v142);
      }

      v145 = *(v1 + 420);
      v146 = malloc_type_malloc(4 * v145, 0x2365AC71uLL);
      v147 = v146;
      if (v145 && !v146)
      {
        exception = __cxa_allocate_exception(8uLL);
        v211 = std::bad_alloc::bad_alloc(exception);
      }

      bzero(v146, 4 * v145);
      *(v1 + 209) = v147;
    }

    v148 = *(v1 + 177);
    if (v148)
    {
      free(v148);
      *(v1 + 177) = 0;
    }

    v149 = **(v1 + 132);
    v150 = malloc_type_malloc(v149, 0x72B6561FuLL);
    if (v149)
    {
      v151 = v150 == 0;
    }

    else
    {
      v151 = 0;
    }

    if (!v151)
    {
      *(v1 + 177) = v150;
      myAllocABLDynamic(v219, *(v1 + 129), v1 + 178);
      myAllocABLDynamic((v1 + 752), *(v1 + 126), v1 + 179);
      myAllocABLDynamic(v219, *(v1 + 128), v1 + 180);
      v152 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 139, v152);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 139), *(v1 + 214) * *(v1 + 129));
      v153 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 140, v153);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 140), *(v1 + 214) * *(v1 + 129));
      v154 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 141, v154);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 141), *(v1 + 214) * *(v1 + 129));
      v155 = CADeprecated::CABufferList::New(41, 1u);
      CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(v1 + 142, v155);
      CADeprecated::CABufferList::AllocateBuffers(*(v1 + 142), *(v1 + 214) * *(v1 + 129));
      if (*(v1 + 250) == 1819304813)
      {
        *(v1 + 135) = *(v1 + 133);
        CAAudioChannelLayout::operator=(v1 + 289, 0);
        LODWORD(v156) = *(v1 + 128);
        LODWORD(v157) = *(v1 + 129);
        *(v1 + 422) = *(v1 + 133) * vcvtpd_u64_f64(v156 / v157);
        *(v1 + 423) = *(v1 + 252);
      }

      myAllocABLDynamic(v215, *(v1 + 125), v1 + 152);
      if ((v226[852] & 1) == 0)
      {
        *(v1 + 290) = 0;
        v158 = v213 + 340;
        *(v213 + 86) = 0;
        *(v213 + 85) = 0;
        v159 = *(v1 + 287);
        strcpy(buf, "tfastpni");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(__src[0]) = 4;
        PropertyData = AudioObjectGetPropertyData(v159, buf, 0, 0, __src, v213 + 340);
        if (PropertyData)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v161 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v162 = (*v161 ? *v161 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1629;
              *&buf[18] = 1024;
              *&buf[20] = PropertyData;
              _os_log_impl(&dword_2724B4000, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting input safety offset", buf, 0x18u);
            }
          }

          v163 = *(v1 + 1588);
          if (v163 && ((v226[572] & 1) != 0 || v226[573] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v163, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1629, "GetHardwareSafetyOffsets", "error %d getting input safety offset", PropertyData);
          }
        }

        v164 = (v1 + 1184);
        v165 = *(v1 + 286);
        strcpy(buf, "tfasptuo");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(__src[0]) = 4;
        v166 = AudioObjectGetPropertyData(v165, buf, 0, 0, __src, v1 + 1184);
        if (v166)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v167 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v168 = (*v167 ? *v167 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1636;
              *&buf[18] = 1024;
              *&buf[20] = v166;
              _os_log_impl(&dword_2724B4000, v168, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting output safety offset", buf, 0x18u);
            }
          }

          v169 = *(v1 + 1588);
          if (v169 && ((v226[572] & 1) != 0 || v226[573] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v169, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1636, "GetHardwareSafetyOffsets", "error %d getting output safety offset", v166);
          }
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v170 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v171 = (*v170 ? *v170 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
          {
            v172 = *v158;
            *buf = 136315650;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1639;
            *&buf[18] = 1024;
            *&buf[20] = v172;
            _os_log_impl(&dword_2724B4000, v171, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Input safety offset of the aggregate device is %u", buf, 0x18u);
          }
        }

        v173 = *(v1 + 1588);
        if (v173 && ((v226[572] & 1) != 0 || v226[573] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v173, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1639, "GetHardwareSafetyOffsets", "Input safety offset of the aggregate device is %u", *v158);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v174 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v175 = (*v174 ? *v174 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            v176 = *v164;
            *buf = 136315650;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1641;
            *&buf[18] = 1024;
            *&buf[20] = v176;
            _os_log_impl(&dword_2724B4000, v175, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Output safety offset of the aggregate device is %u", buf, 0x18u);
          }
        }

        v177 = *(v1 + 1588);
        if (v177 && ((v226[572] & 1) != 0 || v226[573] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v177, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1641, "GetHardwareSafetyOffsets", "Output safety offset of the aggregate device is %u", *v164);
        }

        (*(*v1 + 264))(v1);
      }

      *(v1 + 484) = 1;
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 420);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 421);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 423);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 422);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 424);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 425);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 426);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 427);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 428);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 429);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 438);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 2055);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 430);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 431);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 432);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 433);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 435);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 437);
      myAllocABLDynamic(v219, 2 * *(v1 + 129), v1 + 436);
      myAllocABLDynamic(v219, 2 * *(v1 + 129), v1 + 434);
      v178 = *(v1 + 129);
      v179 = *(v1 + 104);
      v180 = ((v178 * 1000.0) / v179);
      *(v1 + 539) = vshl_u32(vdup_n_s32(v178), 0x300000002);
      if (v178 <= v180)
      {
        v180 = 1;
      }

      *(v1 + 1080) = v180;
      myAllocABLDynamic(v219, 2 * v178, v1 + 541);
      v181 = *(v1 + 541);
      v182 = *(v181 + 16);
      v183 = *(v1 + 129);
      if (v183)
      {
        memset_pattern16(*(v181 + 16), &unk_2727568A0, 4 * v183);
        bzero(&v182[4 * (v183 - 1) + 4], 4 * v183);
      }

      if (*(v1 + 105) >= 2u)
      {
        memcpy(*(v181 + 32), v182, 8 * v183);
        LODWORD(v183) = *(v1 + 129);
      }

      myAllocABLDynamic(v222, v183, v1 + 503);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 504);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 505);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 506);
      myAllocABLDynamic(v222, *(v1 + 129), v1 + 507);
      __A = 1.0;
      vDSP_vfill(&__A, *(*(v1 + 503) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 504) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 505) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 506) + 16), 1, *(v1 + 129));
      vDSP_vfill(&__A, *(*(v1 + 507) + 16), 1, *(v1 + 129));
      myAllocABLDynamic(v219, 2 * *(v1 + 129), v1 + 508);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 509);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 510);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 514);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 515);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 511);
      myAllocABLDynamic(v222, 2 * *(v1 + 129), v1 + 513);
      v184 = *(v1 + 516);
      if (v184)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v184);
        MEMORY[0x2743CBFA0]();
      }

      v185 = *(v1 + 517);
      if (v185)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v185);
        MEMORY[0x2743CBFA0]();
      }

      v186 = *(v1 + 518);
      if (v186)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v186);
        MEMORY[0x2743CBFA0]();
      }

      v187 = *(v1 + 519);
      if (v187)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v187);
        MEMORY[0x2743CBFA0]();
      }

      v188 = *(v1 + 520);
      if (v188)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v188);
        MEMORY[0x2743CBFA0]();
      }

      v189 = *(v1 + 521);
      if (v189)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v189);
        MEMORY[0x2743CBFA0]();
      }

      v190 = *(v1 + 522);
      if (v190)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v190);
        MEMORY[0x2743CBFA0]();
      }

      v191 = *(v1 + 523);
      if (v191)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v191);
        MEMORY[0x2743CBFA0]();
      }

      VPTimeFreqConverter_Create(2, *(v1 + 129), v1 + 516);
    }

    v208 = __cxa_allocate_exception(8uLL);
    v209 = std::bad_alloc::bad_alloc(v208);
  }

  __src[0] = 0;
  __src[1] = 0;
  *&v228 = 0;
  if (!*(v1 + 205))
  {
LABEL_178:
    std::optional<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>>::operator=[abi:ne200100]<std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>,void>(v62, __src);
    *buf = __src;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_179;
  }

  v70 = 0;
  while (1)
  {
    VoiceProcessorV2::CreateSRC(&v233, *(v1 + 74), *(v1 + 99), v1, 1, v64, v65);
    v71 = v233;
    if (!v233)
    {
      break;
    }

    v72 = __src[1];
    if (__src[1] >= v228)
    {
      v74 = __src[0];
      v75 = __src[1] - __src[0];
      v76 = (__src[1] - __src[0]) >> 3;
      v77 = v76 + 1;
      if ((v76 + 1) >> 61)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v78 = v228 - __src[0];
      if ((v228 - __src[0]) >> 2 > v77)
      {
        v77 = v78 >> 2;
      }

      if (v78 >= 0x7FFFFFFFFFFFFFF8)
      {
        v79 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = v77;
      }

      *&buf[32] = __src;
      if (v79)
      {
        std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](v79);
      }

      v233 = 0;
      *(8 * v76) = v71;
      v73 = (8 * v76 + 8);
      memcpy(0, v74, v75);
      v80 = __src[0];
      v81 = v228;
      __src[0] = 0;
      __src[1] = v73;
      *&v228 = 0;
      *&buf[16] = v80;
      *&buf[24] = v81;
      *buf = v80;
      *&buf[8] = v80;
      std::__split_buffer<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::~__split_buffer(buf);
      v1 = *v225;
    }

    else
    {
      v233 = 0;
      *__src[1] = v71;
      v73 = v72 + 8;
    }

    __src[1] = v73;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&v233, 0);
    if (++v70 >= *(v1 + 205))
    {
      goto LABEL_178;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "vpInitializeUplink.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 742;
    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ERROR: can't create ref src", buf, 0x12u);
  }

  v218 = 1651532146;
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](&v233, 0);
  *buf = __src;
  std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_229:
  if (*(v1 + 1960) == 1)
  {
    *buf = v62;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1960) = 0;
  }

  if (*(v1 + 1992) == 1)
  {
    *buf = v223;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1992) = 0;
  }

  if (*(v1 + 1400) == 1)
  {
    *buf = v220;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(v1 + 1400) = 0;
  }

  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](v217, 0);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v113 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v114 = (*v113 ? *v113 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "vpInitializeUplink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1045;
      _os_log_impl(&dword_2724B4000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> initialize: error initializing sample rate converters", buf, 0x12u);
    }
  }

  v115 = *(v1 + 1588);
  if (v115 && ((v226[572] & 1) != 0 || v226[573] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v115, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 1045, "Initialize", "initialize: error initializing sample rate converters");
  }

  return v218;
}

void sub_2725430B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *CADeprecated::CABufferList::New(char a1, unsigned int a2)
{
  if ((a1 & 0x20) != 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 & 0x20) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  result = operator new(16 * v2 + 32);
  *result = "";
  result[1] = 0;
  *(result + 4) = 0;
  *(result + 6) = v2;
  if (v2)
  {
    v5 = result + 4;
    do
    {
      *v5 = v3;
      *(v5 + 1) = 0;
      v5[1] = 0;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

void VoiceProcessorV2::Initialize(void)::$_1::operator()(CFStringRef *a1, uint64_t a2, const __CFString *a3)
{
  if (a3)
  {
    applesauce::CF::convert_to<std::string,0>(&v30, a3);
    v27 = 0;
    v28 = 0;
    value = 0;
    if (*(a2 + 2260) == 1)
    {
      v31.__end_cap_.__value_ = &v27;
      std::allocator<std::string>::allocate_at_least[abi:ne200100](1uLL);
    }

    if (*(a2 + 2261) == 1 && VoiceProcessorV2::GetFarEndVoiceMixChannelCount(a2) > 1 || !*(a2 + 80) && *(a2 + 244) == 2)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
      if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v7 = 0x5555555555555556 * ((value - v27) >> 3);
      if (v7 <= v6 + 1)
      {
        v7 = v6 + 1;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((value - v27) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      v31.__end_cap_.__value_ = &v27;
      if (v8)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v8);
      }

      v31.__first_ = 0;
      v31.__begin_ = (8 * ((v28 - v27) >> 3));
      v31.__end_ = v31.__begin_;
      v31.__end_cap_.__value_ = 0;
      std::string::basic_string[abi:ne200100]<0>(v31.__begin_->__r_.__value_.__r.__words, "spatial");
      v5 = v31.__end_ + 1;
      v9 = (v31.__begin_ - (v28 - v27));
      memcpy(v9, v27, v28 - v27);
      v10 = v27;
      v11 = value;
      v27 = v9;
      v28 = v5;
      value = v31.__end_cap_.__value_;
      v31.__end_ = v10;
      v31.__end_cap_.__value_ = v11;
      v31.__first_ = v10;
      v31.__begin_ = v10;
      std::__split_buffer<std::string>::~__split_buffer(&v31);
      v28 = v5;
    }

    else
    {
      v5 = v28;
    }

    if (v27 != v5)
    {
      std::string::append(&v30, " (", 2uLL);
      v12 = v27;
      v13 = v28;
      if (v27 != v28)
      {
        do
        {
          if ((v12->__words[2] & 0x8000000000000000) == 0)
          {
            v14 = HIBYTE(v12->__words[2]);
          }

          else
          {
            v14 = v12->__words[1];
          }

          std::string::basic_string[abi:ne200100](&v31, v14 + 2);
          if (SHIBYTE(v31.__end_) >= 0)
          {
            first = &v31;
          }

          else
          {
            first = v31.__first_;
          }

          if (v14)
          {
            if ((v12->__words[2] & 0x8000000000000000) == 0)
            {
              v16 = v12;
            }

            else
            {
              v16 = v12->__words[0];
            }

            memmove(first, v16, v14);
          }

          strcpy(first + v14, ", ");
          if (SHIBYTE(v31.__end_) >= 0)
          {
            v17 = &v31;
          }

          else
          {
            v17 = v31.__first_;
          }

          if (SHIBYTE(v31.__end_) >= 0)
          {
            end_high = HIBYTE(v31.__end_);
          }

          else
          {
            end_high = v31.__begin_;
          }

          std::string::append(&v30, v17, end_high);
          if (SHIBYTE(v31.__end_) < 0)
          {
            operator delete(v31.__first_);
          }

          ++v12;
        }

        while (v12 != v13);
      }

      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v20 = v30.__r_.__value_.__r.__words[0];
        v19 = --v30.__r_.__value_.__l.__size_;
      }

      else
      {
        v19 = SHIBYTE(v30.__r_.__value_.__r.__words[2]) - 1;
        *(&v30.__r_.__value_.__s + 23) = v19 & 0x7F;
        v20 = &v30;
      }

      v20->__r_.__value_.__s.__data_[v19] = 0;
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v22 = v30.__r_.__value_.__r.__words[0];
        v21 = --v30.__r_.__value_.__l.__size_;
      }

      else
      {
        v21 = SHIBYTE(v30.__r_.__value_.__r.__words[2]) - 1;
        *(&v30.__r_.__value_.__s + 23) = v21 & 0x7F;
        v22 = &v30;
      }

      v22->__r_.__value_.__s.__data_[v21] = 0;
      std::string::append(&v30, ")", 1uLL);
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v30;
    }

    else
    {
      v23 = v30.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v25 = CFStringCreateWithBytes(0, v23, size, 0x8000100u, 0);
      *a1 = v25;
      if (!v25)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      *a1 = 0;
    }

    v31.__first_ = &v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_2725436CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, uint64_t a10, std::__split_buffer<std::string> *a11, void *__pa, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18, uint64_t a19)
{
  std::__split_buffer<std::string>::~__split_buffer(&a19);
  a18 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (a17 < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke_2665()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    v1 = v0;
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_2696()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::Initialize(void)::$_0 &&>>(uint64_t ***a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = ***a1;
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  if (v2 == 1 && v3 == 1)
  {
    v6 = CFStringCreateWithBytes(0, "com.apple.mobilephone", 21, 0x8000100u, 0);
    *buf = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else if (v2)
  {
    if (v2 == 4 || v2 == 2)
    {
      v6 = CFStringCreateWithBytes(0, "com.apple.facetime", 18, 0x8000100u, 0);
      *buf = v6;
      if (!v6)
      {
        v7 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v7, "Could not construct");
      }
    }

    else if ((v2 - 5) > 1)
    {
      v6 = 0;
    }

    else if (v3 == 1)
    {
      v6 = CFStringCreateWithBytes(0, "com.apple.mobilephone", 21, 0x8000100u, 0);
      *buf = v6;
      if (!v6)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v32, "Could not construct");
      }
    }

    else
    {
      v6 = CFStringCreateWithBytes(0, "com.apple.facetime", 18, 0x8000100u, 0);
      *buf = v6;
      if (!v6)
      {
        v33 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v33, "Could not construct");
      }
    }
  }

  else
  {
    v6 = *(v1 + 2192);
    if (v6)
    {
      CFRetain(*(v1 + 2192));
    }
  }

  v8 = *(v1 + 16552);
  *(v1 + 16552) = v6;
  if (v8)
  {
    CFRelease(v8);
    v6 = *(v1 + 16552);
  }

  if (v6)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v9 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        applesauce::CF::convert_to<std::string,0>(__p, *(v1 + 16552));
        v11 = v36 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "vpInitializeUplink.cpp";
        v38 = 1024;
        v39 = 978;
        v40 = 2080;
        v41 = v11;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> The bundleID for AVFoundationSPI is %s", buf, 0x1Cu);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v12 = (v1 + 15881);
    v13 = *(v1 + 12704);
    if (v13 && ((*v12 & 1) != 0 || *(v1 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = VPLogScope(void)::scope;
      applesauce::CF::convert_to<std::string,0>(buf, *(v1 + 16552));
      if (SBYTE3(v41) >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      CALegacyLog::log(v13, 3, v14, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 978, "operator()", "The bundleID for AVFoundationSPI is %s", v15);
      if (SBYTE3(v41) < 0)
      {
        operator delete(*buf);
      }
    }

    if (*(v1 + 16552))
    {
      AVAUVoiceIOInitializeListenersForBundleID();
    }

    else
      v17 = {;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "AUVoiceIO can't initialize listener for null bundleID", buf, 2u);
      }
    }

    v18 = (v1 + 16536);
    *(v1 + 16536) = vp::GetRequestedChatFlavorForBundleID(*(v1 + 16552), v16);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v20 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *v18;
        *buf = 136315650;
        *&buf[4] = "vpInitializeUplink.cpp";
        v38 = 1024;
        v39 = 984;
        v40 = 1024;
        LODWORD(v41) = v22;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> At VP's first time init, the chat flavor is selected as %d", buf, 0x18u);
      }
    }

    v23 = *(v1 + 12704);
    if (v23 && ((*v12 & 1) != 0 || *(v1 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v23, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 984, "operator()", "At VP's first time init, the chat flavor is selected as %d", *v18);
    }

    if (*v12 == 1)
    {
      VoiceProcessorV2::PListWriteSetPropertyParameters(v1, 1718384242);
    }

    *(v1 + 2288) = vp::IsAutomaticChatFlavorEnabledForBundleID((v1 + 16552), v19);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v24 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v1 + 2288);
        *buf = 136315650;
        *&buf[4] = "vpInitializeUplink.cpp";
        v38 = 1024;
        v39 = 990;
        v40 = 1024;
        LODWORD(v41) = v26;
        _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> At VP's first time init, automatic chat flavor enabled is selected as %d", buf, 0x18u);
      }
    }

    v27 = *(v1 + 12704);
    v28 = *v12;
    if (v27)
    {
      if ((*v12 & 1) == 0 && *(v1 + 15882) != 1)
      {
LABEL_79:
        if (*v18)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v29 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
          {
            v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "vpInitializeUplink.cpp";
              v38 = 1024;
              v39 = 994;
              _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Forcing bypass to false due to chat flavor", buf, 0x12u);
            }
          }

          v31 = *(v1 + 12704);
          if (v31 && ((*v12 & 1) != 0 || *(v1 + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v31, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 994, "operator()", "Forcing bypass to false due to chat flavor");
          }

          *(v1 + 480) = 0;
        }

        (*(*v1 + 608))(v1);
        (*(*v1 + 616))(v1);
        return;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v27, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeUplink.cpp", 990, "operator()", "At VP's first time init, automatic chat flavor enabled is selected as %d", *(v1 + 2288));
      v28 = *v12;
    }

    if (v28)
    {
      VoiceProcessorV2::PListWriteSetPropertyParameters(v1, 1635085677);
    }

    goto LABEL_79;
  }
}

void sub_272544528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___Z10VPLogScopev_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6, unsigned int a7)
{
  result = CALegacyLog::RegisterScope(0x7670626C, "vp", "vp_console_msgs", a4, a5, a6);
  VPLogScope(void)::scope = result;
  return result;
}

uint64_t ___Z19VPTimestampLogScopev_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6, unsigned int a7)
{
  result = CALegacyLog::RegisterScope(0x76707473, "vpts", "vp_save_timestamps", a4, a5, a6);
  VPTimestampLogScope(void)::scope = result;
  return result;
}

uint64_t LookUpTreeIsValid(NSArray *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v21 = v1;
    v3 = [(NSArray *)v1 count];
    v20 = [(NSArray *)v2 objectAtIndexedSubscript:0];
    v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];
    if (v20)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    v24 = 0u;
    v25 = 0u;
    v7 = !v5 && v3 == 3;
    v22 = 0uLL;
    v23 = 0uLL;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i) != 0;
          v13 = [v8 objectForKey:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LOBYTE(v14) = v13 != 0;
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v14 = isKindOfClass & LookUpTreeIsValid(v13);
          }

          v7 &= v12 & v14;
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v16 = [(NSArray *)v21 objectAtIndexedSubscript:2];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();
    if (v17 & 1 | ((v7 & 1) == 0))
    {
      IsValid = v17 & v7;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        IsValid = LookUpTreeIsValid(v16);
      }

      else
      {
        IsValid = 0;
      }
    }

    v2 = v21;
  }

  else
  {
    IsValid = 0;
  }

  return IsValid & 1;
}

NSArray *LookUpTreeGet(NSDictionary *a1, NSArray *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (([(NSArray *)v4 isEqual:0]& 1) != 0 || [(NSArray *)v4 count]!= 3)
  {
    v14 = 0;
  }

  else
  {
    v5 = [(NSArray *)v4 objectAtIndexedSubscript:0];
    v17 = [(NSArray *)v4 objectAtIndexedSubscript:1];
    v18 = [(NSArray *)v4 objectAtIndexedSubscript:2];
    v6 = [(NSDictionary *)v3 objectForKey:v5];

    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v17;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = [(NSDictionary *)v3 objectForKey:v5];
            v13 = [v12 isEqualToString:v11];

            if (v13)
            {
              v14 = [v7 objectForKey:v11];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v15 = LookUpTreeGet(v3, v14);

                v14 = v15;
              }

              goto LABEL_20;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v18;
    }

    else
    {
      v14 = LookUpTreeGet(v3, v18);
LABEL_20:
    }
  }

  return v14;
}

void sub_272544F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 1174405120;
  v3 = ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke_2;
  v4 = &__block_descriptor_tmp_2753;
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3(v2);
  }

  else
  {
    ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke_2(v2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_27254505C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::exception a16, __int128 buf, __int128 a18)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a16.__vftable = (MEMORY[0x277D82920] + 16);
    __cxa_begin_catch(a1);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v19 = *VPLogScope(void)::scope;
      if (!*VPLogScope(void)::scope)
      {
LABEL_16:
        std::exception::~exception(&a16);
        __cxa_end_catch();
        goto LABEL_22;
      }
    }

    else
    {
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = std::exception::what(&a16);
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "vpNotificationHandler.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 24;
      WORD1(a18) = 2080;
      *(&a18 + 4) = v21;
      _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard library exception caught: %s", &buf, 0x1Cu);
    }

    goto LABEL_16;
  }

  __cxa_begin_catch(a1);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  if (VPLogScope(void)::scope)
  {
    v20 = *VPLogScope(void)::scope;
    if (!*VPLogScope(void)::scope)
    {
LABEL_20:
      __cxa_end_catch();
LABEL_22:
      JUMPOUT(0x272545024);
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315394;
    *(&buf + 4) = "vpNotificationHandler.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 26;
    _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exceptiton caught", &buf, 0x12u);
  }

  goto LABEL_20;
}

void __destroy_helper_block_e8_32c62_ZTSNSt3__18weak_ptrIN14VoiceProcessor19NotificationHandlerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c62_ZTSNSt3__18weak_ptrIN14VoiceProcessor19NotificationHandlerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14VoiceProcessor19NotificationHandler10initializeEv_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    std::mutex::lock((v5 + 88));
    if (*(v5 + 80) != 1)
    {
LABEL_18:
      std::mutex::unlock((v5 + 88));
      goto LABEL_19;
    }

    state64 = 0;
    if (!notify_get_state(*(v5 + 16), &state64))
    {
      v7 = state64 & 0xFFFFFFFFFFFFFF00;
      v8 = state64;
      v9 = 1;
LABEL_17:
      std::function<void ()(std::optional<unsigned long long>)>::operator()(*(v5 + 72), v8 | v7, v9);
      goto LABEL_18;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v6 = *VPLogScope(void)::scope;
      if (!*VPLogScope(void)::scope)
      {
LABEL_16:
        v7 = 0;
        v9 = 0;
        v8 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "vpNotificationHandler.cpp";
      v13 = 1024;
      v14 = 82;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d notify_get_state() failed", buf, 0x12u);
    }

    goto LABEL_16;
  }

LABEL_19:

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_272545414(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 88));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

VoiceProcessor::NotificationHandler **std::unique_ptr<VoiceProcessor::NotificationHandler>::~unique_ptr[abi:ne200100](VoiceProcessor::NotificationHandler **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VoiceProcessor::NotificationHandler::~NotificationHandler(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void VoiceProcessor::NotificationHandler::~NotificationHandler(VoiceProcessor::NotificationHandler *this)
{
  v8 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 88));
  *(this + 80) = 0;
  std::mutex::unlock((this + 88));
  if (notify_cancel(*(this + 4)))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (VPLogScope(void)::scope)
    {
      v2 = *VPLogScope(void)::scope;
      if (!*VPLogScope(void)::scope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "vpNotificationHandler.cpp";
      v6 = 1024;
      v7 = 49;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d notify_cancel() failed", &v4, 0x12u);
    }
  }

LABEL_10:
  std::mutex::~mutex((this + 88));
  std::__function::__value_func<void ()(std::optional<unsigned long long>)>::~__value_func[abi:ne200100](this + 48);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_2725455C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

VoiceProcessor::NotificationHandler *std::__shared_ptr_pointer<VoiceProcessor::NotificationHandler *,std::shared_ptr<VoiceProcessor::NotificationHandler>::__shared_ptr_default_delete<VoiceProcessor::NotificationHandler,VoiceProcessor::NotificationHandler>,std::allocator<VoiceProcessor::NotificationHandler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    VoiceProcessor::NotificationHandler::~NotificationHandler(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<VoiceProcessor::NotificationHandler *,std::shared_ptr<VoiceProcessor::NotificationHandler>::__shared_ptr_default_delete<VoiceProcessor::NotificationHandler,VoiceProcessor::NotificationHandler>,std::allocator<VoiceProcessor::NotificationHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

NSString *removePortUIDSuffix(NSString *a1)
{
  v1 = a1;
  v2 = [(NSString *)v1 componentsSeparatedByString:@"-"];
  if ([v2 count] == 2)
  {
    v3 = [v2 objectAtIndexedSubscript:0];

    v1 = v3;
  }

  return v1;
}

unint64_t va::PersonalAudioInterface::isPersonalMediaEnabled(va::PersonalAudioInterface *this)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v1 = [MEMORY[0x277D3A1D0] sharedInstance];
  if ([v1 personalMediaEnabled])
  {
    v2 = [MEMORY[0x277D3A1D0] sharedInstance];
    v3 = ([v2 personalAudioAccommodationTypes] >> 1) & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t va::PersonalAudioInterface::isPersonalMediaEnabled(NSString **a1)
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = removePortUIDSuffix(*a1);
  v3 = [MEMORY[0x277D3A1D0] sharedInstance];
  if ([v3 personalMediaEnabledForRouteUID:v2])
  {
    v4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v5 = ([v4 accommodationTypesForRouteUID:v2] >> 1) & 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void va::PersonalAudioInterface::getPreset(va::PersonalAudioInterface *this)
{
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x277D3A1D0] sharedInstance];
    v3 = [v2 personalMediaConfiguration];
    v4 = [v3 presetAdjustments];
    v5 = [v4 objectForKey:*MEMORY[0x277D3A1E8]];

    applesauce::CF::DictionaryRef::from_ns_noexcept(this, v5);
  }

  else
  {
    *this = 0;
  }
}

void va::PersonalAudioInterface::getPreset(applesauce::CF::DictionaryRef *a1, NSString **a2)
{
  if (objc_opt_class())
  {
    v7 = removePortUIDSuffix(*a2);
    v4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v5 = [v4 personalMediaConfigurationForRouteUID:v7];
    v6 = [v5 preset];

    applesauce::CF::DictionaryRef::from_ns_noexcept(a1, v6);
  }

  else
  {
    *a1 = 0;
  }
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void PowerLogManager::FlushPowerLogEntries(PowerLogManager *this)
{
  valuePtr = 0;
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 == v3)
  {
    v5 = 0;
    v4 = 0;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      LODWORD(theDict) = 0;
      if (CACFDictionary::GetFloat32(*v2, @"Avg Watts Measured", &theDict))
      {
        v7 = *&theDict + v7;
        *(&valuePtr + 1) = v7;
        v4 = 1;
      }

      v17 = 0.0;
      if (CACFDictionary::GetFloat32(*v2, @"Avg Watts Modelled", &v17))
      {
        v6 = v17 + v6;
        *&valuePtr = v6;
        v5 = 1;
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = 257;
  if (v4)
  {
    *(&valuePtr + 1) = v7 / 12.0;
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr + 4);
    if (HIBYTE(v16) == 1 && v9 && theDict != 0)
    {
      CFDictionarySetValue(theDict, @"Avg Watts Measured", v9);
    }

    CFRelease(v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v5)
  {
    v8 = *MEMORY[0x277CBECE8];
LABEL_21:
    *&valuePtr = v6 / 12.0;
    v11 = CFNumberCreate(v8, kCFNumberFloatType, &valuePtr);
    if (HIBYTE(v16) == 1)
    {
      if (v11)
      {
        v12 = theDict == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        CFDictionarySetValue(theDict, @"Avg Watts Modelled", v11);
      }
    }

    CFRelease(v11);
LABEL_28:
    PLLogRegisteredEvent();
  }

  v14 = *(this + 3);
    ;
  }

  *(this + 4) = v14;
  CACFDictionary::~CACFDictionary(&theDict);
}

uint64_t std::__split_buffer<CACFDictionary>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    CACFDictionary::~CACFDictionary((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void PowerLogManager::DispatchOneTime(PowerLogManager *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  *(this + 72) = *(this + 6) == 0;
  v6 = dispatch_time(0, 5000000000);
  v7 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN15PowerLogManager15DispatchOneTimeEv_block_invoke;
  block[3] = &__block_descriptor_tmp_2793;
  block[4] = this;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  dispatch_after(v6, v7, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void ___ZN15PowerLogManager15DispatchOneTimeEv_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 48);
  if (!v4)
  {
    goto LABEL_66;
  }

  v5 = *(v2 + 64);
  *outValue = 0;
  if (v5 == 1936748595)
  {
    Parameter = AudioUnitGetParameter(*v4, 0x10u, 0, 0, &outValue[1]);
    if (!Parameter)
    {
      v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &outValue[1]);
      goto LABEL_40;
    }

    if (PowerLogManagerLogScope(void)::once != -1)
    {
      dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
    }

    if (PowerLogManagerLogScope(void)::scope)
    {
      v7 = *PowerLogManagerLogScope(void)::scope;
      if (!*PowerLogManagerLogScope(void)::scope)
      {
LABEL_39:
        v8 = 0;
LABEL_40:
        v21 = AudioUnitGetParameter(**(v2 + 48), 0xFu, 0, 0, outValue);
        if (!v21)
        {
          v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, outValue);
          goto LABEL_11;
        }

        if (PowerLogManagerLogScope(void)::once != -1)
        {
          dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
        }

        if (PowerLogManagerLogScope(void)::scope)
        {
          v22 = *PowerLogManagerLogScope(void)::scope;
          if (!*PowerLogManagerLogScope(void)::scope)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v22 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "vpPowerLogManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 224;
          *&buf[18] = 1024;
          *&buf[20] = v21;
          _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get modelled power: %d", buf, 0x18u);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "vpPowerLogManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      *&buf[18] = 1024;
      *&buf[20] = Parameter;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get measured power: %d", buf, 0x18u);
    }

    goto LABEL_39;
  }

  v8 = 0;
LABEL_10:
  v9 = 0;
LABEL_11:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theDict = Mutable;
  v42 = 257;
  if (v8)
  {
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Avg Watts Measured", v8);
    }

    CFRelease(v8);
  }

  if (v9)
  {
    if (HIBYTE(v42) == 1 && theDict)
    {
      CFDictionarySetValue(theDict, @"Avg Watts Modelled", v9);
    }

    CFRelease(v9);
  }

  if (theDict && CFDictionaryGetCount(theDict))
  {
    v12 = *(v2 + 32);
    v11 = *(v2 + 40);
    if (v12 >= v11)
    {
      v16 = *(v2 + 24);
      v17 = (v12 - v16) >> 4;
      if ((v17 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v18 = v11 - v16;
      v19 = v18 >> 3;
      if (v18 >> 3 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      v45 = v2 + 24;
      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = 16 * v17;
      *buf = 0;
      *&buf[8] = v23;
      *&buf[16] = (16 * v17);
      v24 = theDict;
      *v23 = theDict;
      v25 = v42;
      *(v23 + 8) = v42;
      if (v25 == 1)
      {
        CFRetain(v24);
        v23 = *&buf[8];
        v26 = *&buf[16];
      }

      else
      {
        v26 = 16 * v17;
      }

      *&buf[16] = v26 + 16;
      v27 = *(v2 + 24);
      v28 = *(v2 + 32);
      v29 = (v23 + v27 - v28);
      if (v27 != v28)
      {
        v30 = 0;
        v31 = (v23 + v27 - v28);
        do
        {
          v32 = v27 + v30;
          v33 = *(v27 + v30);
          *v31 = v33;
          v34 = *(v27 + v30 + 8);
          v31[8] = v34;
          v31[9] = *(v27 + v30 + 9);
          if (v34 == 1 && v33 != 0)
          {
            CFRetain(v33);
          }

          v31 += 16;
          v30 += 16;
        }

        while (v32 + 16 != v28);
        do
        {
          CACFDictionary::~CACFDictionary(v27);
          v27 = (v27 + 16);
        }

        while (v27 != v28);
      }

      v36 = *(v2 + 24);
      *(v2 + 24) = v29;
      v37 = *(v2 + 40);
      v40 = *&buf[16];
      *(v2 + 32) = *&buf[16];
      *&buf[16] = v36;
      *&buf[24] = v37;
      *buf = v36;
      *&buf[8] = v36;
      std::__split_buffer<CACFDictionary>::~__split_buffer(buf);
      v15 = v40;
    }

    else
    {
      v13 = theDict;
      *v12 = theDict;
      v14 = v42;
      *(v12 + 8) = v42;
      if (v14 == 1)
      {
        CFRetain(v13);
      }

      v15 = v12 + 16;
      *(v2 + 32) = v12 + 16;
    }

    *(v2 + 32) = v15;
    if (v15 - *(v2 + 24) >= 0xB1)
    {
      PowerLogManager::FlushPowerLogEntries(v2);
    }
  }

  CACFDictionary::~CACFDictionary(&theDict);
LABEL_66:
  v38 = *(v3 + 48);
  *(v3 + 72) = v38 == 0;
  if (v38)
  {
    v39 = *(a1 + 40);

    PowerLogManager::DispatchOneTime(v39);
  }
}

void sub_272546370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__split_buffer<CACFDictionary>::~__split_buffer(va1);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrI15PowerLogManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrI15PowerLogManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
}

void ___ZN15PowerLogManager18BeginPowerTrackingEv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (v2)
  {
    if (*(v1 + 48) != v2)
    {
      *(v1 + 48) = v2;
      *(v1 + 64) = *(v1 + 68);
      if (*(v1 + 72) == 1)
      {
        PowerLogManager::DispatchOneTime(v1);
      }
    }

    if (PowerLogManagerLogScope(void)::once != -1)
    {
      dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
    }

    if (PowerLogManagerLogScope(void)::scope)
    {
      v3 = *PowerLogManagerLogScope(void)::scope;
      if (!*PowerLogManagerLogScope(void)::scope)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315394;
      v5 = "vpPowerLogManager.cpp";
      v6 = 1024;
      v7 = 299;
      _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d did begin speaker power tracking", &v4, 0x12u);
    }
  }

LABEL_13:
  *(v1 + 48) = *(v1 + 56);
  *(v1 + 64) = *(v1 + 68);
}

void PowerLogManager::EndPowerTracking(PowerLogManager *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (PowerLogManagerLogScope(void)::once != -1)
  {
    dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
  }

  if (PowerLogManagerLogScope(void)::scope)
  {
    v2 = *PowerLogManagerLogScope(void)::scope;
    if (!*PowerLogManagerLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v6 = "vpPowerLogManager.cpp";
    v7 = 1024;
    v8 = 311;
    _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d will end speaker power tracking...", buf, 0x12u);
  }

LABEL_9:
  v3 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN15PowerLogManager16EndPowerTrackingEv_block_invoke;
  block[3] = &__block_descriptor_tmp_10;
  block[4] = this;
  dispatch_sync(v3, block);
}

void ___ZN15PowerLogManager16EndPowerTrackingEv_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  PowerLogManager::FlushPowerLogEntries(v1);
  if (*(v1 + 48))
  {
    v2 = *(v1 + 64);
    valuePtr = 0;
    if (v2 == 1936748595)
    {
      v3 = *MEMORY[0x277CBECE8];
      v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      v5 = CFNumberCreate(v3, kCFNumberFloatType, &valuePtr);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *theDict = Mutable;
    *&theDict[8] = 257;
    if (v4)
    {
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"Avg Watts Measured", v4);
      }

      CFRelease(v4);
    }

    if (v5)
    {
      if (theDict[9] == 1 && *theDict)
      {
        CFDictionarySetValue(*theDict, @"Avg Watts Modelled", v5);
      }

      CFRelease(v5);
    }

    if (*theDict && CFDictionaryGetCount(*theDict))
    {
      PLLogRegisteredEvent();
    }

    CACFDictionary::~CACFDictionary(theDict);
  }

  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  if (PowerLogManagerLogScope(void)::once != -1)
  {
    dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
  }

  if (PowerLogManagerLogScope(void)::scope)
  {
    v7 = *PowerLogManagerLogScope(void)::scope;
    if (!*PowerLogManagerLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *theDict = 136315394;
    *&theDict[4] = "vpPowerLogManager.cpp";
    v10 = 1024;
    v11 = 317;
    _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d did end speaker power tracking", theDict, 0x12u);
  }
}

void PowerLogManager::SetPowerVendor(PowerLogManager *this, OpaqueAudioComponentInstance **a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (PowerLogManagerLogScope(void)::once != -1)
  {
    dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
  }

  if (PowerLogManagerLogScope(void)::scope)
  {
    v6 = *PowerLogManagerLogScope(void)::scope;
    if (!*PowerLogManagerLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "vpPowerLogManager.cpp";
    v12 = 1024;
    v13 = 324;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d set speaker power vendor to %p", buf, 0x1Cu);
  }

LABEL_9:
  v7 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN15PowerLogManager14SetPowerVendorEPP28OpaqueAudioComponentInstancej_block_invoke;
  block[3] = &__block_descriptor_tmp_11_2811;
  block[4] = this;
  block[5] = a2;
  v9 = a3;
  dispatch_sync(v7, block);
}

uint64_t ___ZN15PowerLogManager14SetPowerVendorEPP28OpaqueAudioComponentInstancej_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 56) = *(result + 40);
  *(v1 + 68) = *(result + 48);
  return result;
}

uint64_t *std::map<std::pair<unsigned int,unsigned int>,double>::map[abi:ne200100](uint64_t *result, uint64_t a2)
{
  qword_28133C1C8 = 0;
  qword_28133C1C0 = 0;
  GetVPPreferredClientSampleRateInfoMap(void)::infoMap = &qword_28133C1C0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = &result[2 * a2];
    v5 = &qword_28133C1C0;
    while (v5 != &qword_28133C1C0)
    {
      v6 = v3;
      if (v3)
      {
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v8 = &qword_28133C1C0;
        do
        {
          v7 = v8[2];
          v10 = *v7 == v8;
          v8 = v7;
        }

        while (v10);
      }

      v9 = *(v7 + 8);
      v10 = v9 == *v2;
      if (v9 >= *v2)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = *(v7 + 9);
        v13 = v2[1];
        v14 = v12 == v13;
        v11 = v12 >= v13 ? 1 : -1;
        if (v14)
        {
          v11 = 0;
        }
      }

      if (v11 < 0)
      {
        goto LABEL_22;
      }

      result = std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,double>>>::__find_equal<std::pair<unsigned int,unsigned int>>(&v16, *v2, v2[1]);
      v15 = result;
LABEL_25:
      if (!*v15)
      {
        operator new();
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v5 = GetVPPreferredClientSampleRateInfoMap(void)::infoMap;
      v3 = qword_28133C1C0;
    }

    v7 = &qword_28133C1C0;
LABEL_22:
    if (v3)
    {
      v16 = v7;
      v15 = v7 + 1;
    }

    else
    {
      v16 = &qword_28133C1C0;
      v15 = &qword_28133C1C0;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,double>>>::__find_equal<std::pair<unsigned int,unsigned int>>(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  v3 = &qword_28133C1C0;
  v4 = qword_28133C1C0;
  if (qword_28133C1C0)
  {
    v5 = &qword_28133C1C0;
    while (1)
    {
      v3 = v4;
      v6 = *(v4 + 32);
      if (v6 == a2)
      {
        v7 = *(v3 + 9);
        v8 = v7 == a3;
        if (v7 <= a3)
        {
          if (v7 >= a3)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          if (v8)
          {
            v9 = 0;
          }

          if ((v9 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v3;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 > a2)
        {
          goto LABEL_13;
        }

        if (v6 >= a2)
        {
          v10 = 1;
        }

        else
        {
          v10 = -1;
        }

        if ((v10 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        v5 = v3 + 1;
        v4 = v3[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v5 = &qword_28133C1C0;
LABEL_22:
  *a1 = v3;
  return v5;
}

uint64_t GetVPPreferredClientSampleRate(int a1, unsigned int a2)
{
  v9[20] = *MEMORY[0x277D85DE8];
  if ((a1 - 5) > 0x3D)
  {
    v3 = 2;
  }

  else
  {
    v3 = dword_272759F50[a1 - 5];
  }

  {
    v6 = a2;
    v8 = v3;
    v3 = v8;
    a2 = v6;
    if (v7)
    {
      v9[0] = 0x600000000;
      v9[1] = 0x40CF400000000000;
      v9[2] = 0x500000000;
      v9[3] = 0x40CF400000000000;
      v9[4] = 0x600000001;
      v9[5] = 0x40D7700000000000;
      v9[6] = 0x500000001;
      v9[7] = 0x40D7700000000000;
      v9[8] = 0x600000002;
      v9[9] = 0x40D7700000000000;
      v9[10] = 0x500000002;
      v9[11] = 0x40D7700000000000;
      v9[12] = 0x600000003;
      v9[13] = 0x40D7700000000000;
      v9[14] = 0x500000003;
      v9[15] = 0x40D7700000000000;
      v9[16] = 0x600000005;
      v9[17] = 0x40DF400000000000;
      v9[18] = 0x500000005;
      v9[19] = 0x40DF400000000000;
      std::map<std::pair<unsigned int,unsigned int>,double>::map[abi:ne200100](v9, 10);
      a2 = v6;
      v3 = v8;
    }
  }

  v4 = *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,double>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,double>>>::__find_equal<std::pair<unsigned int,unsigned int>>(v9, v3, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return *(v4 + 40);
}

void sub_272546E54(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272546D20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV2::PreflightDownlink(atomic_uint *this, uint64_t NumberOfOutputFrames, unsigned int *a3, unsigned int *a4)
{
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    if (this[121])
    {
      VoiceProcessorV2::LogIOError(this, 32.006, this[3148], this[3149], 0.0, "preflight downlink: tryer acquire failed", a3, a4);
      goto LABEL_12;
    }

LABEL_11:
    VoiceProcessorV2::LogIOError(this, 32.005, this[3148], this[3149], 0.0, "preflight downlink: not ok to process?!", a3, a4);
LABEL_12:
    CADeprecated::CAMutex::Lock((this + 648));
    ++this[3148];
    CADeprecated::CAMutex::Unlock((this + 648));
    v11 = 1937006964;
    if (this[3148] == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 0);
    }

    goto LABEL_19;
  }

  if ((this[121] & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = *(this + 48);
  if (v7)
  {
    NumberOfOutputFrames = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v7, NumberOfOutputFrames);
  }

  v8 = *(this + 49);
  if (!v8)
  {
    v9 = NumberOfOutputFrames / this[123] * this[123];
    goto LABEL_15;
  }

  v9 = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v8, NumberOfOutputFrames) / this[123] * this[123];
  if (!*(this + 49))
  {
LABEL_15:
    RequiredNumberOfInputFrames = v9;
    goto LABEL_16;
  }

  RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
LABEL_16:
  if (*(this + 48))
  {
    RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
  }

  v11 = 0;
  *a3 = RequiredNumberOfInputFrames;
  *a4 = v9;
LABEL_19:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return v11;
}

uint64_t VoiceProcessorV3::ProcessDownlinkAudio(VoiceProcessorV3 *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, AudioTimeStamp *a7)
{
  v433 = *MEMORY[0x277D85DE8];
  v9 = this + 12288;
  atomic_fetch_add(this + 625, 1u);
  v10 = *(this + 624);
  v405 = a5;
  if (v10)
  {
    VoiceProcessorV2::LogIOError(this, 23.006, *(this + 3150), 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6);
    v11 = (this + 2592);
    CADeprecated::CAMutex::Lock((this + 2592));
LABEL_3:
    ++*(this + 3150);
    CADeprecated::CAMutex::Unlock(v11);
    LOBYTE(v12) = 0;
    v13 = 0.0;
    goto LABEL_617;
  }

  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, *(this + 3150), 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6);
    v11 = (this + 2592);
    CADeprecated::CAMutex::Lock((this + 2592));
    goto LABEL_3;
  }

  v14 = a6;
  v15 = a5;
  v16 = a4;
  v13 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v13 = mach_absolute_time() * 0.0000000416666667;
      if (*(this + 1984) == 0.0)
      {
        *(this + 1984) = v13;
      }
    }
  }

  if (v9[3593] == 1)
  {
    if (v9[344])
    {
      v19 = *(this + 1578);
      mSampleTime = a7->mSampleTime;
      if (v19 == a7->mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(this, v19, mSampleTime, 2);
      mSampleTime = *(this + 1578);
      if (a7->mSampleTime >= mSampleTime)
      {
        goto LABEL_48;
      }

      v21 = v16;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v22 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(this + 1578);
          v25 = a7->mSampleTime;
          mHostTime = a7->mHostTime;
          mRateScalar = a7->mRateScalar;
          mFlags = a7->mFlags;
          LODWORD(v426.mSampleTime) = 136316674;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 85;
          WORD1(v426.mRateScalar) = 2048;
          *(&v426.mRateScalar + 4) = v24;
          WORD2(v426.mWordClockTime) = 2048;
          *(&v426.mWordClockTime + 6) = v25;
          HIWORD(v426.mSMPTETime.mCounter) = 2048;
          *&v426.mSMPTETime.mType = mHostTime;
          v426.mSMPTETime.mHours = 2048;
          *&v426.mSMPTETime.mMinutes = mRateScalar;
          HIWORD(v426.mFlags) = 1024;
          v426.mReserved = mFlags;
          _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v426, 0x40u);
        }
      }

      v29 = *(this + 1588);
      if (v29 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v29, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 85, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(this + 1578), a7->mSampleTime, a7->mHostTime, a7->mRateScalar, a7->mFlags);
      }

      VoiceProcessorV2::LogIOError(this, 23.008, *(this + 3150), 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      v9[344] = 1;
      VoiceProcessorV2::WriteTSOverload(this, 0.0, a7->mSampleTime, 2);
      mSampleTime = *(this + 216);
      v30 = a7->mSampleTime - mSampleTime;
      v31 = (((roundf(*(this + 291) * *(this + 126)) + *(this + 126)) + *(this + 295)) + *(this + 296));
      if (v30 == v31)
      {
LABEL_48:
        LODWORD(mSampleTime) = *(this + 123);
        *(this + 1578) = a7->mSampleTime + *&mSampleTime;
        goto LABEL_49;
      }

      v21 = v16;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v32 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v426.mSampleTime) = 136315906;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 72;
          WORD1(v426.mRateScalar) = 2048;
          *(&v426.mRateScalar + 4) = v31;
          WORD2(v426.mWordClockTime) = 2048;
          *(&v426.mWordClockTime + 6) = v30;
          _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v426, 0x26u);
        }
      }

      v34 = *(this + 1588);
      if (v34 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v34, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 72, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v31, v30);
      }

      VoiceProcessorV2::LogIOError(this, 23.009, *(this + 3150), 0.0, 0.0, "bad relative mic-ref TS");
    }

    v15 = v405;
    v16 = v21;
    goto LABEL_48;
  }

LABEL_49:
  v424 = this + 2504;
  v425 = (*(*(this + 313) + 16))();
  CADeprecated::CAMutex::Lock((this + 2592));
  ++*(this + 3150);
  CADeprecated::CAMutex::Unlock((this + 2592));
  v407 = a3;
  v35 = *(this + 123);
  v423 = v35;
  v422 = v35;
  v36 = v9[3593];
  if (v36)
  {
    v9[729] = 1;
    if (v15->mNumberBuffers == *(this + 91))
    {
      v37 = (this + 336);
      if (a2)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

LABEL_614:
    if (v425 == 1)
    {
      (*(*v424 + 24))(v424);
    }

    LOBYTE(v12) = 1;
LABEL_617:
    v355 = v405;
    if (v9[3593] == 1 && *(this + 1589))
    {
      i = mach_absolute_time();
      v356 = *(this + 1589);
      v247 = 0x280898000;
      if (VPTimestampLogScope(void)::once != -1)
      {
        goto LABEL_648;
      }

      goto LABEL_620;
    }

    goto LABEL_629;
  }

  if (v15->mNumberBuffers != *(this + 91))
  {
    goto LABEL_614;
  }

  v37 = (this + 336);
  if ((v9[3594] & 1) == 0)
  {
    goto LABEL_83;
  }

  if (a2)
  {
LABEL_62:
    if (v9[3594] != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_56:
  a2 = *(this + 200);
  if (a2->mNumberBuffers)
  {
    v38 = 0;
    v39 = *(this + 200);
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v38;
      p_mData += 2;
    }

    while (v38 < v39->mNumberBuffers);
    v36 = v9[3593];
    a2 = v39;
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  VoiceProcessorV2::InjectionFilesReadSignal(this, 1, v14, a2);
  if ((v9[3593] & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  VoiceProcessorV2::SaveFilesWriteSignal(this, 0x32u, v14, a2, a7);
LABEL_64:
  if (!v407)
  {
    v41 = *(this + 201);
    mNumberBuffers = v41->mNumberBuffers;
    v407 = v41;
    if (mNumberBuffers)
    {
      v388 = v14;
      v43 = v37;
      v44 = a2;
      v45 = 0;
      v46 = &v41->mBuffers[0].mData;
      do
      {
        bzero(*v46, *(v46 - 1));
        ++v45;
        v46 += 2;
      }

      while (v45 < v41->mNumberBuffers);
      a2 = v44;
      v37 = v43;
      v14 = v388;
    }
  }

  if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 10, v14, v407), (v9[3593] & 1) != 0) || v9[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x55u, v14, v407, a7);
  }

  if (!v16)
  {
    v16 = *(this + 202);
    if (v16->mNumberBuffers)
    {
      v47 = a2;
      v48 = 0;
      v49 = &v16->mBuffers[0].mData;
      do
      {
        bzero(*v49, *(v49 - 1));
        ++v48;
        v49 += 2;
      }

      while (v48 < v16->mNumberBuffers);
      a2 = v47;
    }
  }

  if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 11, v14, v16), (v9[3593] & 1) != 0) || v9[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x56u, v14, v16, a7);
  }

  v35 = *(this + 123);
LABEL_83:
  v403 = v9;
  if (v35 != v14)
  {
    if (v9[3515])
    {
      v60 = (mach_absolute_time() - *(this + 1978)) * 0.0000000416666667;
      v61 = *(this + 1981);
      if (v60 > v61)
      {
        *(this + 1981) = v61 + 10.0;
        VoiceProcessorV2::LogIOError(this, 23.002, *(this + 3150), *(this + 123), v14, "processdownlinkaudio: <block size mismatch>");
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v62 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v62)
        {
          v63 = v62;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v426.mSampleTime) = 136315650;
            *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
            WORD2(v426.mHostTime) = 1024;
            *(&v426.mHostTime + 6) = 183;
            WORD1(v426.mRateScalar) = 2048;
            *(&v426.mRateScalar + 4) = v60;
            _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v426, 0x1Cu);
          }
        }

        v64 = *(this + 1588);
        if (v64 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v64, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 183, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v60);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v65 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v65)
        {
          v66 = v65;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v405->mBuffers[0].mDataByteSize;
            v68 = *(this + 123);
            CAFormatter::CAFormatter(&v420, v37);
            v69 = *(this + 3150);
            LODWORD(v426.mSampleTime) = 136316674;
            *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
            WORD2(v426.mHostTime) = 1024;
            *(&v426.mHostTime + 6) = 189;
            WORD1(v426.mRateScalar) = 1024;
            HIDWORD(v426.mRateScalar) = v14;
            LOWORD(v426.mWordClockTime) = 1024;
            *(&v426.mWordClockTime + 2) = mDataByteSize;
            HIWORD(v426.mWordClockTime) = 1024;
            *&v426.mSMPTETime.mSubframes = v68;
            LOWORD(v426.mSMPTETime.mCounter) = 2080;
            *(&v426.mSMPTETime.mCounter + 2) = v420.mSampleTime;
            HIWORD(v426.mSMPTETime.mFlags) = 1024;
            *&v426.mSMPTETime.mHours = v69;
            _os_log_impl(&dword_2724B4000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v426, 0x34u);
            if (*&v420.mSampleTime)
            {
              free(*&v420.mSampleTime);
            }

            v9 = v403;
          }
        }

        v70 = *(this + 1588);
        if (v70)
        {
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v71 = VPLogScope(void)::scope;
            v72 = v405->mBuffers[0].mDataByteSize;
            v73 = *(this + 123);
            CAFormatter::CAFormatter(&v426, v37);
            CALegacyLog::log(v70, 1, v71, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 189, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", v14, v72, v73, *&v426.mSampleTime, *(this + 3150));
LABEL_190:
            if (*&v426.mSampleTime)
            {
              free(*&v426.mSampleTime);
            }
          }
        }
      }
    }

    else
    {
      v9[3515] = 1;
      *(this + 1978) = mach_absolute_time();
      *(this + 1981) = 0x3FF0000000000000;
      VoiceProcessorV2::LogIOError(this, 23.002, *(this + 3150), *(this + 123), v14, "processdl: <block size mismatch>");
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v81 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v82 = (*v81 ? *v81 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v426.mSampleTime) = 136315394;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 160;
          _os_log_impl(&dword_2724B4000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v426, 0x12u);
        }
      }

      v83 = *(this + 1588);
      if (v83 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v83, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 160, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v84 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v85 = (*v84 ? *v84 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = v405->mBuffers[0].mDataByteSize;
          v87 = *(this + 123);
          v389 = v37;
          CAFormatter::CAFormatter(&v420, v37);
          v88 = *(this + 3150);
          LODWORD(v426.mSampleTime) = 136316674;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 166;
          WORD1(v426.mRateScalar) = 1024;
          HIDWORD(v426.mRateScalar) = v14;
          LOWORD(v426.mWordClockTime) = 1024;
          *(&v426.mWordClockTime + 2) = v86;
          HIWORD(v426.mWordClockTime) = 1024;
          *&v426.mSMPTETime.mSubframes = v87;
          LOWORD(v426.mSMPTETime.mCounter) = 2080;
          *(&v426.mSMPTETime.mCounter + 2) = v420.mSampleTime;
          HIWORD(v426.mSMPTETime.mFlags) = 1024;
          *&v426.mSMPTETime.mHours = v88;
          _os_log_impl(&dword_2724B4000, v85, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v426, 0x34u);
          if (*&v420.mSampleTime)
          {
            free(*&v420.mSampleTime);
          }

          v9 = v403;
          v37 = v389;
        }
      }

      v89 = *(this + 1588);
      if (v89 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v90 = VPLogScope(void)::scope;
        v91 = v405->mBuffers[0].mDataByteSize;
        v92 = *(this + 123);
        CAFormatter::CAFormatter(&v426, v37);
        CALegacyLog::log(v89, 2, v90, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 166, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", v14, v91, v92, *&v426.mSampleTime, *(this + 3150));
        goto LABEL_190;
      }
    }

    if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 2, v14, v405), (v9[3593] & 1) != 0) || v9[3594] == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x46u, v14, v405, a7);
    }

    v80 = *(this + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
    }

    if (!AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      goto LABEL_614;
    }

LABEL_199:
    AudioIssueDetectorLibraryLoader(void)::libSym(v80, 70, 0, v405, v14, a7);
    goto LABEL_614;
  }

  if (v405->mBuffers[0].mDataByteSize != *(this + 90) * v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v74 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v75 = (*v74 ? *v74 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = v405->mBuffers[0].mDataByteSize;
        v77 = *(this + 90) * v14;
        LODWORD(v426.mSampleTime) = 136315906;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 210;
        WORD1(v426.mRateScalar) = 1024;
        HIDWORD(v426.mRateScalar) = v76;
        LOWORD(v426.mWordClockTime) = 1024;
        *(&v426.mWordClockTime + 2) = v77;
        _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v426, 0x1Eu);
      }
    }

    v78 = *(this + 1588);
    v79 = v9[3593];
    if (v78)
    {
      if ((v9[3593] & 1) == 0 && v9[3594] != 1)
      {
        goto LABEL_152;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v78, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 210, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v405->mBuffers[0].mDataByteSize, *(this + 90) * v14);
      v79 = v9[3593];
    }

    if (v79)
    {
      VoiceProcessorV2::InjectionFilesReadSignal(this, 2, v14, v405);
      if (v9[3593])
      {
LABEL_153:
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x46u, v14, v405, a7);
LABEL_154:
        v80 = *(this + 1993);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
        }

        if (!AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          goto LABEL_614;
        }

        goto LABEL_199;
      }
    }

LABEL_152:
    if (v9[3594] != 1)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v408 = a2;
  v406 = v16;
  if (v9[3515] != 1)
  {
    goto LABEL_223;
  }

  v9[3515] = 0;
  v50 = (mach_absolute_time() - *(this + 1978)) * 0.0000000416666667;
  VoiceProcessorV2::LogIOError(this, 23.002, *(this + 3150), *(this + 123), v14, "processdownlinkaudio: <block size no longer mismatched>");
  if (v50 <= 1.0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v93 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v93)
    {
      v94 = v93;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v426.mSampleTime) = 136315650;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 239;
        WORD1(v426.mRateScalar) = 2048;
        *(&v426.mRateScalar + 4) = v50;
        _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v426, 0x1Cu);
      }
    }

    v95 = *(this + 1588);
    if (v95 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v95, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 239, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v50);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v96 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v96)
    {
      v97 = v96;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v98 = *(this + 123);
        LODWORD(v426.mSampleTime) = 136315906;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 243;
        WORD1(v426.mRateScalar) = 1024;
        HIDWORD(v426.mRateScalar) = v14;
        LOWORD(v426.mWordClockTime) = 1024;
        *(&v426.mWordClockTime + 2) = v98;
        _os_log_impl(&dword_2724B4000, v97, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v426, 0x1Eu);
      }
    }

    v57 = *(this + 1588);
    if (v57 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v58 = 243;
      v59 = 2;
      goto LABEL_222;
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v51 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v51)
    {
      v52 = v51;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v426.mSampleTime) = 136315650;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 231;
        WORD1(v426.mRateScalar) = 2048;
        *(&v426.mRateScalar + 4) = v50;
        _os_log_impl(&dword_2724B4000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v426, 0x1Cu);
      }
    }

    v53 = *(this + 1588);
    if (v53 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v53, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 231, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v50);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v54 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v54)
    {
      v55 = v54;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v56 = *(this + 123);
        LODWORD(v426.mSampleTime) = 136315906;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 235;
        WORD1(v426.mRateScalar) = 1024;
        HIDWORD(v426.mRateScalar) = v14;
        LOWORD(v426.mWordClockTime) = 1024;
        *(&v426.mWordClockTime + 2) = v56;
        _os_log_impl(&dword_2724B4000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v426, 0x1Eu);
      }
    }

    v57 = *(this + 1588);
    if (v57 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v58 = 235;
      v59 = 1;
LABEL_222:
      CALegacyLog::log(v57, v59, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", v58, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v14, *(this + 123));
    }
  }

LABEL_223:
  v99 = *(this + 49);
  NumberOfSourceFrames = *(this + 123);
  if (*(this + 48))
  {
    if (v99)
    {
      NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v99, *(this + 123));
      v422 = NumberOfSourceFrames;
      v99 = *(this + 48);
LABEL_230:
      LODWORD(NumberOfSourceFrames) = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v99, NumberOfSourceFrames);
      goto LABEL_231;
    }

    v99 = *(this + 48);
LABEL_229:
    v422 = *(this + 123);
    goto LABEL_230;
  }

  if (v99)
  {
    goto LABEL_229;
  }

LABEL_231:
  v101 = *(this + 14);
  v102 = *v101;
  if (v102 >= 1)
  {
    v103 = NumberOfSourceFrames * *(this + 60);
    v104 = (v102 + 3) & 0xFFFFFFFC;
    v105 = vdupq_n_s64(v102 - 1);
    v106 = xmmword_2727564D0;
    v107 = xmmword_2727564E0;
    v108 = v101 + 11;
    v109 = vdupq_n_s64(4uLL);
    do
    {
      v110 = vmovn_s64(vcgeq_u64(v105, v107));
      if (vuzp1_s16(v110, *v105.i8).u8[0])
      {
        *(v108 - 8) = v103;
      }

      if (vuzp1_s16(v110, *&v105).i8[2])
      {
        *(v108 - 4) = v103;
      }

      if (vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, *&v106))).i32[1])
      {
        *v108 = v103;
        v108[4] = v103;
      }

      v106 = vaddq_s64(v106, v109);
      v107 = vaddq_s64(v107, v109);
      v108 += 16;
      v104 -= 4;
    }

    while (v104);
  }

  v421 = NumberOfSourceFrames;
  (*(*(this + 13) + 16))();
  v111 = v421;
  v423 = v421;
  v112 = *(this + 14);
  if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 0, v421, *(this + 14)), v112 = *(this + 14), (v9[3593] & 1) != 0) || v9[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x33u, v421, v112, a7);
    v112 = *(this + 14);
  }

  v113 = *(this + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v113, 51, 0, v112, v421, a7);
  }

  if ((*(this + 2090) & 1) != 0 || *(this + 20) == 7 && *(this + 3152) == 0.0)
  {
    bzero(*(*(this + 14) + 16), 4 * v421);
  }

  v114 = *(this + 14);
  v115 = *(this + 48);
  if (v115)
  {
    VoiceProcessor::SampleRateConverter::Convert(v115, &v423, &v422, *(this + 14), *(this + 24));
    v111 = v422;
    v423 = v422;
    v114 = *(this + 24);
  }

  v388 = v14;
  v389 = v37;
  v117 = VoiceProcessorV2::DetermineNoiseBasedVolume(this);
  v118 = 0;
  v119 = 0;
  v120 = *&a7->mRateScalar;
  *&v420.mSampleTime = *&a7->mSampleTime;
  *&v420.mRateScalar = v120;
  v121 = *&a7->mSMPTETime.mHours;
  v123 = *&a7->mSampleTime;
  v122 = *&a7->mRateScalar;
  *&v420.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&v420.mSMPTETime.mHours = v121;
  v124 = *&a7->mRateScalar;
  v125 = *&a7->mSMPTETime.mSubframes;
  *&v419.mSampleTime = *&a7->mSampleTime;
  *&v419.mRateScalar = v124;
  v126 = *&a7->mSMPTETime.mHours;
  *&v419.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&v419.mSMPTETime.mHours = v126;
  v127 = *&a7->mRateScalar;
  *&v418.mSampleTime = *&a7->mSampleTime;
  *&v418.mRateScalar = v127;
  v128 = *&a7->mSMPTETime.mHours;
  *&v418.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&v418.mSMPTETime.mHours = v128;
  *&v417.mSampleTime = v123;
  *&v417.mRateScalar = v122;
  v129 = (v111 / *(this + 132));
  v396 = a7;
  v130 = *&a7->mSMPTETime.mHours;
  *&v417.mSMPTETime.mSubframes = v125;
  *&v417.mSMPTETime.mHours = v130;
  v131 = v129;
  do
  {
    if ((*v114 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v426.mSampleTime) = 136315394;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 347;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = -50;
    }

    MEMORY[0x28223BE20](Parameter);
    v133 = (&v387 - v132);
    bzero(&v387 - v132, v134 + 24);
    v135 = *v114;
    v133->mNumberBuffers = v135;
    if (v135)
    {
      v136 = &v133->mBuffers[0].mData;
      v137 = (v114 + 4);
      do
      {
        *(v136 - 2) = 1;
        *(v136 - 1) = 4 * v129;
        v138 = *v137;
        v137 += 2;
        *v136 = (v138 + 4 * v118);
        v136 += 2;
        --v135;
      }

      while (v135);
    }

    v139 = *(this + 1108);
    if ((v139 & 4) != 0 && (*(this + 8872) & 4) != 0)
    {
      Parameter = *(this + 441);
      if (Parameter)
      {
        LODWORD(v426.mSampleTime) = 512;
        Parameter = AudioUnitProcess(Parameter, &v426, &v420, v129, v133);
        if ((v403[3593] & 1) != 0 || v403[3594] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x57u, v129, v133, &v420);
        }

        v420.mSampleTime = v420.mSampleTime + v131;
        v139 = *(this + 1108);
      }
    }

    if ((v139 & 0x40) != 0 && (*(this + 8872) & 0x40) != 0)
    {
      Parameter = *(this + 445);
      if (Parameter)
      {
        *&v426.mSampleTime = v133;
        v426.mHostTime = 0;
        *&ioOutputBufferLists.mSampleTime = v133;
        ioOutputBufferLists.mHostTime = 0;
        LODWORD(v416.mSampleTime) = 512;
        AudioUnitProcessMultiple(Parameter, &v416, &v419, v129, 2u, &v426, 2u, &ioOutputBufferLists);
        v419.mSampleTime = v419.mSampleTime + v131;
        Parameter = AudioUnitGetParameter(*(this + 445), 1u, 0, 0, this + 4189);
        v139 = *(this + 1108);
      }
    }

    if (v139 & 0x100) != 0 && (*(this + 8873))
    {
      Parameter = *(this + 447);
      if (Parameter)
      {
        AudioUnitSetParameter(Parameter, 5u, 0, 0, v117, 0);
        LODWORD(v426.mSampleTime) = 512;
        Parameter = AudioUnitProcess(*(this + 447), &v426, &v418, v129, v133);
        if ((v403[3593] & 1) != 0 || v403[3594] == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x36u, v129, v133, &v418);
        }

        v418.mSampleTime = v418.mSampleTime + v131;
        v139 = *(this + 1108);
      }
    }

    if ((v139 & 0x4000) != 0 && (*(this + 8873) & 0x40) != 0 && *(this + 453))
    {
      Parameter = (*(*this + 680))(this, v133, v129, &v417);
      if ((v403[3593] & 1) != 0 || v403[3594] == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x7Du, v129, v133, &v417);
      }

      v417.mSampleTime = v417.mSampleTime + v131;
    }

    v118 += v129;
    ++v119;
  }

  while (v119 < *(this + 132));
  if (*(this + 1136) == 1)
  {
    v140 = *(this + 198);
    if (v140)
    {
      ABLRingBuffer<float>::ReadFrom(this + 386, *(this + 123), v140);
    }
  }

  v142 = *(this + 48);
  v141 = *(this + 49);
  v143 = v405;
  v144 = v406;
  a7 = v396;
  v9 = v403;
  v145 = v407;
  if (v141)
  {
    if (v142)
    {
      v422 = *(this + 123);
      v141 = VoiceProcessor::SampleRateConverter::Convert(v141, &v423, &v422, *(this + 24), *(this + 25));
      v146 = *(this + 25);
      v423 = v422;
    }

    else
    {
      v141 = VoiceProcessor::SampleRateConverter::Convert(v141, &v423, &v422, *(this + 14), *(this + 25));
      v423 = v422;
      v146 = *(this + 25);
    }
  }

  else if (v142)
  {
    v146 = *(this + 24);
  }

  else
  {
    v146 = *(this + 14);
  }

  v147 = *&a7->mRateScalar;
  *&ioOutputBufferLists.mSampleTime = *&a7->mSampleTime;
  *&ioOutputBufferLists.mRateScalar = v147;
  v148 = *&a7->mSMPTETime.mHours;
  v150 = *&a7->mSampleTime;
  v149 = *&a7->mRateScalar;
  *&ioOutputBufferLists.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
  *&ioOutputBufferLists.mSMPTETime.mHours = v148;
  v151 = *&a7->mSMPTETime.mSubframes;
  *&v416.mRateScalar = *&a7->mRateScalar;
  *&v416.mSMPTETime.mSubframes = v151;
  v152 = *&a7->mSMPTETime.mSubframes;
  *&v416.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  v153 = *&a7->mSampleTime;
  *&v415.mRateScalar = *&a7->mRateScalar;
  *&v415.mSMPTETime.mSubframes = v152;
  v154 = *&a7->mSMPTETime.mSubframes;
  *&v415.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  *&v416.mSampleTime = v153;
  v155 = *&a7->mSampleTime;
  *&v414.mRateScalar = *&a7->mRateScalar;
  *&v414.mSMPTETime.mSubframes = v154;
  v156 = *&a7->mSMPTETime.mSubframes;
  *&v414.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  *&v415.mSampleTime = v155;
  v157 = *&a7->mSampleTime;
  v158 = *&a7->mSampleTime;
  *&v413.mRateScalar = *&a7->mRateScalar;
  *&v413.mSMPTETime.mSubframes = v156;
  *&v413.mSMPTETime.mHours = *&a7->mSMPTETime.mHours;
  *&v414.mSampleTime = v158;
  v412[0] = v150;
  v412[1] = v149;
  v159 = *&a7->mSMPTETime.mHours;
  v412[2] = v151;
  v412[3] = v159;
  *&v413.mSampleTime = v157;
  if (!*(this + 132))
  {
LABEL_523:
    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
    v311 = DynamicsDSPChannelCount;
    v312 = *(this + 1108);
    if ((v312 & 0x200000000) != 0)
    {
      v313 = v388;
      v314 = &unk_28133C000;
      if ((*(this + 8876) & 2) != 0)
      {
        v315 = *(this + 472);
        if (v315)
        {
          if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_678;
            }

            LODWORD(v426.mSampleTime) = 136315394;
            *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
            WORD2(v426.mHostTime) = 1024;
            *(&v426.mHostTime + 6) = 797;
            v384 = MEMORY[0x277D86220];
            goto LABEL_677;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v317 = (&v387 - v316);
          bzero(&v387 - v316, v318 + 24);
          v317->mNumberBuffers = v311;
          memcpy(v317->mBuffers, v405->mBuffers, 16 * v311);
          v319 = *&a7->mRateScalar;
          *&v426.mSampleTime = *&a7->mSampleTime;
          *&v426.mRateScalar = v319;
          v320 = *&a7->mSMPTETime.mHours;
          *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v426.mSMPTETime.mHours = v320;
          v431.mNumberBuffers = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v315, &v431.mNumberBuffers, &v426, *(this + 123), v317);
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x40u, v313, v317, &v426);
          }

          v312 = *(this + 1108);
        }
      }
    }

    else
    {
      v313 = v388;
      v314 = &unk_28133C000;
    }

    if ((v312 & 0x1000000000) == 0 || (*(this + 8876) & 0x10) == 0 || (v321 = *(this + 475)) == 0)
    {
LABEL_539:
      v327 = v405;
      if ((*(this + 2260) & 1) == 0 && v405->mNumberBuffers >= 2)
      {
        v328 = 1;
        v329 = 32;
        do
        {
          memcpy(*(&v327->mNumberBuffers + v329), v327->mBuffers[0].mData, v327->mBuffers[0].mDataByteSize);
          ++v328;
          v329 += 16;
        }

        while (v328 < v327->mNumberBuffers);
      }

      v330 = *(this + 1108);
      if ((v330 & 0x200000000000) != 0)
      {
        v331 = v405;
        if ((*(this + 8877) & 0x20) != 0)
        {
          v332 = *(this + 484);
          if (v332)
          {
            *&v431.mNumberBuffers = v405;
            *&v430.mNumberBuffers = v405;
            v333 = *&a7->mRateScalar;
            *&v426.mSampleTime = *&a7->mSampleTime;
            *&v426.mRateScalar = v333;
            v334 = *&a7->mSMPTETime.mHours;
            *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
            *&v426.mSMPTETime.mHours = v334;
            v411.mNumberBuffers = 512;
            AudioUnitProcessMultiple(v332, &v411.mNumberBuffers, &v426, *(this + 123), 1u, &v431, 1u, &v430);
            v330 = *(this + 1108);
          }
        }
      }

      else
      {
        v331 = v405;
      }

      if (v330 & 0x100000000000000) != 0 && (*(this + 8879))
      {
        v335 = *(this + 495);
        if (v335)
        {
          *&v431.mNumberBuffers = v331;
          *&v430.mNumberBuffers = v331;
          v336 = *&a7->mRateScalar;
          *&v426.mSampleTime = *&a7->mSampleTime;
          *&v426.mRateScalar = v336;
          v337 = *&a7->mSMPTETime.mHours;
          *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v426.mSMPTETime.mHours = v337;
          v411.mNumberBuffers = 512;
          AudioUnitProcessMultiple(v335, &v411.mNumberBuffers, &v426, *(this + 123), 1u, &v431, 1u, &v430);
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(this, 0x41u, v313, v331, &v426);
          }

          v330 = *(this + 1108);
        }
      }

      if ((v330 & 0x2000000000000000) != 0 && ((*(this + 8879) & 0x20) != 0 || *(this + 480) == 1))
      {
        LODWORD(v426.mSampleTime) = 1065353216;
        v431.mNumberBuffers = 1065353216;
        if (((*(this + 2091) & 1) != 0 || *(this + 480) == 1) && (v338 = *(this + 1139), v338 != 0.0))
        {
          v339 = __exp10f(v338 / 20.0);
          *&v431.mNumberBuffers = v339;
          *&v426.mSampleTime = v339;
        }

        else
        {
          v340 = *(this + 1137);
          if (v340 >= -300.0)
          {
            if (v340 == 0.0)
            {
              v339 = 1.0;
            }

            else
            {
              if (v340 > 60.0)
              {
                v340 = 60.0;
              }

              v339 = __exp10f(v340 / 20.0);
              *&v426.mSampleTime = v339;
            }
          }

          else
          {
            LODWORD(v426.mSampleTime) = 0;
            v339 = 0.0;
          }

          v341 = *(this + 1138);
          if (v341 >= -300.0)
          {
            if (v341 != 0.0)
            {
              if (v341 > 60.0)
              {
                v341 = 60.0;
              }

              v431.mNumberBuffers = __exp10f(v341 / 20.0);
            }
          }

          else
          {
            v431.mNumberBuffers = 0;
          }
        }

        if (v339 == 0.0)
        {
          bzero(v331->mBuffers[0].mData, 4 * *(this + 123));
        }

        else if (v339 != 1.0)
        {
          MEMORY[0x2743CCE20](v331->mBuffers[0].mData, 1, &v426, v331->mBuffers[0].mData, 1, *(this + 123));
        }

        if (v331->mNumberBuffers >= 2)
        {
          v342 = 1;
          v343 = 32;
          do
          {
            if (*&v431.mNumberBuffers == 0.0)
            {
              v344 = v405;
              bzero(*(&v405->mNumberBuffers + v343), 4 * *(this + 123));
            }

            else
            {
              v344 = v405;
              if (*&v431.mNumberBuffers != 1.0)
              {
                MEMORY[0x2743CCE20](*(&v405->mNumberBuffers + v343), 1, &v431, *(&v405->mNumberBuffers + v343), 1, *(this + 123), *&v431.mNumberBuffers);
              }
            }

            ++v342;
            v343 += 16;
          }

          while (v342 < v344->mNumberBuffers);
        }

        v330 = *(this + 1108);
        v331 = v405;
      }

      if ((v330 & 0x400000000000) != 0 && (*(this + 8877) & 0x40) != 0)
      {
        v345 = *(this + 485);
        if (v345)
        {
          v346 = *&a7->mRateScalar;
          *&v426.mSampleTime = *&a7->mSampleTime;
          *&v426.mRateScalar = v346;
          v347 = *&a7->mSMPTETime.mHours;
          *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v426.mSMPTETime.mHours = v347;
          v431.mNumberBuffers = 512;
          AudioUnitProcess(v345, &v431.mNumberBuffers, &v426, *(this + 123), v331);
          v330 = *(this + 1108);
        }
      }

      if ((v330 & 0x4000000000000000) != 0 && (*(this + 8879) & 0x40) != 0)
      {
        v348 = *(this + 501);
        if (v348)
        {
          v349 = *&a7->mRateScalar;
          *&v426.mSampleTime = *&a7->mSampleTime;
          *&v426.mRateScalar = v349;
          v350 = *&a7->mSMPTETime.mHours;
          *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v426.mSMPTETime.mHours = v350;
          v431.mNumberBuffers = 512;
          AudioUnitProcess(v348, &v431.mNumberBuffers, &v426, *(this + 123), v331);
          v330 = *(this + 1108);
        }
      }

      if ((v330 & 0x4000000000000) != 0 && (*(this + 8878) & 4) != 0)
      {
        v351 = *(this + 489);
        if (v351)
        {
          v352 = *&a7->mRateScalar;
          *&v426.mSampleTime = *&a7->mSampleTime;
          *&v426.mRateScalar = v352;
          v353 = *&a7->mSMPTETime.mHours;
          *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
          *&v426.mSMPTETime.mHours = v353;
          v431.mNumberBuffers = 512;
          AudioUnitProcess(v351, &v431.mNumberBuffers, &v426, *(this + 123), v331);
          if ((v9[3593] & 1) != 0 || v9[3594] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(this, 0x77u, v313, v331, &v426);
          }
        }
      }

      if (v9[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 2, v313, v405), (v9[3593] & 1) != 0) || v9[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x46u, v313, v405, a7);
      }

      v354 = *(this + 1993);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2845);
      }

      if (v314[85])
      {
        v314[85](v354, 70, 0, v405, v313, a7);
      }

      if (*(this + 1135) == 1 && (v9[3872] & 1) == 0)
      {
        VoiceProcessorV2::AppendReferenceSignal(this, v405, a7, 0);
      }

      if (v9[3593] == 1)
      {
        VoiceProcessorV2::LoopBackRead(this, v313, v405);
      }

      goto LABEL_614;
    }

    if (v311 - 65 > 0xFFFFFFBF)
    {
      MEMORY[0x28223BE20](DynamicsDSPChannelCount);
      v323 = (&v387 - v322);
      bzero(&v387 - v322, v324 + 24);
      v323->mNumberBuffers = v311;
      memcpy(v323->mBuffers, v405->mBuffers, 16 * v311);
      v325 = *&a7->mRateScalar;
      *&v426.mSampleTime = *&a7->mSampleTime;
      *&v426.mRateScalar = v325;
      v326 = *&a7->mSMPTETime.mHours;
      *&v426.mSMPTETime.mSubframes = *&a7->mSMPTETime.mSubframes;
      *&v426.mSMPTETime.mHours = v326;
      v431.mNumberBuffers = 512;
      AudioUnitProcess(v321, &v431.mNumberBuffers, &v426, *(this + 123), v323);
      if ((v9[3593] & 1) != 0 || v9[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x38u, v313, v323, &v426);
      }

      goto LABEL_539;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_678:
      v385 = __cxa_allocate_exception(0x10uLL);
      *v385 = &unk_2881B25F8;
      v385[2] = -50;
    }

    LODWORD(v426.mSampleTime) = 136315394;
    *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
    WORD2(v426.mHostTime) = 1024;
    *(&v426.mHostTime + 6) = 811;
    v384 = MEMORY[0x277D86220];
LABEL_677:
    _os_log_impl(&dword_2724B4000, v384, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
    goto LABEL_678;
  }

  v404 = 0;
  v160 = 0;
  v387 = (this + 2760);
  v161 = v388;
  v392 = &v145->mBuffers[0].mData;
  v393 = (v146 + 4);
  v394 = &v408->mBuffers[0].mData;
  v390 = &v143->mBuffers[0].mData;
  v391 = v144 + 4;
  v395 = v146;
  while (1)
  {
    v398 = v160;
    if (*v146 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v426.mSampleTime) = 136315394;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 449;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
      }

      v373 = __cxa_allocate_exception(0x10uLL);
      *v373 = &unk_2881B25F8;
      v373[2] = -50;
    }

    MEMORY[0x28223BE20](v141);
    v163 = (&v387 - v162);
    bzero(&v387 - v162, v164 + 24);
    v163->mNumberBuffers = *v146;
    if (v145)
    {
      v166 = v145->mNumberBuffers;
      if (v145->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v426.mSampleTime) = 136315394;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 454;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
        }

        v379 = __cxa_allocate_exception(0x10uLL);
        *v379 = &unk_2881B25F8;
        v379[2] = -50;
      }
    }

    else
    {
      v166 = 1;
    }

    MEMORY[0x28223BE20](v165);
    v168 = (&v387 - v167);
    bzero(&v387 - v167, v169 + 24);
    p_mNumberBuffers = v168;
    *v168 = v166;
    if (v144)
    {
      v171 = *v144;
      if ((*v144 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v426.mSampleTime) = 136315394;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 456;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
        }

        v381 = __cxa_allocate_exception(0x10uLL);
        *v381 = &unk_2881B25F8;
        v381[2] = -50;
      }
    }

    else
    {
      v171 = 1;
    }

    MEMORY[0x28223BE20](v170);
    v173 = (&v387 - v172);
    bzero(&v387 - v172, v174 + 24);
    v401 = v173;
    *v173 = v171;
    if (v408)
    {
      v176 = v408->mNumberBuffers;
      if (v408->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v426.mSampleTime) = 136315394;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 458;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
        }

        v377 = __cxa_allocate_exception(0x10uLL);
        *v377 = &unk_2881B25F8;
        v377[2] = -50;
      }
    }

    else
    {
      v176 = 1;
    }

    MEMORY[0x28223BE20](v175);
    v178 = (&v387 - v177);
    bzero(&v387 - v177, v179 + 24);
    *v178 = v176;
    v181 = *(this + 204);
    if (*(this + 2260) == 1)
    {
      v182 = v405;
      if (!v181)
      {
        goto LABEL_319;
      }

      if (!*v181)
      {
        goto LABEL_317;
      }

      v183 = 0;
      v184 = (v181 + 4);
      do
      {
        bzero(*v184, *(v184 - 1));
        ++v183;
        v184 += 2;
      }

      while (v183 < *v181);
      v181 = *(this + 204);
    }

    v182 = v405;
    if (v181)
    {
LABEL_317:
      v185 = *v181;
      if ((*v181 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v426.mSampleTime) = 136315394;
          *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
          WORD2(v426.mHostTime) = 1024;
          *(&v426.mHostTime + 6) = 463;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
        }

        v383 = __cxa_allocate_exception(0x10uLL);
        *v383 = &unk_2881B25F8;
        v383[2] = -50;
      }

      goto LABEL_320;
    }

LABEL_319:
    v185 = 1;
LABEL_320:
    MEMORY[0x28223BE20](v180);
    v187 = (&v387 - v186);
    bzero(&v387 - v186, v188 + 24);
    v399 = v187;
    *v187 = v185;
    v190 = v182->mNumberBuffers;
    if ((v190 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v426.mSampleTime) = 136315394;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 465;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
      }

      v374 = __cxa_allocate_exception(0x10uLL);
      *v374 = &unk_2881B25F8;
      v374[2] = -50;
    }

    MEMORY[0x28223BE20](v189);
    v192 = (&v387 - v191);
    bzero(&v387 - v191, v193 + 24);
    *v192 = v190;
    v194 = v163->mNumberBuffers;
    if (v194)
    {
      v195 = 4 * *(this + 131);
      v196 = v404;
      v197 = &v163->mBuffers[0].mData;
      v198 = v393;
      do
      {
        *(v197 - 2) = 1;
        *(v197 - 1) = v195;
        v199 = *v198;
        v198 += 2;
        *v197 = (v199 + 4 * v196);
        v197 += 2;
        --v194;
      }

      while (v194);
    }

    v200 = *p_mNumberBuffers;
    if (v200)
    {
      v201 = 4 * *(this + 131);
      v202 = v404;
      v203 = (p_mNumberBuffers + 4);
      v204 = v392;
      do
      {
        *(v203 - 2) = 1;
        *(v203 - 1) = v201;
        v205 = v407;
        if (v407)
        {
          v205 = (*v204 + 4 * v202);
        }

        *v203 = v205;
        v203 += 2;
        v204 += 2;
        --v200;
      }

      while (v200);
    }

    v206 = *v401;
    if (v206)
    {
      v207 = 4 * *(this + 131);
      v208 = v404;
      v209 = (v401 + 4);
      v210 = v391;
      do
      {
        *(v209 - 2) = 1;
        *(v209 - 1) = v207;
        v211 = v406;
        if (v406)
        {
          v211 = *v210 + 4 * v208;
        }

        *v209 = v211;
        v209 += 2;
        v210 += 2;
        --v206;
      }

      while (v206);
    }

    v212 = *v178;
    if (v212)
    {
      v213 = 4 * *(this + 131);
      v214 = v404;
      v215 = (v178 + 4);
      v216 = v394;
      do
      {
        *(v215 - 2) = 1;
        *(v215 - 1) = v213;
        v217 = v408;
        if (v408)
        {
          v217 = *v216 + 4 * v214;
        }

        *v215 = v217;
        v215 += 2;
        v216 += 2;
        --v212;
      }

      while (v212);
    }

    if (v190)
    {
      v218 = 4 * *(this + 131);
      v219 = v404;
      v220 = (v192 + 4);
      v221 = v390;
      do
      {
        *(v220 - 2) = 1;
        *(v220 - 1) = v218;
        if (v182)
        {
          v222 = *v221 + 4 * v219;
        }

        else
        {
          v222 = 0;
        }

        *v220 = v222;
        v220 += 2;
        v221 += 2;
        --v190;
      }

      while (v190);
    }

    if (v185)
    {
      v223 = 4 * *(this + 131);
      v224 = v404;
      v225 = v185;
      v226 = v181 + 4;
      v227 = (v399 + 4);
      do
      {
        *(v227 - 2) = 1;
        *(v227 - 1) = v223;
        if (v181)
        {
          v228 = *v226 + 4 * v224;
        }

        else
        {
          v228 = 0;
        }

        *v227 = v228;
        v227 += 2;
        v226 += 2;
        --v225;
      }

      while (v225);
    }

    if (v408 && (*(this + 2260) & 1) != 0)
    {
      v229 = v408->mNumberBuffers >= v185 ? v185 : v408->mNumberBuffers;
      if (v229)
      {
        v230 = (v399 + 4);
        v231 = v394;
        do
        {
          v232 = *(v231 - 1);
          v233 = *(v230 - 1);
          if (v232 >= v233)
          {
            v234 = v233;
          }

          else
          {
            v234 = v232;
          }

          memcpy(*v230, *v231, v234);
          v231 += 2;
          v230 += 2;
          --v229;
        }

        while (v229);
      }
    }

    v235 = *(this + 131);
    MonoABL = GetMonoABL(v163, &v431, v235);
    v397 = v235;
    if (v407)
    {
      v237 = p_mNumberBuffers;
    }

    else
    {
      v237 = 0;
    }

    i = GetMonoABL(v237, &v430, *(this + 131));
    if (v406)
    {
      v239 = v401;
    }

    else
    {
      v239 = 0;
    }

    v240 = GetMonoABL(v239, &v411, *(this + 131));
    if (v408)
    {
      v241 = v178;
    }

    else
    {
      v241 = 0;
    }

    v242 = GetMonoABL(v241, &v410, *(this + 131));
    v243 = *(this + 1108);
    if ((v243 & 0x40000000) == 0)
    {
      goto LABEL_373;
    }

    v244 = *(this + 1109);
    if ((v244 & 0x40000000) == 0)
    {
      goto LABEL_373;
    }

    v245 = 0;
    if (!*(this + 469) || (v243 & v244 & 0x80000000) == 0)
    {
      goto LABEL_374;
    }

    if (!*(this + 470) || !*v387 || !*(*v387 + 80))
    {
LABEL_373:
      v245 = 0;
      goto LABEL_374;
    }

    vp::Audio_Buffer::prepare(v387, *(this + 131));
    v301 = *(this + 345);
    if (v301)
    {
      v400 = *(v301 + 80);
    }

    else
    {
      v400 = 0;
    }

    if (v400->mNumberBuffers)
    {
      v304 = 0;
      v305 = &v400->mBuffers[0].mData;
      do
      {
        bzero(*v305, *(v305 - 1));
        ++v304;
        v305 += 2;
      }

      while (v304 < v400->mNumberBuffers);
      v301 = *v387;
    }

    if (v301)
    {
      v306 = *(v301 + 80);
    }

    else
    {
      v306 = 0;
    }

    LODWORD(v426.mSampleTime) = 512;
    AudioUnitSetParameter(*(this + 469), 1u, 0, 0, (*(this + 3152) + -1.0) * 24.0, 0);
    AudioUnitProcess(*(this + 469), &v426, &ioOutputBufferLists, *(this + 131), v306);
    v307 = *(this + 131);
    ioOutputBufferLists.mSampleTime = ioOutputBufferLists.mSampleTime + v307;
    if ((v403[3593] & 1) != 0 || v403[3594] == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x3Du, v307, v306, &ioOutputBufferLists);
      LODWORD(v307) = *(this + 131);
    }

    LODWORD(v426.mSampleTime) = 512;
    AudioUnitProcess(*(this + 470), &v426, &v416, v307, v306);
    v308 = *(this + 131);
    if (v403[3593] & 1) != 0 || (v403[3594])
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x3Eu, v308, v306, &v416);
      v308 = *(this + 131);
      v309 = v403[3593];
      v416.mSampleTime = v416.mSampleTime + v308;
      if (v309)
      {
        goto LABEL_521;
      }
    }

    else
    {
      v416.mSampleTime = v416.mSampleTime + v308;
    }

    if (v403[3594] == 1)
    {
LABEL_521:
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x3Fu, v308, v306, &v416);
    }

    v243 = *(this + 1108);
    v245 = v306;
LABEL_374:
    v246 = *(this + 2260);
    if (v246)
    {
      v247 = v192;
    }

    else
    {
      v247 = MonoABL;
    }

    if (*(this + 2260))
    {
      v248 = v399;
    }

    else
    {
      v248 = v242;
    }

    if (v248)
    {
      v249 = v248;
    }

    else
    {
      v249 = v245;
    }

    v400 = v249;
    if ((v243 & 0x8000) != 0 && (v250 = *(this + 1109), (v250 & 0x8000) != 0) && *(this + 454))
    {
      LODWORD(v428) = 512;
      v251 = p_mNumberBuffers;
      if (((v407 != 0) & v246) == 0)
      {
        v251 = i;
      }

      *&v426.mSampleTime = MonoABL;
      v426.mHostTime = v251;
      v252 = *&v401;
      if (((v406 != 0) & v246) == 0)
      {
        v252 = *&v240;
      }

      v253 = v399;
      if (((v408 != 0) & v246) == 0)
      {
        v253 = v242;
      }

      v426.mRateScalar = v252;
      v426.mWordClockTime = v253;
      *&v426.mSMPTETime.mSubframes = v245;
      *&v429 = v247;
      *(&v429 + 1) = v400;
      if ((v243 & 0x8000000) != 0 && ((v250 & 0x8000000) != 0 || *(this + 480) == 1) && v248)
      {
        v254 = 1.0;
        if ((v246 & 1) == 0)
        {
          v254 = *(this + 3155);
        }

        v255 = *(this + 1122) + ((*(this + 1123) - *(this + 1122)) * v254);
        *(this + 1121) = v255;
        v409 = __exp10f(v255 / 20.0);
        v257 = v248->mNumberBuffers;
        mBuffers = v248->mBuffers;
        for (i = 16 * v257; i; i -= 16)
        {
          MEMORY[0x2743CCE20](mBuffers->mData, 1, &v409, mBuffers->mData, 1, *(this + 131));
          ++mBuffers;
        }

        v243 = *(this + 1108);
      }

      if ((v243 & 0x10000000) != 0 && (*(this + 8875) & 0x10) != 0)
      {
        (*(*this + 688))(this, MonoABL, v399);
      }

      AudioUnitProcessMultiple(*(this + 454), &v428, &v415, *(this + 131), 5u, &v426, 2u, &v429);
      v258 = *(this + 131);
      v415.mSampleTime = v415.mSampleTime + v258;
      if ((v403[3593] & 1) != 0 || v403[3594] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Bu, v258, v247, &v415), v258 = *(this + 131), (v403[3593]) || v403[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x78u, v258, v400, &v415);
      }
    }

    else
    {
      p_mNumberBuffers = &v245->mNumberBuffers;
      if (i)
      {
        LODWORD(v426.mSampleTime) = 1055175620;
        MEMORY[0x2743CCE10](*(i + 16), 1, &v426, MonoABL->mBuffers[0].mData, 1, MonoABL->mBuffers[0].mData, 1, *(this + 131));
      }

      if (v240)
      {
        MEMORY[0x2743CCD80](MonoABL->mBuffers[0].mData, 1, v240->mBuffers[0].mData, 1, MonoABL->mBuffers[0].mData, 1, *(this + 131));
      }

      v259 = MonoABL->mNumberBuffers;
      if (v259)
      {
        v260 = 0;
        i = &v247->mBuffers[0].mData;
        v261 = &MonoABL->mBuffers[0].mData;
        do
        {
          if (*v261 != *i)
          {
            memcpy(*i, *v261, *(v261 - 1));
            v259 = MonoABL->mNumberBuffers;
          }

          ++v260;
          i += 16;
          v261 += 2;
        }

        while (v260 < v259);
      }

      if (v242)
      {
        v262 = p_mNumberBuffers;
        if ((*(this + 8867) & 8) != 0 && ((*(this + 8875) & 8) != 0 || *(this + 480) == 1))
        {
          v263 = *(this + 1122) + ((*(this + 1123) - *(this + 1122)) * *(this + 3155));
          *(this + 1121) = v263;
          LODWORD(v426.mSampleTime) = __exp10f(v263 / 20.0);
          MEMORY[0x2743CCE20](v242->mBuffers[0].mData, 1, &v426, v242->mBuffers[0].mData, 1, *(this + 131));
          v262 = p_mNumberBuffers;
        }

        if (v262)
        {
          MEMORY[0x2743CCD80](v242->mBuffers[0].mData, 1, *(v262 + 2), 1, v242->mBuffers[0].mData, 1, *(this + 131));
        }
      }

      else
      {
        v242 = p_mNumberBuffers;
      }

      if (v400)
      {
        if (v242)
        {
          v264 = v242->mNumberBuffers;
          if (v264)
          {
            v265 = 0;
            i = &v400->mBuffers[0].mData;
            v266 = &v242->mBuffers[0].mData;
            do
            {
              if (*v266 != *i)
              {
                memcpy(*i, *v266, *(v266 - 1));
                v264 = v242->mNumberBuffers;
              }

              ++v265;
              i += 16;
              v266 += 2;
            }

            while (v265 < v264);
          }
        }
      }
    }

    v267 = *(this + 1108);
    if ((v267 & 0x8000) == 0)
    {
      a7 = v396;
LABEL_437:
      v12 = v403;
      goto LABEL_438;
    }

    a7 = v396;
    if ((*(this + 8873) & 0x80) == 0)
    {
      goto LABEL_437;
    }

    v12 = v403;
    if (*(this + 454) && *(this + 2260) == 1)
    {
      v302 = (*(*this + 664))(this, v247, v412);
      v302.n128_u32[0] = *(this + 131);
      *v412 = *v412 + v302.n128_u64[0];
      v267 = *(this + 1108);
    }

LABEL_438:
    if ((v267 & 0x200000) != 0 && (*(this + 8874) & 0x20) != 0 && *(this + 460))
    {
      DWORD2(v429) = 0;
      *&v429 = 0;
      v268 = *(this + 3153);
      v269 = *(this + 3154);
      if (v12[3593] == 1)
      {
        v270 = *(this + 3155);
        LODWORD(v429) = *(this + 3153);
        *(&v429 + 4) = __PAIR64__(v270, LODWORD(v269));
        VoiceProcessorV2::WriteControlDataToFile(this, &v429, 0xCu, 0x34u);
      }

      v271 = *v389;
      v272 = (v269 - v268) / (v161 / *v389);
      v273 = 2000.0;
      if (v272 <= 2000.0)
      {
        v273 = v272;
        if (v272 < -5000.0)
        {
          v273 = -5000.0;
        }
      }

      v274 = *(this + 131);
      AudioUnitSetParameter(*(this + 460), 5u, 0, 0, 0.0, 0);
      v275 = v274 / v271 * v273;
      *(this + 3153) = v268 + (v274 * (v275 / v274));
      v409 = 512;
      *&v426.mSampleTime = v247;
      v426.mHostTime = v400;
      v428 = v247;
      AudioUnitProcessMultiple(*(this + 460), &v409, &v414, *(this + 131), 2u, &v426, 1u, &v428);
      LODWORD(v276) = *(this + 131);
      v414.mSampleTime = v414.mSampleTime + v276;
    }

    else
    {
      v277 = 1.0;
      if ((*(this + 2260) & 1) == 0)
      {
        v277 = *(this + 3155);
      }

      *&v429 = v277;
      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v426, v247);
      v278 = *&v426.mSampleTime + 8;
      for (i = 16 * **&v426.mSampleTime; i; i -= 16)
      {
        MEMORY[0x2743CCE20](*(v278 + 8), 1, &v429, *(v278 + 8), 1, *(this + 131));
        v278 += 16;
      }

      if ((v12[3593] & 1) != 0 || v12[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x37u, *(this + 131), v247, a7);
      }
    }

    if (!v247)
    {
      break;
    }

    if (!v400 || (*(this + 8867) & 0x20) == 0 || (*(this + 8875) & 0x20) == 0 && *(this + 480) != 1)
    {
      v279 = *v192;
      if (*v192 >= v247->mNumberBuffers)
      {
        v279 = v247->mNumberBuffers;
      }

      if (v279)
      {
        v280 = 0;
        v281 = 0;
        do
        {
          v282 = v247->mBuffers[v280 / 0x10].mDataByteSize;
          v283 = v192[v280 / 4 + 3];
          if (v282 >= v283)
          {
            v284 = v283;
          }

          else
          {
            v284 = v282;
          }

          memcpy(*&v192[v280 / 4 + 4], v247->mBuffers[v280 / 0x10].mData, v284);
          ++v281;
          LODWORD(v285) = *v192;
          if (*v192 >= v247->mNumberBuffers)
          {
            v285 = v247->mNumberBuffers;
          }

          else
          {
            v285 = v285;
          }

          v280 += 16;
        }

        while (v281 < v285);
      }

      goto LABEL_468;
    }

    v293 = *(this + 2260);
    if (v293 == 1)
    {
      v294 = *(this + 91);
      v295 = v247->mNumberBuffers;
LABEL_482:
      if (v295)
      {
        v296 = 0;
        v297 = v294 - 1;
        v298 = v400->mBuffers;
        v299 = 4;
        do
        {
          if (v297 >= v296)
          {
            v300 = v296;
          }

          else
          {
            v300 = v297;
          }

          MEMORY[0x2743CCD80](*(&v247->mNumberBuffers + v299 * 4), 1, v298[v300].mData, 1, *&v192[v299], 1, *(this + 131));
          ++v296;
          v299 += 4;
        }

        while (v296 < v247->mNumberBuffers);
      }

      goto LABEL_468;
    }

    v295 = v247->mNumberBuffers;
    v294 = 1;
    if ((v293 & 1) != 0 || v295 == 1)
    {
      goto LABEL_482;
    }

      ;
    }

LABEL_468:
    v286 = VoiceProcessorV2::GetDynamicsDSPChannelCount(this);
    if ((v286 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v426.mSampleTime) = 136315394;
        *(&v426.mSampleTime + 4) = "vpProcessDownlink_v3.cpp";
        WORD2(v426.mHostTime) = 1024;
        *(&v426.mHostTime + 6) = 771;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v426, 0x12u);
      }

      v375 = __cxa_allocate_exception(0x10uLL);
      *v375 = &unk_2881B25F8;
      v375[2] = -50;
    }

    v287 = v286;
    MEMORY[0x28223BE20](v286);
    v289 = (&v387 - v288);
    bzero(&v387 - v288, v290 + 24);
    v289->mNumberBuffers = v287;
    v141 = memcpy(v289->mBuffers, v192 + 2, 16 * v287);
    v9 = v403;
    v144 = v406;
    v291 = v398;
    if ((v403[3593] & 1) != 0 || v403[3594] == 1)
    {
      v141 = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x35u, *(this + 131), v289, a7);
    }

    v145 = v407;
    v146 = v395;
    if (*(this + 8868) & 1) != 0 && (*(this + 8876))
    {
      v141 = *(this + 471);
      if (v141)
      {
        LODWORD(v426.mSampleTime) = 512;
        v141 = AudioUnitProcess(v141, &v426, &v413, *(this + 131), v289);
        LODWORD(v292) = *(this + 131);
        v413.mSampleTime = v413.mSampleTime + v292;
      }
    }

    v404 += v397;
    v160 = v291 + 1;
    if (v160 >= *(this + 132))
    {
      goto LABEL_523;
    }
  }

  v428 = 0;
  v427 = 0u;
  memset(&v426, 0, sizeof(v426));
  v356 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v371 = 3;
  }

  else
  {
    v371 = 2;
  }

  LODWORD(v429) = 134217984;
  *(&v429 + 4) = 0;
  LODWORD(v386) = 12;
  _os_log_send_and_compose_impl(v371, &v428, &v426, 80, &dword_2724B4000, v356, 16, "assertion failure: compressedVoiceABL != nullptr -> %llu", &v429);
  _os_crash_msg();
  __break(1u);
LABEL_648:
  dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
LABEL_620:
  v357 = i * 0.0000000416666667 - v13;
  CALegacyLog::log(v356, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 949, "ProcessDownlinkAudio", "DL %f %f %f", a7->mSampleTime, v13, v357);
  v355 = v405;
  v358 = *(this + 123);
  v359 = *(this + 42);
  if (v357 >= v358 / v359)
  {
    v360 = *(this + 1589);
    if (*&v247[141].mNumberBuffers != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v360, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 952, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v357);
    v355 = v405;
    v358 = *(this + 123);
    v359 = *(this + 42);
  }

  if (v13 - *(this + 1984) > (*(this + 296) + v358) / v359)
  {
    v361 = *(this + 1589);
    if (*&v247[141].mNumberBuffers != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v361, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v3.cpp", 955, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v13 - *(this + 1984));
    v355 = v405;
  }

  *(this + 1984) = v13;
LABEL_629:
  if (v12)
  {
    if (*(this + 1656) & 1) != 0 || (v362 = FadeInOverFewFrames(*(this + 205), v405, *(this + 412), *(this + 413)), *(this + 1656) = v362, *(this + 412) = HIDWORD(v362), (v362))
    {
      v363 = *(this + 205);
      v364 = v405->mNumberBuffers >= *v363 ? *v363 : v405->mNumberBuffers;
      if (v364)
      {
        v365 = &v405->mBuffers[0].mData;
        v366 = (v363 + 4);
        do
        {
          v367 = *(v365 - 1);
          v368 = *(v366 - 1);
          if (v367 >= v368)
          {
            v369 = v368;
          }

          else
          {
            v369 = v367;
          }

          memcpy(*v366, *v365, v369);
          v365 += 2;
          v366 += 2;
          --v364;
        }

        while (v364);
      }
    }
  }

  else
  {
    *(this + 412) = 0;
    *(this + 1656) = 0;
    FadeOutOverOneFrame(*(this + 205), v355);
  }

  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return 0;
}

void sub_27254ACC8(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 816));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

_DWORD *ABLRingBuffer<float>::ReadFrom(_DWORD *result, unsigned int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = result;
    if (*a3 == result[1])
    {
      v5 = result[2];
      if (v5)
      {
        if (v5 >= a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = result[2];
        }

        v7 = *result - result[3];
        if (v7 >= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        if (*a3)
        {
          v9 = 0;
          v10 = (a3 + 4);
          do
          {
            v11 = *v10;
            v10 += 2;
            result = memcpy(v11, (*(v4 + 3) + 4 * (v4[3] + *v4 * v9++)), 4 * v8);
            v12 = v4[1];
          }

          while (v9 < v12);
          if (v7 < v6 && v12)
          {
            v13 = 0;
            v14 = (a3 + 4);
            do
            {
              v15 = *v14;
              v14 += 2;
              result = memcpy((v15 + 4 * v8), (*(v4 + 3) + 4 * (*v4 * v13++)), 4 * (v6 - v8));
            }

            while (v13 < v4[1]);
          }
        }

        v16 = v4[3] + v6;
        v4[2] -= v6;
        v4[3] = v16;
        if (v16 >= *v4)
        {
          v4[3] = v16 - *v4;
        }
      }
    }
  }

  return result;
}

void *vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(void *this, const AudioBufferList *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = a2;
  if (!a2)
  {
    v4 = 0;
    memset(v7, 0, sizeof(v7));
    v2 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v5 = 134217984;
    v6 = 0;
    _os_log_send_and_compose_impl(v3, &v4, v7, 80, &dword_2724B4000, v2, 16, "assertion failure: m_audio_buffer_list != nullptr -> %llu", &v5);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

void sub_27254B01C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_2889()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t VoiceProcessorV3::DecorrelationAndCNGForMediaChat(VoiceProcessorV3 *this, AudioBufferList *a2, AudioTimeStamp *a3)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  outValue = -200.0;
  result = AudioUnitGetParameter(*(this + 454), 0xCu, 0, 0, &outValue);
  if (outValue <= -60.0)
  {
    v8 = *(this + 415) + -1.5;
    if (v8 < -60.0)
    {
      v8 = -60.0;
    }
  }

  else
  {
    if (*(this + 8866) & 1) != 0 && (*(this + 8874))
    {
      result = *(this + 455);
      if (result)
      {
        v10 = 512;
        ioOutputBufferLists = a2;
        inInputBufferLists[0] = a2;
        result = AudioUnitProcessMultiple(result, &v10, a3, *(this + 131), 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
      }
    }

    v8 = *(this + 415) + 0.5;
    if (v8 > 0.0)
    {
      v8 = 0.0;
    }
  }

  *(this + 415) = v8;
  if ((v6[3593] & 1) != 0 || v6[3594] == 1)
  {
    result = VoiceProcessorV2::SaveFilesWriteSignal(this, 0x7Au, *(this + 131), a2, a3);
  }

  v9 = *(this + 1108);
  if ((v9 & 0x20000) != 0 && (*(this + 8874) & 2) != 0 && *(this + 456))
  {
    (*(*this + 672))(this, 0, a3);
    result = MEMORY[0x2743CCD80](a2->mBuffers[0].mData, 1, *(*(*(this + 346) + 80) + 16), 1, a2->mBuffers[0].mData, 1, *(this + 131));
    v9 = *(this + 1108);
  }

  if ((v9 & 0x80000) != 0 && (*(this + 8874) & 8) != 0 && *(this + 458))
  {
    (*(*this + 672))(this, 1, a3);
    result = MEMORY[0x2743CCD80](*&a2[1].mBuffers[0].mNumberChannels, 1, *(*(*(this + 347) + 80) + 16), 1, *&a2[1].mBuffers[0].mNumberChannels, 1, *(this + 131));
  }

  if ((v6[3593] & 1) != 0 || v6[3594] == 1)
  {
    return VoiceProcessorV2::SaveFilesWriteSignal(this, 0x7Bu, *(this + 131), a2, a3);
  }

  return result;
}

uint64_t VoiceProcessorV3::CNGAndEqForMediaChat(VoiceProcessorV3 *this, int a2, const AudioTimeStamp *a3)
{
  if (a2)
  {
    v5 = 2776;
  }

  else
  {
    v5 = 2768;
  }

  if (a2)
  {
    v6 = 20;
  }

  else
  {
    v6 = 18;
  }

  if (a2)
  {
    v7 = 19;
  }

  else
  {
    v7 = 17;
  }

  vp::Audio_Buffer::prepare((this + v5), *(this + 131));
  v8 = *(this + v5);
  if (v8)
  {
    v9 = *(v8 + 80);
  }

  else
  {
    v9 = 0;
  }

  if (v9->mNumberBuffers)
  {
    v10 = 0;
    p_mData = &v9->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v10;
      p_mData += 2;
    }

    while (v10 < v9->mNumberBuffers);
  }

  ioActionFlags = 512;
  AudioUnitSetParameter(*(this + v7 + 439), 1u, 0, 0, *(this + 415) + ((*(this + 3152) + -1.0) * 24.0), 0);
  AudioUnitProcess(*(this + v7 + 439), &ioActionFlags, a3, *(this + 131), v9);
  result = VoiceProcessorV2::VPUseAUInProcess(this, v6, 0);
  if (result)
  {
    ioActionFlags = 512;
    return AudioUnitProcess(*(this + v6 + 439), &ioActionFlags, a3, *(this + 131), v9);
  }

  return result;
}

void VoiceProcessorV3::DownlinkAGCForMediaChat(VoiceProcessorV3 *this, AudioBufferList *a2, unsigned int a3, const AudioTimeStamp *a4)
{
  ioDataSize = 4;
  outData = 0;
  v27 = 0.0;
  AudioUnitGetProperty(*(this + 453), 0x15u, 0, 0, &outData, &ioDataSize);
  if (!outData)
  {
    __C = 0.0;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(ioActionFlags, a2);
    v8 = 0;
    v9 = 0;
    v10 = *ioActionFlags + 8;
    v11 = 16 * **ioActionFlags;
    for (i = -1.0; v11; v11 -= 16)
    {
      vDSP_svesq(*(v10 + 8), 1, &__C, a3);
      if (__C > i)
      {
        i = __C;
        v9 = v8;
      }

      ++v8;
      v10 += 16;
    }

    vp::Audio_Buffer::prepare(this + 348, a3);
    mBuffers = a2->mBuffers;
    memcpy(*(*(*(this + 348) + 80) + 16), a2->mBuffers[v9].mData, a2->mBuffers[v9].mDataByteSize);
    ioActionFlags[0] = 512;
    v14 = *(this + 1108);
    if ((v14 & 2) != 0 && (*(this + 8872) & 2) != 0)
    {
      v15 = *(this + 440);
      if (v15)
      {
        outValue = 0.0;
        AudioUnitGetParameter(v15, 0x73707066u, 0, 0, &outValue);
        AudioUnitSetParameter(*(this + 453), 0x23u, 0, 0, outValue, 0);
        v14 = *(this + 1108);
      }
    }

    if ((v14 & 0x8000) != 0 && (*(this + 8873) & 0x80) != 0)
    {
      v16 = *(this + 454);
      if (v16)
      {
        outValue = -200.0;
        AudioUnitGetParameter(v16, 0x14u, 0, 0, &outValue);
        v17 = *(this + 571);
        if (v17)
        {
          *(this + 571) = v17 - 1;
        }

        else
        {
          v23 = *(this + 1128);
          if (outValue <= v23 || *(this + 573))
          {
            if (outValue <= v23 && *(this + 573) == 1)
            {
              AudioUnitSetParameter(*(this + 453), 8u, 0, 0, *(this + 574), 0);
              AudioUnitSetParameter(*(this + 453), 0x2Bu, 0, 0, *(this + 575), 0);
              *(this + 571) = *(this + 1129);
              *(this + 573) = 0;
            }
          }

          else
          {
            AudioUnitSetParameter(*(this + 453), 8u, 0, 0, *(this + 1127), 0);
            AudioUnitSetParameter(*(this + 453), 0x2Bu, 0, 0, *(this + 1126), 0);
            *(this + 571) = *(this + 1129);
            *(this + 573) = 1;
          }
        }
      }
    }

    v18 = *(this + 348);
    if (v18)
    {
      v19 = *(v18 + 80);
    }

    else
    {
      v19 = 0;
    }

    AudioUnitProcess(*(this + 453), ioActionFlags, a4, a3, v19);
    AudioUnitGetParameter(*(this + 453), 1u, 0, 0, &v27);
    v20 = __exp10f(v27 / 20.0);
    v21 = (this + 16856);
    outValue = (v20 - *v21) / a3;
    for (j = 16 * a2->mNumberBuffers; j; j -= 16)
    {
      vDSP_vrampmul(mBuffers->mData, 1, v21, &outValue, mBuffers->mData, 1, a3);
      ++mBuffers;
    }

    *v21 = v20;
  }
}