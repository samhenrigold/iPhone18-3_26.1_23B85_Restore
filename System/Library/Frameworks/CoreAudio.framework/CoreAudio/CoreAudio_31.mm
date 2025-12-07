void sub_1DE43B9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F5991188;
  return result;
}

uint64_t ___ZNK15HALS_MetaDevice11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyDeviceName(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

uint64_t HALS_MetaDevice::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(uint64_t a1, _BYTE *a2)
{
  v4 = *a1;
  v6 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
  if (v6)
  {
    *a2 = HALS_Device::HasProperty(v4, v5, *(a1 + 16), **(a1 + 24));
  }

  return v6;
}

double HALS_MetaDevice::_Deactivate(HALS_MetaDevice *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (((*(this + 194) - *(this + 193)) & 0x7FFFFFFF8) != 0)
  {
    HALS_MetaDevice::UnregisterTaps(this);
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = (this + 24 * v2 + 1608);
    v6 = *v5;
    if (v5[1] != *v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * v7);
        (*(*v9 + 8))(v9);
        HALS_ObjectMap::ObjectIsDead(v9, v10);
        v7 = v8;
        v6 = *v5;
        ++v8;
      }

      while (v7 < (v5[1] - *v5) >> 3);
    }

    v3 = 0;
    v5[1] = v6;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  v11 = *((*(**(this + 184) + 64))() + 72);
  if (v11 != pthread_self())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_MetaDeviceDescription.cpp";
      v16 = 1024;
      v17 = 64;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDeviceDescription::Deactivate: inner methods have to be called from inside the command gate", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  HALS_MetaDeviceDescription::TeardownSubDeviceList((this + 1472));
  HALS_MetaDeviceDescription::TeardownSubTapList((this + 1472));

  return HALS_Device::_Deactivate(this);
}

void HALS_MetaDevice::~HALS_MetaDevice(void **this)
{
  HALS_MetaDevice::~HALS_MetaDevice(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596E9C8;
  if (*(this + 2031) < 0)
  {
    operator delete(this[251]);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 209));
  v2 = this[208];
  this[208] = 0;
  if (v2)
  {
    MEMORY[0x1E12C1730](v2, 0x20C4093837F09);
  }

  for (i = 0; i != -6; i -= 3)
  {
    v4 = this[i + 204];
    if (v4)
    {
      this[i + 205] = v4;
      operator delete(v4);
    }
  }

  HALS_MetaDeviceDescription::~HALS_MetaDeviceDescription((this + 184));

  HALS_Device::~HALS_Device(this);
}

void HALS_MetaDevice::Activate(const __CFDictionary **this)
{
  HALS_MetaDevice::_UpdateStreams(this, &v8);
  if (*(this + 1660) == 1)
  {
    v2 = *(this + 414);
  }

  else
  {
    v2 = 0;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    v4 = this[208];
    v5 = *v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_Client_block_invoke;
    v9[3] = &__block_descriptor_tmp_8;
    v9[4] = v4;
    v9[5] = v3;
    v6 = (*(*v5 + 64))(v5);
    HALB_CommandGate::ExecuteCommand(v6, v9);
  }

  else
  {
    HALS_MetaDevice::InheritSubdeviceDSPForClient(this, 1, v3);
  }

  HALS_Device::Activate(this);
  HALS_ObjectMap::ReleaseObject(v3, v7);
}

void ___ZN15HALS_MetaDevice17RealDeviceArrivedEP11HALS_Device_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(*(a1 + 40) + 8);
  if (HALS_MetaDeviceDescription::IsDeviceInRawDescription(v1 + 184, *(a1 + 56)))
  {
    *v18 = 0;
    HALS_DeviceState::HALS_DeviceState(v20);
    HALS_DeviceState::Capture(v20, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v1 + 184, 0);
    HALS_MetaDevice::_UpdateStreams(v1, v18);
    HALS_DeviceState::HALS_DeviceState(v19);
    HALS_DeviceState::Capture(v19, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(v20, v19, (v2 + 40), (v3 + 40));
    *&v17.mSelector = 0x676C6F62616D7374;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v4);
    *&v17.mSelector = 0x676C6F6261706364;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v5);
    *&v17.mSelector = 0x676C6F6267727570;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v6);
    *&v17.mSelector = 0x676C6F6261677270;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v7);
    *&v17.mSelector = 0x676C6F6261636F6DLL;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v8);
    *&v17.mSelector = 0x676C6F6261746170;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v9);
    *&v17.mSelector = 0x676C6F6274617023;
    v17.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v10);
    v12 = v18[1];
    if (v18[1] || v18[0])
    {
      *&v17.mSelector = 0x676C6F6273746D23;
      v17.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v11);
      if (v12)
      {
        *&v17.mSelector = 0x696E707473746D23;
        v17.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v13);
        if (!v18[0])
        {
LABEL_9:
          if (*(v2 + 40) == *(v2 + 48))
          {
            v14 = *(v3 + 40);
            while (v14 != *(v3 + 48))
            {
              v15 = *v14;
              v16 = v14[1];
              v14 += 4;
              if (v15 != v16)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            *&v17.mSelector = 0x676C6F6264696666;
            v17.mElement = 0;
            CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v13);
          }

          goto LABEL_14;
        }

LABEL_8:
        *&v17.mSelector = 0x6F75747073746D23;
        v17.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v17, v13);
        goto LABEL_9;
      }

      if (v18[0])
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    HALS_DeviceState::~HALS_DeviceState(v19);
    HALS_DeviceState::~HALS_DeviceState(v20);
  }
}

void sub_1DE43C19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  HALS_DeviceState::~HALS_DeviceState(va);
  HALS_DeviceState::~HALS_DeviceState(va1);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice14RealDeviceDiedEP11HALS_Device_block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  v2 = a1[7];
  v3 = *(a1[4] + 8);
  v4 = *(a1[5] + 8);
  if (HALS_MetaDeviceDescription::IsDeviceInRawDescription(v1 + 184, v2))
  {
    *v19 = 0;
    HALS_DeviceState::HALS_DeviceState(v21);
    HALS_DeviceState::Capture(v21, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v1 + 184, v2);
    HALS_MetaDevice::_UpdateStreams(v1, v19);
    HALS_DeviceState::HALS_DeviceState(v20);
    HALS_DeviceState::Capture(v20, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(v21, v20, (v3 + 40), (v4 + 40));
    *&v18.mSelector = 0x676C6F62616D7374;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v5);
    *&v18.mSelector = 0x676C6F6261706364;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v6);
    *&v18.mSelector = 0x676C6F6267727570;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v7);
    *&v18.mSelector = 0x676C6F6261677270;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v8);
    *&v18.mSelector = 0x676C6F6261636F6DLL;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v9);
    *&v18.mSelector = 0x676C6F6261746170;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v10);
    *&v18.mSelector = 0x676C6F6274617023;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v11);
    v13 = v19[1];
    if (v19[1] || v19[0])
    {
      *&v18.mSelector = 0x676C6F6273746D23;
      v18.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v12);
      if (v13)
      {
        *&v18.mSelector = 0x696E707473746D23;
        v18.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v14);
        if (!v19[0])
        {
LABEL_9:
          if (*(v3 + 40) == *(v3 + 48))
          {
            v15 = *(v4 + 40);
            while (v15 != *(v4 + 48))
            {
              v16 = *v15;
              v17 = v15[1];
              v15 += 4;
              if (v16 != v17)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            *&v18.mSelector = 0x676C6F6264696666;
            v18.mElement = 0;
            CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v14);
          }

          goto LABEL_14;
        }

LABEL_8:
        *&v18.mSelector = 0x6F75747073746D23;
        v18.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v18, v14);
        goto LABEL_9;
      }

      if (v19[0])
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    HALS_DeviceState::~HALS_DeviceState(v20);
    HALS_DeviceState::~HALS_DeviceState(v21);
  }
}

