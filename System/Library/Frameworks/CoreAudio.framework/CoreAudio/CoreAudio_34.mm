OSStatus AudioDeviceGetProperty(AudioDeviceID inDevice, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v9 = isInput;
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (v9)
  {
    v12 = 1768845428;
  }

  else
  {
    v12 = 1869968496;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = v12;
  inAddress.mElement = inChannel;
  v17.mSelector = inPropertyID;
  v17.mScope = 1735159650;
  v17.mElement = inChannel;
  if (AudioObjectHasProperty(inDevice, &inAddress))
  {
    p_inAddress = &inAddress;
    return AudioObjectGetPropertyData(inDevice, p_inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
  }

  if (HALB_Info::IsReallyGlobalDeviceProperty(inAddress.mSelector, v13) && AudioObjectHasProperty(inDevice, &v17))
  {
    p_inAddress = &v17;
    return AudioObjectGetPropertyData(inDevice, p_inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
  }

  v15 = 2003332927;
  if (ioPropertyDataSize)
  {
    if (outPropertyData)
    {
      bzero(outPropertyData, *ioPropertyDataSize);
    }

    *ioPropertyDataSize = 0;
  }

  return v15;
}

void sub_1DE478EB4(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v2)
    {
      if (v3)
      {
        bzero(v3, *v2);
      }

      *v2 = 0;
    }
  }

  else if (v2)
  {
    if (v3)
    {
      bzero(v3, *v2);
    }

    *v2 = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE478E50);
}

OSStatus AudioDeviceSetProperty(AudioDeviceID inDevice, const AudioTimeStamp *inWhen, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v10 = isInput;
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (v10)
  {
    v13 = 1768845428;
  }

  else
  {
    v13 = 1869968496;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = v13;
  inAddress.mElement = inChannel;
  v18.mSelector = inPropertyID;
  v18.mScope = 1735159650;
  v18.mElement = inChannel;
  if (AudioObjectHasProperty(inDevice, &inAddress))
  {
    p_inAddress = &inAddress;
    return AudioObjectSetPropertyData(inDevice, p_inAddress, 0, 0, inPropertyDataSize, inPropertyData);
  }

  v16 = 2003332927;
  if (HALB_Info::IsReallyGlobalDeviceProperty(inAddress.mSelector, v14) && AudioObjectHasProperty(inDevice, &v18))
  {
    p_inAddress = &v18;
    return AudioObjectSetPropertyData(inDevice, p_inAddress, 0, 0, inPropertyDataSize, inPropertyData);
  }

  return v16;
}

void sub_1DE479004(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE478FBCLL);
}

OSStatus AudioDeviceAddPropertyListener(AudioDeviceID inDevice, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, AudioDevicePropertyListenerProc inProc, void *inClientData)
{
  v8 = *&inPropertyID;
  v9 = isInput;
  v11 = *&inDevice;
  v41 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!inProc)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "HALS_Framework-ios-imp.cpp";
      v38 = 1024;
      v39 = 3339;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceAddPropertyListener: can't add a NULL listener proc", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v12 = HALS_ObjectMap::CopyObjectByObjectID(v11);
  v14 = v12;
  if (!v12)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "HALS_Framework-ios-imp.cpp";
      v38 = 1024;
      v39 = 3343;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceAddPropertyListener: no device with given ID", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = off_1F5991DD8;
    v26[2] = 560947818;
  }

  v16 = *(v12 + 5);
  v15 = *(v12 + 6);
  if (v16 <= 1701078389)
  {
    if (v16 == 1633773415)
    {
      goto LABEL_12;
    }

    v17 = 1633969526;
  }

  else
  {
    if (v16 == 1701078390 || v16 == 1701733488)
    {
      goto LABEL_12;
    }

    v17 = 1919182198;
  }

  if (v16 == v17)
  {
    goto LABEL_12;
  }

  if (v16 == v15)
  {
    goto LABEL_32;
  }

  if (v15 <= 1701078389)
  {
    if (v15 == 1633773415)
    {
      goto LABEL_12;
    }

    v25 = 1633969526;
    goto LABEL_31;
  }

  if (v15 != 1701078390 && v15 != 1701733488)
  {
    v25 = 1919182198;
LABEL_31:
    if (v15 == v25)
    {
      goto LABEL_12;
    }

LABEL_32:
    HALS_ObjectMap::ReleaseObject(v12, v13);
    goto LABEL_33;
  }

LABEL_12:
  if (v9)
  {
    v19 = 1768845428;
  }

  else
  {
    v19 = 1869968496;
  }

  v35[0] = v8;
  v35[1] = v19;
  v35[2] = inChannel;
  if (HALB_Info::IsReallyGlobalDeviceProperty(v8, v13))
  {
    v28[0] = v8;
    v28[1] = 1735159650;
    v28[2] = inChannel;
    if (HALB_Info::IsIOContextProperty(v8, v20))
    {
      InternalIOContextID = HALS_Device::GetInternalIOContextID(v14);
      v29 = 5;
      v31 = 0;
      v30 = 0;
      v32 = 0;
      v33 = inProc;
      v34 = inClientData;
      buf[0] = 0;
      v40 = 0;
      HALS_NotificationManager::AddPropertyListener(&v29, InternalIOContextID, v28, buf);
    }

    else
    {
      v29 = 5;
      v31 = 0;
      v30 = 0;
      v32 = 0;
      v33 = inProc;
      v34 = inClientData;
      buf[0] = 0;
      v40 = 0;
      HALS_NotificationManager::AddPropertyListener(&v29, v11, v28, buf);
    }
  }

  else if (HALB_Info::IsIOContextProperty(v8, v20))
  {
    v22 = HALS_Device::GetInternalIOContextID(v14);
    v29 = 5;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v33 = inProc;
    v34 = inClientData;
    buf[0] = 0;
    v40 = 0;
    HALS_NotificationManager::AddPropertyListener(&v29, v22, v35, buf);
  }

  else
  {
    v29 = 5;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v33 = inProc;
    v34 = inClientData;
    buf[0] = 0;
    v40 = 0;
    HALS_NotificationManager::AddPropertyListener(&v29, v11, v35, buf);
  }

  HALS_Listener::~HALS_Listener(&v29);
  HALS_ObjectMap::ReleaseObject(v14, v23);
  return 0;
}

void sub_1DE479468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    HALS_ObjectMap::ReleaseObject(v11, v13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE479258);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioDeviceRemovePropertyListener(AudioDeviceID inDevice, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, AudioDevicePropertyListenerProc inProc)
{
  v6 = *&inPropertyID;
  v7 = isInput;
  v9 = *&inDevice;
  v42 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!inProc)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "HALS_Framework-ios-imp.cpp";
      LOWORD(v38) = 1024;
      *(&v38 + 2) = 3411;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceRemovePropertyListener: can't remove a NULL listener proc", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v10 = HALS_ObjectMap::CopyObjectByObjectID(v9);
  v12 = v10;
  if (!v10)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "HALS_Framework-ios-imp.cpp";
      LOWORD(v38) = 1024;
      *(&v38 + 2) = 3415;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceRemovePropertyListener: no device with given ID", buf, 0x12u);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = off_1F5991DD8;
    v32[2] = 560947818;
  }

  v14 = *(v10 + 5);
  v13 = *(v10 + 6);
  if (v14 <= 1701078389)
  {
    if (v14 == 1633773415)
    {
      goto LABEL_12;
    }

    v15 = 1633969526;
  }

  else
  {
    if (v14 == 1701078390 || v14 == 1701733488)
    {
      goto LABEL_12;
    }

    v15 = 1919182198;
  }

  if (v14 == v15)
  {
    goto LABEL_12;
  }

  if (v14 == v13)
  {
    goto LABEL_32;
  }

  if (v13 <= 1701078389)
  {
    if (v13 == 1633773415)
    {
      goto LABEL_12;
    }

    v31 = 1633969526;
    goto LABEL_31;
  }

  if (v13 != 1701078390 && v13 != 1701733488)
  {
    v31 = 1919182198;
LABEL_31:
    if (v13 == v31)
    {
      goto LABEL_12;
    }

LABEL_32:
    HALS_ObjectMap::ReleaseObject(v10, v11);
    goto LABEL_33;
  }

LABEL_12:
  if (v7)
  {
    v17 = 1768845428;
  }

  else
  {
    v17 = 1869968496;
  }

  v35[0] = v6;
  v35[1] = v17;
  v35[2] = inChannel;
  if (HALB_Info::IsReallyGlobalDeviceProperty(v6, v11))
  {
    v34[0] = v6;
    v34[1] = 1735159650;
    v34[2] = inChannel;
    if (HALB_Info::IsIOContextProperty(v6, v18))
    {
      InternalIOContextID = HALS_Device::GetInternalIOContextID(v12);
      *buf = 5;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v40 = inProc;
      v41 = 0;
      HALS_NotificationManager::RemovePropertyListener(buf, InternalIOContextID, v34, v22, v23);
    }

    else
    {
      *buf = 5;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v40 = inProc;
      v41 = 0;
      HALS_NotificationManager::RemovePropertyListener(buf, v9, v34, v19, v20);
    }
  }

  else if (HALB_Info::IsIOContextProperty(v6, v18))
  {
    v26 = HALS_Device::GetInternalIOContextID(v12);
    *buf = 5;
    v38 = 0;
    v37 = 0;
    v39 = 0;
    v40 = inProc;
    v41 = 0;
    HALS_NotificationManager::RemovePropertyListener(buf, v26, v35, v27, v28);
  }

  else
  {
    *buf = 5;
    v38 = 0;
    v37 = 0;
    v39 = 0;
    v40 = inProc;
    v41 = 0;
    HALS_NotificationManager::RemovePropertyListener(buf, v9, v35, v24, v25);
  }

  HALS_Listener::~HALS_Listener(buf);
  HALS_ObjectMap::ReleaseObject(v12, v29);
  return 0;
}

void sub_1DE47991C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    HALS_ObjectMap::ReleaseObject(v12, v14);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE479710);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioStreamGetPropertyInfo(AudioStreamID inStream, UInt32 inChannel, AudioDevicePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = 1735159650;
  inAddress.mElement = inChannel;
  if (AudioObjectHasProperty(1u, &inAddress))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(inStream, &inAddress, 0, 0, outSize);
      if (!outWritable)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        goto LABEL_11;
      }
    }

    if (!result)
    {
      result = AudioObjectIsPropertySettable(inStream, &inAddress, outWritable);
    }

LABEL_11:
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = 2003332927;
LABEL_12:
  if (outSize)
  {
    *outSize = 0;
  }

  if (outWritable)
  {
    *outWritable = 0;
  }

  return result;
}

void sub_1DE479AB8(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  else
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE479AA0);
}

OSStatus AudioStreamGetProperty(AudioStreamID inStream, UInt32 inChannel, AudioDevicePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = 1735159650;
  inAddress.mElement = inChannel;
  return AudioObjectGetPropertyData(inStream, &inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
}

void sub_1DE479B90(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v2)
    {
      if (v3)
      {
        bzero(v3, *v2);
      }

      *v2 = 0;
    }
  }

  else if (v2)
  {
    if (v3)
    {
      bzero(v3, *v2);
    }

    *v2 = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE479B78);
}

OSStatus AudioStreamSetProperty(AudioStreamID inStream, const AudioTimeStamp *inWhen, UInt32 inChannel, AudioDevicePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = 1735159650;
  inAddress.mElement = inChannel;
  return AudioObjectSetPropertyData(inStream, &inAddress, 0, 0, inPropertyDataSize, inPropertyData);
}

void sub_1DE479C80(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE479C64);
}

OSStatus AudioStreamAddPropertyListener(AudioStreamID inStream, UInt32 inChannel, AudioDevicePropertyID inPropertyID, AudioStreamPropertyListenerProc inProc, void *inClientData)
{
  v9 = *&inStream;
  v28 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!inProc)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_Framework-ios-imp.cpp";
      v25 = 1024;
      v26 = 3682;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioStreamAddPropertyListener: can't add a NULL listener proc", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v10 = HALS_ObjectMap::CopyObjectByObjectID(v9);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_Framework-ios-imp.cpp";
      v25 = 1024;
      v26 = 3686;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioStreamAddPropertyListener: no stream with given ID", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 561214578;
  }

  v22[0] = inPropertyID;
  v22[1] = 1735159650;
  v22[2] = inChannel;
  v16 = 6;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v20 = inProc;
  v21 = inClientData;
  buf[0] = 0;
  v27 = 0;
  HALS_NotificationManager::AddPropertyListener(&v16, v9, v22, buf);
  HALS_Listener::~HALS_Listener(&v16);
  HALS_ObjectMap::ReleaseObject(v10, v11);
  return 0;
}

void sub_1DE479F14(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE479F2C(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    HALS_ObjectMap::ReleaseObject(v4, v6);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE479D70);
  }

  JUMPOUT(0x1DE479F1CLL);
}

OSStatus AudioStreamRemovePropertyListener(AudioStreamID inStream, UInt32 inChannel, AudioDevicePropertyID inPropertyID, AudioStreamPropertyListenerProc inProc)
{
  v7 = *&inStream;
  v26 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!inProc)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "HALS_Framework-ios-imp.cpp";
      v23 = 1024;
      v24 = 3730;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioStreamRemovePropertyListener: can't remove a NULL listener proc", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = HALS_ObjectMap::CopyObjectByObjectID(v7);
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "HALS_Framework-ios-imp.cpp";
      v23 = 1024;
      v24 = 3734;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioStreamRemovePropertyListener: no stream with given ID", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    *v13 = off_1F5991DD8;
    v13[2] = 561214578;
  }

  v20[0] = inPropertyID;
  v20[1] = 1735159650;
  v20[2] = inChannel;
  v14 = 6;
  v16 = 0;
  v15 = 0;
  v17 = 0;
  v18 = inProc;
  v19 = 0;
  buf[0] = 0;
  v25 = 0;
  HALS_NotificationManager::AddPropertyListener(&v14, v7, v20, buf);
  HALS_Listener::~HALS_Listener(&v14);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  return 0;
}

void sub_1DE47A208(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE47A220(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    HALS_ObjectMap::ReleaseObject(v4, v6);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE47A068);
  }

  JUMPOUT(0x1DE47A210);
}

void AMCP::Stream::~Stream(AMCP::Stream *this)
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

uint64_t AMCP::Stream::Stream(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(a1, a2, a3);
  *v4 = &unk_1F5971D38;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61737472);
  if ((v5 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      v11 = 136315650;
      v12 = "Stream.cpp";
      v13 = 1024;
      v14 = 25;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_stream)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE47A498(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t AMCP::Stream::get_direction(AMCP::Stream *this)
{
  v2 = *(this + 3);
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
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1935960434u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Stream::get_starting_channel(AMCP::Stream *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 1;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1935894638u>(v5);
  }

  else
  {
    simple_required = 1;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

BOOL AMCP::Stream::is_reference_stream(AMCP::Stream *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
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
  v5 = *(this + 2);
  if (v5)
  {
    strcpy(buf, "spatbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
    if (!HIDWORD(v6))
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 4;
        strcpy(__p, "taps");
        *buf = 136316418;
        *&buf[4] = "Core.h";
        v16 = 1024;
        v17 = 391;
        v18 = 2080;
        v19 = "optional_value.operator BOOL() == true";
        v20 = 2080;
        v21 = __p;
        v22 = 1024;
        v23 = 1735159650;
        v24 = 1024;
        v25 = 0;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      abort();
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v7;
}

void sub_1DE47A798(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Stream::get_terminal_type(AMCP::Stream *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
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
  v5 = *(this + 2);
  if (v5)
  {
    strcpy(buf, "mretbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
    if (!HIDWORD(v6))
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 4;
        strcpy(__p, "term");
        *buf = 136316418;
        *&buf[4] = "Core.h";
        v16 = 1024;
        v17 = 391;
        v18 = 2080;
        v19 = "optional_value.operator BOOL() == true";
        v20 = 2080;
        v21 = __p;
        v22 = 1024;
        v23 = 1735159650;
        v24 = 1024;
        v25 = 0;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      abort();
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v7;
}

void sub_1DE47A958(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

AMCP::Core::Core *AMCP::Stream::get_latency(AMCP::Stream *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 2);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v5;
      }

      v20 = 0x676C6F62736C7463;
      v21 = 0;
      has_property = AMCP::Core::Core::has_property(v5, &v20);
      if (!has_property)
      {
LABEL_21:
        v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v13 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = 4;
          strcpy(&__p, "sltc");
          *buf = 136316418;
          v23 = "Core.h";
          v24 = 1024;
          v25 = 391;
          v26 = 2080;
          v27 = "optional_value.operator BOOL() == true";
          v28 = 2080;
          *v29 = &__p;
          *&v29[8] = 1024;
          v30 = 1735159650;
          v31 = 1024;
          v32 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v19 < 0)
          {
            operator delete(__p);
          }
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&__p, v5, &v20);
      v7 = __p;
      if (__p)
      {
        v8 = AMCP::Implementation::get_type_marker<std::function<int ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8))
        {
          LODWORD(v7) = AMCP::Core::Operation::call_function<int>(v7);
LABEL_8:
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          goto LABEL_15;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v7);
          LODWORD(v7) = AMCP::Thing::convert_to<int>(buf);
          if (*&v29[2])
          {
            (*&v29[2])(0, buf, 0, 0);
          }

          goto LABEL_8;
        }

        LOBYTE(v7) = 0;
      }

      v10 = 0;
      v9 = 1;
LABEL_15:
      has_property = v18;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if ((v9 & 1) == 0)
      {
        v5 = (v10 | v7);
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  return 0;
}

void sub_1DE47ABC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Stream::get_available_format_list(AMCP::Stream *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1718449187u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void AMCP::Stream::get_current_format(uint64_t *__return_ptr a1@<X8>, AMCP::Stream *this@<X0>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1718444404u>(a1, v7);
    }

    else
    {
      a1[4] = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t AMCP::Stream::set_current_format(AMCP::Stream *this, const CA::StreamDescription *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_15;
      }

      v14 = 0x676C6F62666D6174;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_15;
      }

      AMCP::Core::Core::find_operation(&v20, v7, &v14);
      v8 = v20;
      if (v20)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(v8, a2);
          v10 = 0;
          goto LABEL_12;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
          operator new();
        }
      }

      v10 = 1;
LABEL_12:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE47AE60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AMCP::Thing::~Thing(va);
  v9 = *(v7 - 40);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE47AE30);
}

uint64_t AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v30 = 1024;
      v31 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "Operation does not have requested function", v18);
    std::runtime_error::runtime_error(&v21, &v20);
    std::runtime_error::runtime_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5992170;
    v23 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
    v32 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const CA::StreamDescription &>]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v34 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v30 = 1024;
      v31 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "Invalid cast", v17);
    std::runtime_error::runtime_error(&v21, &v20);
    std::runtime_error::runtime_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5992170;
    v23 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
    v32 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const CA::StreamDescription &>]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v34 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2);
}

void sub_1DE47B338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 51);
}

uint64_t AMCP::Stream::set_current_format_and_wait(AMCP::Stream *this, const CA::StreamDescription *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_15;
      }

      v14 = 0x676C6F62666D6174;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_15;
      }

      AMCP::Core::Core::find_operation(&v20, v7, &v14);
      v8 = v20;
      if (v20)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(CA::StreamDescription const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,CA::StreamDescription const&>(v8, a2);
          v10 = 0;
          goto LABEL_12;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
          operator new();
        }
      }

      v10 = 1;
