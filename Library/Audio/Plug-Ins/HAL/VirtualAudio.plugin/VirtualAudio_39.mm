uint64_t sub_32B384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v6 = off_6C1D20;
  sub_165D0C((v6 + 67));
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 != 1)
  {
    *inAddress = &inAddress[8];
    *&inAddress[8] = 0;
    v24[0] = 0;
    v24[1] = 0;
    *&inAddress[16] = 0;
    v23 = v24;
    sub_407194(inAddress, 1886216809, 1768778083);
    sub_407194(inAddress, 1886216809, 1768778033);
    sub_407194(inAddress, 1886222185, 1701669219);
    sub_407194(inAddress, 1886680169, 1701669219);
    sub_40736C(inAddress, 0x656D6963u, 1886222185);
    sub_40736C(inAddress, 0x656D6963u, 1886680169);
    sub_40736C(inAddress, 0x696D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6931u, 1886216809);
    sub_40736C(inAddress, 0x736D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6932u, 1886216809);
    sub_40736C(inAddress, 0x6C6D6963u, 1886216809);
    sub_40736C(inAddress, 0x666D6963u, 1886216809);
    sub_40736C(inAddress, 0x6265616Du, 1886216809);
    operator new();
  }

  *(a1 + 880) = 0;
  *(a1 + 888) = sub_46AC8C();
  *(a1 + 896) = 0;
  *(a1 + 900) = 2;
  *(a1 + 904) = 0;
  *(a1 + 932) = 0;
  *(a1 + 916) = 0;
  *(a1 + 924) = 0;
  *(a1 + 908) = 0;
  *(a1 + 936) = 850045863;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1000) = dispatch_queue_create("Repaired Mic Check Queue", 0);
  if (!v4)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_HPMic_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 163;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

    goto LABEL_18;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_HPMic_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 164;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_28;
  }

  v8 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v8, &qword_6EA9B0))
  {
    v9 = (*(*a1 + 120))(a1);
    inData = 0;
    strcpy(inAddress, "dneitpni");
    inAddress[9] = 0;
    *&inAddress[10] = 0;
    v10 = AudioObjectSetPropertyData(v9, inAddress, 0, 0, 4u, &inData);
    if (v10)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v10;
    }

    if (atomic_load((a1 + 908)))
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *inAddress = 136315394;
        *&inAddress[4] = "Device_HPMic_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 172;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Postcondition failure.");
LABEL_28:
    }
  }

  return a1;
}

void sub_32B910(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_709640);
  sub_13A300(v1 + 536);
  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_32BA1C(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6EA9B0);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_HPMic_Aspen.cpp";
        v8 = 1024;
        v9 = 101;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting HPMic power to be disabled.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 0;
    return sub_2C152C(v5);
  }

  return result;
}

uint64_t sub_32BB28(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6EA9B0);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_HPMic_Aspen.cpp";
        v8 = 1024;
        v9 = 89;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting HPMic power to be enabled.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 1;
    return sub_2C152C(v5);
  }

  return result;
}

void sub_32BC78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C1F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_32BCEC(void x0_0, AudioObjectID a1)
{
  v3 = sub_5544(18);
  v4 = *v3;
  if (*v3)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "Device_USB_iAP_Aspen.cpp";
      v7 = 1024;
      v8 = 420;
      v9 = 1024;
      v10 = a1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d stream ID = %u", &v5, 0x18u);
    }
  }

  operator new();
}

void sub_32BE2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_32BE74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C21C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_32BEE8(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886745455)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_USB_iAP_Aspen.cpp";
      v14 = 1024;
      v15 = 407;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_USB_iAP_Aspen.cpp";
      v14 = 1024;
      v15 = 408;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_32C0BC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = sub_5544(18);
    v5 = sub_5544(38);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_8:
    v9 = sub_5544(37);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v4 + 8);
    while (1)
    {
      v12 = *&buf[v10];
      if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
      {
        break;
      }

      v10 += 4;
      if (v10 == 8)
      {
        goto LABEL_14;
      }
    }

    if ((v11 & v12) == 0)
    {
      v4 = v9;
    }

LABEL_14:
    v13 = *v4;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 382;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting sample rate from USB HAL device.", buf, 0x12u);
    }

    outData = 0.0;
    ioDataSize = 8;
    v14 = (*(*a1 + 120))(a1);
    PropertyData = AudioObjectGetPropertyData(v14, &qword_6EAA38, 0, 0, &ioDataSize, &outData);
    if (PropertyData)
    {
      v16 = sub_5544(18);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          v42 = 1024;
          v43 = 386;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d HAL reported an error attempting to get the sample rate.", buf, 0x12u);
        }
      }
    }

    v18 = sub_5544(18);
    v19 = sub_5544(38);
    v20 = 0;
    *buf = 0x100000002;
    v21 = *(v18 + 8);
    while (1)
    {
      v22 = *&buf[v20];
      if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
      {
        break;
      }

      v20 += 4;
      if (v20 == 8)
      {
        goto LABEL_27;
      }
    }

    if ((v21 & v22) == 0)
    {
      v18 = v19;
    }

LABEL_27:
    v23 = sub_5544(37);
    v24 = 0;
    *buf = 0x100000002;
    v25 = *(v18 + 8);
    while (1)
    {
      v26 = *&buf[v24];
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_33;
      }
    }

    if ((v25 & v26) == 0)
    {
      v18 = v23;
    }

LABEL_33:
    v27 = *v18;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 387;
      v44 = 1024;
      LODWORD(v45[0]) = v28;
      WORD2(v45[0]) = 2048;
      *(v45 + 6) = outData;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB HAL device %u reported a sample rate of %f.", buf, 0x22u);
    }

    if (!PropertyData)
    {
      v29 = sub_5544(18);
      v30 = sub_5544(38);
      v31 = 0;
      *buf = 0x100000002;
      v32 = *(v29 + 8);
      while (1)
      {
        v33 = *&buf[v31];
        if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
        {
          break;
        }

        v31 += 4;
        if (v31 == 8)
        {
          goto LABEL_43;
        }
      }

      if ((v32 & v33) == 0)
      {
        v29 = v30;
      }

LABEL_43:
      v34 = sub_5544(37);
      v35 = 0;
      *buf = 0x100000002;
      v36 = *(v29 + 8);
      while (1)
      {
        v37 = *&buf[v35];
        if (((v36 & v37) != 0) != ((*(v34 + 8) & v37) != 0))
        {
          break;
        }

        v35 += 4;
        if (v35 == 8)
        {
          goto LABEL_49;
        }
      }

      if ((v36 & v37) == 0)
      {
        v29 = v34;
      }

LABEL_49:
      v38 = *v29;
      if (v38)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          v42 = 1024;
          v43 = 391;
          v44 = 2048;
          *v45 = outData;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling SetSampleRate() to value reported by USB HAL device (%f).", buf, 0x1Cu);
        }
      }

      sub_32C584(a1, 0, outData);
    }
  }
}

void sub_32C584(uint64_t a1, int a2, double a3)
{
  v6 = sub_5544(18);
  v7 = sub_5544(38);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_7:
  v11 = sub_5544(37);
  v13 = 0;
  *buf = 0x100000002;
  v14 = *(v6 + 8);
  while (1)
  {
    v15 = *&buf[v13];
    if (((v14 & v15) != 0) != ((*(v11 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_13;
    }
  }

  if ((v14 & v15) == 0)
  {
    v6 = v11;
  }

LABEL_13:
  v16 = *v6;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v71 = 1024;
    v72 = 500;
    v73 = 2048;
    *v74 = a3;
    *&v74[8] = 1024;
    *&v74[10] = a2;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Entered Device_USB_iAP_Aspen::SetSampleRate(sampleRate %f, synchronous %u).", buf, 0x22u);
  }

  v12.n128_u64[0] = 0;
  if (a3 >= 0.0)
  {
    v12.n128_f64[0] = a3;
  }

  if (a3 <= 4294967300.0)
  {
    v17 = v12.n128_f64[0];
  }

  else
  {
    v17 = 4294967300.0;
  }

  inData = v17;
  v18 = (*(*a1 + 104))(a1, v12);
  v19 = sub_5544(18);
  v20 = sub_5544(38);
  v21 = 0;
  *buf = 0x100000002;
  v22 = *(v19 + 8);
  while (1)
  {
    v23 = *&buf[v21];
    if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
    {
      break;
    }

    v21 += 4;
    if (v21 == 8)
    {
      goto LABEL_27;
    }
  }

  if ((v22 & v23) == 0)
  {
    v19 = v20;
  }

LABEL_27:
  v24 = sub_5544(37);
  v25 = 0;
  *buf = 0x100000002;
  v26 = *(v19 + 8);
  while (1)
  {
    v27 = *&buf[v25];
    if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
    {
      break;
    }

    v25 += 4;
    if (v25 == 8)
    {
      goto LABEL_33;
    }
  }

  if ((v26 & v27) == 0)
  {
    v19 = v24;
  }

LABEL_33:
  v28 = *v19;
  if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v71 = 1024;
    v72 = 509;
    v73 = 1024;
    *v74 = v17;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling IAPManager::SetSampleRateForUSB() with %u", buf, 0x18u);
  }

  if (!sub_3435DC(v17))
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v71 = 1024;
      v72 = 511;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): IAPDigitalAudioSetSampleRate() failed.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
LABEL_95:
  }

  if (v17 != v18)
  {
    v29 = sub_5544(18);
    v30 = sub_5544(38);
    v31 = 0;
    if (a2)
    {
      *buf = 0x100000002;
      v32 = *(v29 + 8);
      while (1)
      {
        v33 = *&buf[v31];
        if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
        {
          break;
        }

        v31 += 4;
        if (v31 == 8)
        {
          goto LABEL_49;
        }
      }

      if ((v32 & v33) == 0)
      {
        v29 = v30;
      }

LABEL_49:
      v36 = sub_5544(37);
      v37 = 0;
      *buf = 0x100000002;
      v38 = *(v29 + 8);
      while (1)
      {
        v39 = *&buf[v37];
        if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
        {
          break;
        }

        v37 += 4;
        if (v37 == 8)
        {
          goto LABEL_61;
        }
      }

      if ((v38 & v39) == 0)
      {
        v29 = v36;
      }

LABEL_61:
      v44 = *v29;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        v45 = (*(*a1 + 120))(a1);
        *buf = 136315906;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 519;
        v73 = 1024;
        *v74 = v45;
        *&v74[4] = 2048;
        *&v74[6] = v17;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling Device_HAL_Common::SetSampleRateSynchronously() on USB HAL device %u with rate %f.", buf, 0x22u);
      }

      v46 = sub_4AF738(a1, v17);
      if (v46)
      {
        v47 = v46;
        v48 = sub_5544(14);
        v49 = *v48;
        if (!*v48 || !os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *buf = 136315394;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 521;
        v50 = "%25s:%-5d EXCEPTION (status) [error status is an error]: Device_HAL_Common::SetSampleRateSynchronously() failed to set sample rate.";
LABEL_93:
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, v50, buf, 0x12u);
LABEL_94:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = v47;
        goto LABEL_95;
      }
    }

    else
    {
      *buf = 0x100000002;
      v34 = *(v29 + 8);
      while (1)
      {
        v35 = *&buf[v31];
        if (((v34 & v35) != 0) != ((*(v30 + 8) & v35) != 0))
        {
          break;
        }

        v31 += 4;
        if (v31 == 8)
        {
          goto LABEL_55;
        }
      }

      if ((v34 & v35) == 0)
      {
        v29 = v30;
      }

LABEL_55:
      v40 = sub_5544(37);
      v41 = 0;
      *buf = 0x100000002;
      v42 = *(v29 + 8);
      while (1)
      {
        v43 = *&buf[v41];
        if (((v42 & v43) != 0) != ((*(v40 + 8) & v43) != 0))
        {
          break;
        }

        v41 += 4;
        if (v41 == 8)
        {
          goto LABEL_70;
        }
      }

      if ((v42 & v43) == 0)
      {
        v29 = v40;
      }

LABEL_70:
      v51 = *v29;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        v52 = (*(*a1 + 120))(a1);
        *buf = 136315906;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 525;
        v73 = 1024;
        *v74 = v52;
        *&v74[4] = 2048;
        *&v74[6] = v17;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling AudioObjectSetPropertyData() on USB HAL device %u with rate %f.", buf, 0x22u);
      }

      v53 = (*(*a1 + 120))(a1);
      v54 = AudioObjectSetPropertyData(v53, &qword_6EAA38, 0, 0, 8u, &inData);
      if (v54)
      {
        v47 = v54;
        v65 = sub_5544(14);
        v49 = *v65;
        if (!*v65 || !os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *buf = 136315394;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        v71 = 1024;
        v72 = 528;
        v50 = "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectSetPropertyData() failed to set sample rate.";
        goto LABEL_93;
      }
    }
  }

  v55 = sub_5544(18);
  v56 = sub_5544(38);
  v57 = 0;
  *buf = 0x100000002;
  v58 = *(v55 + 8);
  while (1)
  {
    v59 = *&buf[v57];
    if (((v58 & v59) != 0) != ((*(v56 + 8) & v59) != 0))
    {
      break;
    }

    v57 += 4;
    if (v57 == 8)
    {
      goto LABEL_80;
    }
  }

  if ((v58 & v59) == 0)
  {
    v55 = v56;
  }

LABEL_80:
  v60 = sub_5544(37);
  v61 = 0;
  *buf = 0x100000002;
  v62 = *(v55 + 8);
  while (1)
  {
    v63 = *&buf[v61];
    if (((v62 & v63) != 0) != ((*(v60 + 8) & v63) != 0))
    {
      break;
    }

    v61 += 4;
    if (v61 == 8)
    {
      goto LABEL_86;
    }
  }

  if ((v62 & v63) == 0)
  {
    v55 = v60;
  }

LABEL_86:
  v64 = *v55;
  if (v64 && os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v71 = 1024;
    v72 = 532;
    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "%25s:%-5d Exited Device_USB_iAP_Aspen::SetSampleRate().", buf, 0x12u);
  }
}

void sub_32CE40(uint64_t a1)
{
  sub_4ADCC0(a1);
  v2 = *(a1 + 88);
  __p = *(a1 + 80);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_32D1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_32D23C(int a1, os_unfair_lock_s *a2)
{
  if (!a2)
  {
    v60 = sub_5544(14);
    v61 = *v60;
    if (*v60)
    {
      if (os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 444;
        _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", buf, 0x12u);
      }
    }
  }

  if (a1 == 1684500341)
  {
    v78 = 1886745455;
    v80 = 0;
    outData = 0uLL;
    sub_4625C(&outData, &v78, &outData, 1uLL);
    *buf = outData;
    *&buf[16] = v80;
    strcpy(&buf[24], "cwdv");
    BYTE2(v82) = 0;
    LODWORD(v84) = 3;
    v86[0] = 0;
    v86[1] = 0;
    v85 = v86;
    v87 = 44739242;
    v89 = 0;
    v90 = 0;
    __p = 0;
    sub_161C7C(ioDataSize, a2, buf);
    sub_B0484(&v75, ioDataSize);
    sub_65310(ioDataSize);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v86[0]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v77 != 1)
    {
      v65 = sub_5544(14);
      v66 = *v65;
      if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
      {
        v67 = v77;
        sub_22170(&outData, 1886745455);
        v68 = SHIBYTE(v80);
        v69 = outData;
        sub_23148(ioDataSize, a2 + 2);
        p_outData = &outData;
        if (v68 < 0)
        {
          p_outData = v69;
        }

        if (v74 >= 0)
        {
          v71 = ioDataSize;
        }

        else
        {
          v71 = *ioDataSize;
        }

        *buf = 136316162;
        *&buf[4] = "Device_USB_iAP_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 457;
        *&buf[18] = 2048;
        *&buf[20] = v67;
        *&buf[28] = 2080;
        v82 = p_outData;
        v83 = 2080;
        v84 = v71;
        _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Found %lu ports of type '%s' in device %s (looking for exactly 1)", buf, 0x30u);
        if (v74 < 0)
        {
          operator delete(*ioDataSize);
        }

        if (SHIBYTE(v80) < 0)
        {
          operator delete(outData);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Found %lu ports of type '%s' in device %s (looking for exactly 1)");
    }

    v5 = *(v76 + 16);
    v4 = *(v76 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*v5 + 152))(v5);
    sub_2AAE6C(v5);
    if (v6 != (*(*v5 + 152))(v5))
    {
      if (v6)
      {
        v7 = 0x1726F6C75;
      }

      else
      {
        v8 = sub_5544(18);
        v9 = sub_5544(38);
        v10 = 0;
        *buf = 0x100000002;
        v11 = *(v8 + 8);
        while (1)
        {
          v12 = *&buf[v10];
          if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
          {
            break;
          }

          v10 += 4;
          if (v10 == 8)
          {
            goto LABEL_19;
          }
        }

        if ((v11 & v12) == 0)
        {
          v8 = v9;
        }

LABEL_19:
        v13 = sub_5544(37);
        v14 = 0;
        *buf = 0x100000002;
        v15 = *(v8 + 8);
        while (1)
        {
          v16 = *&buf[v14];
          if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
          {
            break;
          }

          v14 += 4;
          if (v14 == 8)
          {
            goto LABEL_25;
          }
        }

        if ((v15 & v16) == 0)
        {
          v8 = v13;
        }

LABEL_25:
        v17 = *v8;
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 75;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Entered Device_USB_iAP_Aspen::ReconcileSampleRates().", buf, 0x12u);
        }

        v18 = sub_5544(18);
        v19 = sub_5544(38);
        v20 = 0;
        *buf = 0x100000002;
        v21 = *(v18 + 8);
        while (1)
        {
          v22 = *&buf[v20];
          if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
          {
            break;
          }

          v20 += 4;
          if (v20 == 8)
          {
            goto LABEL_34;
          }
        }

        if ((v21 & v22) == 0)
        {
          v18 = v19;
        }

LABEL_34:
        v23 = sub_5544(37);
        v24 = 0;
        *buf = 0x100000002;
        v25 = *(v18 + 8);
        while (1)
        {
          v26 = *&buf[v24];
          if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
          {
            break;
          }

          v24 += 4;
          if (v24 == 8)
          {
            goto LABEL_40;
          }
        }

        if ((v25 & v26) == 0)
        {
          v18 = v23;
        }

LABEL_40:
        v27 = *v18;
        if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 79;
          *&buf[18] = 2048;
          *&buf[20] = 0x40E5888000000000;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting iAP and driver to default sample rate of %f kHz.", buf, 0x1Cu);
        }

        sub_32C584(a2, 1, 44100.0);
        v28 = sub_5544(18);
        v29 = sub_5544(38);
        v30 = 0;
        *buf = 0x100000002;
        v31 = v28[1];
        while (1)
        {
          v32 = *&buf[v30];
          if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
          {
            break;
          }

          v30 += 4;
          if (v30 == 8)
          {
            goto LABEL_49;
          }
        }

        if ((v31 & v32) == 0)
        {
          v28 = v29;
        }

LABEL_49:
        v33 = sub_5544(37);
        v34 = 0;
        *buf = 0x100000002;
        v35 = v28[1];
        while (1)
        {
          v36 = *&buf[v34];
          if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
          {
            break;
          }

          v34 += 4;
          if (v34 == 8)
          {
            goto LABEL_55;
          }
        }

        if ((v35 & v36) == 0)
        {
          v28 = v33;
        }

LABEL_55:
        if (*v28)
        {
          *&outData = 0;
          ioDataSize[0] = 8;
          v37 = (*(*&a2->_os_unfair_lock_opaque + 120))(a2);
          PropertyData = AudioObjectGetPropertyData(v37, &qword_6EAA38, 0, 0, ioDataSize, &outData);
          if (PropertyData)
          {
            v62 = sub_5544(14);
            v63 = *v62;
            if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "Device_USB_iAP_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 88;
              _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectGetPropertyData() failed to get sample rate.", buf, 0x12u);
            }

            v64 = __cxa_allocate_exception(0x10uLL);
            *v64 = &off_6DDDD0;
            v64[2] = PropertyData;
          }

          if (*&outData != 44100.0)
          {
            v39 = sub_5544(18);
            v40 = sub_5544(38);
            v41 = 0;
            *buf = 0x100000002;
            v42 = *(v39 + 8);
            while (1)
            {
              v43 = *&buf[v41];
              if (((v42 & v43) != 0) != ((*(v40 + 8) & v43) != 0))
              {
                break;
              }

              v41 += 4;
              if (v41 == 8)
              {
                goto LABEL_64;
              }
            }

            if ((v42 & v43) == 0)
            {
              v39 = v40;
            }

LABEL_64:
            v44 = sub_5544(37);
            v45 = 0;
            *buf = 0x100000002;
            v46 = *(v39 + 8);
            while (1)
            {
              v47 = *&buf[v45];
              if (((v46 & v47) != 0) != ((*(v44 + 8) & v47) != 0))
              {
                break;
              }

              v45 += 4;
              if (v45 == 8)
              {
                goto LABEL_70;
              }
            }

            if ((v46 & v47) == 0)
            {
              v39 = v44;
            }

LABEL_70:
            v48 = *v39;
            if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "Device_USB_iAP_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 89;
              *&buf[18] = 2048;
              *&buf[20] = 0x40E5888000000000;
              *&buf[28] = 1024;
              LODWORD(v82) = *&outData;
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d iAP USB: Driver sample rate was not successfully set. target: %f; actual: %u", buf, 0x22u);
            }
          }
        }

        v49 = sub_5544(18);
        v50 = sub_5544(38);
        v51 = 0;
        *buf = 0x100000002;
        v52 = *(v49 + 8);
        while (1)
        {
          v53 = *&buf[v51];
          if (((v52 & v53) != 0) != ((*(v50 + 8) & v53) != 0))
          {
            break;
          }

          v51 += 4;
          if (v51 == 8)
          {
            goto LABEL_79;
          }
        }

        if ((v52 & v53) == 0)
        {
          v49 = v50;
        }

LABEL_79:
        v54 = sub_5544(37);
        v55 = 0;
        *buf = 0x100000002;
        v56 = *(v49 + 8);
        while (1)
        {
          v57 = *&buf[v55];
          if (((v56 & v57) != 0) != ((*(v54 + 8) & v57) != 0))
          {
            break;
          }

          v55 += 4;
          if (v55 == 8)
          {
            goto LABEL_85;
          }
        }

        if ((v56 & v57) == 0)
        {
          v49 = v54;
        }

LABEL_85:
        v7 = 0x1726E7764;
        v58 = *v49;
        if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_iAP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 92;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d Exited Device_USB_iAP_Aspen::ReconcileSampleRates().", buf, 0x12u);
        }
      }

      v59 = sub_809C0();
      *buf = v5;
      *&buf[8] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v59, buf, v7);
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    if (v4)
    {
      sub_1A8C0(v4);
    }

    sub_87980(&v75);
  }
}