void sub_1DE43C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  HALS_DeviceState::~HALS_DeviceState(va);
  HALS_DeviceState::~HALS_DeviceState(va1);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice25HandleTapSampleRateChangeEv_block_invoke(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  if (((*(v1 + 1552) - *(v1 + 1544)) & 0x7FFFFFFF8) != 0)
  {
    *v36 = 0;
    HALS_DeviceState::HALS_DeviceState(v38);
    HALS_DeviceState::Capture(v38, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList((v1 + 1472), 0);
    HALS_MetaDevice::_UpdateStreams(v1, v36);
    HALS_DeviceState::HALS_DeviceState(v37);
    HALS_DeviceState::Capture(v37, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(v38, v37, (*(a1[4] + 8) + 40), (*(a1[5] + 8) + 40));
    v3 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F62616D7374;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v35, v4);
    v5 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6261706364;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v5 + 40), &v35, v6);
    v7 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6267727570;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v7 + 40), &v35, v8);
    v9 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6261677270;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v9 + 40), &v35, v10);
    v11 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6261636F6DLL;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v11 + 40), &v35, v12);
    v13 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6261746170;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v13 + 40), &v35, v14);
    v15 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6274617023;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v15 + 40), &v35, v16);
    v17 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F626E737274;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v17 + 40), &v35, v18);
    v19 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F6261737274;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v19 + 40), &v35, v20);
    v21 = *(a1[4] + 8);
    *&v35.mSelector = 0x676C6F626E737223;
    v35.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v21 + 40), &v35, v22);
    v24 = v36[1];
    if (v36[1] || v36[0])
    {
      *&v35.mSelector = 0x676C6F6273746D23;
      v35.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem((*(a1[4] + 8) + 40), &v35, v23);
      if (v24)
      {
        *&v35.mSelector = 0x696E707473746D23;
        v35.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((*(a1[4] + 8) + 40), &v35, v25);
        if (!v36[0])
        {
LABEL_9:
          v26 = *(a1[4] + 8);
          v28 = *(v26 + 40);
          v29 = *(v26 + 48);
          v27 = (v26 + 40);
          if (v28 == v29)
          {
            v30 = *(a1[5] + 8);
            v31 = *(v30 + 40);
            v32 = *(v30 + 48);
            while (v31 != v32)
            {
              v33 = *v31;
              v34 = v31[1];
              v31 += 4;
              if (v33 != v34)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            *&v35.mSelector = 0x676C6F6264696666;
            v35.mElement = 0;
            CAPropertyAddressList::AppendUniqueItem(v27, &v35, v25);
          }

          goto LABEL_14;
        }

LABEL_8:
        *&v35.mSelector = 0x6F75747073746D23;
        v35.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((*(a1[4] + 8) + 40), &v35, v25);
        goto LABEL_9;
      }

      if (v36[0])
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    HALS_DeviceState::~HALS_DeviceState(v37);
    HALS_DeviceState::~HALS_DeviceState(v38);
  }
}

void sub_1DE43C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  HALS_DeviceState::~HALS_DeviceState(va);
  HALS_DeviceState::~HALS_DeviceState(va1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15HALS_MetaDevice6HasTapEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyTapList(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

CFDictionaryRef ___ZN15HALS_MetaDevice16UpdateTapReadersEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 40) + 1472));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_AHPObject::SetPropertyData(HALS_AHPObject *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v21 = mSelector == 1937007734;
    v22 = 1869638759;
  }

  else
  {
    v21 = mSelector == 1650682995;
    v22 = 1668047219;
  }

  if (v21 || mSelector == v22)
  {
    HALS_Object::SetPropertyData(this, a2, a3, v16, v17, v18, v19, a8);
  }

  v24 = *(*(this + 6) + 32);

  return HALS_AHPPlugIn::ObjectSetPropertyData(v24, a2, a3, a6, a7, a4, a5);
}

uint64_t HALS_AHPObject::GetPropertyData(HALS_AHPObject *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(this, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 6) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPObject::GetPropertyDataSize(HALS_AHPObject *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v11 = (*(*this + 96))(this, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(*(this + 6) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPObject::IsPropertySettable(HALS_AHPObject *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v7 = (*(*this + 96))(this, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v10 = mSelector == 1937007734;
    v11 = 1869638759;
  }

  else
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Object::IsPropertySettable(v7, v8, a3);
  }

  else
  {
    v14 = *(*(this + 6) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

BOOL HALS_AHPObject::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(**(*(a1 + 48) + 32) + 184))(*(*(a1 + 48) + 32), a2) != 0;
  }

  return result;
}

void HALS_AHPObject::~HALS_AHPObject(HALS_AHPObject *this)
{
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Tone_Generator::generate_or_compare_audio(AMCP::DAL::DAL_Time const&,AMCP::DAL::DAL_Timed_Segment &,AMCP::DAL::Container const&,AMCP::Tone_Generator::Generate_Or_Compare,double)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Cannot compare empty range", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Tone_Generator::generate_or_compare_audio(AMCP::DAL::DAL_Time const&,AMCP::DAL::DAL_Timed_Segment &,AMCP::DAL::Container const&,AMCP::Tone_Generator::Generate_Or_Compare,double)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

float AMCP::DAL::Sample_Setter<float>::get_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v3) >> 4)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 144;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v14);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual float AMCP::DAL::Sample_Setter<float>::get_sample(size_t, size_t) [T = float]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = (v3 + 16 * a2);
  if (v4[1] <= a3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 145;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v15);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual float AMCP::DAL::Sample_Setter<float>::get_sample(size_t, size_t) [T = float]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  return *(*v4 + 4 * a3);
}

void sub_1DE43D528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

float AMCP::DAL::Sample_Setter<float>::subtract_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v29 = "Sample_Format_Handler.h";
      v30 = 1024;
      v31 = 138;
      v32 = 2080;
      v33 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "", v16);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "virtual void AMCP::DAL::Sample_Setter<float>::subtract_sample(size_t, size_t, float) [T = float]";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v36 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "Sample_Format_Handler.h";
      v30 = 1024;
      v31 = 139;
      v32 = 2080;
      v33 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "", v17);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "virtual void AMCP::DAL::Sample_Setter<float>::subtract_sample(size_t, size_t, float) [T = float]";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v36 = 139;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = *v5;
  result = *(v6 + 4 * a3) - a4;
  *(v6 + 4 * a3) = result;
  return result;
}

void sub_1DE43DA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

float AMCP::DAL::Sample_Setter<float>::add_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v29 = "Sample_Format_Handler.h";
      v30 = 1024;
      v31 = 132;
      v32 = 2080;
      v33 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "", v16);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "virtual void AMCP::DAL::Sample_Setter<float>::add_sample(size_t, size_t, float) [T = float]";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v36 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "Sample_Format_Handler.h";
      v30 = 1024;
      v31 = 133;
      v32 = 2080;
      v33 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "", v17);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5991430;
    v22 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v34 = "virtual void AMCP::DAL::Sample_Setter<float>::add_sample(size_t, size_t, float) [T = float]";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v36 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = *v5;
  result = *(v6 + 4 * a3) + a4;
  *(v6 + 4 * a3) = result;
  return result;
}

void sub_1DE43DFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::DAL::Sample_Setter<float>::set_sample(AMCP::Log::AMCP_Scope_Registry *result, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(result + 1);
  if (a2 >= (*(result + 2) - v4) >> 4)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 126;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v14);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::DAL::Sample_Setter<float>::set_sample(size_t, size_t, float) [T = float]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 127;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v15);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual void AMCP::DAL::Sample_Setter<float>::set_sample(size_t, size_t, float) [T = float]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  *(*v5 + 4 * a3) = a4;
  return result;
}