LABEL_12:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE47B5B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AMCP::Thing::~Thing(va);
  v9 = *(v7 - 40);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE47B584);
}

void AMCP::Stream::make_string_for_asbd(AMCP::Stream *this@<X0>, const CA::StreamDescription *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, int8x8_t a5@<D0>)
{
  v5 = a2;
  memset(&v170, 0, sizeof(v170));
  if (a3)
  {
    caulk::make_string(&v170, "%.0f", a2, *this);
  }

  v8 = *(this + 2);
  if (v8 == 1633889587)
  {
    v15 = "AC-3";
    goto LABEL_24;
  }

  if (v8 == 1667326771)
  {
    v15 = "AC-3 for SPDIF";
LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(a4, v15);
    goto LABEL_282;
  }

  if (v8 != 1819304813)
  {
    a5.i32[0] = bswap32(v8);
    v16 = vzip1_s8(a5, a5);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    v19 = vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL);
    *(a4 + 23) = 4;
    *a4 = vuzp1_s8(v19, v19).u32[0];
    *(a4 + 4) = 0;
    goto LABEL_282;
  }

  v167 = 0;
  v168 = 0;
  v169 = 0;
  v9 = *(this + 3);
  if ((v9 & 2) != 0)
  {
    HIBYTE(v169) = 10;
    LOWORD(v168) = 28257;
    v167 = *"Big Endian";
  }

  *&v166.__r_.__value_.__l.__data_ = 0uLL;
  v10 = "Unsigned Integer";
  if (v5)
  {
    v10 = "UInt";
  }

  v11 = "Signed Integer";
  v166.__r_.__value_.__r.__words[2] = 0;
  if (v5)
  {
    v11 = "SInt";
  }

  if ((v9 & 4) != 0)
  {
    v10 = v11;
  }

  v12 = "Floating Point";
  if (v5)
  {
    v12 = "Float";
  }

  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  std::string::__assign_external(&v166, v13);
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v14 = *(this + 3);
  if ((v14 & 8) == 0)
  {
    if ((v14 & 0x10) != 0)
    {
      HIBYTE(v165) = 4;
      LODWORD(v163) = 1751607624;
    }

    else
    {
      HIBYTE(v165) = 3;
      qmemcpy(&v163, "Low", 3);
    }
  }

  v160 = 0;
  v161 = 0;
  v162 = 0;
  if ((v14 & 0x40) != 0)
  {
    LOBYTE(v161) = 101;
    v160 = *"Unmixable";
    v20 = 9;
  }

  else
  {
    qmemcpy(&v160, "Mixable", 7);
    v20 = 7;
  }

  HIBYTE(v162) = v20;
  if (v5)
  {
    v21 = SHIBYTE(v170.__r_.__value_.__r.__words[2]);
    if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v170.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v170.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v23 = size + 1;
    }

    else
    {
      v23 = 0;
    }

    v24 = &v147;
    std::string::basic_string[abi:ne200100](&v147, v23);
    if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v147.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (v21 >= 0)
      {
        v25 = &v170;
      }

      else
      {
        v25 = v170.__r_.__value_.__r.__words[0];
      }

      memmove(v24, v25, size);
      memcpy(v24 + size, " ", size != 0);
    }

    v24->__r_.__value_.__s.__data_[size + (size != 0)] = 0;
    if (v162 >= 0)
    {
      v26 = &v160;
    }

    else
    {
      v26 = v160;
    }

    if (v162 >= 0)
    {
      v27 = HIBYTE(v162);
    }

    else
    {
      v27 = v161;
    }

    v28 = std::string::append(&v147, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v148.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v148, " ", 1uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v149.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v149.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string(&v146, "%u", v32, *(this + 7));
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v146;
    }

    else
    {
      v33 = v146.__r_.__value_.__r.__words[0];
    }

    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v146.__r_.__value_.__l.__size_;
    }

    v35 = std::string::append(&v149, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v150.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v150.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v150, " Ch ", 4uLL);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v151.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v151.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    if (v169 >= 0)
    {
      v39 = &v167;
    }

    else
    {
      v39 = v167;
    }

    if (v169 >= 0)
    {
      v40 = HIBYTE(v169);
    }

    else
    {
      v40 = v168;
    }

    v41 = std::string::append(&v151, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v152.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v152.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = HIBYTE(v169);
    if (v169 < 0)
    {
      v43 = v168;
    }

    if (v43)
    {
      v44 = " ";
    }

    else
    {
      v44 = "";
    }

    v45 = std::string::append(&v152, v44, v43 != 0);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v153.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v153.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    if (v165 >= 0)
    {
      v47 = &v163;
    }

    else
    {
      v47 = v163;
    }

    if (v165 >= 0)
    {
      v48 = HIBYTE(v165);
    }

    else
    {
      v48 = v164;
    }

    v49 = std::string::append(&v153, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = HIBYTE(v165);
    if (v165 < 0)
    {
      v51 = v164;
    }

    if (v51)
    {
      v52 = " ";
    }

    else
    {
      v52 = "";
    }

    v53 = std::string::append(&v154, v52, v51 != 0);
    v54 = *&v53->__r_.__value_.__l.__data_;
    v155.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&v155.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v166;
    }

    else
    {
      v55 = v166.__r_.__value_.__r.__words[0];
    }

    if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v166.__r_.__value_.__l.__size_;
    }

    v57 = std::string::append(&v155, v55, v56);
    v58 = *&v57->__r_.__value_.__l.__data_;
    v156.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v156.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string(&v145, "%u", v59, *(this + 8));
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v145;
    }

    else
    {
      v60 = v145.__r_.__value_.__r.__words[0];
    }

    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v145.__r_.__value_.__l.__size_;
    }

    v62 = std::string::append(&v156, v60, v61);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v157.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v157.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = HIBYTE(v165);
    if (v165 < 0)
    {
      v64 = v164;
    }

    if (v64)
    {
      v65 = "/";
    }

    else
    {
      v65 = "";
    }

    v66 = std::string::append(&v157, v65, v64 != 0);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v158.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v158.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    v68 = HIBYTE(v165);
    if (v165 < 0)
    {
      v68 = v164;
    }

    if (v68)
    {
      if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v144, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
      }

      else
      {
        v144 = v166;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v144, "");
    }

    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v133 = &v144;
    }

    else
    {
      v133 = v144.__r_.__value_.__r.__words[0];
    }

    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v134 = HIBYTE(v144.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v134 = v144.__r_.__value_.__l.__size_;
    }

    v135 = std::string::append(&v158, v133, v134);
    v137 = *&v135->__r_.__value_.__l.__data_;
    v159.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
    *&v159.__r_.__value_.__l.__data_ = v137;
    v135->__r_.__value_.__l.__size_ = 0;
    v135->__r_.__value_.__r.__words[2] = 0;
    v135->__r_.__value_.__r.__words[0] = 0;
    v138 = HIBYTE(v165);
    if (v165 < 0)
    {
      v138 = v164;
    }

    if (v138)
    {
      caulk::make_string(&__p, "%u", v136, (8 * (*(this + 6) / *(this + 7))));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
    }

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
      v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v140 = __p.__r_.__value_.__l.__size_;
    }

    v141 = std::string::append(&v159, p_p, v140);
    v142 = *&v141->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v141->__r_.__value_.__l + 2);
    *a4 = v142;
    v141->__r_.__value_.__l.__size_ = 0;
    v141->__r_.__value_.__r.__words[2] = 0;
    v141->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v157.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v156.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v154.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_274;
    }

    v132 = v147.__r_.__value_.__r.__words[0];
  }

  else
  {
    v69 = SHIBYTE(v170.__r_.__value_.__r.__words[2]);
    if ((v170.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v170.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v170.__r_.__value_.__l.__size_;
    }

    if (v70)
    {
      v71 = v70 + 1;
    }

    else
    {
      v71 = 0;
    }

    v72 = &v146;
    std::string::basic_string[abi:ne200100](&v146, v71);
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v72 = v146.__r_.__value_.__r.__words[0];
    }

    if (v70)
    {
      if (v69 >= 0)
      {
        v73 = &v170;
      }

      else
      {
        v73 = v170.__r_.__value_.__r.__words[0];
      }

      memmove(v72, v73, v70);
      memcpy(v72 + v70, " ", v70 != 0);
    }

    v72->__r_.__value_.__s.__data_[v70 + (v70 != 0)] = 0;
    if (v162 >= 0)
    {
      v74 = &v160;
    }

    else
    {
      v74 = v160;
    }

    if (v162 >= 0)
    {
      v75 = HIBYTE(v162);
    }

    else
    {
      v75 = v161;
    }

    v76 = std::string::append(&v146, v74, v75);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v147, " ", 1uLL);
    v79 = *&v78->__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&v148.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string(&v145, "%u", v80, *(this + 7));
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v145;
    }

    else
    {
      v81 = v145.__r_.__value_.__r.__words[0];
    }

    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v145.__r_.__value_.__l.__size_;
    }

    v83 = std::string::append(&v148, v81, v82);
    v84 = *&v83->__r_.__value_.__l.__data_;
    v149.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
    *&v149.__r_.__value_.__l.__data_ = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    v85 = std::string::append(&v149, " Channel ", 9uLL);
    v86 = *&v85->__r_.__value_.__l.__data_;
    v150.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
    *&v150.__r_.__value_.__l.__data_ = v86;
    v85->__r_.__value_.__l.__size_ = 0;
    v85->__r_.__value_.__r.__words[2] = 0;
    v85->__r_.__value_.__r.__words[0] = 0;
    caulk::make_string(&v144, "%u", v87, *(this + 8));
    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = &v144;
    }

    else
    {
      v88 = v144.__r_.__value_.__r.__words[0];
    }

    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = HIBYTE(v144.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v89 = v144.__r_.__value_.__l.__size_;
    }

    v90 = std::string::append(&v150, v88, v89);
    v91 = *&v90->__r_.__value_.__l.__data_;
    v151.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
    *&v151.__r_.__value_.__l.__data_ = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    v92 = std::string::append(&v151, " Bit ", 5uLL);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v152.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v152.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    if (v169 >= 0)
    {
      v94 = &v167;
    }

    else
    {
      v94 = v167;
    }

    if (v169 >= 0)
    {
      v95 = HIBYTE(v169);
    }

    else
    {
      v95 = v168;
    }

    v96 = std::string::append(&v152, v94, v95);
    v97 = *&v96->__r_.__value_.__l.__data_;
    v153.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
    *&v153.__r_.__value_.__l.__data_ = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    v98 = HIBYTE(v169);
    if (v169 < 0)
    {
      v98 = v168;
    }

    if (v98)
    {
      v99 = " ";
    }

    else
    {
      v99 = "";
    }

    v100 = std::string::append(&v153, v99, v98 != 0);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v102 = &v166;
    }

    else
    {
      v102 = v166.__r_.__value_.__r.__words[0];
    }

    if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v103 = v166.__r_.__value_.__l.__size_;
    }

    v104 = std::string::append(&v154, v102, v103);
    v105 = *&v104->__r_.__value_.__l.__data_;
    v155.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
    *&v155.__r_.__value_.__l.__data_ = v105;
    v104->__r_.__value_.__l.__size_ = 0;
    v104->__r_.__value_.__r.__words[2] = 0;
    v104->__r_.__value_.__r.__words[0] = 0;
    v106 = HIBYTE(v165);
    if (v165 < 0)
    {
      v106 = v164;
    }

    if (v106)
    {
      v107 = " Aligned ";
    }

    else
    {
      v107 = "";
    }

    if (v106)
    {
      v108 = 9;
    }

    else
    {
      v108 = 0;
    }

    v109 = std::string::append(&v155, v107, v108);
    v110 = *&v109->__r_.__value_.__l.__data_;
    v156.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
    *&v156.__r_.__value_.__l.__data_ = v110;
    v109->__r_.__value_.__l.__size_ = 0;
    v109->__r_.__value_.__r.__words[2] = 0;
    v109->__r_.__value_.__r.__words[0] = 0;
    if (v165 >= 0)
    {
      v111 = &v163;
    }

    else
    {
      v111 = v163;
    }

    if (v165 >= 0)
    {
      v112 = HIBYTE(v165);
    }

    else
    {
      v112 = v164;
    }

    v113 = std::string::append(&v156, v111, v112);
    v114 = *&v113->__r_.__value_.__l.__data_;
    v157.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
    *&v157.__r_.__value_.__l.__data_ = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    v115 = HIBYTE(v165);
    if (v165 < 0)
    {
      v115 = v164;
    }

    v116 = v115 == 0;
    v117 = v115 != 0;
    if (v116)
    {
      v118 = "";
    }

    else
    {
      v118 = " in ";
    }

    v119 = std::string::append(&v157, v118, 4 * v117);
    v121 = *&v119->__r_.__value_.__l.__data_;
    v158.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
    *&v158.__r_.__value_.__l.__data_ = v121;
    v119->__r_.__value_.__l.__size_ = 0;
    v119->__r_.__value_.__r.__words[2] = 0;
    v119->__r_.__value_.__r.__words[0] = 0;
    v122 = HIBYTE(v165);
    if (v165 < 0)
    {
      v122 = v164;
    }

    if (v122)
    {
      caulk::make_string(&__p, "%u", v120, (8 * (*(this + 6) / *(this + 7))));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v123 = &__p;
    }

    else
    {
      v123 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v124 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v124 = __p.__r_.__value_.__l.__size_;
    }

    v125 = std::string::append(&v158, v123, v124);
    v126 = *&v125->__r_.__value_.__l.__data_;
    v159.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
    *&v159.__r_.__value_.__l.__data_ = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    v127 = HIBYTE(v165);
    if (v165 < 0)
    {
      v127 = v164;
    }

    if (v127)
    {
      v128 = " Bits";
    }

    else
    {
      v128 = "";
    }

    if (v127)
    {
      v129 = 5;
    }

    else
    {
      v129 = 0;
    }

    v130 = std::string::append(&v159, v128, v129);
    v131 = *&v130->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v130->__r_.__value_.__l + 2);
    *a4 = v131;
    v130->__r_.__value_.__l.__size_ = 0;
    v130->__r_.__value_.__r.__words[2] = 0;
    v130->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v157.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v156.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v154.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_274;
    }

    v132 = v146.__r_.__value_.__r.__words[0];
  }

  operator delete(v132);
LABEL_274:
  if (SHIBYTE(v162) < 0)
  {
    operator delete(v160);
  }

  if (SHIBYTE(v165) < 0)
  {
    operator delete(v163);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(v167);
  }

LABEL_282:
  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }
}