void sub_32DC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  sub_87980(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_32DD14(uint64_t a1, double a2)
{
  v4 = sub_5544(18);
  v5 = sub_5544(37);
  v6 = 0;
  *v11 = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&v11[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 136315650;
    *&v11[4] = "Device_USB_iAP_Aspen.cpp";
    v12 = 1024;
    v13 = 355;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting iAP sample rate to %f Hz", v11, 0x1Cu);
  }

  sub_32C584(a1, 1, a2);
  return 0;
}

void sub_32DE60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x32DE2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_32DE90(uint64_t a1)
{
  v2 = sub_5544(18);
  v3 = sub_5544(38);
  v4 = 0;
  *buf = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&buf[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_7:
  v7 = sub_5544(37);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v2 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_13;
    }
  }

  if ((v9 & v10) == 0)
  {
    v2 = v7;
  }

LABEL_13:
  v11 = *v2;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v42 = 1024;
    v43 = 336;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Entered Device_USB_iAP_Aspen::GetSampleRate().", buf, 0x12u);
  }

  outData = 0;
  ioDataSize = 8;
  v12 = (*(*a1 + 120))(a1);
  PropertyData = AudioObjectGetPropertyData(v12, &qword_6EAA38, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v35 = PropertyData;
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 342;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: AudioObjectGetPropertyData() failed to get sample rate.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v35;
  }

  v14 = sub_5544(18);
  v15 = sub_5544(38);
  v16 = 0;
  *buf = 0x100000002;
  v17 = *(v14 + 8);
  while (1)
  {
    v18 = *&buf[v16];
    if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
    {
      break;
    }

    v16 += 4;
    if (v16 == 8)
    {
      goto LABEL_23;
    }
  }

  if ((v17 & v18) == 0)
  {
    v14 = v15;
  }

LABEL_23:
  v19 = sub_5544(37);
  v20 = 0;
  *buf = 0x100000002;
  v21 = *(v14 + 8);
  while (1)
  {
    v22 = *&buf[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_29;
    }
  }

  if ((v21 & v22) == 0)
  {
    v14 = v19;
  }

LABEL_29:
  v23 = *v14;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = (*(*a1 + 120))(a1);
    *buf = 136315906;
    *&buf[4] = "Device_USB_iAP_Aspen.cpp";
    v42 = 1024;
    v43 = 343;
    v44 = 1024;
    v45 = v24;
    v46 = 2048;
    v47 = outData;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB HAL device %u reports a sample rate of %f.", buf, 0x22u);
  }

  v25 = sub_5544(18);
  v26 = sub_5544(38);
  v27 = 0;
  *buf = 0x100000002;
  v28 = *(v25 + 8);
  while (1)
  {
    v29 = *&buf[v27];
    if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
    {
      break;
    }

    v27 += 4;
    if (v27 == 8)
    {
      goto LABEL_38;
    }
  }

  if ((v28 & v29) == 0)
  {
    v25 = v26;
  }

LABEL_38:
  v30 = sub_5544(37);
  v31 = 0;
  *buf = 0x100000002;
  v32 = *(v25 + 8);
  while (1)
  {
    v33 = *&buf[v31];
    if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
    {
      break;
    }

    v31 += 4;
    if (v31 == 8)
    {
      goto LABEL_44;
    }
  }

  if ((v32 & v33) == 0)
  {
    v25 = v30;
  }

LABEL_44:
  v34 = *v25;
  if (v34)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_iAP_Aspen.cpp";
      v42 = 1024;
      v43 = 345;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Exited Device_USB_iAP_Aspen::GetSampleRate().", buf, 0x12u);
    }
  }
}

unsigned __int8 *sub_32E370(uint64_t a1)
{
  v2 = sub_3419E4();
  sub_341E40(v2, sub_32D23C);
  v3 = sub_3419E4();
  sub_342570(v3, 1684500341, sub_32E3DC);

  return sub_4B08A4(a1);
}

uint64_t sub_32E3DC(uint64_t result, uint64_t a2)
{
  if (result == 1684500341)
  {
    if (!a2)
    {
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v5 = 136315394;
          v6 = "Device_USB_iAP_Aspen.cpp";
          v7 = 1024;
          v8 = 488;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", &v5, 0x12u);
        }
      }
    }

    result = sub_6FE08(a2 + 536, &qword_6EAA68);
    if (result)
    {
      return sub_6FF5C(a2 + 536, &qword_6EAA68);
    }
  }

  return result;
}

BOOL sub_32E4D8(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (*&a2->mSelector == qword_6EAA48 && a2->mElement == dword_6EAA50 || *&a2->mSelector == qword_6EAA58 && a2->mElement == dword_6EAA60 || *&a2->mSelector == qword_6EAA68 && a2->mElement == dword_6EAA70)
  {
    v11 = v4;
    v12 = v5;
    v10 = *a2;
    v7 = *a2;
    v8 = a3;
    v9 = a4;
    sub_185D3C((a1 + 536), &v10.mSelector, &v7.mSelector);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_32E5E8(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (*&a2->mSelector == qword_6EAA48 && a2->mElement == dword_6EAA50 || *&a2->mSelector == qword_6EAA58 && a2->mElement == dword_6EAA60 || *&a2->mSelector == qword_6EAA68 && a2->mElement == dword_6EAA70)
  {
    v11 = v4;
    v12 = v5;
    v10 = *a2;
    v7 = *a2;
    v8 = a3;
    v9 = a4;
    sub_17C118((a1 + 536), &v10.mSelector, &v7.mSelector);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_32E6F8(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v32 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v32);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v32 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v32);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v32 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v32);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      v32 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v32);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = &off_6DDDD0;
    v28[2] = 1852797029;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1853059699)
  {
    if (mSelector != 1836414053)
    {
      if (mSelector == 1853059619)
      {
        v29 = sub_5544(14);
        v30 = *v29;
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "Device_USB_iAP_Aspen.cpp";
          v37 = 1024;
          v38 = 241;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): kAudioDevicePropertyAvailableNominalSampleRates cannot be set (kAudioHardwareUnsupportedOperationError).", buf, 0x12u);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        *v31 = &off_6DDDD0;
        v31[2] = 1970171760;
      }

LABEL_25:

      sub_FDAC4(a1, a2, a3, a4, a5, a6);
      return;
    }

    v16 = sub_3419E4();
    v17 = *a6 != 0;

    sub_34332C(v16, v17);
  }

  else
  {
    if (mSelector != 1853059700)
    {
      if (mSelector == 1987013732)
      {
        v13 = sub_3419E4();
        if (sub_3428D4(v13))
        {
          v14 = (*a6 + 100.0) / 100.0;
          v15 = sub_3419E4();
          sub_342CD8(v15, v14);
          if (sub_6FE08(a1 + 536, &qword_6EAA48))
          {
            sub_6FF5C(a1 + 536, &qword_6EAA48);
          }

          if (sub_6FE08(a1 + 536, &qword_6EAA58))
          {

            sub_6FF5C(a1 + 536, &qword_6EAA58);
          }
        }

        return;
      }

      goto LABEL_25;
    }

    if (a5 != 8)
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "StandardUtilities.h";
          v37 = 1024;
          v38 = 155;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) == inDataSize", buf, 0x12u);
        }
      }
    }

    v18 = *a6;

    sub_32C584(a1, 0, v18);
  }
}

void sub_32EF70(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v31 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(theArray, &v31);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v31 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(theArray, &v31);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 561211770;
  }

  if (!a6)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(theArray, &v31);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1986229103)
  {
    if (mSelector != 1986229104)
    {
      if (mSelector == 1986290211)
      {
        *a6 = xmmword_517240;
        return;
      }

      if (mSelector == 1987013732)
      {
        v14 = sub_3419E4();
        *a6 = (sub_342A00(v14) * 100.0) + -100.0;
        return;
      }

LABEL_18:

      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      return;
    }

    v17 = sub_3419E4();
    v16 = sub_3428D4(v17);
LABEL_17:
    *a6 = v16;
    return;
  }

  if (mSelector == 1836414053)
  {
    v15 = sub_3419E4();
    v16 = sub_343174(v15);
    goto LABEL_17;
  }

  if (mSelector != 1853059619)
  {
    if (mSelector == 1853059700)
    {
      (*(*a1 + 104))(a1);

      sub_2161C0(a5, a6, v13);
      return;
    }

    goto LABEL_18;
  }

  sub_343744(theArray);
  if (theArray[0] && (Count = CFArrayGetCount(theArray[0]), v19 = Count, Count))
  {
    if (((16 * Count) & 0xFFFFFFFF0uLL) > *a5)
    {
      *a5 = 0;
      v28 = sub_5544(14);
      v29 = *v28;
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "Device_USB_iAP_Aspen.cpp";
        v36 = 1024;
        v37 = 549;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): ioDataSize is insufficient (kAudioHardwareBadPropertySizeError).", buf, 0x12u);
      }

      v30 = __cxa_allocate_exception(0x10uLL);
      *v30 = &off_6DDDD0;
      v30[2] = 561211770;
    }

    v20 = 0;
    *a5 = 16 * Count;
    do
    {
      *buf = 0;
      sub_2E4528(theArray, v20, buf);
      LODWORD(v21) = *buf;
      *&a6[4 * v20++] = vdupq_lane_s64(COERCE__INT64(v21), 0);
    }

    while (v19 != v20);
  }

  else
  {
    *a5 = 0;
  }

  sub_A0804(theArray);
}

void sub_32F62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A0804(va);
  _Unwind_Resume(a1);
}

uint64_t sub_32F650(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = &off_6DDDD0;
    v14[2] = 561211770;
  }

  mSelector = a2->mSelector;
  v9 = 4;
  if (a2->mSelector > 1986229103)
  {
    if (mSelector == 1986229104 || mSelector == 1987013732)
    {
      return v9;
    }

    if (mSelector == 1986290211)
    {
      return 16;
    }
  }

  else
  {
    switch(mSelector)
    {
      case 0x6D757465u:
        return v9;
      case 0x6E737223u:
        sub_343744(theArray);
        if (*theArray)
        {
          v9 = 16 * CFArrayGetCount(*theArray);
        }

        else
        {
          v9 = 0;
        }

        sub_A0804(theArray);
        return v9;
      case 0x6E737274u:
        return 8;
    }
  }

  return sub_5BD20(a1, a2, a3, a4);
}

void sub_32FA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_A0804(va);
  _Unwind_Resume(a1);
}

BOOL sub_32FA44(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  v3 = 1;
  if (a2->mSelector <= 1986229103)
  {
    if (mSelector == 1836414053)
    {
      return v3;
    }

    if (mSelector != 1853059619)
    {
      if (mSelector != 1853059700)
      {
        return sub_BE734(a1, a2);
      }

      return v3;
    }

    return 0;
  }

  switch(mSelector)
  {
    case 0x76637370u:
      return 0;
    case 0x766F6C64u:
      return v3;
    case 0x76646223u:
      return 0;
  }

  return sub_BE734(a1, a2);
}

BOOL sub_32FAD0(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  result = 1;
  if (a2->mSelector > 1986229103)
  {
    v6 = mSelector == 1986229104 || mSelector == 1986290211;
    v7 = 1987013732;
  }

  else
  {
    v6 = mSelector == 1836414053 || mSelector == 1853059619;
    v7 = 1853059700;
  }

  if (!v6 && mSelector != v7)
  {
    sub_4DFC0(a1);
    return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
  }

  return result;
}