void sub_1DE43E528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Sample_Setter<float>::length_in_frames(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  if (v1 == *(a1 + 2))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Sample_Format_Handler.h";
      v20 = 1024;
      v21 = 121;
      v22 = 2080;
      v23 = "not (not m_sample_group.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v9, "", v7);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual size_t AMCP::DAL::Sample_Setter<float>::length_in_frames() const [T = float]";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v26 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return *(v1 + 8);
}

void sub_1DE43E848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Sample_Setter<float>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596F050;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Sample_Setter<float>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596F050;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));
  return a1;
}

float AMCP::DAL::Sample_Setter<int>::get_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v3) >> 4)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 144;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v14);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual float AMCP::DAL::Sample_Setter<int>::get_sample(size_t, size_t) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = (v3 + 16 * a2);
  if (v4[1] <= a3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 145;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v15);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual float AMCP::DAL::Sample_Setter<int>::get_sample(size_t, size_t) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  return *(*v4 + 4 * a3) / 2147483650.0;
}

void sub_1DE43EE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<int>::subtract_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 138;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<int>::subtract_sample(size_t, size_t, float) [T = int]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 139;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<int>::subtract_sample(size_t, size_t, float) [T = int]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 139;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 2147483650.0;
  *(*v5 + 4 * a3) -= result;
  return result;
}

void sub_1DE43F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<int>::add_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 132;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<int>::add_sample(size_t, size_t, float) [T = int]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 133;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<int>::add_sample(size_t, size_t, float) [T = int]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 2147483650.0;
  *(*v5 + 4 * a3) += result;
  return result;
}

void sub_1DE43F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<int>::set_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 126;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<int>::set_sample(size_t, size_t, float) [T = int]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 127;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<int>::set_sample(size_t, size_t, float) [T = int]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 2147483650.0;
  *(*v5 + 4 * a3) = result;
  return result;
}

void sub_1DE43FEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Sample_Setter<int>::length_in_frames(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  if (v1 == *(a1 + 2))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Sample_Format_Handler.h";
      v20 = 1024;
      v21 = 121;
      v22 = 2080;
      v23 = "not (not m_sample_group.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v9, "", v7);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual size_t AMCP::DAL::Sample_Setter<int>::length_in_frames() const [T = int]";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v26 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return *(v1 + 8);
}

void sub_1DE4401E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Sample_Setter<int>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EFE8;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Sample_Setter<int>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EFE8;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));
  return a1;
}

float AMCP::DAL::Sample_Setter<short>::get_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v3) >> 4)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 144;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v14);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual float AMCP::DAL::Sample_Setter<short>::get_sample(size_t, size_t) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = (v3 + 16 * a2);
  if (v4[1] <= a3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 145;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v17, "", v15);
    std::logic_error::logic_error(&v18, &v17);
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "virtual float AMCP::DAL::Sample_Setter<short>::get_sample(size_t, size_t) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  return *(*v4 + 2 * a3) / 32767.0;
}

void sub_1DE4407F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<short>::subtract_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 138;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<short>::subtract_sample(size_t, size_t, float) [T = short]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 139;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<short>::subtract_sample(size_t, size_t, float) [T = short]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 139;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 32767.0;
  *(*v5 + 2 * a3) -= result;
  return result;
}

void sub_1DE440D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<short>::add_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 132;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<short>::add_sample(size_t, size_t, float) [T = short]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 133;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<short>::add_sample(size_t, size_t, float) [T = short]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 32767.0;
  *(*v5 + 2 * a3) += result;
  return result;
}

void sub_1DE4412EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<short>::set_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 126;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<short>::set_sample(size_t, size_t, float) [T = short]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 127;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<short>::set_sample(size_t, size_t, float) [T = short]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 32767.0;
  *(*v5 + 2 * a3) = result;
  return result;
}

void sub_1DE441860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Sample_Setter<short>::length_in_frames(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  if (v1 == *(a1 + 2))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Sample_Format_Handler.h";
      v20 = 1024;
      v21 = 121;
      v22 = 2080;
      v23 = "not (not m_sample_group.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v9, "", v7);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual size_t AMCP::DAL::Sample_Setter<short>::length_in_frames() const [T = short]";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v26 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return *(v1 + 8);
}

void sub_1DE441B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Sample_Setter<short>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EF70;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Sample_Setter<short>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EF70;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));
  return a1;
}

void AMCP::Null_Driver::~Null_Driver(AMCP::Null_Driver *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::Object *AMCP::Null_Driver::Null_Driver(AMCP::Object *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  cf = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  AMCP::Driver::Driver(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F596F110;
  v4 = AMCP::Object::constructed_correct_class(a1, 0x6E756C6C);
  if ((v4 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      v13 = "Null_Driver.cpp";
      v14 = 1024;
      v15 = 25;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_null_driver)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE441F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void AMCP::Null_Driver::create_objects(AMCP::Null_Driver *this@<X0>, const applesauce::CF::ArrayRef *a2@<X1>, void *a3@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      v31 = 0x676C6F626E756C6CLL;
      v32 = 0;
      operation = AMCP::Core::Core::find_operation(&v33, v9, &v31);
      v11 = v33;
      if (!v33)
      {
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v46 = 1024;
          v47 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v36, "Operation does not have requested function", v29);
        std::runtime_error::runtime_error(&v37, &v36);
        std::runtime_error::runtime_error(&v38, &v37);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = -1;
        v38.__vftable = &unk_1F5992170;
        v39 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
        v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <const applesauce::CF::ArrayRef &>]";
        v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v50 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      v12 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>();
      v13 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v11, v12);
      if (!v13)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v46 = 1024;
          v47 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v36, "Operation does not have requested function", v30);
        std::runtime_error::runtime_error(&v37, &v36);
        std::runtime_error::runtime_error(&v38, &v37);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = -1;
        v38.__vftable = &unk_1F5992170;
        v39 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
        v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <const applesauce::CF::ArrayRef &>]";
        v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v50 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      v14 = v13;
      if (!*(v13 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>(), (v13 = (*(v14 + 7))(4, v14 + 24, 0, buf)) == 0))
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v13);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v18;
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        else
        {
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v46 = 1024;
          v47 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v36, "Invalid cast", v28);
        std::runtime_error::runtime_error(&v37, &v36);
        std::runtime_error::runtime_error(&v38, &v37);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = -1;
        v38.__vftable = &unk_1F5992170;
        v39 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
        v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <const applesauce::CF::ArrayRef &>]";
        v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v50 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
      }

      v15 = *(v13 + 3);
      if (!v15)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v15 + 48))(v15, a2);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1DE4426EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a13)
    {
      operator delete(a13);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v29 - 128);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
    std::runtime_error::~runtime_error(&a26);
    if (a25 < 0)
    {
      operator delete(a20);
    }

    if (v28)
    {
      __cxa_free_exception(v27);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 16);
}