uint64_t HALS_UCPlugIn::ObjectSetPropertyData(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8)
{
  v38 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 120))(result, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
LABEL_7:
      v11.i32[0] = a4->mSelector;
      v13 = vrev64_s16(*&vmovl_u8(v11));
      v14 = vuzp1_s8(v13, v13);
      v22 = v14.i32[0];
      v23 = 0;
      v14.i32[0] = a4->mScope;
      v15 = vrev64_s16(*&vmovl_u8(v14));
      v20 = vuzp1_s8(v15, v15).u32[0];
      v21 = 0;
      v19[0] = BYTE3(result);
      v19[1] = BYTE2(result);
      v19[2] = BYTE1(result);
      v18 = result;
      v19[3] = result;
      v19[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        mElement = a4->mElement;
        *buf = 136316674;
        v25 = "HALS_UCPlugIn.cpp";
        v26 = 1024;
        v27 = 1190;
        v28 = 2080;
        v29 = &v22;
        v30 = 2080;
        v31 = &v20;
        v32 = 2048;
        v33 = mElement;
        v34 = 1024;
        v35 = v18;
        v36 = 2080;
        v37 = v19;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectSetPropertyData: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v18;
    }
  }

  else
  {
    v12 = *(this + 72);
    if (v12)
    {
      result = v12(a2, a4, a5, a6, a7, a8);
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t HALS_UCPlugIn::ObjectGetPropertyData(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, unsigned int *a8, void *a9)
{
  v39 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 112))(result, a2, a3, a4, a5, a6, a7, a8, a9);
    if (result)
    {
LABEL_7:
      v12.i32[0] = a4->mSelector;
      v14 = vrev64_s16(*&vmovl_u8(v12));
      v15 = vuzp1_s8(v14, v14);
      v23 = v15.i32[0];
      v24 = 0;
      v15.i32[0] = a4->mScope;
      v16 = vrev64_s16(*&vmovl_u8(v15));
      v21 = vuzp1_s8(v16, v16).u32[0];
      v22 = 0;
      v20[0] = BYTE3(result);
      v20[1] = BYTE2(result);
      v20[2] = BYTE1(result);
      v19 = result;
      v20[3] = result;
      v20[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        mElement = a4->mElement;
        *buf = 136316674;
        v26 = "HALS_UCPlugIn.cpp";
        v27 = 1024;
        v28 = 1176;
        v29 = 2080;
        v30 = &v23;
        v31 = 2080;
        v32 = &v21;
        v33 = 2048;
        v34 = mElement;
        v35 = 1024;
        v36 = v19;
        v37 = 2080;
        v38 = v20;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectGetPropertyData: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v19;
    }
  }

  else
  {
    v13 = *(this + 71);
    if (v13)
    {
      result = v13(a2, a4, a5, a6, a7, a8, a9);
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t HALS_UCPlugIn::ObjectGetPropertyDataSize(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v8 = *(this + 3);
  if (v8)
  {
    v9 = (*(*v8 + 104))(v8, a2, a3, a4, a5, a6, &v24);
    if (!v9)
    {
      return v24;
    }

LABEL_7:
    v10.i32[0] = a4->mSelector;
    v13 = vrev64_s16(*&vmovl_u8(v10));
    v14 = vuzp1_s8(v13, v13);
    v22 = v14.i32[0];
    v23 = 0;
    v14.i32[0] = a4->mScope;
    v15 = vrev64_s16(*&vmovl_u8(v14));
    v20 = vuzp1_s8(v15, v15).u32[0];
    v21 = 0;
    v19[0] = HIBYTE(v9);
    v19[1] = BYTE2(v9);
    v19[2] = BYTE1(v9);
    v18 = v9;
    v19[3] = v9;
    v19[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      v26 = "HALS_UCPlugIn.cpp";
      v27 = 1024;
      v28 = 1161;
      v29 = 2080;
      v30 = &v22;
      v31 = 2080;
      v32 = &v20;
      v33 = 2048;
      v34 = mElement;
      v35 = 1024;
      v36 = v18;
      v37 = 2080;
      v38 = v19;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectGetPropertyDataSize: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v18;
  }

  v12 = *(this + 70);
  if (!v12)
  {
    return 0;
  }

  v9 = v12(a2, a4, a5, a6, &v24);
  if (v9)
  {
    goto LABEL_7;
  }

  return v24;
}

BOOL HALS_UCPlugIn::ObjectIsPropertySettable(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v6 = *(this + 3);
  if (v6)
  {
    v7 = (*(*v6 + 96))(v6, a2, a3, a4, &v22);
    if (!v7)
    {
      return v22 != 0;
    }

LABEL_7:
    v8.i32[0] = a4->mSelector;
    v11 = vrev64_s16(*&vmovl_u8(v8));
    v12 = vuzp1_s8(v11, v11);
    v20 = v12.i32[0];
    v21 = 0;
    v12.i32[0] = a4->mScope;
    v13 = vrev64_s16(*&vmovl_u8(v12));
    v18 = vuzp1_s8(v13, v13).u32[0];
    v19 = 0;
    v17[0] = HIBYTE(v7);
    v17[1] = BYTE2(v7);
    v17[2] = BYTE1(v7);
    v16 = v7;
    v17[3] = v7;
    v17[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a4->mElement;
      *buf = 136316674;
      v24 = "HALS_UCPlugIn.cpp";
      v25 = 1024;
      v26 = 1145;
      v27 = 2080;
      v28 = &v20;
      v29 = 2080;
      v30 = &v18;
      v31 = 2048;
      v32 = mElement;
      v33 = 1024;
      v34 = v16;
      v35 = 2080;
      v36 = v17;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::ObjectIsPropertySettable: failed:  [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v16;
  }

  v10 = *(this + 69);
  if (!v10)
  {
    return 0;
  }

  v7 = v10(a2, a4, &v22);
  if (v7)
  {
    goto LABEL_7;
  }

  return v22 != 0;
}

BOOL HALS_UCPlugIn::ObjectHasProperty(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    v6 = (*(*v5 + 88))(v5, a2, a3, a4);
  }

  else
  {
    v7 = *(this + 68);
    if (!v7)
    {
      return 0;
    }

    v6 = v7(a2, a4, a3);
  }

  return v6 != 0;
}

uint64_t HALS_UCPlugIn::End_WriteMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 176))(v8, a2, a3, 1919513701, a4, a5);
  }

  v10 = *(this + 67);
  if (v10)
  {
    return v10(a2, a4, &a5->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_WriteMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a7)
  {
    v8 = *a7 + *(a7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    return (*(*v9 + 168))(v9, a2, a3, a4, 1919513701, a5, a6, v8, 0);
  }

  v11 = *(a1 + 528);
  if (!v11)
  {
    return 1852797029;
  }

  return v11(a2, a3, a5, a6 + 144, v8, a5);
}

uint64_t HALS_UCPlugIn::Begin_WriteMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 160))(v8, a2, a3, 1919513701, a4, a5);
  }

  v10 = *(this + 65);
  if (v10)
  {
    return v10(a2, a4, &a5->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_WriteMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1919513701, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 66) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ConvertMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1668114808, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ConvertMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1668114808, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ConvertMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1668114808, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ConvertMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1668114808, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ProcessMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1886218616, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ProcessMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1886218616, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ProcessMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1886218616, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ProcessMix(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1886218616, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_MixOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1835628655, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_MixOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 24);
  if (!v7)
  {
    return 1852797029;
  }

  if (*a7)
  {
    v8 = *a7 + *(a7 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (*(*v7 + 168))(v7, a2, a3, a4, 1835628655, a5, a6, v8, 0);
}

uint64_t HALS_UCPlugIn::Begin_MixOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1835628655, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_MixOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1835628655, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 66) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ProcessOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1886352756, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ProcessOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1886352756, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ProcessOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1886352756, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ProcessOutput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1886352756, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ProcessInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1885957744, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ProcessInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1885957744, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ProcessInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1885957744, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ProcessInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1885957744, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ConvertInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1667853936, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ConvertInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 1852797029;
  }

  if (*a8)
  {
    v9 = *a8 + *(a8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (*a7)
  {
    v10 = *a7 + *(a7 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (*(*v8 + 168))(v8, a2, a3, a4, 1667853936, a5, a6, v10, v9);
}

uint64_t HALS_UCPlugIn::Begin_ConvertInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1667853936, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ConvertInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  result = *(this + 3);
  v8 = 1;
  if (result)
  {
    v11 = 0;
    v10 = 1;
    result = (*(*result + 152))(result, a2, a3, 1667853936, &v11, &v10);
    v9 = v11 != 0;
    v8 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_ReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 176))(v8, a2, a3, 1919246692, a4, a5);
  }

  v10 = *(this + 64);
  if (v10)
  {
    return v10(a2, a4, &a5->mInputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::InformDriverOfIOThreadStateChange(HALS_UCPlugIn *this, uint64_t a2, const applesauce::CF::DictionaryRef *a3)
{
  result = *(this + 5);
  if (result)
  {
    if (*a3)
    {
      return (*(*result + 32))(result, a2);
    }
  }

  return result;
}

uint64_t HALS_UCPlugIn::Do_TeardownForIsolatedIO(HALS_UCPlugIn *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return (*(*v1 + 40))(v1);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_SetupForIsolatedIO(HALS_UCPlugIn *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return (*(*v1 + 32))(v1);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_IsolatedReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5, uint64_t a6)
{
  v6 = *(this + 4);
  if (v6)
  {
    return (*(*v6 + 48))(v6, a2, a3, a6, 1919246692, a4, a5);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Do_ReadInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a7)
  {
    v8 = *a7 + *(a7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    return (*(*v9 + 168))(v9, a2, a3, a4, 1919246692, a5, a6, v8, 0);
  }

  v11 = *(a1 + 504);
  if (!v11)
  {
    return 1852797029;
  }

  return v11(a2, a3, a5, a6 + 80, v8, a5);
}

uint64_t HALS_UCPlugIn::Begin_ReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, uint64_t a4, const AudioServerPlugInIOCycleInfo *a5)
{
  v8 = *(this + 3);
  if (v8)
  {
    return (*(*v8 + 160))(v8, a2, a3, 1919246692, a4, a5);
  }

  v10 = *(this + 62);
  if (v10)
  {
    return v10(a2, a4, &a5->mInputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_ReadInput(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1919246692, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 63) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_IOCycle(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1668899692, a4->mNominalIOBufferFrameSize);
  }

  v7 = *(this + 61);
  if (v7)
  {
    return v7(a2, a4->mNominalIOBufferFrameSize, &a4->mInputTime, &a4->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Begin_IOCycle(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1668899692, a4->mNominalIOBufferFrameSize);
  }

  v7 = *(this + 60);
  if (v7)
  {
    return v7(a2, a4->mNominalIOBufferFrameSize, &a4->mInputTime, &a4->mOutputTime);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_IOCycle(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1668899692, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 60) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::End_IOThread(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 176))(v5, a2, a3, 1953002084, a4->mNominalIOBufferFrameSize, a4);
  }

  v7 = *(this + 59);
  if (v7)
  {
    return v7(a2);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Begin_IOThread(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 160))(v5, a2, a3, 1953002084, a4->mNominalIOBufferFrameSize);
  }

  v7 = *(this + 58);
  if (v7)
  {
    return v7(a2, a4->mNominalIOBufferFrameSize);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::WillDo_IOThread(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = *(this + 3);
  if (result)
  {
    v10 = 0;
    v9 = 1;
    result = (*(*result + 152))(result, a2, a3, 1953002084, &v10, &v9);
    v7 = v10 == 0;
  }

  else
  {
    v7 = *(this + 58) == 0;
  }

  v8 = !v7;
  *a4 = v8;
  return result;
}

uint64_t HALS_UCPlugIn::GetZeroTimeStamp(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, double *a4, unint64_t *a5, unint64_t *a6)
{
  v7 = *(this + 3);
  if (v7)
  {
    return (*(*v7 + 144))(v7, a2, a3, a4, a5, a6);
  }

  v9 = *(this + 57);
  if (v9)
  {
    return v9(a2, a4, a5, a6);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Stop(HALS_UCPlugIn *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    return (*(*v3 + 136))(v3, a2);
  }

  v5 = *(this + 56);
  if (v5)
  {
    return v5(a2);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Start(HALS_UCPlugIn *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    return (*(*v3 + 128))(v3, a2);
  }

  v5 = *(this + 55);
  if (v5)
  {
    return v5(a2);
  }

  else
  {
    return 1852797029;
  }
}

void HALS_UCPlugIn::create_mcp_engine(HALS_UCPlugIn *this, HALS_PlugIn *a2, const HALS_IODevice *a3, unsigned int *a4)
{
  object[42] = *MEMORY[0x1E69E9840];
  v9 = (*(*a3 + 216))(a3);
  cf = v9;
  if (!v9 || (v10 = CFGetTypeID(v9), v10 == CFStringGetTypeID()))
  {
    v25 = (*(*a3 + 272))(a3);
    v24 = (*(*a3 + 304))(a3);
    v23 = (*(*a3 + 328))(a3);
    v22 = (*(*a3 + 320))(a3, 1);
    v21 = (*(*a3 + 320))(a3, 0);
    v20 = (*(*a3 + 312))(a3, 1);
    v19 = (*(*a3 + 312))(a3, 0);
    AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(object, "HALS_UCPlugIn::Engine Queue", 61);
    v11 = (this + 80);
    AMCP::Utility::Dispatch_Queue::operator=(v11, object[0]);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
    make_stream_list(object, a3, 1);
    make_stream_list(__p, a3, 0);
    v16 = 0uLL;
    v15 = 0;
    v12 = *(a2 + 53);
    *&v14 = *(a2 + 52);
    *(&v14 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    std::allocate_shared[abi:ne200100]<AMCP::ASP::Engine,std::allocator<AMCP::ASP::Engine>,std::shared_ptr<AMCP::ASP::PlugIn>,BOOL,std::shared_ptr<HALS_UCPlugInBase>,unsigned int const&,applesauce::CF::StringRef &,double &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,unsigned int &,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> &,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> &,AMCP::Utility::Dispatch_Queue &,0>(&v17, &v16, &v15, &v14, a4, &cf, &v25, &v24, &v23, &v22, &v21, &v20, &v19, object, __p, v11);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE47DDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void *a34)
{
  __cxa_free_exception(v34);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a33);
  _Unwind_Resume(a1);
}

void make_stream_list(unint64_t *a1, HALS_IODevice *this, char a3)
{
  v3 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  NumberStreams = HALS_IODevice::GetNumberStreams(this, a3);
  v30 = NumberStreams;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(v3, NumberStreams);
  if (NumberStreams)
  {
    v5 = 0;
    v29 = v3;
    do
    {
      v6 = HALS_IODevice::CopyStreamByIndex(this, a3, v5);
      v7 = (*(*v6 + 208))(v6);
      v8 = v6[23];
      v9 = v6[4];
      v42 = 0x676C6F6270667420;
      v43 = 0;
      v44 = 0;
      (*(*v6 + 120))(v6, v9, &v42, 40, &v44, &v33, 0, 0, 0);
      v10 = v34;
      v11 = v35;
      v13 = v36;
      v12 = v37;
      v15 = v38;
      v14 = v39;
      v16 = v40;
      if (v34 == 1819304813 && (v35 & 0x40) == 0)
      {
        v13 = 4 * v39;
        v16 = 32;
        v12 = 1;
        v11 = 9;
        v15 = 4 * v39;
      }

      v17 = v33;
      v18 = v41;
      v19 = v3[1];
      v20 = v3[2];
      if (v19 >= v20)
      {
        v22 = *v3;
        v23 = v19 - *v3;
        v24 = 0x6DB6DB6DB6DB6DB7 * (v23 >> 3) + 1;
        if (v24 > 0x492492492492492)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v22) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x249249249249249)
        {
          v26 = 0x492492492492492;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 8 * (v23 >> 3);
        *v27 = v7;
        *(v27 + 4) = v8;
        *(v27 + 8) = 0;
        *(v27 + 16) = v17;
        *(v27 + 24) = v10;
        *(v27 + 28) = v11;
        *(v27 + 32) = v13;
        *(v27 + 36) = v12;
        *(v27 + 40) = v15;
        *(v27 + 44) = v14;
        *(v27 + 48) = v16;
        *(v27 + 52) = v18;
        v21 = v27 + 56;
        v28 = v27 - v23;
        memcpy((v27 - v23), v22, v23);
        v3 = v29;
        *v29 = v28;
        v29[1] = v21;
        v29[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v19 = v7;
        *(v19 + 4) = v8;
        *(v19 + 8) = 0;
        *(v19 + 16) = v17;
        *(v19 + 24) = v10;
        *(v19 + 28) = v11;
        *(v19 + 32) = v13;
        *(v19 + 36) = v12;
        *(v19 + 40) = v15;
        *(v19 + 44) = v14;
        v21 = v19 + 56;
        *(v19 + 48) = v16;
        *(v19 + 52) = v18;
      }

      v3[1] = v21;
      ++v5;
    }

    while (v30 != v5);
  }
}

void sub_1DE47E10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_UCPlugIn::DestroyDevice(HALS_UCPlugIn *this)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t HALS_UCPlugIn::CreateDevice(HALS_UCPlugIn *this, const __CFDictionary *a2, const AudioServerPlugInClientInfo *a3, unsigned int *a4)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 40))(result, a2, a3, a4);
  }

  return result;
}

uint64_t HALS_UCPlugIn::AbortDeviceConfigChange(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, void *a4)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 80))(result, a2, a3, a4);
  }

  return result;
}

uint64_t HALS_UCPlugIn::PerformDeviceConfigChange(HALS_UCPlugIn *this, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 3);
  if (v5)
  {
    return (*(*v5 + 72))(v5, a2, a3, a4);
  }

  v7 = *(this + 54);
  if (v7)
  {
    return v7(a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_UCPlugIn::RemoveDeviceClient(HALS_UCPlugIn *this, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 64))(result, a2, a3);
  }

  return result;
}

uint64_t HALS_UCPlugIn::AddDeviceClient(HALS_UCPlugIn *this, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 56))(result, a2, a3);
  }

  return result;
}

void HALS_UCPlugIn::Teardown(HALS_UCPlugIn *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(this + 53);
  if (v1)
  {
    v2 = v1();
    if (v2)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
        v7 = 136315394;
        v8 = "HALS_UCPlugIn.cpp";
        v9 = 1024;
        v10 = 344;
        _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_UCPlugIn::Teardown: failed", &v7, 0x12u);
      }
    }
  }
}

uint64_t HALS_UCPlugIn::Initialize(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 416);
  if (v2)
  {

    return v2(a2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "HALS_UCPlugIn.cpp";
      v6 = 1024;
      v7 = 333;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::Initialize: there isn't an initialize entry", &v4, 0x12u);
    }

    return 1852797029;
  }
}

uint64_t HALS_UCPlugIn::Initialize(HALS_UCPlugIn *this, const AudioServerPlugInHostInterface *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3 || (v3 = *(this + 6)) != 0)
  {
    v4 = *(*v3 + 32);

    return v4();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "HALS_UCPlugIn.cpp";
      v8 = 1024;
      v9 = 318;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_UCPlugIn::Initialize: there isn't an interface to intialize", &v6, 0x12u);
    }

    return 1852797029;
  }
}

void HALS_UCPlugIn::~HALS_UCPlugIn(HALS_UCPlugIn *this)
{
  HALS_UCPlugIn::~HALS_UCPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971D70;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 80));
  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

void HALS_IOA2Stream::SetPropertyData(HALS_IOA2Stream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v56 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8, a5, a6, a7) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v15 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 451;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    v38 = 560947818;
LABEL_41:
    *v37 = off_1F5991DD8;
    v37[2] = v38;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v14))
  {
    v21 = atomic_load(v15 + 40);
    if (a8)
    {
      v22 = *(a8 + 60);
    }

    else
    {
      v22 = getpid();
    }

    if (v21 != -1 && v21 != v22)
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      v38 = 560492391;
      goto LABEL_41;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector == 1885762592)
  {
    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 527;
      v39 = MEMORY[0x1E69E9C10];
      v40 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
      goto LABEL_49;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v54 = __Block_byref_object_copy__7481;
    v55 = __Block_byref_object_dispose__7482;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = 0;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 0x40000000;
    v46[2] = ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_39;
    v46[3] = &unk_1E8675410;
    v46[6] = this;
    v46[7] = a5;
    v46[4] = buf;
    v46[5] = &v48;
    v31 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v31, v46);
    if (*(v49 + 6))
    {
      v44 = __cxa_allocate_exception(0x10uLL);
      v45 = *(v49 + 6);
      *v44 = off_1F5991DD8;
      v44[2] = v45;
    }

    if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
    {
      v32 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
      v34 = v32;
      if (v32)
      {
        HALS_Client::SetNonMixableFormat(a8, *(v32 + 16));
      }

      HALS_ObjectMap::ReleaseObject(v34, v33);
    }

    goto LABEL_35;
  }

  if (mSelector == 1936092532)
  {
    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 484;
      v39 = MEMORY[0x1E69E9C10];
      v40 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
      goto LABEL_49;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v54 = __Block_byref_object_copy__7481;
    v55 = __Block_byref_object_dispose__7482;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37;
    v47[3] = &unk_1E86753E8;
    v47[6] = this;
    v47[7] = a5;
    v47[4] = buf;
    v47[5] = &v48;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v47);
    if (*(v49 + 6))
    {
      v42 = __cxa_allocate_exception(0x10uLL);
      v43 = *(v49 + 6);
      *v42 = off_1F5991DD8;
      v42[2] = v43;
    }

    if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
    {
      v28 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
      v30 = v28;
      if (v28)
      {
        HALS_Client::SetNonMixableFormat(a8, *(v28 + 16));
      }

      HALS_ObjectMap::ReleaseObject(v30, v29);
    }

LABEL_35:
    _Block_object_dispose(&v48, 8);
    goto LABEL_36;
  }

  if (mSelector != 1935762292)
  {
    HALS_Object::SetPropertyData(this, a2, a3, v17, v18, v19, v20, a8);
  }

  if (a4 <= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_IOA2Stream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 459;
    v39 = MEMORY[0x1E69E9C10];
    v40 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
LABEL_49:
    _os_log_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, v40, buf, 0x12u);
LABEL_50:
    v41 = __cxa_allocate_exception(0x10uLL);
    *v41 = off_1F5991DD8;
    v41[2] = 561211770;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LODWORD(v54) = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v52[2] = ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
  v52[3] = &unk_1E86753C0;
  v52[5] = this;
  v52[6] = a5;
  v52[4] = buf;
  v24 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v24, v52);
  if (*(*&buf[8] + 24))
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    v26 = *(*&buf[8] + 24);
    *v25 = off_1F5991DD8;
    v25[2] = v26;
  }

LABEL_36:
  _Block_object_dispose(buf, 8);
  HALS_ObjectMap::ReleaseObject(v15, v35);
}

void sub_1DE47EF0C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  HALS_ObjectMap::ReleaseObject(v26, a2);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 176), 8);
  HALS_ObjectMap::ReleaseObject(v25, v29);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(v3 + 48));
  v6 = v4;
  if (v4 && !*(v3 + 56))
  {
    HALS_IOA2UCDevice::SetStreamActive((v4 + 1976), *(v3 + 72), **(a1 + 48) != 0);
  }

  *(v3 + 76) = **(a1 + 48) != 0;
  HALS_ObjectMap::ReleaseObject(v6, v5);
}

void sub_1DE47F01C(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2;
  HALS_ObjectMap::ReleaseObject(v15, a2);
  v18 = __cxa_begin_catch(a1);
  if (v16 == 2)
  {
    v19 = v18[2];
  }

  else
  {
    v19 = 2003329396;
  }

  *(*(*(v14 + 32) + 8) + 24) = v19;

  __cxa_end_catch();
}

__n128 __Block_byref_object_copy__7481(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37(void *a1)
{
  v2 = a1[6];
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v12);
  v5 = a1[7];
  v6 = *(a1[4] + 8);
  v7 = *(v5 + 16);
  *&v13.mSampleRate = *v5;
  *&v13.mBytesPerPacket = v7;
  *&v13.mBitsPerChannel = *(v5 + 32);
  if (v13.mFormatID == 1819304813)
  {
    v13.mBitsPerChannel = 0;
    *&v13.mFramesPerPacket = 0;
    *&v13.mFormatFlags = 0;
  }

  HALB_FormatList::BestMatchForPhysicalFormat((v2 + 20), &v13, v6 + 1, v3, v4, v12.mSampleRate);
  v8 = HALS_ObjectMap::CopyObjectByObjectID(v2[12]);
  v10 = v8;
  if (v8)
  {
    v11 = HALS_IOA2UCDevice::SetStreamCurrentFormat((v8 + 1976), v2[18], (*(a1[4] + 8) + 40));
  }

  else
  {
    v11 = 560947818;
  }

  *(*(a1[5] + 8) + 24) = v11;
  HALS_ObjectMap::ReleaseObject(v10, v9);
}