void sub_32FB78(void *a1)
{
  *a1 = off_6C1FD8;
  sub_13A300((a1 + 67));
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_32FBE4(void *a1)
{
  *a1 = off_6C1FD8;
  sub_13A300((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_32FC3C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6C1FD8;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 856) = 0u;
  *(v4 + 872) = 0;
  sub_165D0C(v4 + 536);
  v5 = sub_3419E4();
  sub_342180(v5, 1684500341, sub_32E3DC, a1);
  return a1;
}

uint64_t sub_32FD18(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886155119 && a2 != 1886155113)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_LDCM_Aspen.cpp";
      v15 = 1024;
      v16 = 111;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_LDCM_Aspen.cpp";
        v15 = 1024;
        v16 = 112;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_32FEF8(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if (qword_6E8528 != -1)
  {
    dispatch_once(&qword_6E8528, &stru_6BD0C8);
  }

  LOBYTE(v2) = byte_6E8520;
  sub_2BBB5C(__dst, &v2);
}

void sub_330300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_3303B0(uint64_t *a1, AudioObjectID a2, double a3)
{
  v12 = a2;
  inAddress.mSelector = 1936941859;
  *&inAddress.mScope = a3;
  sub_127F10(&v7, &v12, &inAddress, 0, 0);
  v4 = v7;
  if (v7 || (v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = v8;
  sub_46980(a1, v8, v9, (v9 - v8) >> 2);
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_330488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_3304AC(AudioObjectID a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v82.__cv_.__sig = *a2;
    *v82.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v83, &v82);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v83.__m_.__opaque, 0, sizeof(v83.__m_.__opaque));
    v83.__m_.__sig = 850045863;
    memset(v82.__cv_.__opaque, 0, sizeof(v82.__cv_.__opaque));
    v82.__cv_.__sig = 1018212795;
    v74 = 0;
    sub_745E8(v73, a1, a2, &v82, &v83, &v74);
    v69 = *a2;
    v7 = *(a2 + 8);
    v68 = a1;
    v70 = v7;
    v71 = 0;
    v72 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        LODWORD(v51) = *(a2 + 8);
        sub_22CE0(&v65, &__p);
      }

LABEL_106:
      sub_73C20(v73);
      std::condition_variable::~condition_variable(&v82);
      std::mutex::~mutex(&v83);
      return;
    }

    sub_331310(&v65, &v68);
    if (v67)
    {
      goto LABEL_8;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    sub_46980(&v62, v65, v66, (v66 - v65) >> 2);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_46980(&v59, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
    v15 = v62;
    v16 = v59;
    if (v63 - v62 == v60 - v59)
    {
      v17 = memcmp(v62, v59, v63 - v62) == 0;
      if (!v16)
      {
LABEL_28:
        if (v15)
        {
          v63 = v15;
          operator delete(v15);
          if (v17)
          {
LABEL_32:
            v18 = sub_5544(14);
            if (*(v18 + 8))
            {
              v12 = *v18;
              if (!*v18)
              {
                goto LABEL_37;
              }

              if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
              {
                buf.mSelector = 136315650;
                *&buf.mScope = "HALPropertySynchronizer.h";
                v76 = 1024;
                v77 = 294;
                v78 = 1024;
                LODWORD(v79) = a1;
                _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
              }
            }

LABEL_36:
            LOBYTE(v12) = 0;
LABEL_37:
            if (v65)
            {
              operator delete(v65);
            }

            if (v12)
            {
              sub_331310(&v65, &v68);
              if (v67)
              {
LABEL_41:
                v39 = 2000;
                while (1)
                {
                  sub_331310(&__p, &v68);
                  v19 = __p;
                  if (v52)
                  {
                    goto LABEL_43;
                  }

                  v47 = 0;
                  v48 = 0;
                  v49 = 0;
                  sub_46980(&v47, __p, v51, (v51 - __p) >> 2);
                  v44 = 0;
                  v45 = 0;
                  v46 = 0;
                  sub_46980(&v44, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
                  v21 = v47;
                  v22 = v44;
                  if (v48 - v47 == v45 - v44)
                  {
                    break;
                  }

                  v23 = 0;
                  if (v44)
                  {
                    goto LABEL_49;
                  }

LABEL_50:
                  if (v21)
                  {
                    v48 = v21;
                    operator delete(v21);
                  }

                  if (v23)
                  {
                    v20 = 16;
                    if (!v19)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_54;
                  }

                  if (v39 <= 0)
                  {
                    v32 = sub_5544(14);
                    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
                    {
                      v40 = *a2;
                      v41 = *(a2 + 8);
                      sub_22CE0(&v42, &v40);
                    }

LABEL_43:
                    v20 = 1;
                    if (!v19)
                    {
                      goto LABEL_55;
                    }

LABEL_54:
                    operator delete(v19);
                    goto LABEL_55;
                  }

                  v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                  v25 = sub_5544(14);
                  if (*(v25 + 8))
                  {
                    v26 = *v25;
                    if (*v25)
                    {
                      if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
                      {
                        buf.mSelector = 136315906;
                        *&buf.mScope = "HALPropertySynchronizer.h";
                        v76 = 1024;
                        v77 = 354;
                        v78 = 2080;
                        v79 = "with timeout";
                        v80 = 1024;
                        v81 = a1;
                        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
                      }
                    }
                  }

                  sub_27A4();
                  LOBYTE(v42) = sub_2E6B08();
                  *&buf.mSelector = &v83;
                  LOBYTE(buf.mElement) = 1;
                  std::mutex::lock(&v83);
                  v27.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                  while ((v74 & 1) == 0 && v27.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
                  {
                    v28.__d_.__rep_ = v27.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                    if (v28.__d_.__rep_ >= 1)
                    {
                      std::chrono::steady_clock::now();
                      v29.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                      if (v29.__d_.__rep_)
                      {
                        if (v29.__d_.__rep_ < 1)
                        {
                          if (v29.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                          {
                            goto LABEL_73;
                          }

                          v30 = 0x8000000000000000;
                        }

                        else
                        {
                          if (v29.__d_.__rep_ > 0x20C49BA5E353F7)
                          {
                            v30 = 0x7FFFFFFFFFFFFFFFLL;
                            goto LABEL_74;
                          }

LABEL_73:
                          v30 = 1000 * v29.__d_.__rep_;
LABEL_74:
                          if (v30 > (v28.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                          {
                            v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_77:
                            std::condition_variable::__do_timed_wait(&v82, &buf, v31);
                            std::chrono::steady_clock::now();
                            goto LABEL_78;
                          }
                        }
                      }

                      else
                      {
                        v30 = 0;
                      }

                      v31.__d_.__rep_ = v30 + v28.__d_.__rep_;
                      goto LABEL_77;
                    }

LABEL_78:
                    if (std::chrono::steady_clock::now().__d_.__rep_ >= v27.__d_.__rep_)
                    {
                      break;
                    }
                  }

                  if (LOBYTE(buf.mElement) == 1)
                  {
                    std::mutex::unlock(*&buf.mSelector);
                  }

                  sub_1DB4C4(&v42);
                  v20 = 0;
                  v39 += (std::chrono::system_clock::now().__d_.__rep_ - v24.__d_.__rep_) / -1000;
                  if (v19)
                  {
                    goto LABEL_54;
                  }

LABEL_55:
                  if (v20)
                  {
                    if (v20 == 16)
                    {
                      v33 = sub_5544(14);
                      if ((*(v33 + 8) & 1) != 0 && *v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
                      {
                        v42 = *a2;
                        v43 = *(a2 + 8);
                        sub_22CE0(&__p, &v42);
                      }
                    }

                    goto LABEL_104;
                  }
                }

                v23 = memcmp(v47, v44, v48 - v47) == 0;
                if (!v22)
                {
                  goto LABEL_50;
                }

LABEL_49:
                v45 = v22;
                operator delete(v22);
                goto LABEL_50;
              }

              v56 = 0;
              v57 = 0;
              v58 = 0;
              sub_46980(&v56, v65, v66, (v66 - v65) >> 2);
              v53 = 0;
              v54 = 0;
              v55 = 0;
              sub_46980(&v53, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
              v34 = v56;
              v35 = v53;
              v36 = v57 - v56 == v54 - v53 && memcmp(v56, v53, v57 - v56) == 0;
              if (v35)
              {
                v54 = v35;
                operator delete(v35);
              }

              if (v34)
              {
                v57 = v34;
                operator delete(v34);
                if (!v36)
                {
                  goto LABEL_41;
                }
              }

              else if (!v36)
              {
                goto LABEL_41;
              }

              v37 = sub_5544(14);
              if (*(v37 + 8))
              {
                v38 = *v37;
                if (*v37)
                {
                  if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEBUG))
                  {
                    buf.mSelector = 136315650;
                    *&buf.mScope = "HALPropertySynchronizer.h";
                    v76 = 1024;
                    v77 = 322;
                    v78 = 1024;
                    LODWORD(v79) = a1;
                    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
                  }
                }
              }

LABEL_104:
              if (v65)
              {
                operator delete(v65);
              }
            }

            goto LABEL_106;
          }
        }

        else if (v17)
        {
          goto LABEL_32;
        }

LABEL_8:
        v8 = sub_5544(14);
        if ((*(v8 + 8) & 1) != 0 && *v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v56 = *a2;
          LODWORD(v57) = *(a2 + 8);
          sub_22CE0(&__p, &v56);
        }

        buf = *a2;
        v9 = sub_1F79B8(a1, &buf, *a3, *(a3 + 8));
        if (!v9)
        {
          LOBYTE(v12) = 1;
          goto LABEL_37;
        }

        v10 = v9;
        v11 = sub_5544(14);
        v12 = *v11;
        if (!*v11)
        {
          goto LABEL_37;
        }

        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, v10);
          v53 = *a2;
          LODWORD(v54) = *(a2 + 8);
          sub_22CE0(&v56, &v53);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v17 = 0;
      if (!v59)
      {
        goto LABEL_28;
      }
    }

    v60 = v16;
    operator delete(v16);
    goto LABEL_28;
  }

  v13 = sub_5544(14);
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    v82.__cv_.__sig = *a2;
    *v82.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v83, &v82);
  }
}

void sub_3311E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unsigned int a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a61);
  std::condition_variable::~condition_variable((v61 - 216));
  std::mutex::~mutex((v61 - 168));
  _Unwind_Resume(a1);
}

void sub_331310(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p, &v9);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_331510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_331550(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_33158C(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = sub_331660(a1, a2, 1, a3);
  if (v3)
  {
    v4 = sub_5544(23);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "Stream_USB_iAP_Aspen.cpp";
        v9 = 1024;
        v10 = 159;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v7, 0x12u);
      }
    }
  }

  return v3;
}

uint64_t sub_331660(uint64_t a1, double *a2, int a3, AudioObjectPropertySelector a4)
{
  v8 = *a2;
  v9 = sub_5544(11);
  if (*(v9 + 8))
  {
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v30 = "IAPManager.cpp";
        v31 = 1024;
        v32 = 398;
        v33 = 1024;
        v34 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d +- IAPManager::GetNearestSampleRateForUSB(inSampleRate: %u)", buf, 0x18u);
      }
    }
  }

  v11 = IAPDigitalAudioSupportedSampleRate();
  v12 = sub_5544(11);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "IAPManager.cpp";
    v31 = 1024;
    v32 = 401;
    v33 = 1024;
    v34 = v8;
    v35 = 1024;
    LODWORD(v36) = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d IAPDigitalAudioSupportedSampleRate(%u) returned %u.", buf, 0x1Eu);
  }

  if (v11 != v8)
  {
    v15 = 560226676;
    v16 = sub_5544(23);
    v17 = *v16;
    if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      return v15;
    }

    *buf = 136315906;
    v30 = "Stream_USB_iAP_Aspen.cpp";
    v31 = 1024;
    v32 = 208;
    v33 = 1024;
    v34 = v8;
    v35 = 1024;
    LODWORD(v36) = v11;
    v18 = "%25s:%-5d Format's sample rate %u Hz is not a supported iAP digital audio rate (nearest is %u Hz)";
    v19 = v17;
    v20 = 30;
LABEL_18:
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    return v15;
  }

  if (!sub_3435DC(v8))
  {
    v15 = 2003329396;
    v21 = sub_5544(23);
    v22 = *v21;
    if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      return v15;
    }

    *buf = 136315394;
    v30 = "Stream_USB_iAP_Aspen.cpp";
    v31 = 1024;
    v32 = 202;
    v18 = "%25s:%-5d Error setting the iAP digital audio sample rate";
    v19 = v22;
    v20 = 18;
    goto LABEL_18;
  }

  if (a3)
  {
    v14 = sub_2ACD60(a1, a2, a4);
  }

  else
  {
    v14 = sub_2ADE94(a1, a2, a4);
  }

  v15 = v14;
  if (v14)
  {
    v23 = sub_5544(23);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v15);
        if (v28 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136315906;
        v30 = "Stream_USB_iAP_Aspen.cpp";
        v31 = 1024;
        v32 = 198;
        v33 = 1024;
        v34 = v15;
        v35 = 2080;
        v36 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') setting the HAL stream format", buf, 0x22u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v15;
}

uint64_t sub_3319CC(uint64_t a1, double *a2)
{
  v2 = sub_331660(a1, a2, 1, 0x73666D74u);
  if (v2)
  {
    v3 = sub_5544(23);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "Stream_USB_iAP_Aspen.cpp";
        v8 = 1024;
        v9 = 170;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v6, 0x12u);
      }
    }
  }

  return v2;
}

uint64_t sub_331AA4(uint64_t a1, double *a2, AudioObjectPropertySelector a3)
{
  v3 = sub_331660(a1, a2, 0, a3);
  if (v3)
  {
    v4 = sub_5544(23);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "Stream_USB_iAP_Aspen.cpp";
        v9 = 1024;
        v10 = 148;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v7, 0x12u);
      }
    }
  }

  return v3;
}

uint64_t sub_331B78(uint64_t a1, double *a2)
{
  v2 = sub_331660(a1, a2, 0, 0x73666D74u);
  if (v2)
  {
    v3 = sub_5544(23);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "Stream_USB_iAP_Aspen.cpp";
        v8 = 1024;
        v9 = 137;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting the USB format", &v6, 0x12u);
      }
    }
  }

  return v2;
}

uint64_t sub_331C50(uint64_t a1, uint64_t a2, AudioObjectPropertySelector a3)
{
  if (*a2 != *(a2 + 8))
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "Stream_USB_iAP_Aspen.cpp";
      v51 = 1024;
      v52 = 81;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): specified StreamFormatList is not empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "specified StreamFormatList is not empty");
  }

  sub_343744(theArray);
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    if (!Count)
    {
      v14 = sub_5544(23);
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v50 = "Stream_USB_iAP_Aspen.cpp";
          v51 = 1024;
          v52 = 91;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IAPDigitalAudioCopySupportSampleRates() returned a CFArrayRef with a count of 0", buf, 0x12u);
        }
      }
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = sub_D5304(a1, &v45, a3);
    if (v7)
    {
      v8 = sub_5544(23);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v7);
        v10 = v44 >= 0 ? __p : __p[0];
        v11 = *(a1 + 80);
        *buf = 136316162;
        v50 = "Stream_USB_iAP_Aspen.cpp";
        v51 = 1024;
        v52 = 96;
        v53 = 1024;
        v54 = v7;
        v55 = 2080;
        v56 = v10;
        v57 = 1024;
        v58 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') getting the HAL stream formats for stream %u", buf, 0x28u);
        if (v44 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        LODWORD(__p[0]) = 0;
        if (sub_2E4528(theArray, i, __p))
        {
          v17 = sub_5544(23);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v50 = "Stream_USB_iAP_Aspen.cpp";
            v51 = 1024;
            v52 = 107;
            v53 = 1024;
            v54 = __p[0];
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to resolve iAP digital audio sample rate %u Hz to a HAL stream format", buf, 0x18u);
          }

          v19 = v45;
          if (v46 != v45)
          {
            while (LODWORD(__p[0]) < v19[5] || LODWORD(__p[0]) > v19[6])
            {
              v19 += 7;
              if (v19 == v46)
              {
                goto LABEL_46;
              }
            }
          }

          if (v46 != v19)
          {
            v22 = *(a2 + 8);
            v23 = *(a2 + 16);
            if (v22 >= v23)
            {
              v28 = 0x6DB6DB6DB6DB6DB7 * ((v22 - *a2) >> 3);
              v29 = v28 + 1;
              if ((v28 + 1) > 0x492492492492492)
              {
                sub_189A00();
              }

              v30 = 0x6DB6DB6DB6DB6DB7 * ((v23 - *a2) >> 3);
              if (2 * v30 > v29)
              {
                v29 = 2 * v30;
              }

              if (v30 >= 0x249249249249249)
              {
                v31 = 0x492492492492492;
              }

              else
              {
                v31 = v29;
              }

              if (v31)
              {
                sub_2AE238(v31);
              }

              v32 = 56 * v28;
              v33 = *v19;
              v34 = *(v19 + 1);
              v35 = *(v19 + 2);
              *(v32 + 48) = v19[6];
              *(v32 + 16) = v34;
              *(v32 + 32) = v35;
              *v32 = v33;
              v27 = 56 * v28 + 56;
              v36 = *(a2 + 8) - *a2;
              v37 = v32 - v36;
              memcpy((v32 - v36), *a2, v36);
              v38 = *a2;
              *a2 = v37;
              *(a2 + 8) = v27;
              *(a2 + 16) = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              v24 = *v19;
              v25 = *(v19 + 1);
              v26 = *(v19 + 2);
              *(v22 + 48) = v19[6];
              *(v22 + 16) = v25;
              *(v22 + 32) = v26;
              *v22 = v24;
              v27 = v22 + 56;
            }

            *(a2 + 8) = v27;
          }
        }

        else
        {
          v20 = sub_5544(23);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v50 = "Stream_USB_iAP_Aspen.cpp";
            v51 = 1024;
            v52 = 117;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not convert to a UInt32 array value from the CFArrayRef returned by IAPDigitalAudioCopySupportSampleRates()", buf, 0x12u);
          }
        }

LABEL_46:
        ;
      }
    }

    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    v12 = sub_5544(23);
    v7 = 2003329396;
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "Stream_USB_iAP_Aspen.cpp";
      v51 = 1024;
      v52 = 124;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d IAPDigitalAudioCopySupportSampleRates() returned a NULL CFArrayRef", buf, 0x12u);
    }
  }

  sub_A0804(theArray);
  return v7;
}

void sub_3321F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_A0804(va);
  _Unwind_Resume(a1);
}

void sub_332280(void *a1)
{
  *a1 = off_6BF930;
  sub_13BFA8(a1);

  operator delete();
}

unsigned __int8 *sub_3322F4(_WORD *a1)
{
  v28[0] = 0;
  v29 = 0;
  atomic_fetch_add((sub_809C0() + 656), 1u);
  v30 = 0x706D776970687077;
  v32 = 0;
  v31 = 0uLL;
  sub_4625C(&v31, &v30, &v31, 2uLL);
  *v11 = v31;
  v12 = v32;
  v32 = 0;
  v31 = 0uLL;
  strcpy(v13, "cwdv");
  v14 = 0;
  v15 = 3;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v19 = 44739242;
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_161C7C(&v23, a1, v11);
  sub_B0484(&cf, &v23);
  for (i = v26; i != &cf; i = *(i + 8))
  {
    (*(**(i + 16) + 512))(*(i + 16), 0, 0, 0);
    v3 = sub_809C0();
    v4 = *(i + 24);
    v10[0] = *(i + 16);
    v10[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_257CE8(v3, v10, 0x1726F6C75);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  sub_87980(&cf);
  sub_65310(&v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v17);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  *&v31 = 0x7075736F70687077;
  v24 = 0;
  v23 = 0uLL;
  sub_4625C(&v23, &v31, &v31 + 2, 2uLL);
  *v11 = v23;
  v12 = v24;
  strcpy(v13, "cwdv");
  v14 = 0;
  v15 = 3;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v19 = 44739242;
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_161C7C(&cf, a1, v11);
  v5 = v27;
  sub_65310(&cf);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v17);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v5)
  {
    sub_1F82A0();
    (*(*a1 + 128))(v11, a1);
    if (v12 >= 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = v11[0];
    }

    if (v6)
    {
      if (v12 >= 0)
      {
        v7 = HIBYTE(v12);
      }

      else
      {
        v7 = v11[1];
      }

      cf = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      cf = 0;
    }

    (*(qword_6E6648 + 64))(&qword_6E6648, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  sub_4B08E8(a1);
  a1[266] = 0;
  return sub_240CCC(v28);
}

void sub_3326C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32)
{
  sub_1DB0E0(&a32);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_240CCC((v32 - 136));
  _Unwind_Resume(a1);
}

void sub_332784(uint64_t a1, int **a2, char a3)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) >= 5)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "Device_USB_Aspen.cpp";
      v39 = 1024;
      v40 = 1373;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v3 != v4)
  {
    v7 = *v3;
    v36 = *v3;
    v8 = sub_5544(18);
    if (*(v8 + 8))
    {
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v38 = "Device_USB_Aspen.cpp";
          v39 = 1024;
          v40 = 1380;
          v41 = 1024;
          LODWORD(v42) = v7;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to activate sub-port with ID %u", buf, 0x18u);
        }
      }
    }

    sub_4B4674(v33, a1);
    sub_76388(&v34, v33);
    v10 = v35;
    if (v35 == &v34)
    {
      sub_87980(&v34);
      sub_65310(v33);
      goto LABEL_51;
    }

    v11 = 0;
    while (1)
    {
      (*(*v10[2] + 168))(&v31);
      v12 = v31;
      v13 = v31;
      if (v31 != v32)
      {
        v13 = v31;
        while (*v13 != v36)
        {
          if (++v13 == v32)
          {
            goto LABEL_22;
          }
        }
      }

      if (v13 == v32)
      {
LABEL_22:
        v17 = 1;
        if (!v31)
        {
          goto LABEL_24;
        }

LABEL_23:
        v32 = v12;
        operator delete(v12);
        goto LABEL_24;
      }

      v14 = *(v10[2] + 144);
      if (v14 > 1886740851)
      {
        if (v14 != 1886740852 && v14 != 1886745449)
        {
LABEL_20:
          if (a3)
          {
            goto LABEL_38;
          }

          v16 = 1869968496;
          goto LABEL_34;
        }
      }

      else if (v14 != 1885894516 && v14 != 1886222185)
      {
        goto LABEL_20;
      }

      if ((a3 & 1) == 0)
      {
LABEL_38:
        v19 = sub_5544(14);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          sub_23148(__p, (v10[2] + 8));
          v21 = v30 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v38 = "Device_USB_Aspen.cpp";
          v39 = 1024;
          v40 = 1398;
          v41 = 2080;
          v42 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Scope of Port (%s) does not match scope of input parameter", buf, 0x1Cu);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v22 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v22, "Scope of Port (%s) does not match scope of input parameter");
      }

      v16 = 1768845428;
LABEL_34:
      *buf = 1936945763;
      v38 = v16;
      (*(*a1 + 48))(a1, buf, 0, 0, 4, &v36);
      v17 = 0;
      v11 = 1;
      v12 = v31;
      if (v31)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v17)
      {
        v10 = v10[1];
        if (v10 != &v34)
        {
          continue;
        }
      }

      sub_87980(&v34);
      sub_65310(v33);
      if (v11)
      {
        return;
      }

LABEL_51:
      v26 = sub_5544(14);
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v38 = "Device_USB_Aspen.cpp";
          v39 = 1024;
          v40 = 1408;
          v41 = 1024;
          LODWORD(v42) = v36;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not locate sub-port with ID: %u in order to activate it.", buf, 0x18u);
        }
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v28, "Could not locate sub-port with ID: %u in order to activate it.");
    }
  }
}