void AMCP::Null_Driver::destroy_objects(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (v7)
      {
        v13 = 0x676C6F626E756C6CLL;
        v14 = 0;
        AMCP::Core::Core::find_operation(&v25, v7, &v13);
        if (!v25)
        {
          v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v8 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
            *buf = 136315394;
            v28 = "Core.h";
            v29 = 1024;
            v30 = 202;
            _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v16, "Operation does not have requested function", v12);
          std::runtime_error::runtime_error(&v17, &v16);
          std::runtime_error::runtime_error(&v18, &v17);
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = -1;
          v18.__vftable = &unk_1F5992170;
          v19 = &unk_1F5992198;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
          v31 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const std::vector<unsigned int> &>]";
          v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
          v33 = 202;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
        }

        AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(v25, a2);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DE442B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
    std::runtime_error::~runtime_error(&a24);
    if (a23 < 0)
    {
      operator delete(a18);
    }

    if (v26)
    {
      __cxa_free_exception(v25);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
    v29 = *(v27 - 136);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAEngine::_WriteToStream_Write(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 168);
  v11 = *(a1[101] + 16);
  if (*(a3 + 128) == 1667326771)
  {
    v12 = 4;
  }

  else
  {
    v12 = *(a3 + 144);
  }

  v13 = *(a4 + 144) % v11;
  v14 = a5;
  if (v13 + a5 <= v11)
  {
    v15 = a5;
  }

  else
  {
    v15 = v11 - v13;
  }

  if (*a6)
  {
    v16 = (*a6 + *(a6 + 8));
  }

  else
  {
    v16 = 0;
  }

  memcpy(&v10[v13 * v12], v16, v15 * v12);
  if (v14 != v15)
  {
    memcpy(v10, &v16[v15 * v12], (v14 - v15) * v12);
  }

  _X0 = *(a4 + 80);
  v18 = a1[148];
  v19 = *v18;
  do
  {
    _X5 = v18[1];
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v19;
    v19 = _X4;
  }

  while (!_ZF);
  v26 = a1[152];
  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = a1 + 152;
  do
  {
    v28 = *(v26 + 32);
    _CF = v28 >= a2;
    v29 = v28 < a2;
    if (_CF)
    {
      v27 = v26;
    }

    v26 = *(v26 + 8 * v29);
  }

  while (v26);
  if (v27 == a1 + 152 || *(v27 + 8) > a2)
  {
LABEL_23:
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(_X0);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v54 = "HALS_IOUAEngine.cpp";
      v55 = 1024;
      v56 = 356;
      v57 = 2080;
      v58 = "io_ipc_info_iter == m_io_ipc_info_map.end()";
      v59 = 2048;
      *v60 = a2;
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to find IOThread, io ipc info not found, context id %lu", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v52);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v45, "Failed to find IOThread, io ipc info not found");
    std::runtime_error::runtime_error(&v46, &v45);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = -1;
    v46.__vftable = &unk_1F5992170;
    v47 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v46);
    *&v60[2] = "virtual int HALS_IOUAEngine::_WriteToStream_Write(AudioObjectID, HALS_IOEngine2_StreamInfo &, const AudioServerPlugInIOCycleInfo &, UInt32, const HALS_BufferInfo &)";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v62 = 356;
    std::vector<void *>::vector[abi:ne200100](&v44);
  }

  v34 = v27[5];
  v35 = v27[6];
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = a1[150];
  *v36 = a5;
  *(v36 + 24) = 1;
  *(v36 + 8) = *(a4 + 144);
  *(v36 + 16) = *(a4 + 152);
  v37 = caulk::mach::os_eventlink::timed_wait_signal_or_error(v34, a5 / v34[9]);
  if (v37 & 0x100000000) != 0 && (v37)
  {
    v38 = 0;
  }

  else
  {
    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v38 = 2003329396;
    v41 = *(v39 + 8);
    v42 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v42 + 16) = 0;
    *(v42 + 20) = 16;
    *(v42 + 24) = "HALS_IOUAEngine.cpp";
    *(v42 + 32) = 373;
    *v42 = &unk_1F596F780;
    *(v42 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v41, v42);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  return v38;
}

void sub_1DE443148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, std::runtime_error a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, void *a29, uint64_t a30)
{
  std::runtime_error::~runtime_error(v30);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  a29 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a30);
  std::runtime_error::~runtime_error(&a28);
  a19 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v31 + 24));
  std::runtime_error::~runtime_error(&a18);
  std::runtime_error::~runtime_error(&a17);
  __cxa_free_exception(v30);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_WriteToStream_Write(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Timed out signalling event link", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_WriteToStream_Write(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOUAEngine::_ReadFromStream_Read(AMCP::Log::AMCP_Scope_Registry *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!*a6)
  {
    return;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    goto LABEL_10;
  }

  v12 = (*a6 + *(a6 + 8));
  v13 = a1 + 1216;
  do
  {
    v14 = *(v8 + 8);
    _CF = v14 >= a2;
    v16 = v14 < a2;
    if (_CF)
    {
      v13 = v8;
    }

    v8 = *&v8[8 * v16];
  }

  while (v8);
  if (v13 == a1 + 1216 || *(v13 + 8) > a2)
  {
LABEL_10:
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v53 = "HALS_IOUAEngine.cpp";
      v54 = 1024;
      v55 = 264;
      v56 = 2080;
      v57 = "io_ipc_info_iter == m_io_ipc_info_map.end()";
      v58 = 2048;
      *v59 = a2;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to find IOThread, io ipc info not found, context id %lu", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "Failed to find IOThread, io ipc info not found");
    std::runtime_error::runtime_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5992170;
    v46 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v45);
    *&v59[2] = "virtual void HALS_IOUAEngine::_ReadFromStream_Read(AudioObjectID, HALS_IOEngine2_StreamInfo &, const AudioServerPlugInIOCycleInfo &, UInt32, const HALS_BufferInfo &)";
    v60 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v61 = 264;
    std::vector<void *>::vector[abi:ne200100](&v43);
  }

  v21 = *(v13 + 5);
  v22 = *(v13 + 6);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 150);
  *v23 = a5;
  *(v23 + 24) = 0;
  *(v23 + 8) = *(a4 + 80);
  *(v23 + 16) = *(a4 + 88);
  v24 = caulk::mach::os_eventlink::timed_wait_signal_or_error(v21, a5 / v21[9]);
  if ((v24 & 0x100000000) == 0 || (v24 & 1) == 0)
  {
    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
LABEL_30:
      v30 = *(a3 + 168);
      v31 = *(*(a1 + 101) + 16);
      if (*(a3 + 128) == 1667326771)
      {
        v32 = 4;
      }

      else
      {
        v32 = *(a3 + 144);
      }

      v33 = v25 % v31;
      if (v33 + a5 <= v31)
      {
        v34 = a5;
      }

      else
      {
        v34 = v31 - v33;
      }

      memcpy(v12, &v30[v33 * v32], v34 * v32);
      if (a5 != v34)
      {
        memcpy(&v12[v34 * v32], v30, (a5 - v34) * v32);
      }

      goto LABEL_38;
    }

    v28 = *(v26 + 8);
    v29 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v29 + 16) = 0;
    *(v29 + 20) = 16;
    *(v29 + 24) = "HALS_IOUAEngine.cpp";
    *(v29 + 32) = 281;
    *v29 = &unk_1F596F728;
    *(v29 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v28, v29);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  v25 = *(a4 + 80);
  if (v25 >= 0.0)
  {
    goto LABEL_30;
  }

  bzero(v12, a5);
LABEL_38:
  _X0 = *(a4 + 80);
  v36 = *(a1 + 148);
  v37 = *v36;
  do
  {
    _X5 = v36[1];
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v37;
    v37 = _X4;
  }

  while (!_ZF);
  if (v22)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1DE443934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, std::runtime_error a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, void *a29, uint64_t a30)
{
  std::runtime_error::~runtime_error(v30);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  a29 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a30);
  std::runtime_error::~runtime_error(&a28);
  a19 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v31 + 24));
  std::runtime_error::~runtime_error(&a18);
  std::runtime_error::~runtime_error(&a17);
  __cxa_free_exception(v30);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_ReadFromStream_Read(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Timed out signalling event link", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_ReadFromStream_Read(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOUAEngine::_TellHardwareToStop(uint64_t a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1144);
  input[0] = *(a1 + 1136);
  input[1] = 0;
  result = IOConnectCallMethod(*(v1 + 4), 0xAu, input, 2u, 0, 0, 0, 0, 0, 0);
  v3 = result;
  if (result)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "HALS_IOUAUCDriver.cpp";
      v19 = 1024;
      v20 = 488;
      v21 = 2080;
      v22 = "ret != kIOReturnSuccess";
      v23 = 1024;
      *v24 = v3;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to stop device %d", buf, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v9, "Failed to stop device");
    std::runtime_error::runtime_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5992170;
    v11 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v10);
    *&v24[2] = "void HALS_IOUAUCDriver::stop_io(AudioObjectID, AudioDriverKit::IOUserAudioStartStopFlags)";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v26 = 488;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return result;
}