void sub_1DE47F184(void *a1, HALS_Object *a2)
{
  v4 = a2;
  HALS_ObjectMap::ReleaseObject(v3, a2);
  v6 = __cxa_begin_catch(a1);
  if (v4 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v6[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE47F170);
}

void ___ZN15HALS_IOA2Stream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_39(uint64_t a1)
{
  v2 = *(a1 + 48);
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v9);
  HALB_FormatList::BestMatchForPhysicalFormat((v2 + 20), *(a1 + 56), (*(*(a1 + 32) + 8) + 40), v3, v4, v9.mSampleRate);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(v2[12]);
  v7 = v5;
  if (v5)
  {
    v8 = HALS_IOA2UCDevice::SetStreamCurrentFormat((v5 + 1976), v2[18], (*(*(a1 + 32) + 8) + 40));
  }

  else
  {
    v8 = 560947818;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  HALS_ObjectMap::ReleaseObject(v7, v6);
}

void sub_1DE47F290(void *a1, HALS_Object *a2)
{
  v4 = a2;
  HALS_ObjectMap::ReleaseObject(v3, a2);
  v6 = __cxa_begin_catch(a1);
  if (v4 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v6[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE47F27CLL);
}

void HALS_IOA2Stream::GetCurrentHWFormat(HALS_IOA2Stream *this, AudioStreamBasicDescription *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v6 = v4;
  if (v4)
  {
    v7 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v4 + 1976), *(this + 18));
    v15 = v7;
    v16 = 1;
    if (!v7)
    {
LABEL_16:
      CACFDictionary::~CACFDictionary(&v15);
      goto LABEL_17;
    }

    v14 = 0;
    if (CACFDictionary::GetDictionary(v7, @"current format", &v14))
    {
      v8 = v14;
      v17 = 0;
      *buf = v14;
      *&buf[8] = 0;
      *&a2->mSampleRate = 0u;
      *&a2->mBytesPerPacket = 0u;
      *&a2->mBitsPerChannel = 0;
      if (CACFDictionary::GetUInt64(v8, @"sample rate", &v17) && (v9 = *buf, a2->mSampleRate = vcvtd_n_f64_u64(v17, 0x20uLL) + HIDWORD(v17), CACFDictionary::GetUInt32(v9, @"format ID", &a2->mFormatID)) && CACFDictionary::GetUInt32(*buf, @"format flags", &a2->mFormatFlags) && CACFDictionary::GetUInt32(*buf, @"bytes per packet", &a2->mBytesPerPacket) && CACFDictionary::GetUInt32(*buf, @"frames per packet", &a2->mFramesPerPacket) && CACFDictionary::GetUInt32(*buf, @"bytes per frame", &a2->mBytesPerFrame) && CACFDictionary::GetUInt32(*buf, @"channels per frame", &a2->mChannelsPerFrame))
      {
        UInt32 = CACFDictionary::GetUInt32(*buf, @"bits per channel", &a2->mBitsPerChannel);
      }

      else
      {
        UInt32 = 0;
      }

      if (a2->mFormatID == 1819304813)
      {
        a2->mFormatFlags &= ~0x40u;
      }

      CACFDictionary::~CACFDictionary(buf);
      if (UInt32)
      {
        goto LABEL_16;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2UCDevice.cpp";
      v19 = 1024;
      v20 = 656;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  HALS_IOA2UCDevice::GetStreamInfoByID_CurrentFormat: the current format is not formatted correctly";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_IOA2UCDevice.cpp";
      v19 = 1024;
      v20 = 654;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d  HALS_IOA2UCDevice::GetStreamInfoByID_CurrentFormat: there is no current format";
    }

    _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    goto LABEL_23;
  }

LABEL_17:
  HALS_ObjectMap::ReleaseObject(v6, v5);
}

void HALS_IOA2Stream::GetPropertyData(HALS_IOA2Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, AMCP::Log::AMCP_Scope_Registry **a6, uint64_t a7, HALS_ObjectMap *a8, HALS_Client *a9)
{
  v122 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762668)
  {
    v19 = mSelector - 1936092479 <= 0x35 && ((1 << (mSelector - 63)) & 0x20400400000001) != 0 || mSelector == 1936092451;
    v20 = 29805;
  }

  else
  {
    v19 = mSelector - 1885762592 <= 0x1F && ((1 << (mSelector - 32)) & 0x80000009) != 0 || mSelector == 1819569763;
    v20 = 29793;
  }

  v22 = v20 | 0x70660000;
  if (v19 || mSelector == v22)
  {
    v24 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
    v25 = v24;
    if (!v24)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v107 = 136315394;
        *&v107[4] = "HALS_IOA2Stream.cpp";
        *&v107[12] = 1024;
        *&v107[14] = 128;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyDataWithNominalSampleRate: owning device is missing", v107, 0x12u);
      }

      v84 = __cxa_allocate_exception(0x10uLL);
      *v84 = off_1F5991DD8;
      v84[2] = 560947818;
    }

    v26 = (*(*v24 + 704))(v24, a9);
    v93 = v27;
    v28 = v26;
    if (a9)
    {
      v29 = *(a9 + 266) ^ 1;
    }

    else
    {
      v29 = 1;
    }

    v30 = a3->mSelector;
    if (a3->mSelector <= 1885762668)
    {
      if (v30 > 1885762594)
      {
        switch(v30)
        {
          case 1885762595:
            v100 = 0;
            v101 = &v100;
            v102 = 0x2000000000;
            v103 = 0;
            *v107 = MEMORY[0x1E69E9820];
            *&v107[8] = 0x40000000;
            *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3_20;
            v108 = &unk_1E8675310;
            LODWORD(v112) = a4;
            v109 = &v100;
            v110 = this;
            v111 = a6;
            v64 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v64, v107);
            v65 = *(v101 + 24);
            *a5 = 40 * v65;
            if (v65 && (v93 & 1) != 0)
            {
              v66 = (v65 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v67 = xmmword_1DE757E30;
              v68 = vdupq_n_s64(v65 - 1);
              v69 = vdupq_n_s64(2uLL);
              do
              {
                v70 = vmovn_s64(vcgeq_u64(v68, v67));
                if (v70.i8[0])
                {
                  *a6 = v28;
                }

                if (v70.i8[4])
                {
                  a6[5] = v28;
                }

                v67 = vaddq_s64(v67, v69);
                a6 += 10;
                v66 -= 2;
              }

              while (v66);
            }

            break;
          case 1885762623:
            if (a4 <= 0x27)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_150;
              }

              *v107 = 136315394;
              *&v107[4] = "HALS_IOA2Stream.cpp";
              *&v107[12] = 1024;
              *&v107[14] = 282;
              v86 = MEMORY[0x1E69E9C10];
              v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
              goto LABEL_149;
            }

            *a5 = 40;
            v100 = 0;
            v101 = &v100;
            v102 = 0x2000000000;
            LOBYTE(v103) = 0;
            *v107 = MEMORY[0x1E69E9820];
            *&v107[8] = 0x40000000;
            *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22;
            v108 = &unk_1E8675338;
            v110 = this;
            v111 = v26;
            LOBYTE(v112) = v27;
            v109 = &v100;
            v113 = a6;
            v54 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v54, v107);
            if ((*(v101 + 24) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Stream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 299;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", buf, 0x12u);
              }

              v55 = __cxa_allocate_exception(0x10uLL);
              *v55 = off_1F5991DD8;
              v55[2] = 560226676;
            }

            break;
          case 1885762657:
            v100 = 0;
            v101 = &v100;
            v102 = 0x2000000000;
            v103 = 0;
            *v107 = MEMORY[0x1E69E9820];
            *&v107[8] = 0x40000000;
            *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_18;
            v108 = &unk_1E86752E8;
            LODWORD(v112) = a4;
            v109 = &v100;
            v110 = this;
            v111 = a6;
            v35 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v35, v107);
            v36 = *(v101 + 24);
            *a5 = 56 * v36;
            if (v36 && (v93 & 1) != 0)
            {
              v37 = a6 + 6;
              do
              {
                *(v37 - 6) = v28;
                *(v37 - 1) = v28;
                *v37 = v28;
                v37 += 7;
                --v36;
              }

              while (v36);
            }

            break;
          default:
            goto LABEL_104;
        }

        goto LABEL_101;
      }

      if (v30 == 1819569763)
      {
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_150;
          }

          *v107 = 136315394;
          *&v107[4] = "HALS_IOA2Stream.cpp";
          *&v107[12] = 1024;
          *&v107[14] = 139;
          v86 = MEMORY[0x1E69E9C10];
          v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyLatency";
          goto LABEL_149;
        }

        StreamLatencyFramesDueToHostedDSP = HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
        *v107 = MEMORY[0x1E69E9820];
        *&v107[8] = 1174405120;
        *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
        v108 = &__block_descriptor_tmp_5_7499;
        v109 = this;
        v110 = v25;
        HALS_ObjectMap::RetainObject(v25, v51);
        v111 = v28;
        LOBYTE(v112) = v93;
        v114 = StreamLatencyFramesDueToHostedDSP;
        v113 = a6;
        v52 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v52, v107);
        *a5 = 4;
        HALS_ObjectMap::ReleaseObject(v110, v53);
LABEL_103:
        HALS_ObjectMap::ReleaseObject(v25, v39);
        return;
      }

      if (v30 != 1885762592)
      {
        goto LABEL_104;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_150;
        }

        *v107 = 136315394;
        *&v107[4] = "HALS_IOA2Stream.cpp";
        *&v107[12] = 1024;
        *&v107[14] = 254;
        v86 = MEMORY[0x1E69E9C10];
        v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_149;
      }

      *v107 = MEMORY[0x1E69E9820];
      *&v107[8] = 0x40000000;
      *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_16;
      v108 = &__block_descriptor_tmp_17_7511;
      v109 = this;
      v110 = a6;
      v42 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v42, v107);
    }

    else
    {
      v31 = v29 & 1;
      if (v30 <= 1936092512)
      {
        if (v30 != 1885762669)
        {
          if (v30 != 1936092451)
          {
            if (v30 == 1936092479)
            {
              if (a4 > 0x27)
              {
                *a5 = 40;
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2000000000;
                v121 = 0;
                *v107 = MEMORY[0x1E69E9820];
                *&v107[8] = 0x40000000;
                *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_10;
                v108 = &unk_1E8675258;
                v110 = this;
                v111 = v26;
                LOBYTE(v112) = v27;
                v109 = buf;
                v113 = a6;
                v32 = (*(*this + 64))(this);
                HALB_CommandGate::ExecuteCommand(v32, v107);
                v100 = MEMORY[0x1E69E9820];
                v101 = 0x40000000;
                v102 = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_12;
                v103 = &unk_1E8675280;
                v104 = buf;
                v105 = this;
                v106 = a6;
                v33 = (*(*this + 64))(this);
                HALB_CommandGate::ExecuteCommand(v33, &v100);
                if ((*(*&buf[8] + 24) & 1) == 0)
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *v116 = 136315394;
                    v117 = "HALS_IOA2Stream.cpp";
                    v118 = 1024;
                    v119 = 211;
                    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", v116, 0x12u);
                  }

                  v89 = __cxa_allocate_exception(0x10uLL);
                  *v89 = off_1F5991DD8;
                  v89[2] = 560226676;
                }

                v34 = buf;
                goto LABEL_102;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
LABEL_150:
                v88 = __cxa_allocate_exception(0x10uLL);
                *v88 = off_1F5991DD8;
                v88[2] = 561211770;
              }

              *v107 = 136315394;
              *&v107[4] = "HALS_IOA2Stream.cpp";
              *&v107[12] = 1024;
              *&v107[14] = 192;
              v86 = MEMORY[0x1E69E9C10];
              v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
LABEL_149:
              _os_log_impl(&dword_1DE1F9000, v86, OS_LOG_TYPE_ERROR, v87, v107, 0x12u);
              goto LABEL_150;
            }

LABEL_104:
            v74 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v74 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v26);
            }

            v76 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
              v77 = *v76;
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            else
            {
              v77 = *v76;
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v107 = 136315394;
              *&v107[4] = "HALS_IOA2Stream.cpp";
              *&v107[12] = 1024;
              *&v107[14] = 340;
              _os_log_error_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOA2Stream::GetPropertyDataWithNominalSampleRate: Unhandled case.", v107, 0x12u);
            }

            goto LABEL_103;
          }

          v100 = 0;
          v101 = &v100;
          v102 = 0x2000000000;
          v103 = 0;
          *v107 = MEMORY[0x1E69E9820];
          *&v107[8] = 0x40000000;
          *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
          v108 = &unk_1E8675230;
          BYTE4(v112) = v29 & 1;
          LODWORD(v112) = a4;
          v109 = &v100;
          v110 = this;
          v111 = a6;
          v56 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v56, v107);
          v57 = *(v101 + 24);
          *a5 = 40 * v57;
          if (v57 && (v93 & 1) != 0)
          {
            v58 = (v57 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v59 = xmmword_1DE757E30;
            v60 = vdupq_n_s64(v57 - 1);
            v61 = vdupq_n_s64(2uLL);
            do
            {
              v62 = vmovn_s64(vcgeq_u64(v60, v59));
              if (v62.i8[0])
              {
                *a6 = v28;
              }

              if (v62.i8[4])
              {
                a6[5] = v28;
              }

              v59 = vaddq_s64(v59, v61);
              a6 += 10;
              v58 -= 2;
            }

            while (v58);
          }

LABEL_101:
          v34 = &v100;
LABEL_102:
          _Block_object_dispose(v34, 8);
          goto LABEL_103;
        }

        if (a4 <= 0x27)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_150;
          }

          *v107 = 136315394;
          *&v107[4] = "HALS_IOA2Stream.cpp";
          *&v107[12] = 1024;
          *&v107[14] = 306;
          v86 = MEMORY[0x1E69E9C10];
          v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
          goto LABEL_149;
        }

        *a5 = 40;
        *v107 = MEMORY[0x1E69E9820];
        *&v107[8] = 0x40000000;
        *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24;
        v108 = &__block_descriptor_tmp_25_7518;
        v114 = a7;
        v109 = this;
        v110 = a8;
        v111 = a6;
        v112 = v26;
        LOBYTE(v113) = v27;
        v63 = (*(*this + 64))(this);
        goto LABEL_96;
      }

      if (v30 == 1936092513)
      {
        v100 = 0;
        v101 = &v100;
        v102 = 0x2000000000;
        v103 = 0;
        *v107 = MEMORY[0x1E69E9820];
        *&v107[8] = 0x40000000;
        *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
        v108 = &unk_1E8675208;
        BYTE4(v112) = v29 & 1;
        LODWORD(v112) = a4;
        v109 = &v100;
        v110 = this;
        v111 = a6;
        v71 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v71, v107);
        v72 = *(v101 + 24);
        *a5 = 56 * v72;
        if (v72 && (v93 & 1) != 0)
        {
          v73 = a6 + 6;
          do
          {
            *(v73 - 6) = v28;
            *(v73 - 1) = v28;
            *v73 = v28;
            v73 += 7;
            --v72;
          }

          while (v72);
        }

        goto LABEL_101;
      }

      if (v30 == 1936092525)
      {
        if (a4 <= 0x27)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_150;
          }

          *v107 = 136315394;
          *&v107[4] = "HALS_IOA2Stream.cpp";
          *&v107[12] = 1024;
          *&v107[14] = 218;
          v86 = MEMORY[0x1E69E9C10];
          v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
          goto LABEL_149;
        }

        *a5 = 40;
        *v107 = MEMORY[0x1E69E9820];
        *&v107[8] = 0x40000000;
        *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_14;
        v108 = &__block_descriptor_tmp_15_7509;
        v115 = v29 & 1;
        v114 = a7;
        v109 = this;
        v110 = a8;
        v111 = a6;
        v112 = v26;
        LOBYTE(v113) = v27;
        v63 = (*(*this + 64))(this);
LABEL_96:
        HALB_CommandGate::ExecuteCommand(v63, v107);
        goto LABEL_103;
      }

      if (v30 != 1936092532)
      {
        goto LABEL_104;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_150;
        }

        *v107 = 136315394;
        *&v107[4] = "HALS_IOA2Stream.cpp";
        *&v107[12] = 1024;
        *&v107[14] = 162;
        v86 = MEMORY[0x1E69E9C10];
        v87 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
        goto LABEL_149;
      }

      *v107 = MEMORY[0x1E69E9820];
      *&v107[8] = 0x40000000;
      *&v107[16] = ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_6;
      v108 = &__block_descriptor_tmp_7_7501;
      v109 = this;
      v110 = a6;
      v38 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v38, v107);
      if (*(a6 + 2) == 1819304813 && (*(a6 + 12) & 0x40) == 0)
      {
        if (v31)
        {
          v40 = 9;
        }

        else
        {
          v40 = 11;
        }

        v41 = 4 * *(a6 + 7);
        *(a6 + 3) = v40;
        *(a6 + 4) = v41;
        *(a6 + 5) = 1;
        *(a6 + 6) = v41;
        *(a6 + 8) = 32;
      }
    }

    if (v93)
    {
      *a6 = v28;
    }

    *a5 = 40;
    goto LABEL_103;
  }

  v43 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v46 = v43;
  if (!v43)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v107 = 136315394;
      *&v107[4] = "HALS_IOA2Stream.cpp";
      *&v107[12] = 1024;
      *&v107[14] = 379;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: owning device is missing", v107, 0x12u);
    }

    v85 = __cxa_allocate_exception(0x10uLL);
    *v85 = off_1F5991DD8;
    v85[2] = 560947818;
  }

  v47 = a3->mSelector;
  if (a3->mSelector <= 1935960433)
  {
    if (v47 != 1935762292)
    {
      if (v47 != 1935894638)
      {
        goto LABEL_125;
      }

      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_165;
        }

        *v107 = 136315394;
        *&v107[4] = "HALS_IOA2Stream.cpp";
        *&v107[12] = 1024;
        *&v107[14] = 414;
        v90 = MEMORY[0x1E69E9C10];
        v91 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
        goto LABEL_164;
      }

      if (*(this + 14) != 1)
      {
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 1174405120;
        v94[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32;
        v94[3] = &__block_descriptor_tmp_35_7495;
        v94[4] = this;
        v94[5] = a6;
        v95 = v43;
        HALS_ObjectMap::RetainObject(v43, v44);
        v81 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v81, v94);
        HALS_ObjectMap::ReleaseObject(v95, v82);
        goto LABEL_124;
      }

      NeighborStartingChannel = HALS_Device::GetNeighborStartingChannel(this, v43, v45);
      goto LABEL_120;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_165;
      }

      *v107 = 136315394;
      *&v107[4] = "HALS_IOA2Stream.cpp";
      *&v107[12] = 1024;
      *&v107[14] = 387;
      v90 = MEMORY[0x1E69E9C10];
      v91 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
LABEL_164:
      _os_log_impl(&dword_1DE1F9000, v90, OS_LOG_TYPE_ERROR, v91, v107, 0x12u);