void sub_332C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_87980(&a19);
  sub_65310(&a16);
  _Unwind_Resume(a1);
}

void sub_332D0C(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  strcpy(v28, "cwdv");
  v28[8] = 0;
  v29 = 3;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v32 = 44739210;
  sub_161C7C(v24, a1, &v25);
  if (v24[2])
  {
    v2 = sub_5544(18);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 894;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down current output ref port", buf, 0x12u);
    }

    sub_B0484(buf, v24);
    v4 = *&buf[8];
    if (*&buf[8] != buf)
    {
      while (1)
      {
        v5 = *(v4 + 16);
        v6 = v5[36];
        if (v6 == 1886745449)
        {
          goto LABEL_12;
        }

        if (v6 == 1886222185)
        {
          break;
        }

LABEL_16:
        v11 = *(v4 + 24);
        v23[0] = v5;
        v23[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_4B0AE8(a1, v23);
        if (v11)
        {
          sub_1A8C0(v11);
        }

        v4 = *(v4 + 8);
        if (v4 == buf)
        {
          goto LABEL_21;
        }
      }

      (*(*v5 + 512))(v5, 0, 0, 0);
      v7 = sub_809C0();
      v8 = *(v4 + 24);
      *v36 = *(v4 + 16);
      *&v36[8] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v7, v36, 0x1726F6C75);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

LABEL_12:
      v9 = sub_5544(18);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        *v36 = 136315394;
        *&v36[4] = "Device_USB_Aspen.cpp";
        *&v36[12] = 1024;
        *&v36[14] = 910;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down current input port of output device", v36, 0x12u);
      }

      *(a1 + 533) = 0;
      v5 = *(v4 + 16);
      goto LABEL_16;
    }

LABEL_21:
    sub_87980(buf);
  }

  v12 = sub_333248(a1);
  if (v12)
  {
    sub_161C7C(buf, v12, &v25);
    if (*&buf[16])
    {
      v13 = *&buf[8];
      v14 = *(*&buf[8] + 24);
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = *(v13 + 16);
          if (v17)
          {
            v18 = v17[36];
            if (v18 == 1886745449)
            {
              goto LABEL_30;
            }

            if (v18 == 1886222185)
            {
              (*(*v17 + 512))(v17, 0, 0, 0);
              v19 = sub_809C0();
              *v36 = v17;
              *&v36[8] = v16;
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_257CE8(v19, v36, 0x1726F6C75);
              std::__shared_weak_count::__release_weak(v16);
LABEL_30:
              v20 = sub_5544(18);
              v21 = *v20;
              if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
              {
                *v36 = 136315394;
                *&v36[4] = "Device_USB_Aspen.cpp";
                *&v36[12] = 1024;
                *&v36[14] = 937;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down input port", v36, 0x12u);
              }

              v22[0] = v17;
              v22[1] = v16;
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_4B0AE8(v12, v22);
              sub_1A8C0(v16);
              v12[533] = 0;
              sub_3334F8(v12);
            }
          }

          sub_1A8C0(v16);
        }
      }
    }
  }

  else
  {
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
  }

  sub_65310(buf);
  sub_65310(v24);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v31[0]);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_3331A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__shared_weak_count::__release_weak(v17);
  sub_1A8C0(v17);
  sub_65310((v18 - 128));
  sub_65310(&a15);
  sub_46934(va);
  _Unwind_Resume(a1);
}

uint64_t sub_333248(uint64_t a1)
{
  v1 = a1;
  strcpy(v13, "DIclbolg");
  BYTE1(v13[1]) = 0;
  WORD1(v13[1]) = 0;
  sub_339DEC(&v18, a1);
  LOBYTE(v14) = 0;
  v15 = 0;
  v2 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_31;
  }

  v3 = cf;
  v14 = cf;
  v15 = 1;
  if (cf)
  {
    CFRetain(cf);
  }

  v13[3] = v3;
  sub_CE168();
  sub_2E2774(v13);
  v4 = v13[1];
  if (v3)
  {
    CFRetain(v3);
  }

  if (v4 != v13)
  {
    while (1)
    {
      v5 = v4[3];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v4[2];
          if (v8)
          {
            if (v8 != v1)
            {
              v9 = (*(*v8 + 120))(v8);
              inAddress.mElement = 0;
              v17 = v9;
              *&inAddress.mSelector = 0x676C6F626C634944;
              sub_33A098(&v18, &v17, &inAddress, 0, 0);
              if (v20 == 1)
              {
                v10 = cf;
                if (!v3)
                {
                  if (!cf)
                  {
                    sub_1A8C0(v7);
                    goto LABEL_23;
                  }

                  v11 = 0;
                  goto LABEL_20;
                }

                if (cf)
                {
                  v11 = CFNumberCompare(v3, cf, 0) == kCFCompareEqualTo;
LABEL_20:
                  CFRelease(v10);
                  sub_1A8C0(v7);
                  if (v11)
                  {
                    break;
                  }

                  goto LABEL_16;
                }
              }
            }
          }

          sub_1A8C0(v7);
        }
      }

LABEL_16:
      v4 = v4[1];
      if (v4 == v13)
      {
        v4 = v13;
        break;
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

LABEL_23:
  if (v4 != v13)
  {
    sub_5659C(&v18, v4 + 2, "", 1544);
    v1 = v18;
    if (cf)
    {
      sub_1A8C0(cf);
    }
  }

  sub_65310(v13);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4 == v13)
  {
LABEL_31:
    v1 = 0;
    if (!v2)
    {
      return v1;
    }
  }

  else if (!v2)
  {
    return v1;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v1;
}

void sub_3334A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  sub_65310(va);
  sub_21794C(va1);
  sub_339B0C(va2);
  _Unwind_Resume(a1);
}

void sub_3334F8(unsigned __int8 *a1)
{
  if (!_os_feature_enabled_impl() || (strcpy(buf, "ndihbolg"), buf[9] = 0, *&buf[10] = 0, v2 = sub_59410(a1, buf, 0, 0), *(&v5 + 1) = v3, *&v5 = v2, v4 = v5 >> 32, (v4 & 0x100000000) == 0) || !v4)
  {
    if (a1[532] != 1 || (a1[533] & 1) == 0)
    {
      v44 = sub_3364F8(a1);
      v6 = (*(*a1 + 88))(a1, 1);
      v7 = (*(*a1 + 88))(a1, 0);
      v8 = sub_3364F8(a1);
      v9 = sub_5544(18);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        p_str = &__str;
        (*(*a1 + 128))(&__str, a1);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        v12 = (*(*a1 + 88))(a1, 0);
        v13 = (*(*a1 + 88))(a1, 1);
        *buf = 136316418;
        *&buf[4] = "Device_USB_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1067;
        *&buf[18] = 2080;
        *&buf[20] = p_str;
        v50 = 1024;
        v51 = v44;
        v52 = 1024;
        v53 = v12;
        v54[0] = 1024;
        *&v54[1] = v13;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device %s hasSpeakerTapStream %d num input streams %u num output streams %u", buf, 0x2Eu);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      v14 = sub_333248(a1);
      if (v14)
      {
        sub_3364F8(v14);
        if (v6)
        {
          goto LABEL_20;
        }
      }

      else if (v6)
      {
        goto LABEL_20;
      }

      if (v7 <= v8)
      {
        v15 = sub_5544(18);
        v16 = *v15;
        if (*v15)
        {
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "Device_USB_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1074;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d USB audio device has no streams", buf, 0x12u);
          }
        }
      }

LABEL_20:
      v17 = sub_5544(18);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        (*(*a1 + 128))(&__str, a1);
        v19 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        v20 = __str.__r_.__value_.__r.__words[0];
        v21 = sub_33658C(a1);
        *buf = 136315906;
        *&buf[4] = "Device_USB_Aspen.cpp";
        v22 = v19 >= 0 ? &__str : v20;
        *&buf[12] = 1024;
        *&buf[14] = 1075;
        *&buf[18] = 2080;
        *&buf[20] = v22;
        v50 = 1024;
        v51 = v21;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB device %s HasHeadsetInfo: %d", buf, 0x22u);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (sub_336780(a1) || (sub_292208(a1) & 1) != 0)
      {
        v23 = 1;
        if (!v6)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v23 = a1[535];
        if (!v6)
        {
LABEL_106:
          if (v7 > v8 && (a1[533] & 1) == 0)
          {
            v43 = (*(*a1 + 448))(a1, 0);
            sub_4B8CE4(a1, v43);
          }

          return;
        }
      }

      if ((a1[532] & 1) == 0)
      {
        v24 = (*(*a1 + 448))(a1, 1);
        v25 = (*(*a1 + 88))(a1, 1);
        v27 = v24 > 2 || v25 != 1;
        if (((v27 | v23) & 1) == 0 && *(a1 + 524) != 0xA00000001EDBLL)
        {
          (*(*a1 + 456))(&__str, a1);
          memset(&v56, 0, sizeof(v56));
          strcpy(v45, "manlbolg");
          BYTE1(v45[1]) = 0;
          WORD1(v45[1]) = 0;
          sub_3397D8(buf, a1);
          LOBYTE(cf) = 0;
          LOBYTE(v48) = 0;
          if (buf[24] == 1)
          {
            v28 = *&buf[16];
            *&buf[16] = 0;
            cf = &off_6DACD8;
            theString = v28;
            LOBYTE(v48) = 1;
            sub_8AAAC(&buf[8]);
            sub_48540(buf, theString);
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            v56 = *buf;
          }

          else
          {
            std::string::operator=(&v56, &__str);
          }

          if (v48 == 1)
          {
            sub_8AAAC(&cf);
          }

          sub_1F82A0();
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &__str;
          }

          else
          {
            v29 = __str.__r_.__value_.__r.__words[0];
          }

          if (v29)
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            *buf = CFStringCreateWithBytes(0, v29, size, 0x8000100u, 0);
            if (!*buf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }
          }

          else
          {
            *buf = 0;
          }

          v32 = (*(qword_6E6648 + 40))(&qword_6E6648, buf);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if ((v32 & 0x100) != 0 && !v32)
          {
            sub_1F82A0();
            if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v56;
            }

            else
            {
              v33 = v56.__r_.__value_.__r.__words[0];
            }

            if (v33)
            {
              if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v34 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v34 = v56.__r_.__value_.__l.__size_;
              }

              *buf = CFStringCreateWithBytes(0, v33, v34, 0x8000100u, 0);
              if (!*buf)
              {
                v35 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v35, "Could not construct");
              }
            }

            else
            {
              *buf = 0;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = &__str;
            }

            else
            {
              v36 = __str.__r_.__value_.__r.__words[0];
            }

            if (v36)
            {
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v37 = __str.__r_.__value_.__l.__size_;
              }

              cf = CFStringCreateWithBytes(0, v36, v37, 0x8000100u, 0);
              if (!cf)
              {
                v38 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v38, "Could not construct");
              }
            }

            else
            {
              cf = 0;
            }

            (*(qword_6E6648 + 48))(&qword_6E6648, buf, &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        sub_1F82A0();
        (*(*a1 + 128))(buf, a1);
        if (buf[23] >= 0)
        {
          v39 = buf;
        }

        else
        {
          v39 = *buf;
        }

        if (v39)
        {
          if (buf[23] >= 0)
          {
            v40 = buf[23];
          }

          else
          {
            v40 = *&buf[8];
          }

          __str.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, v39, v40, 0x8000100u, 0);
          if (!__str.__r_.__value_.__r.__words[0])
          {
            v41 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v41, "Could not construct");
          }
        }

        else
        {
          __str.__r_.__value_.__r.__words[0] = 0;
        }

        (*(qword_6E6648 + 64))(&qword_6E6648, &__str, 1);
        if (__str.__r_.__value_.__r.__words[0])
        {
          CFRelease(__str.__r_.__value_.__l.__data_);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v42 = (*(*a1 + 448))(a1, 1);
        sub_4B7D7C(a1, v42);
      }

      goto LABEL_106;
    }
  }
}

void sub_335E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_free_exception(v44);
  sub_452F0(v49);
  sub_1A8C0(v50);
  std::__shared_weak_count::__release_weak(v48);
  *v47 = off_6BD250;
  sub_24EBDC(v47);
  std::__shared_weak_count::~__shared_weak_count(v46);
  operator delete(v52);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  sub_1E19A0(&a38);
  _Unwind_Resume(a1);
}

BOOL sub_3364F8(uint64_t a1)
{
  v7 = 0x6F75747074617064;
  v8 = 0;
  v2 = sub_59410(a1, &v7, 0, 0);
  result = 0;
  *(&v6 + 1) = v4;
  *&v6 = v2;
  v5 = v6 >> 32;
  if ((v5 & 0x100000000) != 0)
  {
    if (v5)
    {
      return (*(*a1 + 88))(a1, 1) != 0;
    }
  }

  return result;
}

BOOL sub_33658C(uint64_t a1)
{
  sub_339EE8(&v7, a1, COERCE_DOUBLE(1735159650));
  v1 = sub_5544(18);
  v2 = *v1;
  if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_INFO))
  {
    if (v9 == 1)
    {
      sub_B1190(&__p, theDict);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v11 = "Device_USB_Aspen.cpp";
      v12 = 1024;
      v13 = 1742;
      v14 = 2080;
      v15 = p_p;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Contents of HeadsetInfo: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *buf = 136315650;
      v11 = "Device_USB_Aspen.cpp";
      v12 = 1024;
      v13 = 1742;
      v14 = 2080;
      v15 = "empty";
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Contents of HeadsetInfo: %s", buf, 0x1Cu);
    }
  }

  if (v9 != 1)
  {
    return 0;
  }

  if (theDict)
  {
    v4 = CFDictionaryGetCount(theDict) != 0;
    if ((v9 & 1) == 0)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_8AAAC(&v7);
  return v4;
}

void sub_33674C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_8AAAC(&a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_336780(uint64_t a1)
{
  v1 = (a1 + 524);
  if (*(a1 + 524) == 0x110A000005ACLL)
  {
    return 0;
  }

  v3 = sub_3398F0(a1, 1869968496);
  if (HIDWORD(v3))
  {
    if (v3 != 1751412840)
    {
      return 0;
    }
  }

  v4 = sub_3398F0(a1, 1768845428);
  if (HIDWORD(v4))
  {
    if (*v1 != 0x110C000005ACLL && v4 != 1752000867)
    {
      return 0;
    }
  }

  strcpy(v14, "CFAubolg");
  v14[9] = 0;
  v15 = 0;
  sub_339DEC(v11, a1);
  if (v13 != 1)
  {
    return 0;
  }

  v5 = v12;
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_21;
  }

  v6 = sub_339B4C(v12);
  if (v6 <= 0xFFu)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
LABEL_21:
  }

  v8 = v6 == 4 || v6 == 13;
  CFRelease(v5);
  return v8;
}

void sub_33690C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v9);
  sub_339B0C(va);
  _Unwind_Resume(a1);
}

BOOL sub_336938(uint64_t a1, int a2)
{
  v3 = sub_338BCC(a2 == 1768845428, a1);
  v4 = sub_5544(22);
  v5 = sub_5544(31);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a2 == 1768845428 ? "Input" : "Output";
    sub_22170(__p, v3);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    v17 = 1024;
    v18 = 1576;
    v19 = 2080;
    v20 = v10;
    v21 = 2080;
    v22 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s using headset value: '%s'", buf, 0x26u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    v12 = v3 == 1786082146;
  }

  else
  {
    v12 = 1;
  }

  return !v12;
}

uint64_t sub_336AF0(_BYTE *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = sub_336C34(a2, a1);
  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    v8 = "output";
    v11 = 136315906;
    v12 = "Device_USB_Aspen.cpp";
    if (v4 == 1768845428)
    {
      v8 = "input";
    }

    v13 = 1024;
    v14 = 1565;
    v15 = 2080;
    v16 = v8;
    if (v5 == 1)
    {
      v9 = "Supported";
    }

    else
    {
      v9 = "Not Supported";
    }

    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d USB %s device Telephony format: %s", &v11, 0x26u);
  }

  if (v5 == 1)
  {
    return sub_31122C() ^ 1 | a3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_336C34(int a1, _BYTE *a2)
{
  if (sub_48EDC())
  {
    v4 = 1;
  }

  else if (MGGetBoolAnswer())
  {
    v4 = MGGetBoolAnswer();
  }

  else
  {
    v4 = 0;
  }

  if (qword_6E8380 != -1)
  {
    dispatch_once(&qword_6E8380, &stru_6BD048);
  }

  result = 2;
  if (a2 && ((v4 | byte_6E837A) & 1) != 0)
  {
    if (a2[535])
    {
      return 1;
    }

    else if (a1 == 1869968496)
    {
      v9 = (*(*a2 + 448))(a2, 1);
      if ((*(*a2 + 88))(a2, 1) != 1 || v9 >= 3)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else if (a1 == 1768845428)
    {
      v6 = sub_4DADAC(a2, 0);
      v7 = (*(*a2 + 88))(a2, 0);
      if (v7 + (((*(*a2 + 312))(a2) >> 1) >> 31) != 1 || v6 >= 3)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_336E14(uint64_t a1)
{
  v2 = (*(*a1 + 120))(a1);
  sub_24FF44(v6, 1886222185, v2);
  v5 = a1;
  if (sub_7E96C())
  {
    v3 = *(a1 + 88);
    v8 = *(a1 + 80);
    v9 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_3394D4(v10, &v5);
    (*(*a1 + 128))(&__p, a1);
    operator new();
  }

  v4 = *(a1 + 88);
  v8 = *(a1 + 80);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_3394D4(v10, &v5);
  (*(*a1 + 128))(&__p, a1);
  operator new();
}

void sub_337740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(&a9 + 1))
  {
    sub_1A8C0(*(&a9 + 1));
  }

  sub_1E19A0(&a14);
  _Unwind_Resume(a1);
}

void sub_3378D0(_OWORD *a1, uint64_t a2, std::mutex *a3)
{
  v5 = qword_6EABA0;
  v6 = (*(a3->__m_.__sig + 120))(a3);
  sub_24FF44(v18, v5, v6);
  v7 = sub_5544(18);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(v21, v18);
    v9 = v22;
    v10 = v21[0];
    (*(a3->__m_.__sig + 128))(__p, a3);
    v11 = v21;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v20 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    v27 = 1024;
    v28 = 814;
    v29 = 2080;
    v30 = v11;
    v31 = 2080;
    v32 = v12;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a USB output port with name %s and UID %s", buf, 0x26u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (sub_289798() & 1) != 0 || (sub_31122C())
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    qmemcpy(buf, "gcrvmorvtshv", sizeof(buf));
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_4625C(&v15, buf, &v27, 3uLL);
  }

  if (sub_4DAD0C(a2))
  {
    v13 = *&a3[1].__m_.__opaque[16];
    v23 = *&a3[1].__m_.__opaque[8];
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }

    (*(a3->__m_.__sig + 128))(v21, a3);
    sub_4B6FF0(__p, a3, 1869968496);
    operator new();
  }

  v14 = *&a3[1].__m_.__opaque[16];
  v25[0] = *&a3[1].__m_.__opaque[8];
  v25[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  (*(a3->__m_.__sig + 128))(buf, a3);
  sub_4B6FF0(v21, a3, 1869968496);
  sub_227ADC(__p, &qword_6EABA0, v25, &v15, v18, buf, v21, "");
}

void sub_337E80(void *a1, std::mutex *a2)
{
  v3 = qword_6EAC00;
  v4 = (*(a2->__m_.__sig + 120))(a2);
  sub_24FF44(v16, v3, v4);
  v5 = sub_5544(18);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(v17, v16);
    v7 = v19;
    v8 = *v17;
    (*(a2->__m_.__sig + 128))(__p, a2);
    v9 = v17;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 868;
    *&buf[18] = 2080;
    *&buf[20] = v9;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a USB tap input port with name %s and UID %s", buf, 0x26u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(*v17);
    }
  }

  if ((sub_286E80() & 1) != 0 || sub_31122C())
  {
    memset(buf, 0, 24);
  }

  else
  {
    qmemcpy(v17, "gcrvmorvtshv", sizeof(v17));
    memset(buf, 0, 24);
    sub_4625C(buf, v17, &v18, 3uLL);
  }

  v11 = *&a2[1].__m_.__opaque[16];
  v12[0] = *&a2[1].__m_.__opaque[8];
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  (*(a2->__m_.__sig + 128))(v17, a2);
  sub_4B6FF0(__p, a2, 1768845428);
  sub_227ADC(&v13, &qword_6EAC00, v12, buf, v16, v17, __p, "");
}