void sub_1DE443DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, ...)
{
  va_start(va, a19);
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
    std::runtime_error::~runtime_error(&a19);
    if (v20)
    {
      __cxa_free_exception(v19);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 145));
    v23 = __cxa_begin_catch(exception_object);
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v23);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *(v21 - 144) = 136315394;
      *(v21 - 140) = "HALS_IOUAEngine.cpp";
      *(v21 - 132) = 1024;
      *(v21 - 130) = 221;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception while stopping IO!", (v21 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE443BDCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAEngine::_TellHardwareToStart(uint64_t a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1144);
  input[0] = *(a1 + 1136);
  input[1] = 0;
  v2 = IOConnectCallMethod(*(v1 + 4), 9u, input, 2u, 0, 0, 0, 0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "HALS_IOUAUCDriver.cpp";
      v20 = 1024;
      v21 = 481;
      v22 = 2080;
      v23 = "ret != kIOReturnSuccess";
      v24 = 1024;
      *v25 = v3;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start device %d", buf, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to start device");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    *&v25[2] = "void HALS_IOUAUCDriver::start_io(AudioObjectID, AudioDriverKit::IOUserAudioStartStopFlags)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v27 = 481;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  return 0;
}

void sub_1DE4441EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, ...)
{
  va_start(va, a19);
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
    std::runtime_error::~runtime_error(&a19);
    if (v20)
    {
      __cxa_free_exception(v19);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 145));
    v23 = __cxa_begin_catch(exception_object);
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v23);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *(v21 - 144) = 136315394;
      *(v21 - 140) = "HALS_IOUAEngine.cpp";
      *(v21 - 132) = 1024;
      *(v21 - 130) = 206;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception while starting IO!", (v21 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE443FCCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAEngine::Unregister_IOThread(HALS_IOUAEngine *this, unsigned int a2, unsigned int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v4 = *(this + 152);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = this + 1216;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a3;
    v8 = v6 < a3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 1216 || *(v5 + 8) > a3)
  {
LABEL_24:
    v32 = this + 1216;
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "HALS_IOUAEngine.cpp";
      v36 = 1024;
      v37 = 173;
      v38 = 2080;
      v39 = "io_ipc_info_iter == m_io_ipc_info_map.end()";
      v40 = 2048;
      *v41 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unregister IOThread, io ipc info not found, client id %lu", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v22, "Failed to unregister IOThread, io ipc info not found");
    std::runtime_error::runtime_error(&v26, &v22);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = -1;
    v26.__vftable = &unk_1F5992170;
    v27 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v26);
    *&v41[2] = "virtual OSStatus HALS_IOUAEngine::Unregister_IOThread(AudioObjectID, UInt32)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v43 = 173;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v25);
  }

  v32 = v5;
  v25[0] = this;
  v25[1] = &v32;
  v25[2] = &v33;
  v9 = *(v5 + 5);
  v10 = *(v5 + 6);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v9)
  {
    v11 = caulk::mach::os_eventlink::dissociate(v9);
    if (v11)
    {
      v13 = v11;
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
        *buf = 136315906;
        v35 = "HALS_IOUAEngine.cpp";
        v36 = 1024;
        v37 = 185;
        v38 = 2080;
        v39 = "error != 0";
        v40 = 2048;
        *v41 = v13;
        _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to disassociate event link %li", buf, 0x26u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v23, "Failed to disassociate event link");
      std::runtime_error::runtime_error(&v26, &v23);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = -1;
      v26.__vftable = &unk_1F5992170;
      v27 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v26);
      *&v41[2] = "virtual OSStatus HALS_IOUAEngine::Unregister_IOThread(AudioObjectID, UInt32)";
      v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
      v43 = 185;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAEngine::Unregister_IOThread(unsigned int,unsigned int)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v25);
  return 0;
}

void sub_1DE444858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, std::runtime_error a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    if (__p)
    {
      a21 = __p;
      operator delete(__p);
    }

    if (a16)
    {
      a17 = a16;
      operator delete(a16);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v26 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
    std::runtime_error::~runtime_error(&a9);
    if (v24)
    {
      __cxa_free_exception(v23);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a11);
    v28 = __cxa_begin_catch(exception_object);
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = *v31;
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    else
    {
      v32 = *v31;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *(v26 - 144) = 136315394;
      *(v25 + 4) = "HALS_IOUAEngine.cpp";
      *(v26 - 132) = 1024;
      *(v25 + 14) = 190;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to unregister io thread!", (v26 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE444434);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAEngine::Unregister_IOThread(unsigned int,unsigned int)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t *a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  v5 = *(*v2 + 8);
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
    v7 = *v2;
    do
    {
      v6 = v7[2];
      v8 = *v6 == v7;
      v7 = v6;
    }

    while (!v8);
  }

  if (*(v3 + 1208) == v4)
  {
    *(v3 + 1208) = v6;
  }

  --*(v3 + 1224);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 1216), v4);
  v9 = v4[6];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  operator delete(v4);
  v10 = *(v3 + 1144);
  v11 = *a1[2];
  input[0] = *(v3 + 1136);
  input[1] = v11;
  v12 = IOConnectCallMethod(*(v10 + 4), 0x12u, input, 2u, 0, 0, 0, 0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v29 = "HALS_IOUAUCDriver.cpp";
      v30 = 1024;
      v31 = 527;
      v32 = 2080;
      v33 = "ret != kIOReturnSuccess";
      v34 = 1024;
      *v35 = v13;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unregister io thread %d", buf, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v20, "Failed to unregister io thread");
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    *&v35[2] = "void HALS_IOUAUCDriver::unregister_io_thread(AudioObjectID, AudioObjectID)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v37 = 527;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  return a1;
}

void sub_1DE444D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, ...)
{
  va_start(va, a19);
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
    std::runtime_error::~runtime_error(&a19);
    if (v20)
    {
      __cxa_free_exception(v19);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 145));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE444DF0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE444DF4);
  }

  __clang_call_terminate(a1);
}