LABEL_165:
      v92 = __cxa_allocate_exception(0x10uLL);
      *v92 = off_1F5991DD8;
      v92[2] = 561211770;
    }

    v79 = v99;
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 0x40000000;
    v99[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v99[3] = &__block_descriptor_tmp_27_7489;
    v99[4] = this;
    v99[5] = a6;
    v80 = (*(*this + 64))(this);
LABEL_123:
    HALB_CommandGate::ExecuteCommand(v80, v79);
    goto LABEL_124;
  }

  if (v47 == 1935960434)
  {
    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_165;
      }

      *v107 = 136315394;
      *&v107[4] = "HALS_IOA2Stream.cpp";
      *&v107[12] = 1024;
      *&v107[14] = 396;
      v90 = MEMORY[0x1E69E9C10];
      v91 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
      goto LABEL_164;
    }

    v79 = v98;
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 0x40000000;
    v98[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28;
    v98[3] = &__block_descriptor_tmp_29_7491;
    v98[4] = this;
    v98[5] = a6;
    v80 = (*(*this + 64))(this);
    goto LABEL_123;
  }

  if (v47 == 1952542835)
  {
    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_165;
      }

      *v107 = 136315394;
      *&v107[4] = "HALS_IOA2Stream.cpp";
      *&v107[12] = 1024;
      *&v107[14] = 434;
      v90 = MEMORY[0x1E69E9C10];
      v91 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream";
      goto LABEL_164;
    }

    NeighborStartingChannel = *(this + 14) == 1;
LABEL_120:
    *a6 = NeighborStartingChannel;
LABEL_124:
    *a5 = 4;
    goto LABEL_126;
  }

  if (v47 != 1952805485)
  {
LABEL_125:
    HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
    goto LABEL_126;
  }

  if (a4 <= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_165;
    }

    *v107 = 136315394;
    *&v107[4] = "HALS_IOA2Stream.cpp";
    *&v107[12] = 1024;
    *&v107[14] = 405;
    v90 = MEMORY[0x1E69E9C10];
    v91 = "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType";
    goto LABEL_164;
  }

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 1174405120;
  v96[2] = ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_30;
  v96[3] = &__block_descriptor_tmp_31_7493;
  v96[4] = this;
  v96[5] = a6;
  v97 = v43;
  HALS_ObjectMap::RetainObject(v43, v44);
  v48 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v48, v96);
  *a5 = 4;
  HALS_ObjectMap::ReleaseObject(v97, v49);
LABEL_126:
  HALS_ObjectMap::ReleaseObject(v46, v44);
}

void sub_1DE480DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, HALS_ObjectMap *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, HALS_ObjectMap *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, HALS_ObjectMap *a50)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_30(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 72);
  v8 = 0;
  v4 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v2 + 1976), v3);
  v6 = v4;
  v7 = 1;
  if (v4)
  {
    CACFDictionary::GetUInt32(v4, @"terminal type", &v8);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  CACFDictionary::~CACFDictionary(&v6);
  **(a1 + 40) = v5;
}

void sub_1DE480F5C(void *a1)
{
  CACFDictionary::~CACFDictionary(&v2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 72);
  v9 = 0;
  v4 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v2 + 1976), v3);
  v7 = v4;
  v8 = 1;
  if (v4)
  {
    if (!CACFDictionary::GetUInt32(v4, @"starting channel", &v9))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "HALS_IOA2UCDevice.cpp";
        v12 = 1024;
        v13 = 683;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStreamInfoByID_StartingChannel: there is no starting channel number", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  CACFDictionary::~CACFDictionary(&v7);
  **(a1 + 40) = v5;
}

void __copy_helper_block_e8_48c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 6);
  *(a1 + 48) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    v3 = (v2 / (*(**(a1 + 40) + 272))(*(a1 + 40)) * 0.0);
  }

  else
  {
    v3 = 0;
  }

  **(a1 + 64) = *(a1 + 72) + v3;
}

void sub_1DE48121C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE481260(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE4812F4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 112), *(v6 + 120), &v9, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*&v9.mFormat.mFormatID, *&v9.mFormat.mBytesPerPacket, *(a1 + 64), v7, v8);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 88), *(v6 + 96), *(a1 + 64), a4, a5);
  }
}

void sub_1DE4813C0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4813B0);
}

BOOL ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_12(void *a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  result = HALB_FormatList::IsVirtualFormatSupported(*(a1[5] + 88), *(a1[5] + 96), a1[6], a4, a5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v12);
  if (v12.mFormatID == 1819304813 && (v12.mFormatFlags & 0x40) == 0)
  {
    if (*(a1 + 76))
    {
      v5 = 9;
    }

    else
    {
      v5 = 11;
    }

    v12.mFormatFlags = v5;
    v12.mBytesPerPacket = 4 * v12.mChannelsPerFrame;
    v12.mFramesPerPacket = 1;
    v12.mBytesPerFrame = 4 * v12.mChannelsPerFrame;
    v12.mBitsPerChannel = 32;
  }

  if (*(a1 + 72) != 40 || (v6 = *(a1 + 40)) == 0)
  {
    v6 = *(a1 + 48);
  }

  v7 = *(v6 + 16);
  *&v11.mSampleRate = *v6;
  *&v11.mBytesPerPacket = v7;
  *&v11.mBitsPerChannel = *(v6 + 32);
  if (*(a1 + 64) == 1)
  {
    *&v10.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v10.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(v2[14], v2[15], &v10, *(a1 + 56));
    HALB_FormatList::BestMatchForVirtualFormat(&v10, &v11, *(a1 + 48), v8, v9, v12.mSampleRate);
    HALB_FormatList::~HALB_FormatList(&v10);
  }

  else
  {
    HALB_FormatList::BestMatchForVirtualFormat((v2 + 10), &v11, *(a1 + 48), v3, v4, v12.mSampleRate);
  }
}

void sub_1DE48153C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE48152CLL);
}

void sub_1DE481584(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_18(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 112);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 120) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE48168C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 112), *(v6 + 120), &v9, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*&v9.mFormat.mBitsPerChannel, *&v9.mSampleRateRange.mMinimum, *(a1 + 64), v7, v8);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 112), *(v6 + 120), *(a1 + 64), a4, a5);
  }
}

void sub_1DE481758(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE481748);
}

void ___ZNK15HALS_IOA2Stream36GetPropertyDataWithNominalSampleRateERK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 32);
  HALS_IOA2Stream::GetCurrentHWFormat(v2, &v11);
  if (*(a1 + 72) != 40 || (v5 = *(a1 + 40)) == 0)
  {
    v5 = *(a1 + 48);
  }

  v6 = *(v5 + 16);
  *&v10.mSampleRate = *v5;
  *&v10.mBytesPerPacket = v6;
  *&v10.mBitsPerChannel = *(v5 + 32);
  if (*(a1 + 64) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(v2[14], v2[15], &v9, *(a1 + 56));
    HALB_FormatList::BestMatchForPhysicalFormat(&v9, &v10, *(a1 + 48), v7, v8, v11.mSampleRate);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    HALB_FormatList::BestMatchForPhysicalFormat((v2 + 10), &v10, *(a1 + 48), v3, v4, v11.mSampleRate);
  }
}

void sub_1DE481850(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE481840);
}

void __copy_helper_block_e8_40c38_ZTS13HALS_ReleaserI15HALS_IOA2DeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 5);
  *(a1 + 40) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

uint64_t HALS_IOA2Stream::GetPropertyDataSize(HALS_IOA2Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1936092450)
  {
    if (mSelector == 1936092451)
    {
      v10 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
      v17[3] = &unk_1E8675170;
      v17[4] = &v19;
      v17[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_12;
    }

    if (mSelector == 1936092513)
    {
      v10 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
      v18[3] = &unk_1E8675148;
      v18[4] = &v19;
      v18[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_12;
    }
  }

  else
  {
    if (mSelector == 1885762595)
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v15[3] = &unk_1E86751C0;
      v15[4] = &v19;
      v15[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_12;
    }

    if (mSelector == 1885762657)
    {
      v10 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZNK15HALS_IOA2Stream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v16[3] = &unk_1E8675198;
      v16[4] = &v19;
      v16[5] = this;
      v11 = (*(*this + 64))(this);
LABEL_12:
      HALB_CommandGate::ExecuteCommand(v11, v10);
      PropertyDataSize = *(v20 + 6);
      goto LABEL_13;
    }
  }

  PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
  *(v20 + 6) = PropertyDataSize;
LABEL_13:
  _Block_object_dispose(&v19, 8);
  return PropertyDataSize;
}

uint64_t HALS_IOA2Stream::IsPropertySettable(HALS_IOA2Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a3->mSelector == 1935762292)
  {
    return 1;
  }

  return HALS_Stream::IsPropertySettable(this, a2, a3);
}

uint64_t HALS_IOA2Stream::HasProperty(HALS_IOA2Stream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (!(*(*this + 184))(this, a3, a4))
  {
    v8 = 0;
    return v8 & 1;
  }

  if (a3->mSelector == 1935762292)
  {
    v8 = 1;
    return v8 & 1;
  }

  if (a3->mSelector == 1952542835)
  {
    v8 = *(this + 52);
    return v8 & 1;
  }

  return HALS_Stream::HasProperty(this, a2, a3, a4);
}

void HALS_IOA2Stream::~HALS_IOA2Stream(HALS_IOA2Stream *this)
{
  *this = &unk_1F5971FE0;
  HALB_FormatList::~HALB_FormatList((this + 80));
  HALS_Stream::~HALS_Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971FE0;
  HALB_FormatList::~HALB_FormatList((this + 80));

  HALS_Stream::~HALS_Stream(this);
}

void HALS_IOA2Stream::Activate(HALS_IOA2Stream *this, unsigned int a2)
{
  HALS_IOA2Stream::BuildFormatList(this, a2);

  HALS_Object::Activate(this, v3);
}

void HALS_IOA2Stream::BuildFormatList(HALS_IOA2Stream *this, unsigned int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v5 = v3;
  if (v3)
  {
    *(this + 12) = *(this + 11);
    *(this + 15) = *(this + 14);
    v6 = *(this + 18);
    cf = 0;
    v7 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v3 + 1976), v6);
    v22 = v7;
    v23 = 1;
    if (v7)
    {
      if ((CACFDictionary::GetArray(v7, @"available formats", &cf) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mFormat.mSampleRate) = 136315394;
          *(&buf.mFormat.mSampleRate + 4) = "HALS_IOA2UCDevice.cpp";
          LOWORD(buf.mFormat.mFormatFlags) = 1024;
          *(&buf.mFormat.mFormatFlags + 2) = 667;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopyStreamInfoByID_AvailableFormats: there are no available formats", &buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }
    }

    else
    {
      v8 = 0;
    }

    CACFDictionary::~CACFDictionary(&v22);
    v9 = 0;
    v19 = v8;
    v20 = 1;
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    for (i = CFArrayGetCount(v8); v9 < i; i = 0)
    {
      cf = 0;
      v18 = 1;
      CACFArray::GetCACFDictionary(&v19, v9, &cf);
      v21 = 0;
      v22 = cf;
      v23 = 0;
      memset(&buf, 0, sizeof(buf));
      if (CACFDictionary::GetUInt64(cf, @"min sample rate", &v21) && (buf.mSampleRateRange.mMinimum = vcvtd_n_f64_u64(v21, 0x20uLL) + HIDWORD(v21), CACFDictionary::GetUInt64(v22, @"max sample rate", &v21)))
      {
        v11 = vcvtd_n_f64_u64(v21, 0x20uLL) + HIDWORD(v21);
        mMinimum = buf.mSampleRateRange.mMinimum;
        if (buf.mSampleRateRange.mMinimum != v11)
        {
          mMinimum = 0.0;
        }

        buf.mSampleRateRange.mMaximum = v11;
        buf.mFormat.mSampleRate = mMinimum;
        if (CACFDictionary::GetUInt32(v22, @"format ID", &buf.mFormat.mFormatID) && CACFDictionary::GetUInt32(v22, @"format flags", &buf.mFormat.mFormatFlags) && CACFDictionary::GetUInt32(v22, @"bytes per packet", &buf.mFormat.mBytesPerPacket) && CACFDictionary::GetUInt32(v22, @"frames per packet", &buf.mFormat.mFramesPerPacket) && CACFDictionary::GetUInt32(v22, @"bytes per frame", &buf.mFormat.mBytesPerFrame) && CACFDictionary::GetUInt32(v22, @"channels per frame", &buf.mFormat.mChannelsPerFrame))
        {
          UInt32 = CACFDictionary::GetUInt32(v22, @"bits per channel", &buf.mFormat.mBitsPerChannel);
        }

        else
        {
          UInt32 = 0;
        }
      }

      else
      {
        UInt32 = 0;
        v14 = buf.mSampleRateRange.mMinimum;
        if (buf.mSampleRateRange.mMinimum != buf.mSampleRateRange.mMaximum)
        {
          v14 = 0.0;
        }

        buf.mFormat.mSampleRate = v14;
      }

      if (buf.mFormat.mFormatID == 1819304813)
      {
        buf.mFormat.mFormatFlags &= ~0x40u;
      }

      CACFDictionary::~CACFDictionary(&v22);
      if (UInt32)
      {
        HALB_FormatList::AddPhysicalFormat(this + 10, &buf, v15);
      }

      CACFDictionary::~CACFDictionary(&cf);
      ++v9;
      v8 = v19;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      ;
    }

    CACFArray::~CACFArray(&v19);
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void AMCP::ASP::PlugIn::log_plugin_exception(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v10, *a1);
    mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v10);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v13 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315906;
    v15 = "ASP_PlugIn.cpp";
    v16 = 1024;
    v17 = 884;
    v18 = 2080;
    v19 = a2;
    v20 = 2080;
    v21 = v8;
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught unknown exception while trying to call %s on ASP with bundle id %s", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void sub_1DE48253C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *mcp_applesauce::CF::PlugInRef_proxy::get_bundle(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2)
  {
    Bundle = CFPlugInGetBundle(a2);
    v4 = Bundle;
    if (Bundle)
    {
      CFRetain(Bundle);
    }

    return mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::BasicRef(v2, v4);
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE482600(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "PerformDeviceConfigurationChange");
  AMCP::ASP::PlugIn::log_plugin_exception(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE4825F0);
}

void sub_1DE482684(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "HasProperty");
  AMCP::ASP::PlugIn::log_plugin_exception(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE482674);
}

unint64_t AMCP::ASP::PlugIn::ObjectIsPropertySettable(AMCP::ASP::PlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  v6 = 0;
  v4 = (*(**(this + 2) + 96))(*(this + 2), a2, a3, a4, &v6);
  return v4 | ((v6 != 0) << 32);
}

void sub_1DE482718(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "IsPropertySettable");
  AMCP::ASP::PlugIn::log_plugin_exception(v14, &__p);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE4826F4);
}

unint64_t AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(AMCP::ASP::PlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v8 = 0;
  v6 = (*(**(this + 2) + 104))(*(this + 2), a2, a3, a4, a5, a6, &v8);
  return v6 | (v8 << 32);
}

void sub_1DE4827A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "GetPropertyDataSize");
  AMCP::ASP::PlugIn::log_plugin_exception(v14, &__p);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE48278CLL);
}

unint64_t AMCP::ASP::PlugIn::ObjectGetPropertyData(AMCP::ASP::PlugIn *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, uint64_t a7, void *a8)
{
  v10 = a7;
  v8 = (*(**(this + 2) + 112))(*(this + 2), a2, a3, a4, a5, a6, a7, &v10, a8);
  return v8 | (v10 << 32);
}

void sub_1DE48283C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "GetPropertyData");
  AMCP::ASP::PlugIn::log_plugin_exception(v16, &__p);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE482820);
}

void sub_1DE4828B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "SetPropertyData");
  AMCP::ASP::PlugIn::log_plugin_exception(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE4828A8);
}

void HALS_PDPStream::SetPropertyData(HALS_PDPStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v52 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PDPStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 251;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPStream::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    v32 = 560947818;
LABEL_43:
    *v31 = off_1F5991DD8;
    v31[2] = v32;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v23 = atomic_load((v17 + 160));
    if (a8)
    {
      v24 = *(a8 + 60);
    }

    else
    {
      v24 = getpid();
    }

    if (v23 != -1 && v23 != v24)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      v32 = 560492391;
      goto LABEL_43;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector > 1885762591)
  {
    if (mSelector == 1885762592)
    {
      if (a4 > 0x27)
      {
        v48.mElement = 0;
        *&v48.mSelector = *" tfpbolg";
        v44 = 40;
        HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(this + 9) + 72), a2, &v48, 0, 0, &v44, &v45);
        if (DWORD2(v45) == 1819304813)
        {
          HIDWORD(v45) &= ~0x40u;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x5002000000;
        v50 = __Block_byref_object_copy__15_7637;
        v51 = __Block_byref_object_dispose__16_7638;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 0x40000000;
        v36[2] = ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_20;
        v36[3] = &unk_1E86755F0;
        v36[5] = this;
        v36[6] = a5;
        v37 = v45;
        v38 = v46;
        v39 = v47;
        v36[4] = buf;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v36);
        HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, a3, a6, a7, a4, (*&buf[8] + 40));
        if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
        {
          HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
        }

        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PDPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 312;
        v33 = MEMORY[0x1E69E9C10];
        v34 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_48;
      }
    }

    else
    {
      if (mSelector != 1936092532)
      {
        v26 = 1937007734;
        goto LABEL_17;
      }

      if (a4 > 0x27)
      {
        v48.mElement = 0;
        *&v48.mSelector = *" tfpbolg";
        v44 = 40;
        HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(this + 9) + 72), a2, &v48, 0, 0, &v44, &v45);
        if (DWORD2(v45) == 1819304813)
        {
          HIDWORD(v45) &= ~0x40u;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x5002000000;
        v50 = __Block_byref_object_copy__15_7637;
        v51 = __Block_byref_object_dispose__16_7638;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 0x40000000;
        v40[2] = ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        v40[3] = &unk_1E86755C8;
        v41 = v45;
        v42 = v46;
        v40[5] = this;
        v40[6] = a5;
        v43 = v47;
        v40[4] = buf;
        v28 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v28, v40);
        HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, &v48, 0, 0, a4, (*&buf[8] + 40));
        if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
        {
          HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
        }

LABEL_35:
        _Block_object_dispose(buf, 8);
        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PDPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 266;
        v33 = MEMORY[0x1E69E9C10];
        v34 = "%25s:%-5d  HALS_IOA2Stream::_SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
LABEL_48:
        _os_log_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x12u);
      }
    }

    v35 = __cxa_allocate_exception(0x10uLL);
    *v35 = off_1F5991DD8;
    v35[2] = 561211770;
  }

  if (mSelector == 1650682995 || mSelector == 1668047219)
  {
LABEL_38:
    HALS_Object::SetPropertyData(this, a2, a3, v19, v20, v21, v22, a8);
  }

  v26 = 1869638759;
LABEL_17:
  if (mSelector == v26)
  {
    goto LABEL_38;
  }

  HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, a3, a6, a7, a4, a5);
LABEL_36:
  HALS_ObjectMap::ReleaseObject(v17, v27);
}