void sub_3381D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1E19A0(va);
  _Unwind_Resume(a1);
}

const __CFArray *sub_338284(uint64_t a1)
{
  v13 = 0x7074727561736573;
  v14 = 0;
  result = (*(*a1 + 16))(a1, &v13);
  if (result)
  {
    theArray = 0;
    v10 = 1;
    v11 = 8;
    (*(*a1 + 40))(a1, &v13, 0, 0, &v11, &theArray);
    result = theArray;
    if (theArray)
    {
      v3 = 0;
      v8 = theArray;
      v9 = 1;
LABEL_4:
      LODWORD(result) = CFArrayGetCount(result);
      while (v3 < result)
      {
        v7 = 0;
        if ((sub_2E4528(&v8, v3, &v7) & 1) == 0)
        {
          v4 = sub_5544(14);
          v5 = *v4;
          if (*v4)
          {
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "Device_USB_Aspen.cpp";
              v16 = 1024;
              v17 = 1514;
              _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Channels CFArray contained a non-UInt32 value.", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = 2003329396;
        }

        *buf = 0x707472756D757465;
        *&buf[8] = v7;
        (*(*a1 + 48))(a1, buf, 0, 0, 4, &v10);
        ++v3;
        result = v8;
        if (v8)
        {
          goto LABEL_4;
        }
      }

      return sub_A0804(&v8);
    }
  }

  return result;
}

void sub_3384F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *inAddress = 1936941859;
  *&inAddress[4] = a1;
  *&inAddress[8] = 0;
  sub_4DFC0(a3);
  if (AudioObjectHasProperty(*(a3 + 268), inAddress))
  {
    *inAddress = 1936945763;
    *&inAddress[4] = a1;
    *&inAddress[8] = 0;
    LODWORD(v20[0]) = 4;
    LODWORD(v18[0]) = 0;
    (*(*a3 + 40))(a3, inAddress, 0, 0, v20, v18);
    v6 = LODWORD(v18[0]);
    v7 = sub_5544(18);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v20;
      sub_23148(v20, (a2 + 8));
      if (v21 < 0)
      {
        v9 = v20[0];
      }

      sub_23148(v18, (a3 + 8));
      v10 = v19;
      v11 = v18[0];
      sub_22170(__p, a1);
      v12 = v18;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *inAddress = 136316418;
      *&inAddress[4] = "Device_USB_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 191;
      v23 = 2048;
      v24 = v6;
      v25 = 2080;
      v26 = v9;
      v27 = 2080;
      v28 = v12;
      v29 = 2080;
      v30 = v13;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activating sub-port for active data source with ID: %lu for port: '%s' on USB device: '%s'. Scope: '%s'.", inAddress, 0x3Au);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }

    LODWORD(v18[0]) = v6;
    sub_1E54B0(inAddress, v18, 1);
    v14 = *(a2 + 80);
    v15 = *(a2 + 88);
    v20[0] = v14;
    v20[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_FC464(inAddress, v20, a3);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (*inAddress)
    {
      *&inAddress[8] = *inAddress;
      operator delete(*inAddress);
    }
  }
}

void sub_338770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_3387F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D7FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_338868(uint64_t a1)
{
  v15 = 1885892727;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  sub_4625C(v16, &v15, v16, 1uLL);
  *buf = *v16;
  *&buf[16] = v17;
  strcpy(v19, "cwdv");
  v19[8] = 0;
  v20 = 3;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v23 = 44739242;
  v25 = 0;
  v26 = 0;
  __p = 0;
  sub_161C7C(v11, a1, buf);
  sub_B0484(&v12, v11);
  sub_65310(v11);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v22[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v14 == 1)
  {
    goto LABEL_6;
  }

  v7 = sub_5544(14);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    v9 = v14;
    sub_22170(v16, 1885892727);
    v10 = v17 >= 0 ? v16 : v16[0];
    *buf = 136315906;
    *&buf[4] = "Device_USB_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1479;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *v19 = 2080;
    *&v19[2] = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Found %u ports of type '%s' (expected 1)", buf, 0x22u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (v14 == 1)
  {
LABEL_6:
    v2 = sub_338BCC(1, a1);
    if (*(a1 + 535) == 1)
    {
      v3 = sub_5544(18);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1485;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Detected a USB display device (speaker)", buf, 0x12u);
        }
      }
    }

    (*(**(v13 + 16) + 512))(*(v13 + 16), 1, 1, v2);
    v5 = sub_809C0();
    v6 = *(v13 + 24);
    *buf = *(v13 + 16);
    *&buf[8] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_257CE8(v5, buf, 0x1726E7764);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  sub_87980(&v12);
}

void sub_338B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_87980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_338BCC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 535) != 1)
  {
    v3 = a1;
    v6 = sub_291720(a1, 1, a2);
    v7 = v6;
    if (v6 && v6 != 1784965235 && v6 != 1784965232)
    {
      return v7;
    }

    v8 = sub_333248(a2);
    v9 = v8;
    if (v8)
    {
      (*(*v8 + 456))(&v41, v8);
      v10 = HIBYTE(v43);
      if (v43 < 0)
      {
        v10 = v42;
      }

      if (v10)
      {
        sub_1F82A0();
        if (v43 >= 0)
        {
          v11 = &v41;
        }

        else
        {
          v11 = v41;
        }

        if (v11)
        {
          if (v43 >= 0)
          {
            v12 = HIBYTE(v43);
          }

          else
          {
            v12 = v42;
          }

          *buf = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
          if (!*buf)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        else
        {
          *buf = 0;
        }

        v15 = (*(qword_6E6648 + 32))();
        if (*buf)
        {
          CFRelease(*buf);
        }

        v14 = *&v15 & ((v15 & 0x100) >> 8);
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    v16 = (*(*a2 + 448))(a2, 1);
    v17 = (*(*a2 + 88))(a2, 1);
    if (v16 > 2 || v17 != 1)
    {
      v19 = HIBYTE(v43);
      if (v43 < 0)
      {
        v19 = v42;
      }

      if (v19)
      {
        v20 = sub_5544(18);
        v3 = *v20;
        if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_Aspen.cpp";
          v45 = 1024;
          v46 = 1660;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Checking USB for Headphone parity", buf, 0x12u);
        }

        if ((v14 & 1) != 0 || sub_336780(v9))
        {
          v21 = sub_5544(18);
          v3 = 1784965235;
          v22 = *v21;
          if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
          {
            sub_23148(__p, (a2 + 8));
            v23 = (v40 & 0x80u) == 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "Device_USB_Aspen.cpp";
            v45 = 1024;
            v46 = 1664;
            v47 = 2080;
            v48 = v23;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Partner device meets Parity Guidelines - Forcing Headset sub type for %s", buf, 0x1Cu);
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_94;
        }
      }

      goto LABEL_86;
    }

    if (sub_336780(a2))
    {
      v24 = 0;
      if (v3)
      {
        v3 = 1784965235;
      }

      else
      {
        v3 = 1784965232;
      }

      goto LABEL_95;
    }

    (*(*a2 + 456))(__p, a2);
    sub_1F82A0();
    if ((v40 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v25)
    {
      if ((v40 & 0x80u) == 0)
      {
        v26 = v40;
      }

      else
      {
        v26 = __p[1];
      }

      *buf = CFStringCreateWithBytes(0, v25, v26, 0x8000100u, 0);
      if (!*buf)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
      }
    }

    else
    {
      *buf = 0;
    }

    v28 = (*(qword_6E6648 + 32))();
    if (*buf)
    {
      CFRelease(*buf);
    }

    if ((v28 & 0x100) != 0)
    {
      v30 = sub_5544(18);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = __p;
        if ((v40 & 0x80u) != 0)
        {
          v32 = __p[0];
        }

        *&buf[4] = "Device_USB_Aspen.cpp";
        v45 = 1024;
        v46 = 1630;
        v33 = "is";
        *buf = 136315906;
        if ((v28 & 1) == 0)
        {
          v33 = "is not";
        }

        v47 = 2080;
        v48 = v32;
        v49 = 2080;
        v50 = v33;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d According to ADAM, device %s %s headphones", buf, 0x26u);
      }

      if (v28)
      {
        v34 = 0;
        if (v3)
        {
          v3 = 1784965235;
        }

        else
        {
          v3 = 1784965232;
        }

LABEL_84:
        if (v40 < 0)
        {
          operator delete(__p[0]);
          if (v34)
          {
            goto LABEL_86;
          }
        }

        else if (v34)
        {
LABEL_86:
          v35 = sub_31122C() ^ 1;
          if (!v7)
          {
            LOBYTE(v35) = 0;
          }

          if ((v35 & 1) == 0)
          {
            v36 = sub_5544(18);
            v7 = 1786082146;
            v37 = *v36;
            if (*v36)
            {
              if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "Device_USB_Aspen.cpp";
                v45 = 1024;
                v46 = 1676;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Forcing USB Default sub type", buf, 0x12u);
              }
            }
          }

          v24 = 1;
LABEL_95:
          if (SHIBYTE(v43) < 0)
          {
            operator delete(v41);
            if ((v24 & 1) == 0)
            {
              return v3;
            }
          }

          else if ((v24 & 1) == 0)
          {
            return v3;
          }

          return v7;
        }

LABEL_94:
        v24 = 0;
        goto LABEL_95;
      }

      v7 = 0;
    }

    else
    {
      v29 = sub_5544(18);
      v3 = *v29;
      if (*v29)
      {
        v29 = os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          *buf = 136315394;
          *&buf[4] = "Device_USB_Aspen.cpp";
          v45 = 1024;
          v46 = 1645;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Not registered with ADAM as headphones", buf, 0x12u);
        }
      }

      if (caulk::product::get_device_class(v29) == 1)
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v34 = 1;
    goto LABEL_84;
  }

  v3 = 1781740087;
  if (*(a2 + 524) != 0x1114000005ACLL)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_USB_Aspen.cpp";
        v45 = 1024;
        v46 = 1590;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Apple Studio Display has kJackDescriptor_Unknown.", buf, 0x12u);
      }
    }
  }

  return v3;
}

void sub_339358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_339460(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C26A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3394D4(uint64_t a1, std::mutex **a2)
{
  LODWORD(v33) = 1701669219;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  sub_4625C(&v30, &v33, &v33 + 1, 1uLL);
  v4 = v30;
  sub_4D8CD4(a1, v30, v31);
  if (v4)
  {
    operator delete(v4);
  }

  sub_4B6FF0(&v28, *a2, 1768845428);
  v6 = v28;
  v5 = v29;
  v7 = v29 - v28;
  v8 = (v29 - v28) >> 4;
  if (v8 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9 - v10 >= v7)
    {
      v38 = *(a1 + 8);
      v39 = v10;
      v33 = a1;
      v34 = &v38;
      v35 = &v39;
      if (v29 != v28)
      {
        do
        {
          *v10 = *v6;
          v17 = v6[1];
          v10[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          v6 += 2;
          v10 += 2;
        }

        while (v6 != v5);
        v39 = v10;
      }

      LOBYTE(v36) = 1;
      sub_119534(&v33);
      *(a1 + 8) = v10;
    }

    else
    {
      v11 = *a1;
      v12 = v10 - *a1;
      v13 = v8 + (v12 >> 4);
      if (v13 >> 60)
      {
        sub_189A00();
      }

      v14 = v9 - v11;
      v15 = (v9 - v11) >> 3;
      if (v15 > v13)
      {
        v13 = v15;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v13;
      }

      v37 = a1;
      if (v16)
      {
        sub_1DC690(v16);
      }

      v18 = 16 * (v12 >> 4);
      v36 = 0;
      v19 = (v18 + v7);
      v20 = v18;
      do
      {
        *v20 = *v6;
        v21 = v6[1];
        *(v20 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v20 += 16;
        v6 += 2;
      }

      while (v20 != v19);
      memcpy(v19, v10, *(a1 + 8) - v10);
      v22 = *a1;
      v23 = &v19[*(a1 + 8) - v10];
      *(a1 + 8) = v10;
      v24 = v10 - v22;
      v25 = (v18 - (v10 - v22));
      memcpy(v25, v22, v24);
      v26 = *a1;
      *a1 = v25;
      *(a1 + 8) = v23;
      v27 = *(a1 + 16);
      *(a1 + 16) = v36;
      v35 = v26;
      v36 = v27;
      v33 = v26;
      v34 = v26;
      sub_A0650(&v33);
    }
  }

  v33 = &v28;
  sub_72C14(&v33);
}

void sub_3396F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 - 56) = va;
  sub_72C14((v3 - 56));
  sub_72C14(va);
  _Unwind_Resume(a1);
}