void HALS_IOUAEngine::Register_IOThread(uint64_t **this, const char *a2, uint64_t a3, double a4, unsigned int a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4 > 0.0)
  {
    v8 = this[152];
    if (v8)
    {
      v9 = this + 152;
      do
      {
        v10 = *(v8 + 8);
        v11 = v10 >= a3;
        v12 = v10 < a3;
        if (v11)
        {
          v9 = v8;
        }

        v8 = v8[v12];
      }

      while (v8);
      if (v9 != this + 152 && *(v9 + 8) <= a3)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v35[0] = 136315906;
          *&v35[1] = "HALS_IOUAEngine.cpp";
          LOWORD(v35[3]) = 1024;
          *(&v35[3] + 2) = 134;
          HIWORD(v35[4]) = 2080;
          *&v35[5] = "io_ipc_info_iter != m_io_ipc_info_map.end()";
          v36 = 2048;
          *v37 = a3;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IOContext %lu is already registered", v35, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v28, "IOContext is already registered");
        std::runtime_error::runtime_error(&v29, &v28);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = -1;
        v29.__r_.__value_.__r.__words[0] = &unk_1F5992170;
        v29.__r_.__value_.__r.__words[2] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v35, &v29);
        *&v37[2] = "virtual OSStatus HALS_IOUAEngine::Register_IOThread(AudioObjectID, UInt32, Float64, UInt32, mach_port_t)";
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
        v39 = 134;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
      }
    }

    if (a6)
    {
      caulk::make_string(&v27, "eventlink-%u-%u", a2, *(this + 284), a3);
      caulk::make_string(&__p, "workgroup-%u-%u", v13, *(this + 284), a3);
      operator new();
    }

    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v35[0] = 136315906;
      *&v35[1] = "HALS_IOUAEngine.cpp";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 137;
      HIWORD(v35[4]) = 2080;
      *&v35[5] = "error || (ioc_workgroup_mach_port == MACH_PORT_NULL)";
      v36 = 2048;
      *v37 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to copy workgroup mach port %li", v35, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v28, "Failed to copy workgroup mach port");
    std::runtime_error::runtime_error(&v29, &v28);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v29.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    v29.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v35, &v29);
    *&v37[2] = "virtual OSStatus HALS_IOUAEngine::Register_IOThread(AudioObjectID, UInt32, Float64, UInt32, mach_port_t)";
    v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v39 = 137;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v14 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
    v35[0] = 136315650;
    *&v35[1] = "HALS_IOUAEngine.cpp";
    LOWORD(v35[3]) = 1024;
    *(&v35[3] + 2) = 129;
    HIWORD(v35[4]) = 2080;
    *&v35[5] = "inNominalSampleRate <= 0.0";
    _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid nominal sample rate", v35, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v28, "Invalid nominal sample rate");
  std::runtime_error::runtime_error(&v29, &v28);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = -1;
  v29.__r_.__value_.__r.__words[0] = &unk_1F5992170;
  v29.__r_.__value_.__r.__words[2] = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v35, &v29);
  *&v37[2] = "virtual OSStatus HALS_IOUAEngine::Register_IOThread(AudioObjectID, UInt32, Float64, UInt32, mach_port_t)";
  v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
  v39 = 129;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
}

void sub_1DE446530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, uint64_t a26, uint64_t a27, std::runtime_error a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t buf, int a41, __int16 a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    if (a50 < 0)
    {
      operator delete(__p);
    }

    std::__shared_weak_count::~__shared_weak_count(v50);
    operator delete(v53);
    if (a18 < 0)
    {
      operator delete(a13);
    }

    if (a24 < 0)
    {
      operator delete(a19);
    }

    v54 = __cxa_begin_catch(exception_object);
    v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v55 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v54);
    }

    v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      v58 = *v57;
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    else
    {
      v58 = *v57;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(v51 + 4) = "HALS_IOUAEngine.cpp";
      a42 = 1024;
      *(v51 + 14) = 159;
      _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to register io thread!", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4451C8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<HALS_IOUAEngine::io_ipc_info_t>::__on_zero_shared(uint64_t a1)
{
  caulk::mach::os_workgroup_managed::~os_workgroup_managed((a1 + 32));
  v3 = *(a1 + 24);

  return caulk::mach::details::release_os_object(v3, v2);
}

void std::__shared_ptr_emplace<HALS_IOUAEngine::io_ipc_info_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596F6D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOUAEngine::GetZeroTimeStamp(HALS_IOUAEngine *this, unsigned int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X8] }

  *a3 = _X4;
  *a4 = 0;
  return 0;
}

void HALS_IOUAEngine::~HALS_IOUAEngine(HALS_IOUAEngine *this)
{
  HALS_IOUAEngine::~HALS_IOUAEngine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596F148;
  v2 = *(this + 145);
  if (v2)
  {
    v3 = *(this + 146);
    if (v3)
    {
      HALS_IOUAUCDriver::unmap_memory(*(*(this + 143) + 4), v2, v3);
    }
  }

  v4 = *(this + 147);
  if (v4)
  {
    v5 = *(this + 148);
    if (v5)
    {
      HALS_IOUAUCDriver::unmap_memory(*(*(this + 143) + 4), v4, v5);
    }
  }

  v6 = *(this + 149);
  if (v6)
  {
    v7 = *(this + 150);
    if (v7)
    {
      HALS_IOUAUCDriver::unmap_memory(*(*(this + 143) + 4), v6, v7);
    }
  }

  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 1160) = 0u;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*(this + 152));
  *(this + 151) = this + 1216;
  *(this + 76) = 0u;
  v8 = *(this + 144);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALS_IOEngine2::~HALS_IOEngine2(this);
}

void sub_1DE446A9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(a1);
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "HALS_IOUAEngine.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 99;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception unmapping engine buffers", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE446A30);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void AMCP::IO_Core::Node::update_core(std::string::size_type a1, float *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3.__r_.__value_.__r.__words[0] = 0x676C6F6269646E74;
  LODWORD(v3.__r_.__value_.__r.__words[1]) = 0;
  v2[0] = *(a1 + 8);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(v4, &v3, v2);
}

void sub_1DE448F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v24 - 240);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&STACK[0x200]);
  MEMORY[0x1E12C0F00](&a13);
  if (*(v24 - 137) < 0)
  {
    operator delete(*(v24 - 160));
  }

  if (v23)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a11);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v7 = *(a4 + 24);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v6, a2);
}

void sub_1DE449858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    operator delete(v29);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v7 = *(a4 + 24);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v6, a2);
}

void sub_1DE449E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    operator delete(v29);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<AMCP::Node_Description ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Node_Description ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[295];
}

uint64_t std::__function::__value_func<AMCP::Node_Type ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Node_Type ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[315];
}

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_18"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  first_object_id_if = *(a1 + 8);
  v2 = *(first_object_id_if + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(first_object_id_if + 16);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = *(v5 + 144);
  v6 = *(v5 + 152);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    (*(*v7 + 24))(__p, v7);
    v8 = (*(**(first_object_id_if + 32) + 16))(*(first_object_id_if + 32));
    v12[0] = &unk_1F596F818;
    v12[1] = __p;
    v12[3] = v12;
    first_object_id_if = AMCP::Core::Broker::fetch_first_object_id_if (v8, v12);
    std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v7)
  {
LABEL_13:
    first_object_id_if = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return first_object_id_if;
}