void sub_1DE483008(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE482C24);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__15_7637(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4, BOOL a5)
{
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v6 + 16);
  *&v16.mSampleRate = *v6;
  *&v16.mBytesPerPacket = v9;
  *&v16.mBitsPerChannel = *(v6 + 32);
  if (v16.mFormatID == 1819304813)
  {
    v16.mBitsPerChannel = 0;
    *&v16.mFormatFlags = 0uLL;
  }

  HALB_FormatList::BestMatchForPhysicalFormat(v7 + 136, &v16, v8 + 1, a4, a5, *(a1 + 56));
  if (!HALB_FormatList::IsVirtualFormatSupported(*(v7 + 112), *(v7 + 120), *(*(a1 + 32) + 8) + 40, v10, v11))
  {
    v14 = *(*(a1 + 32) + 8);
    if (*(v14 + 48) == 1819304813)
    {
      *(v14 + 52) |= 0x40u;
      v14 = *(*(a1 + 32) + 8);
    }

    IsVirtualFormatSupported = HALB_FormatList::IsVirtualFormatSupported(*(v7 + 112), *(v7 + 120), v14 + 40, v12, v13);
    if (!IsVirtualFormatSupported)
    {
      LogError(IsVirtualFormatSupported, *&v16.mSampleRate);
    }
  }
}

void sub_1DE48317C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN14HALS_PDPStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4, BOOL a5)
{
  v6 = *(a1 + 40);
  HALB_FormatList::BestMatchForPhysicalFormat(v6 + 136, *(a1 + 48), (*(*(a1 + 32) + 8) + 40), a4, a5, *(a1 + 56));
  if (!HALB_FormatList::IsVirtualFormatSupported(*(v6 + 112), *(v6 + 120), *(*(a1 + 32) + 8) + 40, v7, v8))
  {
    v11 = *(*(a1 + 32) + 8);
    if (*(v11 + 48) == 1819304813)
    {
      *(v11 + 52) |= 0x40u;
      v11 = *(*(a1 + 32) + 8);
    }

    IsVirtualFormatSupported = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 112), *(v6 + 120), v11 + 40, v9, v10);
    if (!IsVirtualFormatSupported)
    {
      LogError(IsVirtualFormatSupported);
    }
  }
}

void sub_1DE48323C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_PDPStream::GetPropertyData(HALS_PDPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, double *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v68 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0 && a3->mSelector == 1935894638)
  {
    *a5 = a4;
    *a6 = 1;
    return;
  }

  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a9)
  {
    v17 = *(a9 + 266) ^ 1;
  }

  else
  {
    v17 = 1;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    v20 = v17 & 1;
    if (mSelector <= 1936092512)
    {
      if (mSelector != 1885762657)
      {
        if (mSelector == 1936092451)
        {
          v49 = 0;
          v50 = &v49;
          v51 = 0x2000000000;
          v52 = 0;
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 0x40000000;
          v56[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
          v56[3] = &unk_1E8675500;
          v58 = v17 & 1;
          v57 = a4;
          v56[4] = &v49;
          v56[5] = this;
          v56[6] = a6;
          v22 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v22, v56);
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      v49 = 0;
      v50 = &v49;
      v51 = 0x2000000000;
      v52 = 0;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
      v43[3] = &unk_1E8675578;
      v44 = a4;
      v43[4] = &v49;
      v43[5] = this;
      v43[6] = a6;
      v24 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v24, v43);
    }

    else
    {
      if (mSelector != 1936092513)
      {
        if (mSelector == 1936092532)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v67 = 40;
          v49 = 0;
          v50 = &v49;
          v51 = 0x3802000000;
          v52 = __Block_byref_object_copy__7646;
          v53 = __Block_byref_object_dispose__7647;
          v54 = 1885762592;
          v55 = *&a3->mScope;
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 0x40000000;
          v47[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
          v47[3] = &unk_1E8675528;
          v48 = a2;
          v47[4] = &v49;
          v47[5] = buf;
          v47[6] = this;
          v47[7] = a6;
          v31 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v31, v47);
          if (*(a6 + 2) == 1819304813)
          {
            if (v20)
            {
              v32 = 9;
            }

            else
            {
              v32 = 11;
            }

            v33 = 4 * *(a6 + 7);
            *(a6 + 3) = v32;
            *(a6 + 4) = v33;
            *(a6 + 5) = 1;
            *(a6 + 6) = v33;
            *(a6 + 8) = 32;
          }

          v34 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          v35 = v34;
          if (!v34)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v62 = 136315394;
              v63 = "HALS_PDPStream.cpp";
              v64 = 1024;
              v65 = 207;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPStream::GetPropertyData: owning device is missing", v62, 0x12u);
            }

            v40 = __cxa_allocate_exception(0x10uLL);
            *v40 = off_1F5991DD8;
            v40[2] = 560947818;
          }

          *a6 = (*(*v34 + 272))(v34);
          HALS_ObjectMap::ReleaseObject(v35, v36);
          _Block_object_dispose(&v49, 8);
          v26 = buf;
          goto LABEL_33;
        }

        v21 = 1937007734;
        goto LABEL_20;
      }

      v49 = 0;
      v50 = &v49;
      v51 = 0x2000000000;
      v52 = 0;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v59[3] = &unk_1E86754D8;
      v61 = v17 & 1;
      v60 = a4;
      v59[4] = &v49;
      v59[5] = this;
      v59[6] = a6;
      v25 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v25, v59);
    }

    v23 = 56 * *(v50 + 6);
    goto LABEL_31;
  }

  if (mSelector > 1869638758)
  {
    if (mSelector != 1869638759)
    {
      if (mSelector == 1885762592)
      {
        v49 = 0;
        v50 = &v49;
        v51 = 0x2000000000;
        LODWORD(v52) = 40;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 0x40000000;
        v45[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
        v45[3] = &unk_1E8675550;
        v46 = a2;
        v45[4] = &v49;
        v45[5] = this;
        v45[6] = a3;
        v45[7] = a6;
        v27 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v27, v45);
        if (*(a6 + 2) == 1819304813)
        {
          *(a6 + 3) &= ~0x40u;
        }

        v28 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
        v29 = v28;
        if (!v28)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PDPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 219;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPStream::GetPropertyData: owning device is missing", buf, 0x12u);
          }

          v39 = __cxa_allocate_exception(0x10uLL);
          *v39 = off_1F5991DD8;
          v39[2] = 560947818;
        }

        *a6 = (*(*v28 + 272))(v28);
        HALS_ObjectMap::ReleaseObject(v29, v30);
        goto LABEL_32;
      }

      if (mSelector == 1885762595)
      {
        v49 = 0;
        v50 = &v49;
        v51 = 0x2000000000;
        v52 = 0;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v41[2] = ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_13;
        v41[3] = &unk_1E86755A0;
        v42 = a4;
        v41[4] = &v49;
        v41[5] = this;
        v41[6] = a6;
        v19 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v19, v41);
LABEL_27:
        v23 = 40 * *(v50 + 6);
LABEL_31:
        *a5 = v23;
LABEL_32:
        v26 = &v49;
LABEL_33:
        _Block_object_dispose(v26, 8);
        return;
      }

      goto LABEL_46;
    }

    goto LABEL_21;
  }

  if (mSelector == 1650682995)
  {
    goto LABEL_21;
  }

  v21 = 1668047219;
LABEL_20:
  if (mSelector != v21)
  {
LABEL_46:
    *a5 = a4;
    v37 = *(*(this + 9) + 72);

    HALS_PDPUCPlugIn::ObjectGetPropertyData(v37, a2, a3, a7, a8, a5, a6);
    return;
  }

LABEL_21:

  HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE483C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE483D30(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__7646(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

void sub_1DE483DA8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE483E00(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 ___ZNK14HALS_PDPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 168);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 176) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE483F08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_PDPStream::GetPropertyDataSize(HALS_PDPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    if (mSelector > 1936092512)
    {
      if (mSelector == 1936092513)
      {
        v13 = v22;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
        v22[3] = &unk_1E8675438;
        v22[4] = &v23;
        v22[5] = this;
        v14 = (*(*this + 64))(this);
        goto LABEL_22;
      }

      if (mSelector == 1937007734)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (mSelector == 1885762657)
      {
        v13 = v20;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v20[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
        v20[3] = &unk_1E8675488;
        v20[4] = &v23;
        v20[5] = this;
        v14 = (*(*this + 64))(this);
        goto LABEL_22;
      }

      if (mSelector == 1936092451)
      {
        v13 = v21;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
        v21[3] = &unk_1E8675460;
        v21[4] = &v23;
        v21[5] = this;
        v14 = (*(*this + 64))(this);
LABEL_22:
        HALB_CommandGate::ExecuteCommand(v14, v13);
        v16 = *(v24 + 6);
        goto LABEL_23;
      }
    }

LABEL_24:
    PropertyDataSize = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(*(*(this + 9) + 64), a2, a3, a4, a5);
    goto LABEL_19;
  }

  if (mSelector > 1869638758)
  {
    if (mSelector == 1869638759)
    {
      goto LABEL_18;
    }

    if (mSelector == 1885762595)
    {
      v13 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK14HALS_PDPStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v19[3] = &unk_1E86754B0;
      v19[4] = &v23;
      v19[5] = this;
      v14 = (*(*this + 64))(this);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (mSelector != 1650682995 && mSelector != 1668047219)
  {
    goto LABEL_24;
  }

LABEL_18:
  PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
LABEL_19:
  v16 = PropertyDataSize;
  *(v24 + 6) = PropertyDataSize;
LABEL_23:
  _Block_object_dispose(&v23, 8);
  return v16;
}

uint64_t HALS_PDPStream::IsPropertySettable(HALS_PDPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    if (mSelector > 1936092512)
    {
      v8 = mSelector == 1937007734;
      v10 = 28001;
    }

    else
    {
      v8 = mSelector == 1885762657;
      v10 = 27939;
    }

    v9 = v10 | 0x73660000;
  }

  else if (mSelector > 1869638758)
  {
    v8 = mSelector == 1869638759;
    v9 = 1885762595;
  }

  else
  {
    v8 = mSelector == 1650682995;
    v9 = 1668047219;
  }

  if (v8 || mSelector == v9)
  {

    return HALS_Stream::IsPropertySettable(this, a2, a3);
  }

  else
  {
    v13 = *(*(this + 9) + 56);

    return HALS_PDPUCPlugIn::ObjectIsPropertySettable(v13, a2, a3);
  }
}

uint64_t HALS_PDPStream::HasProperty(HALS_PDPStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  result = (*(*this + 184))(this, a3, a4);
  if (result)
  {
    mSelector = a3->mSelector;
    if (a3->mSelector > 1885762656)
    {
      if (mSelector > 1936092512)
      {
        v10 = mSelector == 1937007734;
        v12 = 28001;
      }

      else
      {
        v10 = mSelector == 1885762657;
        v12 = 27939;
      }

      v11 = v12 | 0x73660000;
    }

    else if (mSelector > 1869638758)
    {
      v10 = mSelector == 1869638759;
      v11 = 1885762595;
    }

    else
    {
      v10 = mSelector == 1650682995;
      v11 = 1668047219;
    }

    if (v10 || mSelector == v11)
    {

      return HALS_Stream::HasProperty(this, a2, a3, a4);
    }

    else
    {
      return (*(*(this + 9) + 48))(a2, a3) != 0;
    }
  }

  return result;
}

void HALS_PDPStream::~HALS_PDPStream(HALS_PDPStream *this)
{
  HALS_PDPStream::~HALS_PDPStream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5972188;
  v2 = (this + 80);
  HALB_FormatList::~HALB_FormatList((this + 136));
  HALB_FormatList::~HALB_FormatList(v2);

  HALS_Stream::~HALS_Stream(this);
}

void HALS_PDPStream::Activate(HALS_PDPStream *this)
{
  HALS_PDPStream::BuildFormatList(this);
  v5 = 0;
  v4 = 4;
  *&v3.mSelector = *"ridsbolg";
  v3.mElement = 0;
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*(this + 9) + 72), *(this + 4), &v3, 0, 0, &v4, &v5);
  if (v5)
  {
    *(this + 52) = 1;
  }

  HALS_Object::Activate(this, v2);
}

void HALS_PDPStream::BuildFormatList(HALS_PDPStream *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *(this + 12) = *(this + 11);
  *(this + 15) = *(this + 14);
  *(this + 19) = *(this + 18);
  *(this + 22) = *(this + 21);
  *&v12.mSelector = *"atfpbolg";
  v12.mElement = 0;
  v1 = (this + 72);
  v2 = (this + 16);
  PropertyDataSize = HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(*(*(this + 9) + 64), *(this + 4), &v12, 0, 0);
  v4 = PropertyDataSize;
  v11 = PropertyDataSize;
  v5 = PropertyDataSize / 0x38uLL;
  MEMORY[0x1EEE9AC00](PropertyDataSize);
  v7 = &v10[-v6];
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(*v1 + 72), *v2, &v12, 0, 0, &v11, &v10[-v6]);
  if (v4 >= 0x38)
  {
    do
    {
      HALB_FormatList::AddPhysicalFormat(v1 + 1, v7, v8);
      if (v7->mFormat.mFormatID == 1819304813)
      {
        v7->mFormat.mFormatFlags &= ~0x40u;
      }

      HALB_FormatList::AddPhysicalFormat(v1 + 8, v7++, v9);
      --v5;
    }

    while (v5);
  }
}

void sub_1DE484A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1DE484B28(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v1 + 96);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v1 + 64);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

double AMCP::DAL::PCM_File_Handler::get_length_in_frames(AMCP::DAL::PCM_File_Handler *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(this + 6);
  if (!v1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v28 = "PCM_File_Handler.cpp";
      v29 = 1024;
      v30 = 57;
      v31 = 2080;
      v32 = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_File_Handler::GetLengthInFrames: mAudioFile is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&ioPropertyDataSize);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v15, "PCM_File_Handler::GetLengthInFrames: mAudioFile is null", v14);
    std::logic_error::logic_error(&outPropertyData, &v15);
    outPropertyData.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &outPropertyData);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v33 = "virtual Sample_Time AMCP::DAL::PCM_File_Handler::get_length_in_frames() const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Handler.cpp";
    LODWORD(v35) = 57;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  outPropertyData.__vftable = 0;
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(v1, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
  v3 = Property;
  AMCP::Utility::OSStatus_Error_Category::get(Property);
  if (v3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v28 = "PCM_File_Handler.cpp";
      v29 = 1024;
      v30 = 61;
      v31 = 2080;
      v32 = "the_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_File_Handler::GetFileLengthInFrames: couldn't get the file's length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](&v25, v3, &AMCP::Utility::OSStatus_Error_Category::get(void)::s_category);
    boost::exception_detail::error_info_injector<std::system_error>::error_info_injector(&v16, &v25);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v16);
    v35 = "virtual Sample_Time AMCP::DAL::PCM_File_Handler::get_length_in_frames() const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Handler.cpp";
    v37 = 61;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  return outPropertyData.__vftable;
}

void sub_1DE4852FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, char a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a16);
  std::runtime_error::~runtime_error(&a33);
  if (a11)
  {
    __cxa_free_exception(v34);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

void AMCP::DAL::PCM_File_Factory(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__dst, "read");
  v3 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__dst, "write");
  v4 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1, &__dst);
  v5 = v4;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    operator new();
  }

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
    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
    *(__dst.__r_.__value_.__r.__words + 4) = "PCM_File_Handler.cpp";
    WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
    *(&__dst.__r_.__value_.__r.__words[1] + 6) = 39;
    _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: PCM_File_Factory must either read or write a file", &__dst, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v12);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string(&inPropertyData, "PCM_File_Factory must either read or write a file", v10);
  std::runtime_error::runtime_error(&v11, &inPropertyData);
  std::runtime_error::runtime_error(__p, &v11);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = -1;
  __p[0] = &unk_1F5992170;
  v16 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&__dst, __p);
  v22 = "std::shared_ptr<DAL_File_Handler> AMCP::DAL::PCM_File_Factory(const DAL_Settings &)";
  v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_File_Handler.cpp";
  LODWORD(v24) = 39;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Writer *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Writer>,std::allocator<AMCP::DAL::PCM_File_Writer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEE27__shared_ptr_default_deleteIS3_NS2_15PCM_File_WriterEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Writer *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Writer>,std::allocator<AMCP::DAL::PCM_File_Writer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Writer *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Writer>,std::allocator<AMCP::DAL::PCM_File_Writer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Reader>,std::allocator<AMCP::DAL::PCM_File_Reader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEE27__shared_ptr_default_deleteIS3_NS2_15PCM_File_ReaderEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Reader>,std::allocator<AMCP::DAL::PCM_File_Reader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::PCM_File_Reader>,std::allocator<AMCP::DAL::PCM_File_Reader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::DAL::PCM_File_Handler::PCM_File_Handler(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5991568;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "asbd");
  v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return a1;
    }
  }

  else if (!v5)
  {
    return a1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "asbd");
  v13 = 0;
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v7)
  {
    AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(&v14, (v7 + 5));
  }

  else
  {
    v14 = 0;
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  dictionary_to_asbd(__p, &v14);
  v8 = v11;
  *v4 = *__p;
  *(v4 + 16) = v8;
  *(v4 + 32) = v12;
  if (v14)
  {
    CFRelease(v14);
  }

  return a1;
}

void sub_1DE487CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, const void *a18)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 + 79) < 0)
  {
    operator delete(*(v18 + 56));
  }

  _Unwind_Resume(a1);
}