void sub_339764(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3397D8(uint64_t a1, uint64_t a2)
{
  result = sub_5BA08(a2);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = sub_59580(a2);
    v8 = result;
    if (result)
    {
      v7 = 0;
      result = sub_5C060(a2);
      *a1 = result;
      if (!result)
      {
        v5 = v7;
        v6[0] = &off_6DACD8;
        v6[1] = 0;
        *(a1 + 8) = &off_6DACD8;
        *(a1 + 16) = v5;
        *(a1 + 24) = 1;
        return sub_8AAAC(v6);
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_3398F0(uint64_t a1, int a2)
{
  if (!(*(*a1 + 88))(a1, a2 != 1768845428))
  {
    goto LABEL_5;
  }

  v4 = (*(*a1 + 96))(a1, a2 != 1768845428, 0);
  if (!v4)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 136315394;
      *&v21[1] = "Device_USB_Aspen.cpp";
      v22 = 1024;
      v23 = 247;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = v4;
  strcpy(v21, "spatbolg");
  BYTE1(v21[2]) = 0;
  HIWORD(v21[2]) = 0;
  v6 = sub_59410(v4, v21, 0, 0);
  *(&v9 + 1) = v7;
  *&v9 = v6;
  v8 = v9 >> 32;
  if ((v8 & 0x100000000) != 0 && v8)
  {
LABEL_5:
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v21[0] = 1952805485;
    v21[1] = a2;
    v21[2] = 0;
    v13 = sub_59410(v5, v21, 0, 0);
    *(&v16 + 1) = v14;
    *&v16 = v13;
    v15 = v16 >> 32;
    if ((v15 & 0x100000000) == 0)
    {
      LODWORD(v15) = 0;
    }

    v12 = v15 & 0xFFFFFF00;
    v11 = v15;
    v10 = 0x100000000;
  }

  return v10 | v12 | v11;
}

uint64_t sub_339B0C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_339B4C(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberFloat32Type:
        v5 = sub_339D6C(a1, kCFNumberFloat32Type);
        goto LABEL_18;
      case kCFNumberFloat64Type:
        v5 = sub_339DAC(a1, kCFNumberFloat64Type);
        goto LABEL_18;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
        goto LABEL_23;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_23;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_23;
      case kCFNumberLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_23;
      case kCFNumberLongLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_23;
      case kCFNumberFloatType:
        v5 = sub_339D6C(a1, kCFNumberFloatType);
        goto LABEL_18;
      case kCFNumberDoubleType:
        v5 = sub_339DAC(a1, kCFNumberDoubleType);
        goto LABEL_18;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_23;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_23:
        v6 = Value != 0;
        if (Value)
        {
          LOBYTE(v5) = valuePtr;
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        break;
      case kCFNumberCGFloatType:
        v5 = sub_339DAC(a1, kCFNumberCGFloatType);
LABEL_18:
        v6 = HIBYTE(v5);
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      LOBYTE(v5) = CFBooleanGetValue(a1);
      v6 = 1;
    }

    else
    {
LABEL_6:
      v6 = 0;
      LOBYTE(v5) = 0;
    }
  }

  return v5 | (v6 << 8);
}

uint64_t sub_339D6C(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t sub_339DAC(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

void sub_339DEC(uint64_t a1, uint64_t a2)
{
  if (sub_5BA08(a2))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (sub_59580(a2))
    {
      v9 = 0;
      v4 = sub_5C060(a2);
      *a1 = v4;
      if (!v4)
      {
        v5 = v9;
        v8 = v9;
        sub_290014(&v7, &v8);
        v6 = v7;
        *(a1 + 16) = 1;
        *(a1 + 8) = v6;
        if (v5)
        {
          CFRelease(v5);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void *sub_339EE8(uint64_t a1, uint64_t a2, double a3)
{
  v10 = 1751474532;
  v11 = a3;
  result = sub_339F80(&v6, a2);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    *a1 = &off_6DDB78;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
    return sub_8AAAC(&v7);
  }

  return result;
}

uint64_t sub_339F80(uint64_t a1, uint64_t a2)
{
  result = sub_5BA08(a2);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = sub_59580(a2);
    v8 = result;
    if (result)
    {
      v7 = 0;
      result = sub_5C060(a2);
      *a1 = result;
      if (!result)
      {
        v5 = v7;
        v6[0] = &off_6DDB78;
        v6[1] = 0;
        *(a1 + 8) = &off_6DDB78;
        *(a1 + 16) = v5;
        *(a1 + 24) = 1;
        return sub_8AAAC(v6);
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_33A098(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = sub_543D0(*a2, inAddress, a4, a5);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v11 = outData;
        v14 = outData;
        sub_290014(&v13, &v14);
        v12 = v13;
        *(a1 + 16) = 1;
        *(a1 + 8) = v12;
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_33A19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_33A1D0(unsigned __int8 *a1)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  strcpy(v32, "cwdv");
  v32[8] = 0;
  v33 = 3;
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v36 = 44739226;
  sub_161C7C(&v26, a1, &v29);
  if (v28)
  {
    v2 = v27;
    v3 = *(v27 + 24);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = *(v2 + 16);
        if (v5)
        {
          v6 = sub_336938(a1, 1869968496);
          v7 = v5[36];
          v8 = sub_31122C();
          if (v7 == 1885892727)
          {
            v9 = v8;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            v10 = sub_5544(18);
            v11 = *v10;
            if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
            {
              *buf = 136315906;
              *&buf[4] = "Device_USB_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1002;
              v41 = 1024;
              v42 = v7 == 1885892727;
              v43 = 1024;
              v44 = v6;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device Currently headphones? %u. Should be headphones? %u", buf, 0x1Eu);
            }

            if (v6 != (v7 == 1885892727))
            {
              v24[0] = 0;
              v25 = 0;
              atomic_fetch_add((sub_809C0() + 656), 1u);
              v12 = sub_5544(18);
              v13 = *v12;
              if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "Device_USB_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1009;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- tearing down current output port", buf, 0x12u);
              }

              if (v7 == 1885892727)
              {
                (*(*v5 + 512))(v5, 0, 0, 0);
                v14 = sub_809C0();
                *buf = v5;
                *&buf[8] = v4;
                atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_257CE8(v14, buf, 0x1726F6C75);
                std::__shared_weak_count::__release_weak(v4);
              }

              if (v6)
              {
                (*(*a1 + 368))(a1);
              }

              v23[0] = v5;
              v23[1] = v4;
              atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_4B0AE8(a1, v23);
              sub_1A8C0(v4);
              a1[532] = 0;
              sub_3334F8(a1);
              sub_240CCC(v24);
            }
          }

          else
          {
            v17 = v5[76];
            v18 = sub_5544(18);
            v19 = v17 & 0xDFFFFFFF;
            v20 = *v18;
            if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
            {
              *buf = 136315906;
              *&buf[4] = "Device_USB_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 991;
              v41 = 1024;
              v42 = v19 == 1214539380;
              v43 = 1024;
              v44 = v6;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d USB Device- Currently headphones? %u. Should be headphones? %u", buf, 0x1Eu);
            }

            if (v6 != (v19 == 1214539380))
            {
              v21 = sub_5544(18);
              v22 = *v21;
              if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "Device_USB_Aspen.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 995;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Updating subport type on headphones port", buf, 0x12u);
              }

              sub_338868(a1);
            }
          }

LABEL_26:
          sub_1A8C0(v4);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v15 = sub_5544(18);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Device_USB_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 971;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d USB Device - port expired", buf, 0x12u);
    }

    if (v4)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_65310(&v26);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v35[0]);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_33A6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__shared_weak_count::__release_weak(v15);
  sub_240CCC(&a11);
  sub_1A8C0(v15);
  sub_65310(&a13);
  sub_46934(va);
  _Unwind_Resume(a1);
}

uint64_t sub_33A760(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1, 0);
  v3 = (*(*a1 + 88))(a1, 1);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = (v2 - 1), (v6 = (*(*a1 + 96))(a1, 0, v5)) == 0))
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  else
  {
    v15 = 0x676C6F6274617073;
    v16 = 0;
    v7 = sub_59410(v6, &v15, 0, 0);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v13 + 1) = v11;
    *&v13 = v7;
    v12 = v13 >> 32;
    if ((v12 & 0x100000000) != 0 && v12)
    {
      v10 = v5 & 0xFFFFFF00;
      v9 = v5;
      v8 = 0x100000000;
    }
  }

  return v8 | v10 | v9;
}

void sub_33A884(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = 1768845428;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 > 1886740851)
  {
    if (a2 != 1886745455)
    {
      if (a2 == 1886745449)
      {
        goto LABEL_12;
      }

      if (a2 != 1886740852)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_9;
  }

  if (a2 == 1885892727)
  {
LABEL_9:
    if (a2 == 1886740852)
    {
      v5 = 1768845428;
    }

    else
    {
      v5 = 1869968496;
    }

    goto LABEL_12;
  }

  if (a2 != 1885894516 && a2 != 1886222185)
  {
LABEL_15:
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        inAddress.mSelector = 136315650;
        *&inAddress.mScope = "Device_USB_Aspen.cpp";
        v14 = 1024;
        v15 = 1435;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Request for default sub-ports for invalid port type: %u", &inAddress, 0x18u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Request for default sub-ports for invalid port type: %u");
  }

LABEL_12:
  inAddress.mSelector = 1936945763;
  inAddress.mScope = v5;
  inAddress.mElement = 0;
  sub_4DFC0(a1);
  if (AudioObjectHasProperty(*(a1 + 268), &inAddress))
  {
    inAddress.mSelector = 1936945763;
    inAddress.mScope = v5;
    inAddress.mElement = 0;
    v11 = 0;
    v12 = 4;
    (*(*a1 + 40))(a1, &inAddress, 0, 0, &v12, &v11);
    v10 = v11;
    sub_9EF84(a3, &v10);
  }
}

uint64_t sub_33AAF0(uint64_t a1, unsigned int a2)
{
  if (a2 > 1886740851)
  {
    if (a2 == 1886740852 || a2 == 1886745455)
    {
      return 0;
    }

    v2 = 1886745449;
  }

  else
  {
    if (a2 == 1885892727 || a2 == 1885894516)
    {
      return 0;
    }

    v2 = 1886222185;
  }

  if (a2 != v2)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_USB_Aspen.cpp";
      v15 = 1024;
      v16 = 1363;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "Device_USB_Aspen.cpp";
      v15 = 1024;
      v16 = 1364;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_33AD20(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  LOBYTE(__p) = 0;
  v3 = 0;
  atomic_fetch_add((sub_809C0() + 656), 1u);
  sub_3334F8(a1);
  sub_240CCC(&__p);
  v5 = xmmword_517300;
  v6 = 1735159650;
  v3 = 0;
  v4 = 0;
  __p = 0;
  sub_2C8104(&__p, &v5, &v7, 2uLL);
}

void sub_33AF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_33AF74(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = sub_4B5C4C(*a1);
  sub_33B2AC(v1, v2);
  sub_33B318(v1);
  operator delete();
}

void sub_33B008(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v22[2]);
      p_p = __p;
      if (a15 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a17) = 2080;
      *(&a17 + 4) = p_p;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 98;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x33AFC0);
  }

  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v27 = v26;
    v28 = sub_5544(14);
    v29 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = (*(*v27 + 16))(v27);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v30;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 98;
    v31 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v32 = v29;
    v33 = 44;
  }

  else
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a17) = 2080;
    *(&a17 + 4) = "";
    WORD6(a17) = 1024;
    *(&a17 + 14) = 98;
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

unsigned __int8 *sub_33B2AC(unsigned __int8 *result, int a2)
{
  if (a2 == 1)
  {
    v2 = result;
    v3[0] = 0;
    v4 = 0;
    atomic_fetch_add((sub_809C0() + 656), 1u);
    sub_3334F8(v2);
    return sub_240CCC(v3);
  }

  return result;
}

void sub_33B304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_240CCC(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_33B318(os_unfair_lock_s *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v7 = 0x676C6F626869646ELL;
    v8 = 0;
    v5 = 0;
    v6 = 4;
    (*(*&a1->_os_unfair_lock_opaque + 40))(a1, &v7, 0, 0, &v6, &v5);
    if (v5)
    {
      return (*(*&a1->_os_unfair_lock_opaque + 440))(a1);
    }

    else
    {
      sub_4B5C4C(a1);
      v3[0] = 0;
      v4 = 0;
      atomic_fetch_add((sub_809C0() + 656), 1u);
      sub_3334F8(a1);
      return sub_240CCC(v3);
    }
  }

  return result;
}

void sub_33B418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240CCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_33B42C(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  if (!a4)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "Device_USB_Aspen.cpp";
      v10 = 1024;
      v11 = 626;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_33B318(a4);
  return 0;
}

uint64_t sub_33B550(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  if (!a4)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "Device_USB_Aspen.cpp";
      v12 = 1024;
      v13 = 662;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = sub_4B5C4C(a4);
  sub_33B2AC(a4, v5);
  return 0;
}

unsigned __int8 *sub_33B684(uint64_t a1)
{
  (*(*a1 + 424))(a1);
  (*(*a1 + 440))(a1);

  return sub_4B08A4(a1);
}

uint64_t sub_33B714(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v22);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v18 = 2003332927;
LABEL_30:
    exception[2] = v18;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v22);
    }

    goto LABEL_25;
  }

  if (!a6)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v22);
    }

LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v18 = 561211770;
    goto LABEL_30;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v22);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v18 = 1852797029;
    goto LABEL_30;
  }

  if (a2->mSelector == 1684304756)
  {
    v12 = *a6;
    v13 = a1;
    v14 = 1869968496;
    goto LABEL_9;
  }

  if (a2->mSelector == 1685287523)
  {
    v12 = *a6;
    v13 = a1;
    v14 = 1768845428;
LABEL_9:

    return sub_4B6D4C(v13, v14, v12);
  }

  return sub_FDAC4(a1, a2, a3, a4, a5, a6);
}

void sub_33BC68(_BYTE *a1, uint64_t a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *ioDataSize = *a2;
      v35 = *(a2 + 8);
      sub_22CE0(&inAddress, ioDataSize);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *ioDataSize = *a2;
      v35 = *(a2 + 8);
      sub_22CE0(&inAddress, ioDataSize);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = &off_6DDDD0;
    v28[2] = 561211770;
  }

  if (!a6)
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *ioDataSize = *a2;
      v35 = *(a2 + 8);
      sub_22CE0(&inAddress, ioDataSize);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1818446147)
  {
    switch(v12)
    {
      case 1684304756:
        v20 = a1;
        v21 = 1869968496;
        break;
      case 1685287523:
        v20 = a1;
        v21 = 1768845428;
        break;
      case 1685288051:
        v17 = a1;
        v18 = 1869968496;
        goto LABEL_20;
      default:
LABEL_22:

        sub_5C0D8(a1, a2, a3, a4, a5, a6);
        return;
    }

    v19 = sub_4B6BA0(v20, v21);
    goto LABEL_33;
  }

  if (v12 > 1936876402)
  {
    if (v12 == 1967211588)
    {
      if (a1[535])
      {
        v24 = &kCFBooleanTrue;
      }

      else
      {
        v24 = &kCFBooleanFalse;
      }

      *a6 = *v24;
      return;
    }

    if (v12 != 1936876403)
    {
      goto LABEL_22;
    }

    v17 = a1;
    v18 = 1768845428;
LABEL_20:
    v19 = sub_4B6798(v17, v18);
LABEL_33:
    *a6 = v19;
    return;
  }

  if (v12 != 1818446148)
  {
    if (v12 == 1835103844)
    {
      v13 = *a5;
      if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v31 = sub_5544(14);
        if (*v31)
        {
          if (os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
          {
            *ioDataSize = *a2;
            v35 = *(a2 + 8);
            sub_22CE0(&inAddress, ioDataSize);
          }
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        *v32 = &off_6DDDD0;
        v32[2] = 561211770;
      }

      v14 = (*(*a1 + 120))(a1);
      inAddress.mSelector = 1986290211;
      *&inAddress.mScope = *(a2 + 4);
      if (AudioObjectHasProperty(v14, &inAddress))
      {
        ioDataSize[0] = sub_543D0(v14, &inAddress, 0, 0);
        if (ioDataSize[0])
        {
          PropertyData = AudioObjectGetPropertyData(v14, &inAddress, 0, 0, ioDataSize, outData);
          if (!PropertyData)
          {
            v16 = *outData;
            *a6 = v16;
            return;
          }
        }

        else
        {
          PropertyData = 2003329396;
        }
      }

      else
      {
        PropertyData = 2003332927;
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = &off_6DDDD0;
      v33[2] = PropertyData;
    }

    goto LABEL_22;
  }

  v22 = (*(*a1 + 120))(a1);
  sub_33C4EC(outData, v22, COERCE_DOUBLE(1735159650));
  v23 = *outData;
  *a6 = *outData;
  if (v23)
  {
    CFRelease(v23);
  }
}

void sub_33C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_33C4EC(void *a1, AudioObjectID a2, double a3)
{
  v11 = a2;
  inAddress.mSelector = 1818446148;
  *&inAddress.mScope = a3;
  sub_33A098(&v7, &v11, &inAddress, 0, 0);
  v4 = v7;
  if (v7 || (v9 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v5;
    CFRelease(v5);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_33C5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_33C5D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_33C5D8(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_33C618(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v14);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 2003332927;
LABEL_20:
    exception[2] = v12;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v14);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 561211770;
    goto LABEL_20;
  }

  if (a2->mSelector == 1818446148 || a2->mSelector == 1835103844)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_33C930(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v4 = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector > 1818446147)
  {
    if (mSelector > 1936876402)
    {
      v6 = mSelector == 1936876403;
      v7 = 2020898165;
    }

    else
    {
      v6 = mSelector == 1818446148;
      v7 = 1835103844;
    }

    if (!v6 && mSelector != v7)
    {
      goto LABEL_18;
    }

    return v4;
  }

  if (mSelector == 1684304756 || mSelector == 1685287523)
  {
    v13 = v2;
    v14 = v3;
    mScope = a2->mScope;
    v12.mSelector = 1936945763;
    v12.mScope = mScope;
    v12.mElement = 0;
    return sub_BE734(a1, &v12);
  }

  if (mSelector == 1685288051)
  {
    return v4;
  }

LABEL_18:

  return sub_BE734(a1, a2);
}

BOOL sub_33CA10(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1818446147)
  {
    if (mSelector == 1818446148 || mSelector == 1835103844)
    {
      return 1;
    }

    v10 = 1936876403;
  }

  else
  {
    if (mSelector == 1684304756 || mSelector == 1685287523)
    {
      mScope = a2->mScope;
      v7 = 1936945763;
      goto LABEL_16;
    }

    v10 = 1685288051;
  }

  if (mSelector != v10)
  {
    sub_4DFC0(a1);
    v11 = *(a1 + 268);
    p_inAddress = a2;
    return AudioObjectHasProperty(v11, p_inAddress) != 0;
  }

  mScope = a2->mScope;
  v7 = 1936941859;
LABEL_16:
  inAddress.mSelector = v7;
  inAddress.mScope = mScope;
  inAddress.mElement = 0;
  sub_4DFC0(a1);
  v11 = *(a1 + 268);
  p_inAddress = &inAddress;
  return AudioObjectHasProperty(v11, p_inAddress) != 0;
}

void sub_33CB04(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void *sub_33CB40(uint64_t a1, AudioObjectID a2, double a3)
{
  v11 = a2;
  inAddress.mSelector = 1836411236;
  *&inAddress.mScope = a3;
  result = sub_12794C(&v6, &v11, &inAddress, 0, 0);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    *a1 = &off_6DACD8;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
    return sub_8AAAC(&v7);
  }

  return result;
}

const void *sub_33CBE0(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFBooleanGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFBooleanGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_33CCC4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_30F6A4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_33CD04(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = a2;
  sub_33C4EC(&v112, a2, COERCE_DOUBLE(1735159650));
  sub_53E8(&outData, ":");
  sub_33CB40(&__str, v4, COERCE_DOUBLE(1735159650));
  if (__str.__r_.__value_.__s.__data_[16] == 1)
  {
    sub_65388(&cf, __str.__r_.__value_.__l.__size_);
    if (!cf.__r_.__value_.__r.__words[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    sub_53E8(v110, "");
    v6 = cf.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v111) < 0)
    {
      sub_54A0(__p, v110[0], v110[1]);
    }

    else
    {
      *__p = *v110;
      *&__p[16] = v111;
    }

    if (v6 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v6)))
    {
      sub_1DAFFC(&v113, v6);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      v113 = *__p;
    }

    if (SHIBYTE(v111) < 0)
    {
      operator delete(v110[0]);
    }

    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRelease(cf.__r_.__value_.__l.__data_);
    }

    std::operator+<char>();
    v8 = std::string::append(__p, ":", 1uLL);
    v9 = v8->__r_.__value_.__r.__words[0];
    cf.__r_.__value_.__r.__words[0] = v8->__r_.__value_.__l.__size_;
    *(cf.__r_.__value_.__r.__words + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v117 < 0)
    {
      operator delete(outData);
    }

    outData = v9;
    *v116 = cf.__r_.__value_.__r.__words[0];
    *&v116[7] = *(cf.__r_.__value_.__r.__words + 7);
    v117 = v10;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (__str.__r_.__value_.__s.__data_[16])
    {
      sub_8AAAC(&__str);
    }
  }

  v11 = v112;
  if (v112)
  {
    CFRetain(v112);
  }

  v109 = v11;
  sub_2288C(__p);
  *&__p[*(*&__p[16] - 24) + 24] = *&__p[*(*&__p[16] - 24) + 24] & 0xFFFFFFB5 | 8;
  if (!v11)
  {
    v105 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v105, "Could not construct");
  }

  sub_4A8F8(v11);
  std::ostream::operator<<();
  if ((v128 & 0x10) != 0)
  {
    v13 = v127;
    if (v127 < v124)
    {
      v127 = v124;
      v13 = v124;
    }

    v14 = __src;
  }

  else
  {
    if ((v128 & 8) == 0)
    {
      v12 = 0;
      *(&cf.__r_.__value_.__s + 23) = 0;
      goto LABEL_39;
    }

    v14 = v121;
    v13 = v122;
  }

  v12 = v13 - v14;
  if (v13 - v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&cf.__r_.__value_.__s + 23) = v13 - v14;
  if (v12)
  {
    memmove(&cf, v14, v12);
  }