void sub_1DE44A73C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::get_clock_id(void)::$_0,std::allocator<AMCP::IO_Core::Node::get_clock_id(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP7IO_Core4Node12get_clock_idEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::Node::get_clock_id(void)::$_0,std::allocator<AMCP::IO_Core::Node::get_clock_id(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (AMCP::is_base_of(0x61636C6B, simple_required))
  {
    AMCP::Core::Core::get_simple_required_property<1969841184u>(&v18, *a2);
    v5 = v18;
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = *(a1 + 8);
    applesauce::CF::convert_to<std::string,0>(__p, v18);
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = *(v6 + 23);
    }

    else
    {
      v8 = v6[1];
    }

    v9 = v17;
    v10 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v8 == v9)
    {
      if (v7 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *v6;
      }

      if ((v17 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = memcmp(v11, v12, v8) == 0;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
      if ((v17 & 0x80000000) == 0)
      {
LABEL_20:
        CFRelease(v5);
        return v13;
      }
    }

    operator delete(__p[0]);
    goto LABEL_20;
  }

  return 0;
}

void sub_1DE44A8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::StringRef::~StringRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::get_clock_id(void)::$_0,std::allocator<AMCP::IO_Core::Node::get_clock_id(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596F818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_18>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5970B28;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17>,std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_17"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17>,std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);
  if (!v5 || (v6 = *a2, v7 = a2[1], v8 = *(a2 + 14), (v9 = std::__shared_weak_count::lock(v5)) == 0))
  {
    *a3 = 0;
    *(a3 + 64) = 0;
    return;
  }

  v10 = v9;
  v11 = *(v4 + 16);
  if (!v11)
  {
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_28;
  }

  v12 = v11[9];
  v13 = v11[9].n128_u64[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12.n128_u64[0])
  {
    goto LABEL_25;
  }

  v21 = v12;
  if (!(*(*v12.n128_u64[0] + 120))(v12.n128_u64[0], v12))
  {
    goto LABEL_25;
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v21;
  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      v14 = 0;
      v27 = 0u;
      v28 = 0u;
      v15 = 0;
      v16 = 0.0;
      v17 = v13;
      v18 = 0;
      goto LABEL_21;
    }

    v19 = 1;
    goto LABEL_19;
  }

  v24 = v6;
  v23 = 2;
  if ((v8 & 2) != 0)
  {
    v19 = 3;
LABEL_19:
    v25 = v7;
    v23 = v19;
  }

  AMCP::DAL::DAL_Time::validate(&v23);
  v18 = v24;
  v14 = v25;
  v16 = (*(*v26.n128_u64[0] + 160))(v26.n128_u64[0]);
  v27 = 0u;
  v28 = 0u;
  v15 = 7;
  v17 = v26.n128_u64[1];
LABEL_21:
  if (v17)
  {
    v22 = v15;
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    v15 = v22;
  }

  if (!v15)
  {
LABEL_25:
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_26;
  }

  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  v20 = v28;
  *(a3 + 24) = v27;
  *(a3 + 40) = v20;
  *(a3 + 56) = v15;
  *(a3 + 64) = 1;
LABEL_26:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (!v13)
  {
    return;
  }

  v9 = v13;
LABEL_28:

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1DE44AE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_17>,std::optional<CA::TimeStamp> ()(CA::TimeStamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5970A98;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::optional<CA::TimeStamp> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::optional<CA::TimeStamp> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16>,std::optional<CA::TimeStamp> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_16"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16>,std::optional<CA::TimeStamp> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 24);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(v3 + 16);
    if (v7)
    {
      v9 = *(v7 + 144);
      v8 = *(v7 + 152);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9 && (*(*v9 + 120))(v9) && ((*(*v9 + 32))(v12, v9), *(&v12[0] + 1)))
      {
        v10 = v12[1];
        *a2 = v12[0];
        *(a2 + 16) = v10;
        v11 = v12[3];
        *(a2 + 32) = v12[2];
        *(a2 + 48) = v11;
        *(a2 + 64) = 1;
      }

      else
      {
        *a2 = 0;
        *(a2 + 64) = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 64) = 0;

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

void sub_1DE44B228(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_16>,std::optional<CA::TimeStamp> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5970A08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_15"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 104) != 0;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5970988;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970988;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_15>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970988;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_9Node_TypeEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<AMCP::Node_Type>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Node_Type>(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Operation does not have requested function", v16);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Node_Type, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Invalid cast", v15);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Node_Type, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5);
}

void sub_1DE44BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Node_Type>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      v11(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Node_Type>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Node_Type>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Node_Type>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMCP::Implementation::get_type_marker<AMCP::Node_Type>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[297];
}

uint64_t AMCP::Thing::convert_to<AMCP::Node_Type>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == v2)
  {
    *&v15[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<AMCP::Node_Type>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v2;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE44BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5970908;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970908;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Type>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970908;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Type ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Node_Type ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Node_Type ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Type ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Type ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14>,AMCP::Node_Type ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_14"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_14>,AMCP::Node_Type ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5970878;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_16Node_DescriptionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Node_Description>(&v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::construct<AMCP::Node_Description&>(a2, &v3);
}

void AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::construct<AMCP::Node_Description&>(uint64_t a1, const AMCP::Node_Description *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::dispatch;
  operator new();
}

uint64_t AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::construct<AMCP::Node_Description&>(a3, *a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      v7 = *a2;
      *a2 = 0;
      std::unique_ptr<AMCP::Node_Description>::reset[abi:ne200100](a3, v7);
      *(a3 + 4) = AMCP::Implementation::Outboard_Storage<AMCP::Node_Description>::dispatch;
    }

    std::unique_ptr<AMCP::Node_Description>::reset[abi:ne200100](a2, 0);
    result = 0;
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v30 = 0;
      *v28 = 0u;
      v29 = 0u;
      AMCP::swap(v28, a3, a3);
      if (v30)
      {
        v30(0, v28, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
    v10 = *(a2 + 32);
    v28[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v28);
      v10 = v28[0];
    }

    if (v10 != v9)
    {
      goto LABEL_26;
    }

    v11 = *(a3 + 4);
    v20 = 0;
    if (v11)
    {
      (v11)(3, a3, 0, &v20);
      v11 = v20;
    }

    if (v11 != v9)
    {
LABEL_26:
      AMCP::Thing::convert_to<AMCP::Node_Description>(v28, a2);
      AMCP::Thing::convert_to<AMCP::Node_Description>(&v20, a3);
      v36[0] = v28;
      v36[1] = &v28[1];
      v36[2] = &v30;
      v36[3] = (&v30 + 4);
      v36[4] = v31;
      v36[5] = &v33;
      v36[6] = &v34;
      v36[7] = (&v33 + 4);
      v35[0] = &v20;
      v35[1] = v21;
      v35[2] = &v23;
      v35[3] = &v23 + 4;
      v35[4] = __p;
      v35[5] = &v26;
      v35[6] = &v27;
      v35[7] = &v26 + 4;
      v13 = std::__tuple_equal<7ul>::operator()[abi:ne200100]<std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>,std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>>(v36, v35);
      v14 = HIDWORD(v33) == HIDWORD(v26) && v13;
      for (i = 12; i != 6; i -= 3)
      {
        v36[0] = &v21[i - 1];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v36);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      for (j = 12; j != 6; j -= 3)
      {
        v20 = &v28[j];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v20);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[1]);
        if (!v14)
        {
          return 0;
        }
      }

      else if (!v14)
      {
        return 0;
      }

      return 1;
    }

    if (*(a2 + 32))
    {
      v28[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
      v12 = (*(a2 + 32))(4, a2, 0, v28);
    }

    else
    {
      v12 = 0;
    }

    if (*(a3 + 4))
    {
      v28[0] = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
      v17 = (*(a3 + 4))(4, a3, 0, v28);
    }

    else
    {
      v17 = 0;
    }

    v28[0] = v12;
    v28[1] = (v12 + 8);
    v18 = (v12 + 68);
    *&v29 = v12 + 32;
    *(&v29 + 1) = v12 + 36;
    v30 = (v12 + 40);
    v31[0] = (v12 + 64);
    v31[1] = (v12 + 72);
    v32 = v12 + 68;
    v19 = v17 + 17;
    v20 = v17;
    v21[0] = v17 + 1;
    v21[1] = v17 + 4;
    v22 = v17 + 36;
    v23 = v17 + 5;
    __p[0] = v17 + 8;
    __p[1] = v17 + 9;
    v25 = v17 + 68;
    return std::__tuple_equal<7ul>::operator()[abi:ne200100]<std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>,std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>>(v28, &v20) && *v18 == *v19;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Node_Description>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Node_Description>())
  {
    return *a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t *std::unique_ptr<AMCP::Node_Description>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    for (i = 96; i != 48; i -= 24)
    {
      v4 = (v2 + i);
      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v4);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

BOOL std::__tuple_equal<7ul>::operator()[abi:ne200100]<std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>,std::tuple<AMCP::Node_Type const&,std::string const&,AMCP::Node_Thread_Policy const&,AMCP::Node_Buffer_Size_Change_Policy const&,std::string const&,AMCP::Node_Clock_Policy const&,AMCP::Index_Group<std::vector<AMCP::Terminal_Description>,AMCP::Direction> const&,unsigned int const&>>(uint64_t a1, uint64_t a2)
{
  if (**a1 != **a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7) || **(a1 + 16) != **(a2 + 16) || **(a1 + 24) != **(a2 + 24))
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = *(v13 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v13 + 8);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? *(a1 + 32) : *v12;
  v19 = v17 >= 0 ? *(a2 + 32) : *v13;
  if (memcmp(v18, v19, v15) || **(a1 + 40) != **(a2 + 40))
  {
    return 0;
  }

  v20 = 0;
  v21 = *(a1 + 48);
  v22 = *(a2 + 48);
  do
  {
    v24 = *(v21 + v20);
    v23 = *(v21 + v20 + 8);
    v25 = *v22;
    v26 = v22[1] - *v22;
    result = v23 - v24 == v26;
    if (v23 - v24 != v26)
    {
      break;
    }

    if (v24 != v23)
    {
      v34 = v22;
      v35 = v21;
LABEL_35:
      v28 = v24 + 40;
      v29 = v25 + 40;
      if (*v24 == *v25 && *(v24 + 8) == *(v25 + 8) && *(v24 + 12) == *(v25 + 12) && *(v24 + 16) == *(v25 + 16) && *(v24 + 20) == *(v25 + 20) && *(v24 + 24) == *(v25 + 24) && *(v24 + 28) == *(v25 + 28) && *(v24 + 32) == *(v25 + 32))
      {
        v30 = 0;
        while (1)
        {
          v31 = *(v28 + v30);
          v32 = *(v28 + v30 + 8);
          v33 = *v29;
          if (v32 - v31 != *(v29 + 8) - *v29)
          {
            break;
          }

          if (v31 == v32)
          {
            result = 1;
          }

          else
          {
            do
            {
              result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v31, v33);
              if (!result)
              {
                break;
              }

              v31 += 24;
              v33 += 3;
            }

            while (v31 != v32);
          }

          if (result)
          {
            v30 += 24;
            v29 += 24;
            if (v30 != 48)
            {
              continue;
            }
          }

          if (!result)
          {
            return result;
          }

          v22 = v34;
          v21 = v35;
          if (*(v24 + 88) != *(v25 + 88) || *(v24 + 92) != *(v25 + 92) || *(v24 + 96) != *(v25 + 96))
          {
            return 0;
          }

          v24 += 104;
          v25 += 104;
          if (v24 != v23)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }
      }

      return 0;
    }

LABEL_57:
    v20 += 24;
    v22 += 3;
    result = 1;
  }

  while (v20 != 48);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59707F8;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59707F8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Node_Description>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59707F8;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Description ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Description ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Node_Description ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Node_Description ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Description ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Node_Description ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_13"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v25 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (*(v5 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v5 + 24), *(v5 + 32));
      }

      else
      {
        v31 = *(v5 + 24);
      }

      *a2 = v6;
      *(a2 + 8) = v31;
      memset(&v31, 0, sizeof(v31));
      *(a2 + 36) = 1;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      if ((v6 & 0xFFFFFFFE) == 2)
      {
        *(a2 + 64) = 2;
      }

      *(a2 + 32) = *(v5 + 48);
      std::string::operator=((a2 + 40), (v5 + 112));
      v8 = 0;
      v9 = 0;
      *(a2 + 64) = *(v5 + 136);
      *(a2 + 68) = *(v5 + 160);
      v10 = v5 + 56;
      do
      {
        v11 = v8;
        v12 = (v10 + 24 * v9);
        v14 = *v12;
        v13 = v12[1];
        if (*v12 != v13)
        {
          v15 = a2 + 72 + 24 * v9;
          do
          {
            AMCP::Graph::Terminal::get_description(&v26, v14);
            v16 = *(v15 + 8);
            if (v16 >= *(v15 + 16))
            {
              v23 = std::vector<AMCP::Terminal_Description>::__emplace_back_slow_path<AMCP::Terminal_Description>(v15, &v26);
            }

            else
            {
              v17 = v26;
              v18 = v27;
              *(v16 + 32) = v28;
              *v16 = v17;
              *(v16 + 16) = v18;
              v19 = (v16 + 40);
              v20 = v29;
              v21 = 2;
              do
              {
                *v19 = 0;
                v19[1] = 0;
                v19[2] = 0;
                *v19 = *v20;
                v19[2] = v20[2];
                *v20 = 0;
                v20[1] = 0;
                v20[2] = 0;
                v20 += 3;
                v19 += 3;
                --v21;
              }

              while (v21);
              v22 = v29[6];
              *(v16 + 96) = v30;
              *(v16 + 88) = v22;
              v23 = v16 + 104;
            }

            *(v15 + 8) = v23;
            for (i = 64; i != 16; i -= 24)
            {
              v32 = (&v26 + i);
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
            }

            v14 += 112;
          }

          while (v14 != v13);
        }

        v8 = 1;
        v9 = 1;
      }

      while ((v11 & 1) == 0);
      v7 = v25;
      goto LABEL_25;
    }
  }

  else
  {
    v25 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "");
  *a2 = 0;
  *(a2 + 8) = v26;
  *(a2 + 24) = v27;
  v26 = 0uLL;
  *&v27 = 0;
  *(a2 + 32) = 0x100000000;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v7 = v25;
  if (v25)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5970768;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970768;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_13>,AMCP::Node_Description ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5970768;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[309];
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyRyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSD_4NodeEEENS3_IFRT_RNSD_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE44D9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5970648;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE44DB78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970648;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970648;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[285];
}

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyRyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSD_4NodeEEENS3_IFRT_RNSD_9Node_ProcEEEEEUlRKS6_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<unsigned long long ()(unsigned long long,unsigned long long &)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE44E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void *std::function<unsigned long long ()(unsigned long long,unsigned long long &)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE44E528(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59705B8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE44E6E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59705B8;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long,unsigned long long &)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long,unsigned long long &)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59705B8;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_11>,std::function<unsigned long long ()(unsigned long long,unsigned long long &)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[307];
}

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE44EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5970498;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE44F014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970498;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<unsigned long long ()(unsigned long long)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970498;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[283];
}

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<unsigned long long ()(unsigned long long)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFyyEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<unsigned long long ()(unsigned long long)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE44F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void *std::function<unsigned long long ()(unsigned long long)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<unsigned long long ()(unsigned long long)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE44F9C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5970408;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE44FB7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970408;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<unsigned long long ()(unsigned long long)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<unsigned long long ()(unsigned long long)> const&)#1}>,void ()(std::function<unsigned long long ()(unsigned long long)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970408;
  std::__function::__value_func<std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_10>,std::function<unsigned long long ()(unsigned long long)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_10"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[313];
}

uint64_t std::__function::__value_func<std::function<long long ()(void)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<long long ()(void)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<long long ()(void)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<long long ()(void)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<long long ()(void)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<long long ()(void)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<long long ()(void)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFxvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE450334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59702E8;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE4504B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59702E8;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<long long ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59702E8;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[289];
}

uint64_t std::__function::__value_func<void ()(std::function<long long ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<long long ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<long long ()(void)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<long long ()(void)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<long long ()(void)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<long long ()(void)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<long long ()(void)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFxvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<long long ()(void)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE450B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void *std::function<long long ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<long long ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<long long ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE450E60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5970258;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE451018(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970258;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<long long ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<long long ()(void)> const&)#1}>,void ()(std::function<long long ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970258;
  std::__function::__value_func<std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_9>,std::function<long long ()(void)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_9"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_8>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_7>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[311];
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSF_4NodeEEENS3_IFRT_RNSF_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE451980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5970038;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE451AFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970038;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5970038;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[287];
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSF_4NodeEEENS3_IFRT_RNSF_9Node_ProcEEEEEUlRKS8_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}