uint64_t Interval::PostEnd(Interval *this)
{
  if (*(this + 8))
  {
    result = mach_absolute_time();
    *(this + 2) = result;
    *(this + 24) = 1;
  }

  else
  {
    result = mach_absolute_time();
    *(this + 2) = result;
    *(this + 24) = 1;
    *this = *(this + 2);
    *(this + 8) = *(this + 24);
  }

  return result;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_7796()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void HALS_System::StartScope::~StartScope(HALS_System::StartScope *this)
{
  HALS_System::StartScope::~StartScope(this);

  JUMPOUT(0x1E12C1730);
}

{
  v15 = *MEMORY[0x1E69E9840];
  *this = &unk_1F59723F0;
  if (*(this + 2) == 1)
  {
    block_on_all_queues(0);
    block_on_all_queues(0);
    v9[0] = 0;
    v9[1] = 0;
    HALS_System::GetInstance(v10, 2, v9);
    v1 = v11;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v3 = *(ADS::Simulator::sInstance + 208);
    v2 = *(ADS::Simulator::sInstance + 216);
    v4 = v2 - v3;
    if (v2 != v3)
    {
      if (!((v4 >> 2) >> 62))
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    while (1)
    {
      while (1)
      {
        ADS::Simulator::FlushAllQueues(v1);
        if (ADS::Simulator::sServerHighPriorityQueue)
        {
          break;
        }

        v6 = ADS::Simulator::sServerDefaultPriorityQueue;
        if (!ADS::Simulator::sServerDefaultPriorityQueue)
        {
          goto LABEL_15;
        }

        v5 = 0;
LABEL_13:
        v7 = atomic_load((v6 + 33));
        if ((v5 & 1) == 0 && (v7 & 1) == 0)
        {
LABEL_15:
          block_on_all_queues(1);
          if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
          {
            block = HALS_NotificationManager::Initialize;
            p_block = &block;
            std::__call_once(&HALS_NotificationManager::sInitialized, &p_block, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
          }

          block = HALS_NotificationManager::sObjectListLock;
          LODWORD(v14) = HALB_Mutex::Lock(HALS_NotificationManager::sObjectListLock);
          v8 = HALS_NotificationManager::sObjectList;
          if (HALS_NotificationManager::sObjectList)
          {
            p_block = HALS_NotificationManager::sObjectList;
            std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&p_block);
            MEMORY[0x1E12C1730](v8, 0x20C40960023A9);
          }

          operator new();
        }
      }

      v5 = atomic_load((ADS::Simulator::sServerHighPriorityQueue + 33));
      v6 = ADS::Simulator::sServerDefaultPriorityQueue;
      if (ADS::Simulator::sServerDefaultPriorityQueue)
      {
        goto LABEL_13;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }
}

void sub_1DE488570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void block_on_all_queues(int a1)
{
  do
  {
    v1 = pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    ADS::Simulator::FlushAllQueues(v1);
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
    AMCP::Utility::Dispatch_Queue::flush_all_work(HALS_ObjectMap::sNormalPriorityQueue);
    v57[0] = 0;
    v57[1] = 0;
    HALS_System::GetInstance(&v58, 0, v57);
    v2 = v58;
    if (v58)
    {
      NumberDevices = HALS_System::GetNumberDevices(v58, 2, 1, 0);
      LODWORD(v63[0]) = NumberDevices;
      LODWORD(v81) = 0;
      std::vector<unsigned int>::vector[abi:ne200100](&__p, NumberDevices, &v81);
      HALS_System::GetDeviceList(v2, NumberDevices, v63, __p, 2, 1, 0);
      if (LODWORD(v63[0]))
      {
        v4 = 0;
        v5 = 4 * LODWORD(v63[0]);
        do
        {
          v6 = HALS_ObjectMap::CopyObjectByObjectID(*(__p + v4));
          v8 = v6;
          if (v6)
          {
            v9 = HALS_IODevice::CopyIOEngine(v6);
            v10 = v9;
            if (v9)
            {
              (*(*v9 + 320))(v9);
            }

            (*(*v8 + 240))(v8);
            HALS_ObjectMap::ReleaseObject(v10, v11);
          }

          HALS_ObjectMap::ReleaseObject(v8, v7);
          v4 += 4;
        }

        while (v5 != v4);
      }

      v81 = 0;
      v82 = &v81;
      v83 = 0x4002000000;
      v84 = __Block_byref_object_copy__7820;
      v85 = __Block_byref_object_dispose__7821;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x4002000000;
      v76 = __Block_byref_object_copy__48;
      v77 = __Block_byref_object_dispose__49;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v66 = MEMORY[0x1E69E9820];
      v67 = 0x40000000;
      v68 = ___ZNK11HALS_System14FlushAllQueuesEv_block_invoke;
      v69 = &unk_1E8675FF0;
      v71 = &v73;
      v72 = v2;
      v70 = &v81;
      v12 = (*(*v2 + 64))(v2);
      HALB_CommandGate::ExecuteCommand(v12, &v66);
      v13 = v82[5];
      v14 = v82[6];
      while (v13 != v14)
      {
        (*(**v13 + 8))();
        (*(**v13 + 216))();
        v13 += 8;
      }

      v15 = v74[5];
      v16 = v74[6];
      while (v15 != v16)
      {
        (*(**v15 + 8))();
        v17 = *v15;
        AMCP::Utility::Dispatch_Queue::flush_all_work((*v15 + 384));
        v18 = *(v17 + 64);
        if (v18)
        {
          AMCP::Utility::Dispatch_Queue::flush_all_work(v18);
        }

        ++v15;
      }

      AMCP::Utility::Dispatch_Queue::flush_all_work(*(*(v2 + 1776) + 16));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 880));
      AMCP::Utility::Dispatch_Queue::flush_all_work(*(v2 + 192));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 208));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 544));
      AMCP::Utility::Dispatch_Queue::flush_all_work((v2 + 1216));
      v19 = *(v2 + 1864);
      if (v19 && *v19)
      {
        AMCP::Utility::Dispatch_Queue::flush_all_work(*v19);
      }

      _Block_object_dispose(&v73, 8);
      v64 = &v78;
      std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v64);
      _Block_object_dispose(&v81, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v86, v20);
      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }
    }

    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    if (ADS::Simulator::sServerHighPriorityQueue)
    {
      v21 = atomic_load((ADS::Simulator::sServerHighPriorityQueue + 33));
    }

    else
    {
      v21 = 0;
    }

    if (ADS::Simulator::sServerDefaultPriorityQueue)
    {
      v22 = atomic_load((ADS::Simulator::sServerDefaultPriorityQueue + 33));
      v21 |= v22;
    }

    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
    v23 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 33));
    v63[0] = 0;
    v63[1] = 0;
    HALS_System::GetInstance(&v64, 0, v63);
    v24 = v21 | v23;
    v25 = v64;
    if (v64)
    {
      v26 = HALS_System::GetNumberDevices(v64, 2, 1, 0);
      v62 = v26;
      LODWORD(v81) = 0;
      std::vector<unsigned int>::vector[abi:ne200100](&__p, v26, &v81);
      HALS_System::GetDeviceList(v25, v26, &v62, __p, 2, 1, 0);
      if (v62)
      {
        v27 = 0;
        v28 = 4 * v62;
        do
        {
          v29 = HALS_ObjectMap::CopyObjectByObjectID(*(__p + v27));
          v31 = v29;
          if (v29)
          {
            v32 = HALS_IODevice::CopyIOEngine(v29);
            v33 = v32;
            if (v32)
            {
              v24 |= (*(*v32 + 328))(v32);
            }

            v34 = (*(*v31 + 248))(v31);
            HALS_ObjectMap::ReleaseObject(v33, v35);
            v24 |= v34;
          }

          HALS_ObjectMap::ReleaseObject(v31, v30);
          v27 += 4;
        }

        while (v28 != v27);
      }

      pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
      if (ADS::Simulator::sServerHighPriorityQueue)
      {
        v36 = atomic_load((ADS::Simulator::sServerHighPriorityQueue + 33));
      }

      else
      {
        v36 = 0;
      }

      if (ADS::Simulator::sServerDefaultPriorityQueue)
      {
        v37 = atomic_load((ADS::Simulator::sServerDefaultPriorityQueue + 33));
        v36 |= v37;
      }

      pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
      v38 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 33));
      v39 = v64;
      v81 = 0;
      v82 = &v81;
      v83 = 0x4002000000;
      v84 = __Block_byref_object_copy__7820;
      v85 = __Block_byref_object_dispose__7821;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x4002000000;
      v76 = __Block_byref_object_copy__48;
      v77 = __Block_byref_object_dispose__49;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v66 = MEMORY[0x1E69E9820];
      v67 = 0x40000000;
      v68 = ___ZNK11HALS_System29DoAnyQueuesHaveWorkAfterFlushEv_block_invoke;
      v69 = &unk_1E8676018;
      v71 = &v73;
      v72 = v64;
      v70 = &v81;
      v40 = (*(*v72 + 8))(v72);
      HALB_CommandGate::ExecuteCommand(v40, &v66);
      v56 = v36;
      v42 = v82[5];
      v41 = v82[6];
      if (v42 == v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = 0;
        do
        {
          v43 |= (*(**v42 + 224))();
          v42 += 8;
        }

        while (v42 != v41);
      }

      v44 = v74[5];
      for (i = v74[6]; v44 != i; ++v44)
      {
        v46 = *v44;
        v47 = atomic_load((*v44 + 417));
        v48 = *(v46 + 64);
        if (v48)
        {
          v49 = atomic_load((v48 + 33));
          v47 |= v49;
        }

        v43 |= v47;
      }

      v50 = atomic_load(v39 + 913);
      v51 = v43 | v50;
      v52 = v39[233];
      if (v52)
      {
        v53 = *v52;
        if (v53)
        {
          LODWORD(v53) = atomic_load((v53 + 33));
        }

        v51 |= v53;
      }

      _Block_object_dispose(&v73, 8);
      v89 = &v78;
      std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v89);
      _Block_object_dispose(&v81, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v86, v54);
      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      v24 |= v56 | v38 | v51;
    }

    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }
  }

  while ((a1 & v24 & 1) != 0);
}

void sub_1DE488E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::GetInstance(void *a1, uint64_t a2, uint64_t *a3)
{
  {
    v10 = a3;
    v8 = a2;
    a2 = v8;
    a3 = v10;
    if (v9)
    {
      HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance = 0;
      qword_1EE0131C8 = 0;
      a2 = v8;
      a3 = v10;
    }
  }

  switch(a2)
  {
    case 3:
      v11 = 0;
      v12 = 0;
      std::atomic_store[abi:ne200100]<HALS_System>(&v11);
      v5 = v12;
      if (!v12)
      {
        break;
      }

      goto LABEL_11;
    case 2:
      (*(*HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance + 8))(HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance, a2, a3);
      break;
    case 1:
      v4 = a3[1];
      v13 = *a3;
      v14 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      std::atomic_store[abi:ne200100]<HALS_System>(&v13);
      v5 = v14;
      if (v14)
      {
LABEL_11:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      break;
  }

  sp_mut = std::__get_sp_mut(&HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance);
  std::__sp_mut::lock(sp_mut);
  v7 = qword_1EE0131C8;
  *a1 = HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance;
  a1[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void sub_1DE489120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::atomic_store[abi:ne200100]<HALS_System>(uint64_t *a1)
{
  sp_mut = std::__get_sp_mut(&HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance);
  std::__sp_mut::lock(sp_mut);
  v3 = HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance;
  v4 = a1[1];
  HALS_System::GetInstance(HALS_System::GetInstanceSetting,std::shared_ptr<HALS_System>)::sInstance = *a1;
  *a1 = v3;
  v5 = qword_1EE0131C8;
  qword_1EE0131C8 = v4;
  a1[1] = v5;

  std::__sp_mut::unlock(sp_mut);
}

uint64_t HALS_System::GetNumberDevices(uint64_t a1, int a2, char a3, HALS_Client *a4)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4002000000;
  v23 = __Block_byref_object_copy__7820;
  v24 = __Block_byref_object_dispose__7821;
  memset(v25, 0, sizeof(v25));
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZNK11HALS_System16GetNumberDevicesENS_14DeviceListKindEbP11HALS_Client_block_invoke;
  v19[3] = &unk_1E86758B0;
  v19[4] = &v20;
  v19[5] = a1;
  v7 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v7, v19);
  v8 = v21[5];
  v9 = v21[6];
  if (v8 != v9)
  {
    v10 = 0;
    while (1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      HALS_DeviceManager::CopyDeviceList(*v8, &v16, a3, a4);
      v12 = v16;
      v13 = v17;
      while (v12 != v13)
      {
        if (a2 == 1)
        {
          if (((*(**v12 + 232))() & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else if (a2 || ((*(**v12 + 232))() & 1) != 0)
        {
LABEL_8:
          v10 = (v10 + 1);
        }

        ++v12;
      }

      HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v16, v11);
      if (++v8 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:
  _Block_object_dispose(&v20, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v25, v14);
  return v10;
}

void sub_1DE4893A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v18 + 40), v20);
  _Unwind_Resume(a1);
}

void HALS_System::GetDeviceList(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, int a5, char a6, HALS_Client *a7)
{
  if (a2)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4002000000;
    v31 = __Block_byref_object_copy__7820;
    v32 = __Block_byref_object_dispose__7821;
    memset(v33, 0, sizeof(v33));
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___ZNK11HALS_System13GetDeviceListEjRjPjNS_14DeviceListKindEbP11HALS_Client_block_invoke;
    v27[3] = &unk_1E8675950;
    v27[4] = &v28;
    v27[5] = a1;
    v13 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v13, v27);
    *a3 = 0;
    v14 = v29[5];
    v15 = v29[6];
    while (1)
    {
      if (v14 == v15)
      {
LABEL_20:
        _Block_object_dispose(&v28, 8);
        HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v33, v23);
        return;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      HALS_DeviceManager::CopyDeviceList(*v14, &v24, a6, a7);
      v18 = v24;
      v17 = v25;
LABEL_5:
      if (v18 != v17)
      {
        break;
      }

LABEL_18:
      v22 = *a3;
      HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v24, v16);
      if (v22 >= a2)
      {
        goto LABEL_20;
      }

      ++v14;
    }

    while (1)
    {
      if (a5 == 1)
      {
        if ((*(**v18 + 232))())
        {
          goto LABEL_17;
        }
      }

      else if (!a5 && ((*(**v18 + 232))() & 1) == 0)
      {
LABEL_17:
        ++v18;
        goto LABEL_5;
      }

      v19 = *v18++;
      *(a4 + 4 * *a3) = *(v19 + 16);
      v20 = *a3 + 1;
      *a3 = v20;
      if (v20 >= a2 || v18 == v17)
      {
        goto LABEL_18;
      }
    }
  }

  *a3 = 0;
}

void sub_1DE4895FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(va1, v19);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7820(void *a1, uint64_t a2)
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

__n128 __Block_byref_object_copy__48(void *a1, uint64_t a2)
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

void ___ZNK11HALS_System29DoAnyQueuesHaveWorkAfterFlushEv_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[6];
  v4 = *(a1[4] + 8);
  if (v4 + 40 != v3 + 1584)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v4 + 40), *(v3 + 1584), *(v3 + 1592), (*(v3 + 1592) - *(v3 + 1584)) >> 3);
    v4 = *(a1[4] + 8);
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  while (v5 != v6)
  {
    v7 = *v5++;
    HALS_ObjectMap::RetainObject(v7, a2);
  }

  v8 = *(a1[5] + 8) + 40;
  if (v8 != v3 + 1640)
  {
    v9 = *(v3 + 1640);
    v10 = *(v3 + 1648);

    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v8, v9, v10, (v10 - v9) >> 3);
  }
}

void std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](HALS_Object ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](uint64_t result, HALS_Object *a2)
{
  for (i = *(result + 8); i != a2; i = (i - 8))
  {
    v5 = *(i - 1);
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  *(result + 8) = a2;
}

void std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_Object *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
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

      std::vector<HALS_Releaser<HALS_Client>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, a3, v8);

    std::vector<HALS_Releaser<HALS_Client>>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(a1, v12, a3, *(a1 + 8));
  }
}

HALS_ObjectMap **std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_ObjectMap **a3, HALS_ObjectMap **a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      HALS_ObjectMap::RetainObject(v7, a2);
      ++v6;
      v4 = ++v12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*>>::~__exception_guard_exceptions[abi:ne200100](v9, a2);
  return v4;
}

void std::vector<HALS_Releaser<HALS_Client>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_Client>>,HALS_Releaser<HALS_Client>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1, HALS_Object *a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = **(a1 + 16);
    v5 = **(a1 + 8);
    while (v4 != v5)
    {
      v6 = *(v4 - 8);
      v4 -= 8;
      HALS_ObjectMap::ReleaseObject(v6, a2);
    }
  }

  return a1;
}

void ___ZNK11HALS_System14FlushAllQueuesEv_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[6];
  v4 = *(a1[4] + 8);
  if (v4 + 40 != v3 + 1584)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v4 + 40), *(v3 + 1584), *(v3 + 1592), (*(v3 + 1592) - *(v3 + 1584)) >> 3);
    v4 = *(a1[4] + 8);
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  while (v5 != v6)
  {
    v7 = *v5++;
    HALS_ObjectMap::RetainObject(v7, a2);
  }

  v8 = *(a1[5] + 8) + 40;
  if (v8 != v3 + 1640)
  {
    v9 = *(v3 + 1640);
    v10 = *(v3 + 1648);

    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v8, v9, v10, (v10 - v9) >> 3);
  }
}

uint64_t ___ZNK11HALS_System13GetDeviceListEjRjPjNS_14DeviceListKindEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE489C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE489BF8);
}

void HALS_System::_CopyDeviceManagerList(HALS_Object *result, HALS_Object *a2, uint64_t a3, void *a4)
{
  if (result != a2)
  {
    v7 = result;
    do
    {
      if (a4[3])
      {
        v8 = a4[1];
        if (v8)
        {
          v9 = *(*v7 + 82);
          v10 = vcnt_s8(v8);
          v10.i16[0] = vaddlv_u8(v10);
          if (v10.u32[0] > 1uLL)
          {
            v11 = *(*v7 + 82);
            if (*&v8 <= v9)
            {
              v11 = v9 % *&v8;
            }
          }

          else
          {
            v11 = (*&v8 - 1) & v9;
          }

          v12 = *(*a4 + 8 * v11);
          if (v12)
          {
            for (i = *v12; i; i = *i)
            {
              v14 = i[1];
              if (v14 == v9)
              {
                if (*(i + 4) == v9)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                if (v10.u32[0] > 1uLL)
                {
                  if (v14 >= *&v8)
                  {
                    v14 %= *&v8;
                  }
                }

                else
                {
                  v14 &= *&v8 - 1;
                }

                if (v14 != v11)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = (v16 - *a3) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v19 = v15 - *a3;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v21);
        }

        *(8 * v18) = *v7;
        v17 = 8 * v18 + 8;
        v22 = *(a3 + 8) - *a3;
        v23 = (8 * v18 - v22);
        memcpy(v23, *a3, v22);
        v24 = *a3;
        *a3 = v23;
        *(a3 + 8) = v17;
        *(a3 + 16) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v16 = *v7;
        v17 = (v16 + 1);
      }

      *(a3 + 8) = v17;
      HALS_ObjectMap::RetainObject(*v7, a2);
LABEL_33:
      ++v7;
    }

    while (v7 != a2);
  }
}

uint64_t ___ZNK11HALS_System16GetNumberDevicesENS_14DeviceListKindEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE489E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE489E2CLL);
}