LABEL_39:
  cf.__r_.__value_.__s.__data_[v12] = 0;
  *&__p[16] = v15;
  if (v126 < 0)
  {
    operator delete(v125);
  }

  std::locale::~locale(&__p[32]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v16 = std::string::insert(&cf, 0, ":", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v113, ":", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cf.__r_.__value_.__l.__data_);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  v20 = *(a3 + 23);
  v21 = v20 < 0;
  if (v20 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21)
  {
    v23 = a3[1];
  }

  else
  {
    v23 = *(a3 + 23);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  p_str = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  else
  {
    p_str = &__str;
  }

  v26 = &v23[v22];
  if (v23 && size)
  {
    v29 = p_str->__r_.__value_.__s.__data_[0];
    v27 = &p_str->__r_.__value_.__s.__data_[1];
    v28 = v29;
    v30 = v22;
    v31 = &v23[v22];
    do
    {
      v32 = v30 + 1;
      while (*v30 != v28)
      {
        v30 = (v30 + 1);
        ++v32;
        if (v30 == v26)
        {
          goto LABEL_72;
        }
      }

      v33 = size - 1;
      v34 = v27;
      while (v33)
      {
        if (v32 == v26)
        {
          goto LABEL_72;
        }

        v36 = *v32++;
        v35 = v36;
        v37 = *v34++;
        --v33;
        if (v35 != v37)
        {
          goto LABEL_69;
        }
      }

      v31 = v30;
LABEL_69:
      v30 = (v30 + 1);
    }

    while (v30 != v26);
  }

  else
  {
    v31 = &v23[v22];
  }

LABEL_72:
  v38 = v31 - v22;
  if (v31 != v26 || size == 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = -1;
  }

  v41 = sub_5544(18);
  v42 = *v41;
  if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v43 = a3;
    }

    else
    {
      v43 = *a3;
    }

    v44 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v44 = __str.__r_.__value_.__r.__words[0];
    }

    p_outData = &outData;
    if ((v117 & 0x80u) != 0)
    {
      p_outData = outData;
    }

    *__p = 136316162;
    *&__p[4] = "Device_USB_Aspen.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 341;
    *&__p[18] = 2080;
    *&__p[20] = v43;
    *&__p[28] = 2080;
    *&__p[30] = v44;
    v120 = 2080;
    v121 = p_outData;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d UID is %s will search for last occurrence of %s, and replace it with %s", __p, 0x30u);
  }

  v46 = *(a3 + 23);
  if (v40 == -1)
  {
    if (v46 < 0)
    {
      sub_54A0(&v108, *a3, a3[1]);
    }

    else
    {
      v108 = *a3;
    }
  }

  else
  {
    if (v46 < 0)
    {
      sub_54A0(&v108, *a3, a3[1]);
    }

    else
    {
      v108 = *a3;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __str.__r_.__value_.__l.__size_;
    }

    if ((v117 & 0x80u) == 0)
    {
      v48 = &outData;
    }

    else
    {
      v48 = outData;
    }

    if ((v117 & 0x80u) == 0)
    {
      v49 = v117;
    }

    else
    {
      v49 = *v116;
    }

    std::string::replace(&v108, v40, v47, v48, v49);
    v50 = sub_5544(18);
    v51 = *v50;
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
    {
      v52 = &v108;
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v108.__r_.__value_.__r.__words[0];
      }

      *__p = 136315650;
      *&__p[4] = "Device_USB_Aspen.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 350;
      *&__p[18] = 2080;
      *&__p[20] = v52;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updated USB UID is %s", __p, 0x1Cu);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v117 < 0)
  {
    operator delete(outData);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  sub_33CB40(&outData, v4, COERCE_DOUBLE(1735159650));
  if (v116[8] != 1)
  {
    v54 = 0;
    goto LABEL_169;
  }

  sub_65388(v110, *v116);
  if (!v110[0])
  {
    v107 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v107, "Could not construct");
  }

  sub_53E8(&v113, "");
  v53 = v110[0];
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_54A0(__p, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = v113;
  }

  if (v53 && (v55 = CFStringGetTypeID(), v55 == CFGetTypeID(v53)))
  {
    sub_1DAFFC(&__str, v53);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    __str = *__p;
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (v110[0])
  {
    CFRelease(v110[0]);
  }

  v57 = __str.__r_.__value_.__l.__size_;
  v56 = __str.__r_.__value_.__r.__words[0];
  v58 = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = __str.__r_.__value_.__l.__size_;
    v58 = __str.__r_.__value_.__r.__words[0];
  }

  if (!v59)
  {
    goto LABEL_164;
  }

  v60 = v58 + v59;
  v61 = v58;
  v62 = v60;
  do
  {
    v63 = v61;
    v64 = v61;
    while (1)
    {
      v65 = *v64++;
      if (v65 == 58)
      {
        break;
      }

      v63 = v64;
      if (v64 == v60)
      {
        v63 = v62;
        goto LABEL_140;
      }
    }

    v61 = (&v63->__r_.__value_.__l.__data_ + 1);
    v62 = v63;
  }

  while (v64 != v60);
LABEL_140:
  v66 = v63 - v58;
  if (v63 == v60)
  {
    v66 = -1;
  }

  v67 = v66 + 1;
  if ((v66 + 1) < 2)
  {
    goto LABEL_164;
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v66 == __str.__r_.__value_.__l.__size_ - 1)
    {
      goto LABEL_164;
    }
  }

  else
  {
    if (v66 == HIBYTE(__str.__r_.__value_.__r.__words[2]) - 1)
    {
      goto LABEL_164;
    }

    v56 = &__str;
    v57 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  v68 = v66 - 1;
  if (v57 >= v66 - 1)
  {
    v69 = v66 - 1;
  }

  else
  {
    v69 = v57;
  }

  if (v57 - v69 > 1)
  {
    v57 = v69 + 1;
  }

  if (v57)
  {
    v70 = v56 + v57;
    v71 = v56;
    v72 = v70;
    do
    {
      v73 = v71;
      v74 = v71;
      while (1)
      {
        v75 = *v74++;
        if (v75 == 58)
        {
          break;
        }

        v73 = v74;
        if (v74 == v70)
        {
          v73 = v72;
          goto LABEL_159;
        }
      }

      v71 = (&v73->__r_.__value_.__l.__data_ + 1);
      v72 = v73;
    }

    while (v74 != v70);
LABEL_159:
    v54 = 0;
    if (v73 == v70)
    {
      goto LABEL_165;
    }

    v76 = v73 - v56;
    if (v76 == -1)
    {
      goto LABEL_165;
    }

    v77 = v76 - v66;
    if (v77 < 0)
    {
      v77 = -v77;
    }

    if (v77 >= 2)
    {
      std::string::basic_string(__p, &__str, v76 + 1, v68, &v112);
      v103 = std::stoul(__p, 0, 16);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string(__p, &__str, v67, 0xFFFFFFFFFFFFFFFFLL, &v112);
      v104 = std::stoul(__p, 0, 16);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v54 = v103 | (v104 << 32);
      goto LABEL_165;
    }
  }

LABEL_164:
  v54 = 0;
LABEL_165:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v116[8])
  {
    sub_8AAAC(&outData);
  }

LABEL_169:
  sub_4B1A68(a1, v4, a3, &v108, v54);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  *a1 = &off_6C24B8;
  *(a1 + 532) = 0;
  *(a1 + 534) = 0;
  strcpy(__p, "DDAubolg");
  __p[9] = 0;
  *&__p[10] = 0;
  if (!AudioObjectHasProperty(v4, __p))
  {
    goto LABEL_174;
  }

  LODWORD(cf.__r_.__value_.__l.__data_) = sub_543D0(v4, __p, 0, 0);
  if (!LODWORD(cf.__r_.__value_.__l.__data_))
  {
    goto LABEL_174;
  }

  outData = 0;
  if (AudioObjectGetPropertyData(v4, __p, 0, 0, &cf, &outData))
  {
    goto LABEL_174;
  }

  v97 = outData;
  __str.__r_.__value_.__r.__words[0] = outData;
  sub_33CBE0(&v113, &__str.__r_.__value_.__l.__data_);
  v98 = v113.__r_.__value_.__r.__words[0];
  if (v97)
  {
    CFRelease(v97);
  }

  v110[0] = v98;
  if (v98)
  {
    v99 = sub_27CA94(v98);
    CFRelease(v98);
    *(a1 + 535) = v99;
    if (v99)
    {
      v100 = sub_5544(18);
      v101 = *v100;
      if (*v100)
      {
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 128))(&outData, a1);
          v102 = (v117 & 0x80u) == 0 ? &outData : outData;
          *__p = 136315650;
          *&__p[4] = "Device_USB_Aspen.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 378;
          *&__p[18] = 2080;
          *&__p[20] = v102;
          _os_log_impl(&dword_0, v101, OS_LOG_TYPE_INFO, "%25s:%-5d Device with UID %s is Apple Display", __p, 0x1Cu);
          if (v117 < 0)
          {
            operator delete(outData);
          }
        }
      }
    }
  }

  else
  {
LABEL_174:
    *(a1 + 535) = 0;
  }

  if (*(a1 + 535) == 1)
  {
    v78 = __p;
    (*(*a1 + 464))(__p, a1);
    v79 = __p[23];
    v81 = *__p;
    v80 = *&__p[8];
    if (__p[23] < 0)
    {
      v78 = *__p;
    }

    if (__p[23] >= 0)
    {
      v80 = __p[23];
    }

    v82 = &v78[v80];
    if (v80 >= 14)
    {
      v83 = v78;
      do
      {
        v84 = memchr(v83, 65, v80 - 13);
        if (!v84)
        {
          break;
        }

        if (*v84 == 0x6F4C206F69647541 && *(v84 + 6) == 0x6B636162706F6F4CLL)
        {
          goto LABEL_189;
        }

        v83 = v84 + 1;
        v80 = v82 - v83;
      }

      while (v82 - v83 > 13);
    }

    v84 = v82;
LABEL_189:
    if (v84 == v82)
    {
      v86 = -1;
    }

    else
    {
      v86 = v84 - v78;
    }

    if (v79 < 0)
    {
      operator delete(v81);
    }

    v87 = sub_5544(18);
    v88 = *v87;
    if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 464))(&outData, a1);
      if ((v117 & 0x80u) == 0)
      {
        v89 = &outData;
      }

      else
      {
        v89 = outData;
      }

      v90 = "yes";
      *&__p[4] = "Device_USB_Aspen.cpp";
      *&__p[12] = 1024;
      *__p = 136315906;
      if (v86 == -1)
      {
        v90 = "no";
      }

      *&__p[14] = 1733;
      *&__p[18] = 2080;
      *&__p[20] = v89;
      *&__p[28] = 2080;
      *&__p[30] = v90;
      _os_log_impl(&dword_0, v88, OS_LOG_TYPE_INFO, "%25s:%-5d IsAudioLoopbackDevice() - modelUID is %s. Loopback found: %s", __p, 0x26u);
      if (v117 < 0)
      {
        operator delete(outData);
      }
    }

    v91 = 1869968496;
    if (v86 == -1)
    {
      v95 = *(a1 + 268);
      strcpy(__p, "#mtsptuo");
      __p[9] = 0;
      *&__p[10] = 0;
      LODWORD(outData) = 0;
      AudioObjectGetPropertyDataSize(v95, __p, 0, 0, &outData);
      v92 = outData < 4;
      if (outData >= 4)
      {
        v91 = 1869968496;
      }

      else
      {
        v91 = 1768845428;
      }

      v93 = 2;
    }

    else
    {
      v92 = 0;
      v93 = 1;
    }

    goto LABEL_211;
  }

  v94 = *(a1 + 268);
  strcpy(__p, "#mtsptuo");
  __p[9] = 0;
  *&__p[10] = 0;
  LODWORD(outData) = 0;
  AudioObjectGetPropertyDataSize(v94, __p, 0, 0, &outData);
  if (outData >= 4)
  {
    v93 = 0;
    v92 = 0;
    v91 = 1869968496;
LABEL_211:
    sub_4B4F1C(a1, v93, v91, v92);
  }

  return a1;
}

void sub_33DC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, void *a36, void *a37, uint64_t a38, char a39, int a40, __int16 a41, char a42, void *a43, void *__p, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a2)
  {
    if (SHIBYTE(a49) < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x33D694);
  }

  _Unwind_Resume(exception_object);
}

void sub_33DED4(void *a1, uint64_t a2)
{
  sub_53E8(__p, "");
  sub_33DF4C(a1, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_33DF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_33DF4C(void *a1, uint64_t a2, uint64_t a3)
{
  bundle = CFBundleGetBundleWithIdentifier(@"com.apple.audio.CoreAudio.VirtualAudio");
  v31 = 0;
  if (!bundle)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "Localization.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 30;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CFBundleGetBundleWithIdentifier() returned NULL.", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CFBundleGetBundleWithIdentifier() returned NULL.");
  }

  sub_22170(&v32, a2);
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

  v9 = std::string::insert(&v32, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v9->__r_.__value_.__l + 2);
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (__p[23] >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = *__p;
  }

  if (!v11)
  {
    v29 = 0;
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v32.__r_.__value_.__l.__data_) = 136315394;
      *(v32.__r_.__value_.__r.__words + 4) = "Localization.cpp";
      WORD2(v32.__r_.__value_.__r.__words[1]) = 1024;
      *(&v32.__r_.__value_.__r.__words[1] + 6) = 35;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Creating ascf::StringRef returned NULL for our key", &v32, 0x12u);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Creating ascf::StringRef returned NULL for our key");
  }

  if (__p[23] >= 0)
  {
    v12 = __p[23];
  }

  else
  {
    v12 = *&__p[8];
  }

  v13 = CFStringCreateWithBytes(0, v11, v12, 0x8000100u, 0);
  v29 = v13;
  if (!v13)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  v14 = CFBundleCopyLocalizedString(bundle, v13, 0, @"Localizable");
  cf = v14;
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = CFGetTypeID(v14);
  if (v15 != CFStringGetTypeID())
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
  }

  if (!cf)
  {
LABEL_29:
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v32.__r_.__value_.__l.__data_) = 136315394;
      *(v32.__r_.__value_.__r.__words + 4) = "Localization.cpp";
      WORD2(v32.__r_.__value_.__r.__words[1]) = 1024;
      *(&v32.__r_.__value_.__r.__words[1] + 6) = 40;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CFBundleCopyLocalizedString returned NULL.", &v32, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "CFBundleCopyLocalizedString returned NULL.");
  }

  if (sub_69954(cf, &v29))
  {
    sub_F76D4(a1, cf);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  CFRelease(cf);
  if (v29)
  {
    CFRelease(v29);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return sub_33E468(&bundle);
}

void sub_33E36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_452F0(&a10);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_33E468(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_33E468(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

void sub_33E4AC(uint64_t a1, uint64_t a2)
{
  sub_53E8(__p, "specific-");
  sub_33DF4C(__src, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    if (__src[1])
    {
      sub_54A0(a1, __src[0], __src[1]);
      goto LABEL_9;
    }
  }

  else if (HIBYTE(v7))
  {
    *a1 = *__src;
    *(a1 + 16) = v7;
    goto LABEL_9;
  }

  sub_33DED4(a1, a2);
LABEL_9:
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_33E55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_33E58C(void *a1)
{
  v14 = 0;
  v2 = MGCopyAnswerWithError();
  v3 = v2;
  *buf = v2;
  if (!v2)
  {
    LOBYTE(v12) = 0;
    v13 = 0;
    goto LABEL_13;
  }

  v4 = CFGetTypeID(v2);
  if (v4 == CFStringGetTypeID())
  {
    sub_23F428(&__p, buf);
    v12 = __p.__r_.__value_.__r.__words[0];
    v5 = 1;
    v13 = 1;
  }

  else
  {
    v5 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
  }

  CFRelease(v3);
  if (!v5 || (v6 = v12) == 0)
  {
LABEL_13:
    v9 = sub_5544(18);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Localization.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 89;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not retrieve device name for localized Microphone Port", buf, 0x12u);
      }
    }

    sub_33DED4(a1, 1886216809);
    return;
  }

  sub_125D8(&__p, v12);
  v7 = std::string::append(&__p, "-", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v7->__r_.__value_.__l + 2);
  *buf = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_33DF4C(a1, 1886216809, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  CFRelease(v6);
}

void sub_33E778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_33E7E4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void sub_33E824(void *a1)
{
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 502;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager[%p]::UpdateState()", buf, 0x1Cu);
      }
    }
  }

  v4 = atomic_load(a1 + 12);
  if (v4 == pthread_self())
  {
    v149 = sub_5544(14);
    v150 = *v149;
    if (*v149)
    {
      if (os_log_type_enabled(*v149, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 505;
        _os_log_impl(&dword_0, v150, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Mutex is held during state update. This should not happen.", buf, 0x12u);
      }
    }
  }

  v180[0] = 0;
  v180[1] = 0;
  v179 = v180;
  v178 = 0;
  theArray = IAPAudioCopyDeviceStates();
  LOWORD(v172) = 1;
  v5 = sub_5544(11);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 76;
        *&buf[18] = 1024;
        *&buf[20] = Count;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d iapd IAPAudioCopyDeviceStates() dictionary contains %u items.", buf, 0x18u);
      }
    }
  }

  v165 = a1;
  v8 = 0;
  v177[1] = 0;
  v176 = v177;
  v177[0] = 0;
  v169 = IAPAudioTransportLineoutStateKey;
  v166 = IAPAudioTransportUSBAudioStateKey;
  v9 = IAPAudioTransportNameKey;
  while (1)
  {
    v10 = theArray;
    if (theArray)
    {
      v10 = CFArrayGetCount(theArray);
    }

    if (v8 >= v10)
    {
      break;
    }

    v174 = 0;
    if ((sub_2E463C(&theArray, v8, &v174) & 1) == 0)
    {
      v155 = sub_5544(14);
      v156 = *v155;
      if (*v155 && os_log_type_enabled(*v155, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 83;
        _os_log_impl(&dword_0, v156, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IAPAudioGetDeviceStates() returned a CFArray item that is not a CFDictionaryRef.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "IAPAudioGetDeviceStates() returned a CFArray item that is not a CFDictionaryRef.");
    }

    v11 = v174;
    v183 = v174;
    v184 = 0;
    v12 = sub_5544(11);
    if (*(v12 + 8))
    {
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = CFDictionaryGetCount(v11);
          *buf = 136315650;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 85;
          *&buf[18] = 2048;
          *&buf[20] = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d iapd state dictionary contains %ld items.", buf, 0x1Cu);
        }
      }
    }

    LODWORD(v185) = -1;
    if ((sub_2E7334(v183, v9, &v185) & 1) == 0)
    {
      v158 = sub_5544(14);
      v159 = *v158;
      if (*v158 && os_log_type_enabled(*v158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 65;
        _os_log_impl(&dword_0, v159, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IAPAudioGetDeviceStates() returned a CFDictionaryRef item that does not contain key IAPAudioTransportNameKey.", buf, 0x12u);
      }

      v160 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v160, "IAPAudioGetDeviceStates() returned a CFDictionaryRef item that does not contain key IAPAudioTransportNameKey.");
LABEL_331:
    }

    if (v185 >= 2)
    {
      v161 = sub_5544(14);
      v162 = *v161;
      if (*v161 && os_log_type_enabled(*v161, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 66;
        *&buf[18] = 1024;
        *&buf[20] = v185;
        _os_log_impl(&dword_0, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IAPAudioGetDeviceStates() returned a CFDictionaryRef item with an invalid value for IAPAudioTransportNameKey: %d.", buf, 0x18u);
      }

      v160 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v160, "IAPAudioGetDeviceStates() returned a CFDictionaryRef item with an invalid value for IAPAudioTransportNameKey: %d.");
      goto LABEL_331;
    }

    v15 = sub_5544(11);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 67;
          *&buf[18] = 1024;
          *&buf[20] = v185;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Current transport is: %d.", buf, 0x18u);
        }
      }
    }

    v17 = v185;
    v186 = 0;
    v187 = 0;
    v185 = &v186;
    v182 = 0;
    sub_2E7334(v183, v169, &v182);
    if ((v182 & 2) != 0)
    {
      *buf = (v182 << 32) | 2;
      sub_3407C0(&v185, 2, buf);
      v18 = sub_5544(11);
      if (*(v18 + 8))
      {
        v19 = *v18;
        if (*v18)
        {
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "IAPManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 95;
            *&buf[18] = 1024;
            *&buf[20] = v182;
            *&buf[24] = 1024;
            *&buf[26] = v17;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Added line-out to DeviceStateMap with state %d for transport %u.", buf, 0x1Eu);
          }
        }
      }
    }

    v181 = 0;
    sub_2E7334(v183, v166, &v181);
    if ((v181 & 2) != 0)
    {
      *buf = (v181 << 32) | 4;
      sub_3407C0(&v185, 4, buf);
      v20 = sub_5544(11);
      if (*(v20 + 8))
      {
        v21 = *v20;
        if (*v20)
        {
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "IAPManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 103;
            *&buf[18] = 1024;
            *&buf[20] = v181;
            *&buf[24] = 1024;
            *&buf[26] = v17;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Added USB to DeviceStateMap with state %d for transport %u.", buf, 0x1Eu);
          }
        }
      }
    }

    if (v187)
    {
      *buf = v17;
      *&buf[16] = 0;
      *&buf[24] = 0;
      *&buf[8] = &buf[16];
      if (v185 != &v186)
      {
        if (*&buf[8] != &buf[16])
        {
          v22 = &buf[16];
          do
          {
            v23 = *(v22 + 2);
            v44 = *v23 == v22;
            v22 = v23;
          }

          while (v44);
        }

        operator new();
      }

      v24 = v177[0];
      if (!v177[0])
      {
LABEL_49:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v25 = v24;
          v26 = *(v24 + 8);
          if (*buf >= v26)
          {
            break;
          }

          v24 = *v25;
          if (!*v25)
          {
            goto LABEL_49;
          }
        }

        if (v26 >= *buf)
        {
          break;
        }

        v24 = v25[1];
        if (!v24)
        {
          goto LABEL_49;
        }
      }

      sub_477A0(*&buf[16]);
      v27 = sub_5544(11);
      if (*(v27 + 8))
      {
        v28 = *v27;
        if (*v27)
        {
          if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "IAPManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 109;
            *&buf[18] = 2048;
            *&buf[20] = v187;
            *&buf[28] = 1024;
            *&buf[30] = v17;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Added DeviceStateMap with %lu items for transport %u.", buf, 0x22u);
          }
        }
      }
    }

    sub_477A0(v186);
    sub_A1D30(&v183);
    ++v8;
  }

  sub_A0804(&theArray);
  if (v176 == v177)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v176 + 8);
  }

  v30 = sub_5544(11);
  v31 = *v30;
  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "IAPManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 514;
    *&buf[18] = 1024;
    *&buf[20] = v29;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Current transport is %d.", buf, 0x18u);
  }

  if (v29)
  {
    v33 = v176 + 6;
    v32 = v176[6];
    if (!v32)
    {
      goto LABEL_69;
    }

    v34 = v176 + 6;
    do
    {
      if (*(v32 + 7) >= 2)
      {
        v34 = v32;
      }

      v32 = v32[*(v32 + 7) < 2];
    }

    while (v32);
    if (v34 != v33 && *(v34 + 7) <= 2)
    {
      v35 = *(v34 + 8);
    }

    else
    {
LABEL_69:
      v35 = 0;
    }

    v36 = sub_5544(11);
    v37 = v35 & 2;
    v38 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      *&buf[18] = 1024;
      *&buf[20] = v35;
      *&buf[24] = 1024;
      *&buf[26] = v37 >> 1;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Line-out state = %u, connected = %d", buf, 0x1Eu);
    }

    if ((v35 & 2) != 0)
    {
      *buf = 1819176821;
      sub_297E50(&v179, 1819176821, buf);
      IAPAudioGetVolumeForTransport();
    }

    v39 = *v33;
    if (!*v33)
    {
      goto LABEL_82;
    }

    v40 = v33;
    do
    {
      if (*(v39 + 28) >= 4)
      {
        v40 = v39;
      }

      v39 = *(v39 + 8 * (*(v39 + 28) < 4));
    }

    while (v39);
    if (v40 != v33 && *(v40 + 7) <= 4)
    {
      v41 = *(v40 + 8);
    }

    else
    {
LABEL_82:
      v41 = 0;
    }

    v42 = sub_5544(11);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 533;
      *&buf[18] = 1024;
      *&buf[20] = v41;
      *&buf[24] = 1024;
      *&buf[26] = (v41 & 2) >> 1;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d USB audio state = %u, connected = %d", buf, 0x1Eu);
    }

    if ((v41 & 2) != 0)
    {
      *buf = 1684500341;
      sub_297E50(&v179, 1684500341, buf);
    }

    buf[0] = 0;
    v44 = IAPAudioIsVolumeControlSupportedForTransport() == 1 && buf[0] == 1;
    v45 = v44;
    v170 = v45;
    v46 = sub_5544(11);
    v47 = *v46;
    if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 541;
      *&buf[18] = 1024;
      *&buf[20] = v170;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Accessory supports volume control = %u", buf, 0x18u);
    }

    v164 = v37 != 0;
  }

  else
  {
    v164 = 0;
    v170 = 0;
  }

  v167 = v29;
  v174 = v165;
  v48 = (*(*v165 + 16))(v165);
  v175 = v48;
  p_theArray = &theArray;
  v172 = 0;
  v173 = 0;
  v50 = (v165 + 14);
  v51 = v165[14];
  theArray = &v172;
  v52 = (v165 + 15);
  v53 = v179;
  v185 = &theArray;
  v186 = &v172;
  v163 = v48;
  if (v51 == v165 + 15)
  {
    v62 = &v172;
LABEL_121:
    sub_340D10(buf, v53, v180, p_theArray, v62);
  }

  else
  {
    while (v53 != v180)
    {
      v54 = *(v51 + 7);
      v55 = v53[7];
      if (v54 >= v55)
      {
        if (v55 >= v54)
        {
          v58 = v51[1];
          v59 = v51;
          if (v58)
          {
            do
            {
              v51 = v58;
              v58 = *v58;
            }

            while (v58);
          }

          else
          {
            do
            {
              v51 = v59[2];
              v44 = *v51 == v59;
              v59 = v51;
            }

            while (!v44);
          }
        }

        else
        {
          sub_272380(&v185, v53 + 7);
        }

        v60 = *(v53 + 1);
        if (v60)
        {
          do
          {
            v53 = v60;
            v60 = *v60;
          }

          while (v60);
        }

        else
        {
          do
          {
            v61 = v53;
            v53 = *(v53 + 2);
          }

          while (*v53 != v61);
        }
      }

      else
      {
        sub_272380(&v185, v51 + 7);
        v56 = v51[1];
        if (v56)
        {
          do
          {
            v51 = v56;
            v56 = *v56;
          }

          while (v56);
        }

        else
        {
          do
          {
            v57 = v51;
            v51 = v51[2];
          }

          while (*v51 != v57);
        }
      }

      if (v51 == v52)
      {
        p_theArray = v185;
        v62 = v186;
        goto LABEL_121;
      }
    }

    sub_340D10(buf, v51, v165 + 30, v185, v186);
  }

  v63 = theArray;
  if (theArray != &v172)
  {
    do
    {
      v64 = *(v63 + 7);
      v65 = sub_5544(11);
      v66 = *v65;
      if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&v185, v64);
        v67 = &v185;
        if (v187 < 0)
        {
          v67 = v185;
        }

        v68 = v180[0];
        if (!v180[0])
        {
          goto LABEL_137;
        }

        v69 = v180;
        do
        {
          v70 = v68;
          v71 = v69;
          v72 = *(v68 + 7);
          if (v72 >= v64)
          {
            v69 = v68;
          }

          v68 = v68[v72 < v64];
        }

        while (v68);
        if (v69 == v180)
        {
          goto LABEL_137;
        }

        if (v72 < v64)
        {
          v70 = v71;
        }

        if (v64 < *(v70 + 7))
        {
LABEL_137:
          v69 = v180;
        }

        v44 = v69 == v180;
        *buf = 136315906;
        v73 = "";
        if (v44)
        {
          v73 = "dis";
        }

        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 553;
        *&buf[18] = 2080;
        *&buf[20] = v67;
        *&buf[28] = 2080;
        *&buf[30] = v73;
        _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d iAP reports that port type %s was %sconnected.", buf, 0x26u);
        if (SHIBYTE(v187) < 0)
        {
          operator delete(v185);
        }
      }

      v74 = *(v63 + 1);
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = *(v63 + 2);
          v44 = *v75 == v63;
          v63 = v75;
        }

        while (!v44);
      }

      v63 = v75;
    }

    while (v75 != &v172);
  }

  if (!v173 && *(v165 + 136) == v170)
  {
    v76 = sub_5544(11);
    v77 = *v76;
    if (*v76)
    {
      if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 554;
        _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant iAP notification", buf, 0x12u);
      }
    }
  }

  *(v165 + 26) = v167;
  if (v50 != &v179)
  {
    v78 = v179;
    if (v165[16])
    {
      v79 = *v50;
      *v50 = v52;
      (*v52)[2] = 0;
      *v52 = 0;
      v165[16] = 0;
      if (v79[1])
      {
        v80 = v79[1];
      }

      else
      {
        v80 = v79;
      }

      if (v80)
      {
        v81 = sub_1658B4(v80);
        if (v78 == v180)
        {
          v83 = v80;
        }

        else
        {
          v82 = v78;
          do
          {
            v83 = v81;
            v84 = v82[7];
            *(v80 + 28) = v84;
            v85 = *v52;
            v86 = (v165 + 15);
            v87 = (v165 + 15);
            if (*v52)
            {
              do
              {
                while (1)
                {
                  v86 = v85;
                  if (v84 >= *(v85 + 7))
                  {
                    break;
                  }

                  v85 = *v85;
                  v87 = v86;
                  if (!*v86)
                  {
                    goto LABEL_167;
                  }
                }

                v85 = v85[1];
              }

              while (v85);
              v87 = v86 + 1;
            }

LABEL_167:
            sub_46B44(v50, v86, v87, v80);
            if (v81)
            {
              v81 = sub_1658B4(v81);
            }

            else
            {
              v81 = 0;
            }

            v88 = *(v82 + 1);
            if (v88)
            {
              do
              {
                v78 = v88;
                v88 = *v88;
              }

              while (v88);
            }

            else
            {
              do
              {
                v78 = *(v82 + 2);
                v44 = *v78 == v82;
                v82 = v78;
              }

              while (!v44);
            }

            if (!v83)
            {
              break;
            }

            v80 = v83;
            v82 = v78;
          }

          while (v78 != v180);
        }

        sub_477A0(v83);
        if (v81)
        {
          for (i = v81[2]; i; i = i[2])
          {
            v81 = i;
          }

          sub_477A0(v81);
        }
      }

      else
      {
        sub_477A0(0);
      }
    }

    if (v78 != v180)
    {
      operator new();
    }
  }

  v168 = *(v165 + 136);
  *(v165 + 136) = v170;
  if (v164)
  {
    v90 = *v50;
    if (*v50 == v52)
    {
      goto LABEL_199;
    }

    while (*(v90 + 7) != 1819176821)
    {
      v91 = v90[1];
      if (v91)
      {
        do
        {
          v92 = v91;
          v91 = *v91;
        }

        while (v91);
      }

      else
      {
        do
        {
          v92 = v90[2];
          v44 = *v92 == v90;
          v90 = v92;
        }

        while (!v44);
      }

      v90 = v92;
      if (v92 == v52)
      {
        goto LABEL_199;
      }
    }

    if (v52 == v90)
    {
LABEL_199:
      *(v165 + 35) = v178;
    }
  }

  v93 = v165;
  if (v173)
  {
    v94 = sub_5544(11);
    if (*(v94 + 8))
    {
      v95 = *v94;
      if (*v94)
      {
        if (os_log_type_enabled(*v94, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 585;
          *&buf[18] = 2048;
          *&buf[20] = v165;
          *&buf[28] = 2048;
          *&buf[30] = &theArray;
          _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager[%p]::NotifyConnectionListeners(changedPorts %p)", buf, 0x26u);
        }
      }
    }

    v96 = atomic_load(v165 + 12);
    if (v96 != pthread_self())
    {
      v151 = sub_5544(14);
      v152 = *v151;
      if (*v151)
      {
        if (os_log_type_enabled(*v151, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 589;
          _os_log_impl(&dword_0, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: called while mutex is not held by the current thread.", buf, 0x12u);
        }
      }
    }

    if (v173 && v165[21])
    {
      v97 = theArray;
      if (theArray != &v172)
      {
        do
        {
          v98 = sub_5544(11);
          v99 = *v98;
          if (*v98 && os_log_type_enabled(*v98, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&v185, *(v97 + 7));
            v100 = SHIBYTE(v187);
            v101 = v185;
            v102 = sub_340A14(v165, *(v97 + 7));
            *buf = 136315906;
            v103 = &v185;
            if (v100 < 0)
            {
              v103 = v101;
            }

            *&buf[4] = "IAPManager.cpp";
            v104 = "disconnected";
            if (v102)
            {
              v104 = "connected";
            }

            *&buf[12] = 1024;
            *&buf[14] = 595;
            *&buf[18] = 2080;
            *&buf[20] = v103;
            *&buf[28] = 2080;
            *&buf[30] = v104;
            _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEBUG, "%25s:%-5d iAP Port (type '%s') was %s", buf, 0x26u);
            if (SHIBYTE(v187) < 0)
            {
              operator delete(v185);
            }
          }

          v105 = *(v97 + 1);
          if (v105)
          {
            do
            {
              v106 = v105;
              v105 = *v105;
            }

            while (v105);
          }

          else
          {
            do
            {
              v106 = *(v97 + 2);
              v44 = *v106 == v97;
              v97 = v106;
            }

            while (!v44);
          }

          v97 = v106;
        }

        while (v106 != &v172);
      }

      v93 = v165;
      sub_340880(buf, v165 + 19);
      sub_24F408(&v185, v165);
      v107 = theArray;
      if (theArray != &v172)
      {
        do
        {
          v108 = *buf;
          if (*buf != &buf[8])
          {
            do
            {
              (*(v108 + 4))(*(v107 + 7), *(v108 + 5));
              v109 = *(v108 + 1);
              if (v109)
              {
                do
                {
                  v110 = v109;
                  v109 = *v109;
                }

                while (v109);
              }

              else
              {
                do
                {
                  v110 = *(v108 + 2);
                  v44 = *v110 == v108;
                  v108 = v110;
                }

                while (!v44);
              }

              v108 = v110;
            }

            while (v110 != &buf[8]);
          }

          v111 = *(v107 + 1);
          if (v111)
          {
            do
            {
              v112 = v111;
              v111 = *v111;
            }

            while (v111);
          }

          else
          {
            do
            {
              v112 = *(v107 + 2);
              v44 = *v112 == v107;
              v107 = v112;
            }

            while (!v44);
          }

          v107 = v112;
        }

        while (v112 != &v172);
      }

      if (v186 == 1)
      {
        (*(*v185 + 2))(v185);
      }

      sub_477A0(*&buf[8]);
    }

    v113 = sub_5544(11);
    if (*(v113 + 8))
    {
      v114 = *v113;
      if (*v113)
      {
        if (os_log_type_enabled(*v113, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 611;
          *&buf[18] = 2048;
          *&buf[20] = v93;
          *&buf[28] = 2048;
          *&buf[30] = &theArray;
          _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager[%p]::NotifyConnectionListeners(changedPorts %p)", buf, 0x26u);
        }
      }
    }
  }

  if (v168 != v170)
  {
    v115 = sub_5544(11);
    v116 = sub_5544(39);
    v117 = 0;
    *buf = 0x100000002;
    v118 = *(v115 + 8);
    while (1)
    {
      v119 = *&buf[v117];
      if (((v118 & v119) != 0) != ((*(v116 + 8) & v119) != 0))
      {
        break;
      }

      v117 += 4;
      if (v117 == 8)
      {
        goto LABEL_251;
      }
    }

    if ((v118 & v119) == 0)
    {
      v115 = v116;
    }

LABEL_251:
    v120 = *v115;
    if (v120 && os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
    {
      v121 = *(v93 + 136);
      *buf = 136315650;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 575;
      *&buf[18] = 1024;
      *&buf[20] = v121;
      _os_log_impl(&dword_0, v120, OS_LOG_TYPE_DEBUG, "%25s:%-5d Volume control support state changed to %u. Updated cache and will notify listeners.", buf, 0x18u);
    }

    v122 = sub_5544(11);
    if (*(v122 + 8))
    {
      v123 = *v122;
      if (*v122)
      {
        if (os_log_type_enabled(*v122, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 617;
          *&buf[18] = 2048;
          *&buf[20] = v93;
          _os_log_impl(&dword_0, v123, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager[%p]::VolumeControlSupport()", buf, 0x1Cu);
        }
      }
    }

    v124 = atomic_load(v93 + 12);
    if (v124 != pthread_self())
    {
      v153 = sub_5544(14);
      v154 = *v153;
      if (*v153)
      {
        if (os_log_type_enabled(*v153, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 621;
          _os_log_impl(&dword_0, v154, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: called while mutex is not held by the current thread.", buf, 0x12u);
        }
      }
    }

    if (v93[16] && v93[24])
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v125 = v93[14];
      if (v125 != v52)
      {
        do
        {
          sub_271F04(buf, &buf[8], *(v125 + 7), v125 + 7);
          v126 = v125[1];
          if (v126)
          {
            do
            {
              v127 = v126;
              v126 = *v126;
            }

            while (v126);
          }

          else
          {
            do
            {
              v127 = v125[2];
              v44 = *v127 == v125;
              v125 = v127;
            }

            while (!v44);
          }

          v125 = v127;
        }

        while (v127 != v52);
      }

      v186 = 0;
      v187 = 0;
      v185 = &v186;
      v128 = v93;
      v129 = v93[22];
      if (v129 != v128 + 23)
      {
        if (v185 != &v186)
        {
          v130 = &v186;
          do
          {
            v131 = v130[2];
            v44 = *v131 == v130;
            v130 = v131;
          }

          while (v44);
        }

        operator new();
      }

      v93 = v165;
      sub_24F408(&v183, v165);
      v132 = *buf;
      if (*buf != &buf[8])
      {
        do
        {
          v133 = v186;
          if (v186)
          {
            v134 = *(v132 + 7);
            v135 = &v186;
            do
            {
              v136 = v133;
              v137 = v135;
              v138 = *(v133 + 8);
              if (v138 >= v134)
              {
                v135 = v133;
              }

              v133 = v133[v138 < v134];
            }

            while (v133);
            if (v135 != &v186)
            {
              if (v138 < v134)
              {
                v136 = v137;
              }

              if (v134 >= *(v136 + 8))
              {
                v139 = v135[5];
                v140 = v135 + 6;
                if (v139 != v135 + 6)
                {
                  do
                  {
                    (v139[4])(*(v132 + 7), v139[5]);
                    v141 = v139[1];
                    if (v141)
                    {
                      do
                      {
                        v142 = v141;
                        v141 = *v141;
                      }

                      while (v141);
                    }

                    else
                    {
                      do
                      {
                        v142 = v139[2];
                        v44 = *v142 == v139;
                        v139 = v142;
                      }

                      while (!v44);
                    }

                    v139 = v142;
                  }

                  while (v142 != v140);
                }
              }
            }
          }

          v143 = *(v132 + 1);
          if (v143)
          {
            do
            {
              v144 = v143;
              v143 = *v143;
            }

            while (v143);
          }

          else
          {
            do
            {
              v144 = *(v132 + 2);
              v44 = *v144 == v132;
              v132 = v144;
            }

            while (!v44);
          }

          v132 = v144;
        }

        while (v144 != &buf[8]);
      }

      if (v184 == 1)
      {
        (*(*v183 + 16))(v183);
      }

      sub_2492C0(v186);
      sub_477A0(*&buf[8]);
    }

    v145 = sub_5544(11);
    if (*(v145 + 8))
    {
      v146 = *v145;
      if (*v145)
      {
        if (os_log_type_enabled(*v145, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 644;
          *&buf[18] = 2048;
          *&buf[20] = v93;
          _os_log_impl(&dword_0, v146, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager[%p]::VolumeControlSupport()", buf, 0x1Cu);
        }
      }
    }
  }

  v147 = sub_5544(11);
  if (*(v147 + 8))
  {
    v148 = *v147;
    if (*v147)
    {
      if (os_log_type_enabled(*v147, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 579;
        *&buf[18] = 2048;
        *&buf[20] = v93;
        _os_log_impl(&dword_0, v148, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager[%p]::UpdateState()", buf, 0x1Cu);
      }
    }
  }

  sub_477A0(v172);
  if (v163)
  {
    (*(*v93 + 24))(v93);
  }

  sub_2492C0(v177[0]);
  sub_477A0(v180[0]);
}