void HALS_System::HandleOwnedObjectGroupPropertiesChanged(HALS_System *this, unsigned int a2, uint64_t a3, unsigned int a4, const unsigned int *a5, const unsigned int *a6, int a7, const AudioObjectPropertyAddress *a8, BOOL a9)
{
  if (!a7)
  {
    v20 = 0;
    *__p = 0u;
    v25 = 0u;
    goto LABEL_35;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = &a8[v11];
    while (1)
    {
      v19 = *v17;
      v17 += 12;
      v18 = v19;
      if (v19 > 1886548770)
      {
        break;
      }

      if (v18 != 1684370979)
      {
        if (v18 == 1668049699)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14;
        }

        if (v18 == 1651472419)
        {
          v15 = 1;
        }

        else
        {
          v14 = v17;
        }

        goto LABEL_22;
      }

LABEL_8:
      ++v11;
      v16 = 1;
      if (a7 == v11)
      {
        *__p = 0u;
        v25 = 0u;
LABEL_24:
        *&v23.mSelector = 0x676C6F6264657623;
        v23.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
        goto LABEL_25;
      }
    }

    if (v18 == 1919186467)
    {
      goto LABEL_8;
    }

    if (v18 == 1886548771)
    {
      v17 = 1;
    }

    else
    {
      v17 = v13;
    }

    if (v18 == 1953526563)
    {
      v12 = 1;
    }

    else
    {
      v13 = v17;
    }

LABEL_22:
    if (++v11 != a7)
    {
      continue;
    }

    break;
  }

  *__p = 0u;
  v25 = 0u;
  if (v16)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v15)
  {
    *&v23.mSelector = 0x676C6F62626F7823;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  if (v14)
  {
    *&v23.mSelector = 0x676C6F62636C6B23;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  if (v13)
  {
    *&v23.mSelector = 0x676C6F6270727323;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  if (v12)
  {
    *&v23.mSelector = 0x676C6F6274707323;
    v23.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v23, v17);
  }

  v20 = __p[0];
LABEL_35:
  if (v20 != __p[1])
  {
    v21 = *(this + 4);
    v22 = -1431655765 * ((__p[1] - v20) >> 2);
    if (a9)
    {
      HALS_Object::PropertiesChanged_Sync(this, v21, a3, v22, v20);
    }

    else
    {
      HALS_Object::PropertiesChanged(this, v21, a3, v22, v20);
    }
  }

  if (v20)
  {

    operator delete(v20);
  }
}

void sub_1DE48A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::HandleOwnedObjectPropertiesChanged(HALS_System *this, const HALS_Object *a2, uint64_t a3, int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  if (!a4)
  {
    v24 = 0;
    *__p = 0u;
    v29 = 0u;
    goto LABEL_41;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1953526563;
  while (2)
  {
    v17 = &a5[v9];
    while (1)
    {
      mSelector = v17->mSelector;
      ++v17;
      v18 = mSelector;
      if (mSelector > 1886152482)
      {
        break;
      }

      if (v18 != 1684370979)
      {
        if (v18 == 1668049699)
        {
          v20 = 1;
        }

        else
        {
          v20 = v13;
        }

        if (v18 == 1651472419)
        {
          v14 = 1;
        }

        else
        {
          v13 = v20;
        }

        goto LABEL_25;
      }

LABEL_9:
      ++v9;
      v15 = 1;
      if (a4 == v9)
      {
        *__p = 0u;
        v29 = 0u;
LABEL_27:
        *&v27.mSelector = 0x676C6F6264657623;
        v27.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(__p, &v27, 0x74707323);
        platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v22);
        if ((*(*platform_behaviors + 24))(platform_behaviors) == 1)
        {
          *&v27.mSelector = 0x676C6F6272647623;
          v27.mElement = 0;
          CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
        }

        goto LABEL_29;
      }
    }

    if (v18 <= 1919186466)
    {
      if (v18 == 1886548771)
      {
        v21 = 1;
      }

      else
      {
        v21 = v12;
      }

      if (v18 == 1886152483)
      {
        v10 = 1;
      }

      else
      {
        v12 = v21;
      }

      goto LABEL_25;
    }

    if (v18 == 1919186467)
    {
      goto LABEL_9;
    }

    if (v18 == 1953526563)
    {
      v11 = 1;
    }

LABEL_25:
    if (++v9 != a4)
    {
      continue;
    }

    break;
  }

  *__p = 0u;
  v29 = 0u;
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_29:
  if (v14)
  {
    *&v27.mSelector = 0x676C6F62626F7823;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v13)
  {
    *&v27.mSelector = 0x676C6F62636C6B23;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v12)
  {
    *&v27.mSelector = 0x676C6F6270727323;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v11)
  {
    *&v27.mSelector = 0x676C6F6274707323;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  if (v10)
  {
    *&v27.mSelector = 0x676C6F62706C6723;
    v27.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(__p, &v27, v16);
  }

  v24 = __p[0];
LABEL_41:
  if (v24 != __p[1])
  {
    v25 = *(this + 4);
    v26 = -1431655765 * ((__p[1] - v24) >> 2);
    if (a6)
    {
      HALS_Object::PropertiesChanged_Sync(this, v25, a3, v26, v24);
    }

    else
    {
      HALS_Object::PropertiesChanged(this, v25, a3, v26, v24);
    }
  }

  if (v24)
  {

    operator delete(v24);
  }
}

void sub_1DE48A3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::SetPropertyData(HALS_System *this, HALS_Object *a2, const AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, uint64_t a6, _DWORD *a7, HALS_Client *a8)
{
  v10 = a6;
  v117 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1886221683)
  {
    if (mSelector > 1685288047)
    {
      switch(mSelector)
      {
        case 1685288048:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5135;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultInputDevice", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          if (!a8)
          {
            v71 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v71 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(this);
            }

            v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v72 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
              v74 = *v73;
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }

            else
            {
              v74 = *v73;
            }

            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2967;
              *&buf[18] = 2080;
              *&buf[20] = "inClient != nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v74, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Must provide a client object", buf, 0x1Cu);
            }

            abort();
          }

          v50 = *a5;
          v102 = 0;
          v103 = &v102;
          v104 = 0x2000000000;
          LOBYTE(v105) = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZN11HALS_System10DestroyTapEjP11HALS_Client_block_invoke;
          *&buf[24] = &unk_1E8675C60;
          v116 = v50;
          v114 = this;
          v115 = a8;
          *&buf[32] = &v102;
          v51 = (*(*this + 64))(this, a2);
          HALB_CommandGate::ExecuteCommand(v51, buf);
          if (*(v103 + 24) == 1)
          {
            valuePtr = 0x676C6F6274707323;
            LODWORD(v99) = 0;
            (*(*this + 152))(this, this, *(a8 + 4), 1, &valuePtr, 0);
          }

          goto LABEL_92;
        case 1698776147:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5086;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioDevicePropertyEnableAdaptableDeviceSimulator", buf, 0x12u);
            }

            v91 = __cxa_allocate_exception(0x10uLL);
            *v91 = off_1F5991DD8;
            v91[2] = 561211770;
          }

          *(this + 1632) = *a5 != 0;
          break;
        case 1886218606:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5030;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyProcessIsAudible", buf, 0x12u);
            }

            v88 = __cxa_allocate_exception(0x10uLL);
            *v88 = off_1F5991DD8;
            v88[2] = 561211770;
          }

          HALS_ObjectMap::RetainObject(a8, a2);
          if (a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a8 + 60);
              if (*a5)
              {
                v21 = "on";
              }

              else
              {
                v21 = "off";
              }

              *buf = 136315906;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5042;
              *&buf[18] = 1024;
              *&buf[20] = v20;
              *&buf[24] = 2080;
              *&buf[26] = v21;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_System::SetPropertyData: PID: %d Setting Process Input Mute To: %s", buf, 0x22u);
            }

            strcpy(buf, "tmipbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            (*(*a8 + 128))(a8, *(a8 + 4), buf, a4, a5, 0, 0, a8);
          }

          HALS_ObjectMap::ReleaseObject(a8, v19);
          break;
        default:
          goto LABEL_196;
      }
    }

    else
    {
      if (mSelector != 1667461737)
      {
        if (mSelector == 1682533920)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4954;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultInputDevice", buf, 0x12u);
            }

            v90 = __cxa_allocate_exception(0x10uLL);
            *v90 = off_1F5991DD8;
            v90[2] = 561211770;
          }

          if (a6 != 4)
          {
            if (a6)
            {
              return;
            }

            v16 = *(this + 202);
            v17 = *a5;
            v18 = 1682533920;
            goto LABEL_69;
          }

          v16 = *(this + 202);
          if (*a7 != 2)
          {
            v17 = *a5;
            v43 = *a7 == 1;
            v18 = 1682533920;
            goto LABEL_112;
          }

          v53 = 1682533920;
        }

        else
        {
          if (mSelector != 1682929012)
          {
            goto LABEL_196;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4975;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultOutputDevice", buf, 0x12u);
            }

            v87 = __cxa_allocate_exception(0x10uLL);
            *v87 = off_1F5991DD8;
            v87[2] = 561211770;
          }

          if (a6 != 4)
          {
            if (a6)
            {
              return;
            }

            v16 = *(this + 202);
            v17 = *a5;
            v18 = 1682929012;
LABEL_69:
            v43 = 0;
LABEL_112:

            HALS_DefaultDeviceManager::SetDefaultDevice(v16, v18, v17, v43);
            return;
          }

          v16 = *(this + 202);
          if (*a7 != 2)
          {
            v17 = *a5;
            v43 = *a7 == 1;
            v18 = 1682929012;
            goto LABEL_112;
          }

          v53 = 1682929012;
        }

        goto LABEL_101;
      }

      only_macos_high_quality_local_recording = AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(this);
      if ((only_macos_high_quality_local_recording & 1) == 0)
      {
        v67 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v67 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
        }

        v69 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          v70 = *v69;
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }

        else
        {
          v70 = *v69;
        }

        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5144;
          *&buf[18] = 2080;
          *&buf[20] = "allowCCR == false";
          _os_log_error_impl(&dword_1DE1F9000, v70, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::SetPropertyData: kAudioHardwarePropertyContentCreationRecordingInfo feature disabled", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v109);
        __cxa_allocate_exception(0x40uLL);
        v100 = off_1F5991DD8;
        v101 = 1852797029;
        LODWORD(v103) = 1852797029;
        v106 = 0;
        v107 = 0;
        v108 = -1;
        v102 = &unk_1F598E5D8;
        v104 = &unk_1F598E600;
        v105 = 0;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v102);
        *&buf[32] = "virtual void HALS_System::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        v114 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
        LODWORD(v115) = 5144;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v97);
      }

      if (a4 <= 7)
      {
        v75 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v75 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
        }

        v77 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          v78 = *v77;
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        else
        {
          v78 = *v77;
        }

        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5146;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize < theSize";
          _os_log_error_impl(&dword_1DE1F9000, v78, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyContentCreationRecordingInfo", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v109);
        __cxa_allocate_exception(0x40uLL);
        v100 = off_1F5991DD8;
        v101 = 561211770;
        LODWORD(v103) = 561211770;
        v106 = 0;
        v107 = 0;
        v108 = -1;
        v102 = &unk_1F598E5D8;
        v104 = &unk_1F598E600;
        v105 = 0;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v102);
        *&buf[32] = "virtual void HALS_System::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        v114 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
        LODWORD(v115) = 5146;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v97);
      }

      if (!a5)
      {
        v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v79 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
        }

        v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          v82 = *v81;
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        else
        {
          v82 = *v81;
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5147;
          *&buf[18] = 2080;
          *&buf[20] = "(inData) == nullptr";
          _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::SetPropertyData: null data value for kAudioHardwarePropertyContentCreationRecordingInfo", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v109);
        __cxa_allocate_exception(0x40uLL);
        v100 = off_1F5991DD8;
        v101 = 1852797029;
        LODWORD(v103) = 1852797029;
        v106 = 0;
        v107 = 0;
        v108 = -1;
        v102 = &unk_1F598E5D8;
        v104 = &unk_1F598E600;
        v105 = 0;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v102);
        *&buf[32] = "virtual void HALS_System::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
        v114 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
        LODWORD(v115) = 5147;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v97);
      }

      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 0x40000000;
      v96[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_190;
      v96[3] = &__block_descriptor_tmp_191;
      v96[4] = this;
      v96[5] = a5;
      v47 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v47, v96);
      v48 = *(this + 4);
      if (a8)
      {
        v49 = *(a8 + 4);
      }

      else
      {
        v49 = 0;
      }

      strcpy(buf, "irccbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      HALS_Object::PropertiesChanged(this, v48, v49, 1, buf);
    }
  }

  else if (mSelector <= 1934587251)
  {
    switch(mSelector)
    {
      case 1886221684:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5051;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyProcessIsAudible", buf, 0x12u);
          }

          v52 = __cxa_allocate_exception(0x10uLL);
          *v52 = off_1F5991DD8;
          v52[2] = 561211770;
        }

        break;
      case 1886353256:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5075;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyPowerHint", buf, 0x12u);
          }

          v92 = __cxa_allocate_exception(0x10uLL);
          *v92 = off_1F5991DD8;
          v92[2] = 561211770;
        }

        if (a8)
        {
          *(a8 + 73) = *a5;
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 0x40000000;
          v111[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_184;
          v111[3] = &__block_descriptor_tmp_185;
          v111[4] = this;
          v111[5] = a8;
          v44 = (*(*this + 64))(this, a2);
          HALB_CommandGate::ExecuteCommand(v44, v111);
          v45 = *(a8 + 4);
          strcpy(buf, "hwopbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          HALS_Object::PropertiesChanged(this, v45, v45, 1, buf);
        }

        break;
      case 1919839344:
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5094;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyRunLoop", buf, 0x12u);
          }

          v89 = __cxa_allocate_exception(0x10uLL);
          *v89 = off_1F5991DD8;
          v89[2] = 561211770;
        }

        v22 = *a5;
        *buf = this + 1928;
        *&buf[8] = HALB_Mutex::Lock((this + 1928));
        v23 = *(this + 240);
        if (v23 != v22)
        {
          if (v23)
          {
            if (v22)
            {
              v24 = *(this + 277);
              v25 = *(this + 278);
              v26 = MEMORY[0x1E695E8C8];
              if (v24 != v25)
              {
                v27 = *MEMORY[0x1E695E8C8];
                do
                {
                  CFRunLoopRemoveSource(*(this + 240), *v24, v27);
                  CFRunLoopRemoveSource(*(this + 240), *v24++, @"com.apple.audio.CoreAudio");
                }

                while (v24 != v25);
                v23 = *(this + 240);
              }

              CFRelease(v23);
              *(this + 240) = v22;
              CFRetain(v22);
              v28 = *(this + 277);
              v29 = *(this + 278);
              if (v28 != v29)
              {
                v30 = *v26;
                do
                {
                  CFRunLoopAddSource(*(this + 240), *v28, v30);
                  CFRunLoopAddSource(*(this + 240), *v28++, @"com.apple.audio.CoreAudio");
                }

                while (v28 != v29);
              }
            }

            else if (!atomic_load(this + 261))
            {
              v58 = *(this + 277);
              v59 = *(this + 278);
              if (v58 != v59)
              {
                v60 = *MEMORY[0x1E695E8C8];
                do
                {
                  CFRunLoopRemoveSource(*(this + 240), *v58, v60);
                  CFRunLoopRemoveSource(*(this + 240), *v58++, @"com.apple.audio.CoreAudio");
                }

                while (v58 != v59);
              }

              CFRelease(*(this + 240));
              *(this + 240) = 0;
              HALS_System::StartRunLoop(this);
              v61 = *(this + 277);
              v62 = *(this + 278);
              if (v61 != v62)
              {
                v63 = *MEMORY[0x1E695E8C8];
                do
                {
                  CFRunLoopAddSource(*(this + 240), *v61, v63);
                  CFRunLoopAddSource(*(this + 240), *v61++, @"com.apple.audio.CoreAudio");
                }

                while (v61 != v62);
              }
            }
          }

          else if (v22)
          {
            *(this + 240) = v22;
            CFRetain(v22);
            v54 = *(this + 277);
            v55 = *(this + 278);
            if (v54 != v55)
            {
              v56 = *MEMORY[0x1E695E8C8];
              do
              {
                CFRunLoopAddSource(*(this + 240), *v54, v56);
                CFRunLoopAddSource(*(this + 240), *v54++, @"com.apple.audio.CoreAudio");
              }

              while (v54 != v55);
            }
          }

          else
          {
            HALS_System::StartRunLoop(this);
            v64 = *(this + 277);
            v65 = *(this + 278);
            if (v64 != v65)
            {
              v66 = *MEMORY[0x1E695E8C8];
              do
              {
                CFRunLoopAddSource(*(this + 240), *v64, v66);
                CFRunLoopAddSource(*(this + 240), *v64++, @"com.apple.audio.CoreAudio");
              }

              while (v64 != v65);
            }
          }
        }

        HALB_Guard::Locker::~Locker(buf);
        break;
      default:
        goto LABEL_196;
    }
  }

  else
  {
    if (mSelector <= 1936483695)
    {
      if (mSelector != 1934587252)
      {
        if (mSelector == 1936224868)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5017;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSystemOutputDevice", buf, 0x12u);
            }

            v83 = __cxa_allocate_exception(0x10uLL);
            *v83 = off_1F5991DD8;
            v83[2] = 561211770;
          }

          if ((HALS_ClientEntitlements::HasEntitlementWithBooleanValue((a8 + 296), @"com.apple.private.audio.default-shared-device") & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5018;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: no entitlement for kAudioHardwarePropertyDefaultSharedOutputDevice", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 560492391;
          }

          if (v10 != 4)
          {
            if (!v10)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 5019;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: no qualifier given for shared device assignment.", buf, 0x12u);
              }

              v15 = __cxa_allocate_exception(0x10uLL);
              *v15 = off_1F5991DD8;
              v15[2] = 1852797029;
            }

            return;
          }

          if (*a7 != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5023;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: transient qualifier required for shared device assignment.", buf, 0x12u);
            }

            v95 = __cxa_allocate_exception(0x10uLL);
            *v95 = off_1F5991DD8;
            v95[2] = 1852797029;
          }

          v16 = *(this + 202);
          v17 = *a5;
          v18 = 1936224868;
          v43 = 1;
          goto LABEL_112;
        }

LABEL_196:
        HALS_Object::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4996;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::SetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSystemOutputDevice", buf, 0x12u);
        }

        v85 = __cxa_allocate_exception(0x10uLL);
        *v85 = off_1F5991DD8;
        v85[2] = 561211770;
      }

      if (a6 != 4)
      {
        if (a6)
        {
          return;
        }

        v16 = *(this + 202);
        v17 = *a5;
        v18 = 1934587252;
        goto LABEL_69;
      }

      v16 = *(this + 202);
      if (*a7 != 2)
      {
        v17 = *a5;
        v43 = *a7 == 1;
        v18 = 1934587252;
        goto LABEL_112;
      }

      v53 = 1934587252;
LABEL_101:

      HALS_DefaultDeviceManager::ResetDefaultDevice(v16, v53);
      return;
    }

    if (mSelector != 1936483696)
    {
      if (mSelector != 1937010031)
      {
        goto LABEL_196;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5057;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertyMixStereoToMono", buf, 0x12u);
        }

        v84 = __cxa_allocate_exception(0x10uLL);
        *v84 = off_1F5991DD8;
        v84[2] = 561211770;
      }

      v102 = 0;
      v103 = &v102;
      v104 = 0x2000000000;
      LOBYTE(v105) = *(this + 1560);
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 0x40000000;
      v112[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
      v112[3] = &unk_1E8675F68;
      v112[5] = this;
      v112[6] = a5;
      v112[4] = &v102;
      v31 = (*(*this + 64))(this, a2);
      HALB_CommandGate::ExecuteCommand(v31, v112);
      v32 = *(this + 222);
      LODWORD(valuePtr) = *(v103 + 24);
      *buf = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      buf[8] = 1;
      HALS_SettingsManager::_WriteSetting(v32, @"System_MixStereoToMono", *buf);
      CACFNumber::~CACFNumber(buf);
      if (AMCP::Feature_Flags::run_hybrid_hal(v33, v34))
      {
        v35 = *(this + 213);
        if (v35 != *(this + 214))
        {
          v36 = MEMORY[0x1E69E9820];
          do
          {
            v37 = *v35++;
            v38 = *(v37 + 16);
            *buf = v36;
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZNK11HALS_System21update_all_iocontextsEv_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_144;
            *&buf[32] = v38;
            AMCP::Utility::Dispatch_Queue::async(this + 880, buf);
          }

          while (v35 != *(this + 214));
        }
      }

      v39 = *(this + 4);
      if (a8)
      {
        v40 = *(a8 + 4);
      }

      else
      {
        v40 = 0;
      }

      strcpy(buf, "omtsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      HALS_Object::PropertiesChanged(this, v39, v40, 1, buf);
LABEL_92:
      _Block_object_dispose(&v102, 8);
      return;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5103;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_SetPropertyData: bad property data size for kAudioHardwarePropertySleepingIsAllowed", buf, 0x12u);
      }

      v86 = __cxa_allocate_exception(0x10uLL);
      *v86 = off_1F5991DD8;
      v86[2] = 561211770;
    }

    if (a8 && (*a5 != 0) != *(a8 + 264))
    {
      *(a8 + 264) = *a5 != 0;
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 0x40000000;
      v110[2] = ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_186;
      v110[3] = &__block_descriptor_tmp_187;
      v110[4] = this;
      v110[5] = a8;
      v41 = (*(*this + 64))(this, a2);
      HALB_CommandGate::ExecuteCommand(v41, v110);
      v42 = *(a8 + 4);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZNK11HALS_Client33SendSleepingIsAllowedNotificationEv_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_18_3140;
      *&buf[32] = v42;
      AMCP::Utility::Dispatch_Queue::async(a8 + 384, buf);
    }
  }
}