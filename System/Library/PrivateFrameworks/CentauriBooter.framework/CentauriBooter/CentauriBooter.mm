void CentauriTransport::create(uint64_t *a1@<X0>, ACFULogging *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v14 = operator new(0x70uLL);
  ACFUTransport::ACFUTransport(v14);
  *v14 = &unk_28561A990;
  v14[24] = 1;
  *(v14 + 4) = 0;
  *(v14 + 10) = 0;
  *(v14 + 6) = 0;
  *(v14 + 36) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 76) = 0x300000000;
  *(v14 + 11) = 0;
  *(v14 + 48) = 256;
  v14[98] = 0;
  *(v14 + 13) = 0;
  *a7 = v14;
  v15 = *a1;
  v16 = a1[1];
  v21[0] = v15;
  v21[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = CentauriTransport::init(v14, v21, a2, a3, v9, v8, v7);
  v18 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v18 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize transport object\n", "CentauriTransport", "create");
    *a7 = 0;
    v20 = *(*v14 + 64);

    v20(v14);
  }
}

void sub_243386DFC(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

void CentauriTransport::CentauriTransport(CentauriTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_28561A990;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 76) = 0x300000000;
  *(v1 + 88) = 0;
  *(v1 + 96) = 256;
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
}

uint64_t CentauriTransport::init(uint64_t a1, uint64_t *a2, ACFULogging *a3, uint64_t a4, char a5, char a6, int a7)
{
  Platform = CentauriTransport::getPlatform(a1);
  *(a1 + 80) = Platform;
  if (Platform == 3)
  {
    CentauriTransport::init(Platform);
    return 0;
  }

  result = CentauriTransport::parseDeviceBootArgs(a1);
  if (!result)
  {
    return result;
  }

  v16 = CentauriTransport::tagForBootMode(a3);
  if (!v16)
  {
    CentauriTransport::init(a3);
    return 0;
  }

  *(a1 + 76) = a3;
  if (a4)
  {
    *(a1 + 88) = a4;
    *(a1 + 96) = 1;
  }

  *(a1 + 97) = a5;
  *(a1 + 98) = a6;
  LogInstance = ACFULogging::getLogInstance(v16);
  v18 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: === CentauriTransport Config ===\n", "CentauriTransport", "init");
  v19 = ACFULogging::getLogInstance(v18);
  CentauriTransport::platformToString(*(a1 + 80), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v21 = ACFULogging::handleMessage(v19, 0, "%s::%s: Platform: %s\n", "CentauriTransport", "init", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = ACFULogging::getLogInstance(v21);
  v23 = ACFULogging::handleMessage(v22, 0, "%s::%s: Timeouts:\n", "CentauriTransport", "init");
  v24 = ACFULogging::getLogInstance(v23);
  v25 = ACFULogging::handleMessage(v24, 0, "%s::%s:     ROM transport driver open: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80)]);
  v26 = ACFULogging::getLogInstance(v25);
  v27 = ACFULogging::handleMessage(v26, 0, "%s::%s:     ROM send image: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80) + 1]);
  v28 = ACFULogging::getLogInstance(v27);
  v29 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  if (*(a1 + 96))
  {
    v29 += 65000;
  }

  v30 = ACFULogging::handleMessage(v28, 0, "%s::%s:     Second stage transport driver open: %lld milliseconds\n", "CentauriTransport", "init", v29);
  v31 = ACFULogging::getLogInstance(v30);
  v32 = ACFULogging::handleMessage(v31, 0, "%s::%s:     Second stage send image: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3]);
  v33 = ACFULogging::getLogInstance(v32);
  v34 = ACFULogging::handleMessage(v33, 0, "%s::%s:     CCHI stage transport driver open: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80) + 4]);
  v35 = ACFULogging::getLogInstance(v34);
  CentauriTransport::bootModeToString(*(a1 + 76), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p.__r_.__value_.__r.__words[0];
  }

  v37 = ACFULogging::handleMessage(v35, 0, "%s::%s: Boot mode: %s\n", "CentauriTransport", "init", v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38 = ACFULogging::getLogInstance(v37);
  if (*(a1 + 24))
  {
    v39 = "Yes";
  }

  else
  {
    v39 = "No";
  }

  v40 = ACFULogging::handleMessage(v38, 0, "%s::%s: Enable second boot stage: %s\n", "CentauriTransport", "init", v39);
  v41 = ACFULogging::getLogInstance(v40);
  if (*(a1 + 96))
  {
    v42 = "Yes";
  }

  else
  {
    v42 = "No";
  }

  v43 = ACFULogging::handleMessage(v41, 0, "%s::%s: Client owns control driver: %s\n", "CentauriTransport", "init", v42);
  v44 = ACFULogging::getLogInstance(v43);
  if (*(a1 + 97))
  {
    v45 = "Yes";
  }

  else
  {
    v45 = "No";
  }

  v46 = ACFULogging::handleMessage(v44, 0, "%s::%s: Enable log collection: %s\n", "CentauriTransport", "init", v45);
  v47 = ACFULogging::getLogInstance(v46);
  if (*(a1 + 98))
  {
    v48 = "Yes";
  }

  else
  {
    v48 = "No";
  }

  v49 = ACFULogging::handleMessage(v47, 0, "%s::%s: Extend timeouts for SiK generation: %s\n", "CentauriTransport", "init", v48);
  v50 = ACFULogging::getLogInstance(v49);
  ACFULogging::handleMessage(v50, 0, "%s::%s: =========================\n", "CentauriTransport", "init");
  v51 = a2[1];
  v55 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
  }

  v52 = ACFUTransport::init();
  v53 = v55;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if ((v52 & 1) == 0)
  {
    CentauriTransport::init(v53);
    return 0;
  }

  if (a7)
  {
    MEMORY[0x245D31450](&__block_literal_global);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  *(a1 + 104) = Mutable;
  if (!Mutable)
  {
    CentauriTransport::init(0);
  }

  return 1;
}

void sub_24338729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void CentauriTransport::getBoardParameters(CentauriTransport *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v89[1] = *MEMORY[0x277D85DE8];
  v86 = xmmword_278DB0548;
  v87 = *&off_278DB0558;
  v88 = xmmword_278DB0568;
  *v84 = xmmword_278DB0528;
  v85 = *&off_278DB0538;
  v82 = 0;
  v83 = 0;
  __p = 0;
  v8 = std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(&__p, v84, v89, 0xAuLL);
  *v84 = 0u;
  v85 = 0u;
  *v79 = 0;
  *bytes = 0;
  v78 = 0;
  *v77 = 0;
  *v76 = 0;
  *v75 = 0;
  *v74 = 0;
  v73 = 0;
  LogInstance = ACFULogging::getLogInstance(v8);
  v10 = "No";
  if (a2)
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  if (a3)
  {
    v10 = "Yes";
  }

  v12 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: bootedQuery %s, generateNonce %s\n", "CentauriTransport", "getBoardParameters", v11, v10);
  v13 = *(this + 7);
  if (v13)
  {
    if (!a3 || *(v13 + 80) == 1)
    {
      v61 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v61, 0, "%s::%s: returning cached values\n", "CentauriTransport", "getBoardParameters");
      v17 = 0;
      goto LABEL_33;
    }

    v14 = *(this + 8);
    *(this + 7) = 0;
    *(this + 8) = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  if (a2)
  {
    v15 = CentauriTransport::openInterfaceDriver(this);
    if (v15)
    {
      v16 = CentauriTransport::sendCCHICommand(this, 0, 0, 2u);
      v17 = v16;
      if (v16)
      {
        Length = CFDataGetLength(v16);
        if (Length == 58)
        {
          BytePtr = CFDataGetBytePtr(v17);
          *&v77[2] = *BytePtr;
          v20 = *(BytePtr + 2);
          *v77 = *(BytePtr + 2);
          v21 = *(BytePtr + 44);
          *v79 = *(BytePtr + 4);
          *bytes = v21;
          v75[1] = *(BytePtr + 52);
          v75[0] = *(BytePtr + 53);
          v73 = *(BytePtr + 54);
          v74[1] = *(BytePtr + 55);
          v74[0] = *(BytePtr + 56);
          *v76 = *(BytePtr + 57);
          v22 = *(BytePtr + 28);
          *v84 = *(BytePtr + 12);
          v85 = v22;
LABEL_26:
          if (v20 == 1)
          {
            v31 = ACFULogging::getLogInstance(BytePtr);
            ACFULogging::handleMessage(v31, 0, "%s::%s: Detected ACB board ID (%u), reporting TCB board ID (%u) instead\n", "CentauriTransport", "getBoardParameters", 1, 3);
            *v77 = 3;
          }

          std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> const&,0>(&__p, &v72);
          v32 = v72;
          v72 = 0uLL;
          v33 = *(this + 8);
          *(this + 56) = v32;
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            v33 = *(&v72 + 1);
            if (*(&v72 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v72 + 1));
            }

            v34 = *(this + 7);
            if (v34)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v34 = v32;
            if (v32)
            {
LABEL_32:
              v35 = *MEMORY[0x277CBECE8];
              v36 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
              *(v34 + 72) = v36;
              *(v34 + 80) = v36 != 0;
              v37 = *(this + 7);
              v38 = CFDataCreate(v35, v84, 32);
              *(v37 + 56) = v38;
              *(v37 + 64) = v38 != 0;
              v39 = *(this + 7);
              v40 = CFDataCreate(v35, v79, 8);
              *(v39 + 40) = v40;
              *(v39 + 48) = v40 != 0;
              v41 = *(this + 7);
              v42 = CFDataCreate(v35, v77, 2);
              *(v41 + 24) = v42;
              *(v41 + 32) = v42 != 0;
              v43 = *(this + 7);
              v44 = CFDataCreate(v35, &v77[2], 2);
              *(v43 + 8) = v44;
              *(v43 + 16) = v44 != 0;
              v45 = *(this + 7);
              v46 = CFDataCreate(v35, &v75[1], 1);
              *(v45 + 88) = v46;
              *(v45 + 96) = v46 != 0;
              v47 = *(this + 7);
              v48 = CFDataCreate(v35, v75, 1);
              *(v47 + 104) = v48;
              *(v47 + 112) = v48 != 0;
              v49 = *(this + 7);
              v50 = CFDataCreate(v35, &v74[1], 1);
              *(v49 + 136) = v50;
              *(v49 + 144) = v50 != 0;
              v51 = *(this + 7);
              v52 = CFDataCreate(v35, v74, 1);
              *(v51 + 152) = v52;
              *(v51 + 160) = v52 != 0;
              v53 = *(this + 7);
              v54 = CFDataCreate(v35, v76, 2);
              *(v53 + 168) = v54;
              *(v53 + 176) = v54 != 0;
              v55 = *(this + 7);
              v56 = CFDataCreate(v35, &v73, 1);
              *(v55 + 120) = v56;
              *(v55 + 128) = v56 != 0;
              ACFUCommon::PersonalizeParams::logParameters(*(this + 7));
LABEL_33:
              v57 = 0;
              goto LABEL_34;
            }
          }

          v60 = ACFULogging::getLogInstance(v33);
          ACFULogging::handleMessage(v60, 2, "%s::%s: failed to create personalization parameters\n", "CentauriTransport", "getBoardParameters");
          goto LABEL_49;
        }

        v65 = ACFULogging::getLogInstance(Length);
        v66 = CFDataGetLength(v17);
        ACFULogging::handleMessage(v65, 2, "%s::%s: wrong response size: expected %zu, received %zu\n", "CentauriTransport", "getBoardParameters", 0x3AuLL, v66);
      }

LABEL_49:
      v57 = 3000;
      goto LABEL_34;
    }

    v62 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v62, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "getBoardParameters");
LABEL_46:
    v17 = 0;
    v57 = 3019;
    goto LABEL_34;
  }

  v23 = CentauriTransport::openBootDriver(this, 0, CentauriTransport::kTimeouts[6 * *(this + 20)]);
  if ((v23 & 1) == 0)
  {
    v63 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v63, 2, "%s::%s: failed to open transport driver for rom\n", "CentauriTransport", "getBoardParameters");
    goto LABEL_46;
  }

  if (a3)
  {
    BootNonce = CentauriTransport::generateBootNonce(this);
    if ((BootNonce & 1) == 0)
    {
      v71 = ACFULogging::getLogInstance(BootNonce);
      ACFULogging::handleMessage(v71, 2, "%s::%s: failed to generate boot nonce\n", "CentauriTransport", "getBoardParameters");
      v17 = 0;
      v57 = 3008;
      goto LABEL_34;
    }

    v25 = ACFULogging::getLogInstance(BootNonce);
    ACFULogging::handleMessage(v25, 0, "%s::%s: generated a boot nonce\n", "CentauriTransport", "getBoardParameters");
  }

  Register = CentauriTransport::readRegister(this, 3, v84, 32);
  if ((Register & 1) == 0)
  {
    v64 = ACFULogging::getLogInstance(Register);
    ACFULogging::handleMessage(v64, 2, "%s::%s: failed to get boot nonce hash\n", "CentauriTransport", "getBoardParameters");
    v17 = 0;
    v57 = 3017;
    goto LABEL_34;
  }

  v27 = CentauriTransport::readRegister(this, 4, bytes, 8);
  if (v27)
  {
    v28 = CentauriTransport::readRegister(this, 2, v79, 8);
    if (v28)
    {
      v29 = CentauriTransport::readRegister(this, 1, &v78 + 4, 4);
      if (v29)
      {
        v30 = WORD2(v78);
        *v77 = HIDWORD(v78);
        BytePtr = CentauriTransport::readRegister(this, 0, &v78, 4);
        if (BytePtr)
        {
          v17 = 0;
          v74[0] = v78 & 0x7F;
          v74[1] = (v78 >> 7) & 3;
          v75[1] = (v78 & 0x200) != 0;
          v75[0] = (v78 & 0x400) != 0;
          v73 = (v78 & 0x800) != 0;
          v20 = v30;
          *v76 = (v78 >> 19) & 0x70 | (v78 >> 20) & 7;
          goto LABEL_26;
        }

        v70 = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(v70, 2, "%s::%s: failed to get domain/mode\n");
      }

      else
      {
        v69 = ACFULogging::getLogInstance(v29);
        ACFULogging::handleMessage(v69, 2, "%s::%s: failed to get chip information\n");
      }
    }

    else
    {
      v68 = ACFULogging::getLogInstance(v28);
      ACFULogging::handleMessage(v68, 2, "%s::%s: failed to get ecid\n");
    }

    v17 = 0;
    v57 = 3011;
  }

  else
  {
    v67 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v67, 2, "%s::%s: failed to get boot nonce\n", "CentauriTransport", "getBoardParameters");
    v17 = 0;
    v57 = 3007;
  }

LABEL_34:
  CentauriTransport::closeBootDriver(this);
  if (v17)
  {
    CFRelease(v17);
  }

  v59 = *(this + 7);
  v58 = *(this + 8);
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  *a4 = v59;
  *(a4 + 8) = v58;
  *(a4 + 16) = v57;
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }
}

void sub_2433879A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::openInterfaceDriver(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: opening CCHI interface driver\n", "CentauriTransport", "openInterfaceDriver");
  v4 = *(this + 6);
  v5 = ACFULogging::getLogInstance(v3);
  if (v4)
  {
    ACFULogging::handleMessage(v5, 0, "%s::%s: already open\n", "CentauriTransport", "openInterfaceDriver");
    return 1;
  }

  ACFULogging::handleMessage(v5, 3, "%s::%s: creating interface object\n", "CentauriTransport", "openInterfaceDriver");
  v6 = airship_ch_interface_create();
  *(this + 6) = v6;
  if (v6)
  {
    v7 = airship_ch_interface_set_ring_sizes();
    v8 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v8, 3, "%s::%s: opening interface object\n", "CentauriTransport", "openInterfaceDriver");
    v9 = airship_ch_interface_open();
    v10 = ACFULogging::getLogInstance(v9);
    if (!v9)
    {
      ACFULogging::handleMessage(v10, 0, "%s::%s: successfully opened CCHI interface driver\n", "CentauriTransport", "openInterfaceDriver");
      *(this + 36) = 0;
      return 1;
    }

    ACFULogging::handleMessage(v10, 2, "%s::%s: failed to open interface object: 0x%08x\n", "CentauriTransport", "openInterfaceDriver", v9);
  }

  else
  {
    CentauriTransport::openInterfaceDriver(0);
  }

  CentauriTransport::closeInterfaceDriver(this);
  return 0;
}

CFDataRef CentauriTransport::sendCCHICommand(CentauriTransport *this, CFDataRef theData, ACFULogging *a3, unsigned int a4)
{
  v43 = 0;
  if (!*(this + 6))
  {
    CentauriTransport::sendCCHICommand(this);
    goto LABEL_44;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    v9 = Length;
    if (Length >= 1017)
    {
      CentauriTransport::sendCCHICommand(Length);
LABEL_44:
      v35 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x100004077774924uLL);
  v11 = v10;
  if (!v10)
  {
    CentauriTransport::sendCCHICommand(0);
    goto LABEL_44;
  }

  *v10 = v9 + 8;
  v10[2] = a3;
  v12 = v10 + 2;
  v38 = a4;
  v10[3] = a4;
  v13 = v10 + 3;
  v14 = *(this + 72);
  *(this + 72) = v14 + 1;
  v10[4] = v14;
  v15 = v10 + 4;
  if (theData)
  {
    v44.location = 0;
    v44.length = v9;
    CFDataGetBytes(theData, v44, v10 + 8);
  }

  LogInstance = ACFULogging::getLogInstance(v10);
  v17 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: sending:\n", "CentauriTransport", "sendCCHICommand");
  ACFULogging::getLogInstance(v17);
  std::string::basic_string[abi:ne200100]<0>(&v39, "CentauriTransport");
  v18 = std::string::append(&v39, "::", 2uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "sendCCHICommand", 0xFuLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v22 = airship_ch_interface_write();
  if (v22)
  {
    CentauriTransport::sendCCHICommand(v22);
    goto LABEL_44;
  }

  v23 = airship_ch_interface_read();
  if (v23)
  {
    CentauriTransport::sendCCHICommand(v23);
    goto LABEL_44;
  }

  v24 = v43;
  v25 = ACFULogging::getLogInstance(v23);
  if (v24 >= 0x401)
  {
    ACFULogging::handleMessage(v25, 2, "%s::%s: amount read too large: %u\n");
    goto LABEL_44;
  }

  v26 = ACFULogging::handleMessage(v25, 4, "%s::%s: received:\n", "CentauriTransport", "sendCCHICommand");
  ACFULogging::getLogInstance(v26);
  std::string::basic_string[abi:ne200100]<0>(&v39, "CentauriTransport");
  v27 = std::string::append(&v39, "::", 2uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v40, "sendCCHICommand", 0xFuLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v42 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v24 <= 7)
  {
    CentauriTransport::sendCCHICommand(v24);
    goto LABEL_44;
  }

  if (v24 != *v11)
  {
    v37 = ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage(v37, 2, "%s::%s: response length mismatch: %hu != %u\n");
    goto LABEL_44;
  }

  v32 = *v15;
  v34 = *(this + 73);
  v33 = this + 73;
  if (v32 != v34)
  {
    CentauriTransport::sendCCHICommand((v11 + 4), v33);
    goto LABEL_44;
  }

  *v33 = v32 + 1;
  if (*v12 != a3)
  {
    CentauriTransport::sendCCHICommand(a3, v11 + 2);
    goto LABEL_44;
  }

  if (*v13 != v38)
  {
    CentauriTransport::sendCCHICommand(v38, v11 + 3);
    goto LABEL_44;
  }

  if (v11[5])
  {
    CentauriTransport::sendCCHICommand((v11 + 5));
    goto LABEL_44;
  }

  v35 = CFDataCreate(*MEMORY[0x277CBECE8], v11 + 8, v24 - 8);
  if (!v35)
  {
    CentauriTransport::sendCCHICommand(0);
  }

LABEL_32:
  AMSupportSafeFree();
  return v35;
}

void sub_243387F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::openBootDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  CentauriTransport::bootStageToString(a2, &__p);
  LogInstance = ACFULogging::getLogInstance(v5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: opening boot driver for %s stage\n", "CentauriTransport", "openBootDriver", p_p);
  if (*(a1 + 32))
  {
    if (*(a1 + 40) == v3)
    {
      v9 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v9, 0, "%s::%s: same stage already open\n", "CentauriTransport", "openBootDriver");
LABEL_12:
      v17 = 1;
      goto LABEL_13;
    }

    v19 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v19, 2, "%s::%s: different stage already open\n", "CentauriTransport", "openBootDriver");
  }

  else
  {
    v10 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v10, 3, "%s::%s: creating boot object\n", "CentauriTransport", "openBootDriver");
    *(a1 + 40) = v3;
    v11 = airship_ch_boot_create();
    *(a1 + 32) = v11;
    if (v11)
    {
      v12 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v12, 3, "%s::%s: opening boot object\n", "CentauriTransport", "openBootDriver");
      v13 = airship_ch_boot_open();
      v14 = v13;
      if (!v13)
      {
        v15 = ACFULogging::getLogInstance(v13);
        v16 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v15, 0, "%s::%s: successfully opened boot driver for %s stage\n", "CentauriTransport", "openBootDriver", v16);
        goto LABEL_12;
      }

      v22 = ACFULogging::getLogInstance(v13);
      v23 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      ACFULogging::handleMessage(v22, 2, "%s::%s: failed to open boot object for %s stage: 0x%08x\n", "CentauriTransport", "openBootDriver", v23, v14);
    }

    else
    {
      v20 = ACFULogging::getLogInstance(0);
      v21 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      ACFULogging::handleMessage(v20, 2, "%s::%s: failed to create boot object for %s stage\n", "CentauriTransport", "openBootDriver", v21);
    }

    CentauriTransport::closeBootDriver(a1);
  }

  v17 = 0;
LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_243388184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::generateBootNonce(CentauriTransport *this)
{
  v5 = 1;
  v2 = CentauriTransport::writeRegister(this, 6, &v5, 4);
  if ((v2 & 1) == 0)
  {
    CentauriTransport::generateBootNonce(v2);
    return 0;
  }

  __ns.__rep_ = 100000000;
  std::this_thread::sleep_for (&__ns);
  Register = CentauriTransport::readRegister(this, 6, &v5, 4);
  if ((Register & 1) == 0)
  {
    CentauriTransport::generateBootNonce(Register);
    return 0;
  }

  if (v5)
  {
    CentauriTransport::generateBootNonce(v5);
    return 0;
  }

  return 1;
}

uint64_t CentauriTransport::readRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v4 = a4;
    v5 = a2;
    v6 = airship_ch_boot_read_register();
    if (!v6)
    {
      return 1;
    }

    v8 = v6;
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read register %u (%u bytes): 0x%08x\n", "CentauriTransport", "readRegister", v5, v4, v8);
  }

  else
  {
    CentauriTransport::readRegister(0);
  }

  return 0;
}

ACFULogging *CentauriTransport::closeBootDriver(ACFULogging *this)
{
  if (*(this + 4))
  {
    v1 = this;
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: closing boot driver\n", "CentauriTransport", "closeBootDriver");
    MEMORY[0x245D31AA0](*(v1 + 4));
    v3 = airship_ch_boot_destroy();
    *(v1 + 4) = 0;
    v4 = ACFULogging::getLogInstance(v3);
    return ACFULogging::handleMessage(v4, 0, "%s::%s: boot driver closed\n", "CentauriTransport", "closeBootDriver");
  }

  return this;
}

uint64_t CentauriTransport::pushFirmware(uint64_t a1, uint64_t a2)
{
  CentauriCommon::getTatsuTagToFileNameMap(v65);
  memset(v64, 0, sizeof(v64));
  LogInstance = ACFULogging::getLogInstance(v4);
  CentauriTransport::bootModeToString(*(a1 + 76), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: booting in %s mode\n", "CentauriTransport", "pushFirmware", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *a2;
  if (!*a2 || (v7 = __dynamic_cast(v7, MEMORY[0x277CECFB8], MEMORY[0x277CECFC0], 0)) == 0)
  {
    v24 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to get RTKit firmware\n", "CentauriTransport", "pushFirmware");
LABEL_30:
    v25 = 3012;
    goto LABEL_57;
  }

  v8 = v7;
  v62 = CentauriTransport::tagForBootMode(*(a1 + 76));
  if (!v62)
  {
    v40 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v40, 2, "%s::%s: failed to get tag for boot mode\n", "CentauriTransport", "pushFirmware");
    goto LABEL_30;
  }

  v9 = std::map<__CFString const*,std::string>::at(v65, &v62);
  v10 = (*(*v8 + 40))(v8, v9);
  if (!v10)
  {
    v41 = ACFULogging::getLogInstance(v10);
    CentauriTransport::bootModeToString(*(a1 + 76), &__p);
    v42 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v43 = __p.__r_.__value_.__r.__words[0];
    ACFUCommon::stringFromCFString(v60, v62, v44);
    v45 = &__p;
    if (v42 < 0)
    {
      v45 = v43;
    }

    if (v61 >= 0)
    {
      v46 = v60;
    }

    else
    {
      v46 = v60[0];
    }

    ACFULogging::handleMessage(v41, 2, "%s::%s: cannot boot in %s mode since %s image is missing from firmware\n", "CentauriTransport", "pushFirmware", v45, v46);
    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_30;
  }

  PlatformIdentifier = CentauriPlatform::getPlatformIdentifier(v10, v11, v12);
  v14 = PlatformIdentifier;
  if (!PlatformIdentifier)
  {
    v47 = ACFULogging::getLogInstance(PlatformIdentifier);
    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to get host platform identifier\n");
LABEL_72:
    v25 = 3000;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "openROMStart");
  if (!CentauriTransport::openBootDriver(a1, 0, CentauriTransport::kTimeouts[6 * *(a1 + 80)]))
  {
    goto LABEL_58;
  }

  CentauriTransport::setBootTimestamp(a1, "openROMEnd");
  v15 = CentauriTransport::bootFlagsForBootMode(*(a1 + 76));
  if (!CentauriTransport::setBootFlags(a1, v15))
  {
    v25 = 3010;
    goto LABEL_57;
  }

  v16 = CentauriTransport::setHostPlatformIdentifier(a1, v14);
  if ((v16 & 1) == 0)
  {
    v48 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v48, 2, "%s::%s: failed to set host platform identifier\n");
    goto LABEL_72;
  }

  CentauriTransport::setBootTimestamp(a1, "firstSendImageStart");
  v17 = *(a2 + 8);
  v59[0] = *a2;
  v59[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = CentauriTransport::sendImage(a1, v59, CentauriTransport::kTimeouts[6 * *(a1 + 80) + 1]);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if ((v18 & 1) == 0)
  {
    v25 = 3026;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "firstSendImageEnd");
  CentauriTransport::closeBootDriver(a1);
  if (*(a1 + 24) != 1)
  {
    v25 = 0;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "openSecondStageStart");
  if (*(a1 + 96))
  {
    v19 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2] + 65000;
  }

  else
  {
    v19 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  }

  if (*(a1 + 76) == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  if ((CentauriTransport::openBootDriver(a1, v20, v19) & 1) == 0)
  {
LABEL_58:
    v25 = 3019;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "openSecondStageEnd");
  if (*(a1 + 76))
  {
    SecondaryFtab = 0;
    v23 = 0;
    goto LABEL_38;
  }

  v26 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v26, 0, "%s::%s: initializing memswap\n", "CentauriTransport", "pushFirmware");
  std::string::basic_string[abi:ne200100]<0>(&__p, "2ftb");
  v27 = ACFUFirmware::copyFWDataByFileName();
  v23 = v27;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v23)
  {
    v49 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v49, 2, "%s::%s: secondary ftab header missing from primary ftab\n", "CentauriTransport", "pushFirmware");
    goto LABEL_72;
  }

  v28 = CFGetTypeID(v23);
  TypeID = CFDataGetTypeID();
  if (v28 != TypeID)
  {
    v50 = ACFULogging::getLogInstance(TypeID);
    v51 = CFGetTypeID(v23);
    ACFUCommon::cfTypeDescription(&__p, v51);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &__p;
    }

    else
    {
      v52 = __p.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v50, 2, "%s::%s: secondary ftab header has unexpected type %s\n", "CentauriTransport", "pushFirmware", v52);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_84;
  }

  v30 = CentauriTransport::openControlDriver(a1);
  if ((v30 & 1) == 0)
  {
    v53 = ACFULogging::getLogInstance(v30);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to open control driver\n");
LABEL_84:
    v25 = 3000;
LABEL_56:
    CFRelease(v23);
    goto LABEL_57;
  }

  SecondaryFtab = CentauriTransport::createSecondaryFtab(a1, v23, v64);
  if (!SecondaryFtab)
  {
    v55 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to create secondary ftab\n");
    goto LABEL_84;
  }

LABEL_38:
  CentauriTransport::setBootTimestamp(a1, "secondSendImageStart");
  if (*(a1 + 98))
  {
    v31 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3] + 8000;
  }

  else
  {
    v31 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3];
  }

  v32 = *a2;
  v33 = *(a2 + 8);
  v58[0] = v32;
  v58[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
  }

  v34 = CentauriTransport::sendImage(a1, v58, v31);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v34)
  {
    CentauriTransport::setBootTimestamp(a1, "secondSendImageEnd");
    CentauriTransport::closeBootDriver(a1);
    if (*(a1 + 76))
    {
LABEL_52:
      v25 = 0;
      goto LABEL_53;
    }

    BytePtr = CFDataGetBytePtr(v23);
    Length = CFDataGetLength(v23);
    if (BytePtr && Length > 0)
    {
      v37 = memcmp(BytePtr, SecondaryFtab, Length);
      if (v37)
      {
        v56 = ACFULogging::getLogInstance(v37);
        ACFULogging::handleMessage(v56, 2, "%s::%s: second boot stage modified secondary ftab header\n");
      }

      else
      {
        CentauriTransport::setBootTimestamp(a1, "memswapHandOffStart");
        v38 = CentauriTransport::handOffMemswapRegions(a1, v64);
        if (v38)
        {
          CentauriTransport::setBootTimestamp(a1, "memswapHandOffEnd");
          goto LABEL_52;
        }

        v57 = ACFULogging::getLogInstance(v38);
        ACFULogging::handleMessage(v57, 2, "%s::%s: failed to hand off memswap regions\n");
      }
    }

    else
    {
      v54 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v54, 2, "%s::%s: failed to get original secondary ftab header\n");
    }

    v25 = 3000;
  }

  else
  {
    v25 = 3027;
  }

LABEL_53:
  if (SecondaryFtab)
  {
    CentauriTransport::destroySecondaryFtab(a1, SecondaryFtab);
  }

  if (v23)
  {
    goto LABEL_56;
  }

LABEL_57:
  CentauriTransport::closeBootDriver(a1);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v65, v65[1]);
  return v25;
}

void sub_2433889D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v30 - 88, *(v30 - 80));
  _Unwind_Resume(a1);
}

void CentauriTransport::bootModeToString(int a1@<W0>, std::string *a2@<X8>)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "normal");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "low power");
  v16 = 2;
  std::string::basic_string[abi:ne200100]<0>(v17, "remote");
  std::map<CentauriTransport::BootMode,std::string>::map[abi:ne200100](&v9, &v12, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v17[i + 2]) < 0)
    {
      operator delete(v17[i]);
    }
  }

  v5 = v10[0];
  if (!v10[0])
  {
    goto LABEL_12;
  }

  v6 = v10;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v10 && *(v6 + 8) <= a1)
  {
    v7 = std::map<CentauriTransport::BootMode,std::string>::at(&v9, &v11);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      a2->__r_.__value_.__r.__words[2] = v7[2];
      *&a2->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10[0]);
}

void sub_243388BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CentauriTransport::tagForBootMode(int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10[0] = xmmword_278DB05B0;
  v10[1] = unk_278DB05C0;
  v10[2] = xmmword_278DB05D0;
  std::map<CentauriTransport::BootMode,__CFString const*>::map[abi:ne200100](&v7, v10, 3);
  v2 = v8[0];
  if (!v8[0])
  {
    goto LABEL_8;
  }

  v3 = v8;
  v4 = v8[0];
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v3 != v8 && *(v3 + 8) <= a1)
  {
    v5 = *std::map<CentauriTransport::BootMode,std::string>::at(&v7, &v9);
    v2 = v8[0];
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&v7, v2);
  return v5;
}

void sub_243388D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void **);
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(va, v8);
  _Unwind_Resume(a1);
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void CentauriTransport::setBootTimestamp(CFMutableDictionaryRef *this, const char *a2)
{
  valuePtr = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CFDictionaryAddValue(this[13], v4, v5);
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: added key: %s, value: %llu\n", "CentauriTransport", "setBootTimestamp", a2, valuePtr);
LABEL_6:
    CFRelease(v4);
    goto LABEL_7;
  }

  v10 = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(v10, 2, "%s::%s: failed to create key and/or value\n", "CentauriTransport", "setBootTimestamp");
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1, int a2)
{
  v12 = a2;
  v11 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: setting boot flags to 0x%x\n", "CentauriTransport", "setBootFlags", a2);
  v5 = CentauriTransport::writeRegister(a1, 5, &v12, 4);
  if ((v5 & 1) == 0)
  {
    CentauriTransport::setBootFlags(v5);
    return 0;
  }

  Register = CentauriTransport::readRegister(a1, 5, &v11, 4);
  if ((Register & 1) == 0)
  {
    CentauriTransport::setBootFlags(Register);
    return 0;
  }

  v7 = v11;
  v8 = v12;
  v9 = ACFULogging::getLogInstance(Register);
  if (v7 != v8)
  {
    ACFULogging::handleMessage(v9, 2, "%s::%s: boot flags read back (0x%08x) don't match boot flags written (0x%08x)\n", "CentauriTransport", "setBootFlags", v7, v8);
    return 0;
  }

  ACFULogging::handleMessage(v9, 0, "%s::%s: successfully set boot flags to 0x%x\n", "CentauriTransport", "setBootFlags", v7);
  return 1;
}

uint64_t CentauriTransport::bootFlagsForBootMode(int a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = xmmword_24339A5C8;
  v11 = 0x100000002;
  std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::map[abi:ne200100](&v7, &v10, 3);
  v2 = v8[0];
  if (!v8[0])
  {
    goto LABEL_8;
  }

  v3 = v8;
  v4 = v8[0];
  do
  {
    if (*(v4 + 28) >= a1)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a1));
  }

  while (v4);
  if (v3 != v8 && *(v3 + 7) <= a1)
  {
    v5 = *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(&v7, &v9);
    v2 = v8[0];
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&v7, v2);
  return v5;
}

void sub_2433890CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void **);
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(va, v8);
  _Unwind_Resume(a1);
}

uint64_t CentauriTransport::setHostPlatformIdentifier(CentauriTransport *this, int a2)
{
  v12 = a2;
  v11 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: setting host platform identifier to 0x%08x\n", "CentauriTransport", "setHostPlatformIdentifier", a2);
  v5 = CentauriTransport::writeRegister(this, 7, &v12, 4);
  if ((v5 & 1) == 0)
  {
    CentauriTransport::setHostPlatformIdentifier(v5);
    return 0;
  }

  Register = CentauriTransport::readRegister(this, 7, &v11, 4);
  if ((Register & 1) == 0)
  {
    CentauriTransport::setHostPlatformIdentifier(Register);
    return 0;
  }

  v7 = v11;
  v8 = v12;
  v9 = ACFULogging::getLogInstance(Register);
  if (v7 != v8)
  {
    ACFULogging::handleMessage(v9, 2, "%s::%s: host platform identifier read back (0x%08x) doesn't match host platform identifier written (0x%08x)\n", "CentauriTransport", "setHostPlatformIdentifier", v7, v8);
    return 0;
  }

  ACFULogging::handleMessage(v9, 0, "%s::%s: successfully set host platform identifier to 0x%08x\n", "CentauriTransport", "setHostPlatformIdentifier", v7);
  return 1;
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1, ACFUFirmware **a2, uint64_t a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v6 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: preparing to send an image\n", "CentauriTransport", "sendImage");
  if (!*(a1 + 4))
  {
    CentauriTransport::sendImage(v6);
    return 0;
  }

  v7 = ACFUFirmware::copyFWContainer(*a2);
  if (!v7)
  {
    CentauriTransport::sendImage(0);
    return 0;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  TypeID = CFDataGetTypeID();
  if (v9 != TypeID)
  {
    CentauriTransport::sendImage(TypeID);
LABEL_19:
    v25 = 0;
    goto LABEL_11;
  }

  Length = CFDataGetLength(v8);
  v12 = Length;
  if (!Length)
  {
    CentauriTransport::sendImage(Length);
    goto LABEL_19;
  }

  v13 = (Length + 4095) & 0xFFFFF000;
  v14 = ACFULogging::getLogInstance(Length);
  ACFULogging::handleMessage(v14, 3, "%s::%s: image size %u -> %u\n", "CentauriTransport", "sendImage", v12, v13);
  v15 = airship_ch_boot_image_buffer_create();
  if (!v15)
  {
    CentauriTransport::sendImage(0);
    goto LABEL_19;
  }

  v16 = v15;
  size = airship_ch_boot_image_buffer_get_size();
  v18 = ACFULogging::getLogInstance(size);
  if (size < v13)
  {
    ACFULogging::handleMessage(v18, 2, "%s::%s: image buffer is smaller than requested size (%u < %u)\n");
LABEL_23:
    v25 = 0;
    goto LABEL_10;
  }

  ACFULogging::handleMessage(v18, 4, "%s::%s: allocated image buffer of size %u\n", "CentauriTransport", "sendImage", size);
  v19 = MEMORY[0x245D31AF0](v16);
  if (!v19)
  {
    CentauriTransport::sendImage(0);
    goto LABEL_23;
  }

  v20 = v19;
  v27.length = v12;
  v27.location = 0;
  CFDataGetBytes(v8, v27, v19);
  bzero(&v20[v12], size - v12);
  v22 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v22, 3, "%s::%s: sending image\n", "CentauriTransport", "sendImage");
  v23 = airship_ch_boot_send_image();
  v24 = ACFULogging::getLogInstance(v23);
  if (v23)
  {
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to send image: 0x%08x: out code 0x%08x\n");
    goto LABEL_23;
  }

  ACFULogging::handleMessage(v24, 0, "%s::%s: successfully sent image: out code 0x%08x\n", "CentauriTransport", "sendImage", 0);
  v25 = 1;
LABEL_10:
  airship_ch_boot_image_buffer_destroy();
LABEL_11:
  CFRelease(v8);
  return v25;
}

uint64_t CentauriTransport::getSecondStageOpenTimeout(CentauriTransport *this)
{
  if (*(this + 96))
  {
    return CentauriTransport::kTimeouts[6 * *(this + 20) + 2] + 65000;
  }

  else
  {
    return CentauriTransport::kTimeouts[6 * *(this + 20) + 2];
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t CentauriTransport::openControlDriver(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: opening control driver\n", "CentauriTransport", "openControlDriver");
  if (*(this + 11))
  {
    CentauriTransport::openControlDriver(v3);
    return 1;
  }

  v4 = CentauriControllerCreateWithParameters();
  if (!v4 && *(this + 11))
  {
    v5 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v5, 0, "%s::%s: successfully opened control driver\n", "CentauriTransport", "openControlDriver");
    return 1;
  }

  CentauriTransport::openControlDriver(v4, this);
  return 0;
}

UInt8 *CentauriTransport::createSecondaryFtab(ACFULogging *a1, ACFUFTABFile *a2, uint64_t a3)
{
  buffer = 0;
  v65 = 0;
  if (a3)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  v7 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: parsing secondary ftab header in primary ftab\n", "CentauriTransport", "createSecondaryFtab");
  if (!*(a1 + 11))
  {
    v9 = "%s::%s: control driver not open\n";
    goto LABEL_42;
  }

  v9 = "%s::%s: bad parameter\n";
  if (!a2 || !a3)
  {
LABEL_42:
    v51 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v51, 2, v9, "CentauriTransport", "createSecondaryFtab");
    if (!a3)
    {
      return 0;
    }

LABEL_45:
    v46 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return v46;
  }

  v10 = ACFUFTABFile::createFromHeader(__p, a2, v8);
  v11 = __p[0];
  if (!__p[0])
  {
    CentauriTransport::createSecondaryFtab(v10);
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswc");
  FileOffsetByFileName = ACFUFTABFile::getFileOffsetByFileName();
  v13 = v63;
  v14 = v64;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v52 = ACFULogging::getLogInstance(FileOffsetByFileName);
    ACFULogging::handleMessage(v52, 2, "%s::%s: failed to get offset for subsystem 0 memswap section\n");
LABEL_52:
    v46 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswc");
  v15 = (*(*v11 + 32))(v11, __p);
  v16 = v15;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v16)
  {
    v53 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to get size for subsystem 0 memswap section\n");
    goto LABEL_52;
  }

  *a3 = v13;
  *(a3 + 8) = v16;
  std::string::basic_string[abi:ne200100]<0>(__p, "msww");
  v17 = ACFUFTABFile::getFileOffsetByFileName();
  v18 = v63;
  v19 = v64;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v19 & 1) == 0)
  {
    v54 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v54, 2, "%s::%s: failed to get offset for subsystem 1 memswap section\n");
    goto LABEL_52;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "msww");
  v20 = (*(*v11 + 32))(v11, __p);
  v21 = v20;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v21)
  {
    v55 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to get size for subsystem 1 memswap section\n");
    goto LABEL_52;
  }

  *(a3 + 16) = v18;
  *(a3 + 24) = v21;
  std::string::basic_string[abi:ne200100]<0>(__p, "mswb");
  v22 = ACFUFTABFile::getFileOffsetByFileName();
  v23 = v63;
  v24 = v64;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v24 & 1) == 0)
  {
    v56 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v56, 2, "%s::%s: failed to get offset for subsystem 2 memswap section\n");
    goto LABEL_52;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswb");
  v25 = (*(*v11 + 32))(v11, __p);
  v26 = v25;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v26)
  {
    v57 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v57, 2, "%s::%s: failed to get size for subsystem 2 memswap section\n");
    goto LABEL_52;
  }

  *(a3 + 32) = v23;
  *(a3 + 40) = v26;
  v27 = ACFULogging::getLogInstance(v25);
  v28 = ACFULogging::handleMessage(v27, 4, "%s::%s: memswap sections in secondary ftab:\n", "CentauriTransport", "createSecondaryFtab");
  v29 = ACFULogging::getLogInstance(v28);
  v30 = ACFULogging::handleMessage(v29, 4, "%s::%s:     subsystem 0: offset %llu, size %u\n", "CentauriTransport", "createSecondaryFtab", *a3, *(a3 + 8));
  v31 = ACFULogging::getLogInstance(v30);
  v32 = ACFULogging::handleMessage(v31, 4, "%s::%s:     subsystem 1: offset %llu, size %u\n", "CentauriTransport", "createSecondaryFtab", *(a3 + 16), *(a3 + 24));
  v33 = ACFULogging::getLogInstance(v32);
  ACFULogging::handleMessage(v33, 4, "%s::%s:     subsystem 2: offset %llu, size %u\n", "CentauriTransport", "createSecondaryFtab", *(a3 + 32), *(a3 + 40));
  TypeID = (*(*v11 + 40))(v11);
  v35 = TypeID;
  if (TypeID && (v36 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v36 == TypeID))
  {
    Length = CFDataGetLength(v35);
    v38 = Length;
    if (Length <= 0)
    {
      v58 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v58, 2, "%s::%s: failed to get data length\n", "CentauriTransport", "createSecondaryFtab");
    }

    else if (HIDWORD(Length))
    {
      v59 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v59, 2, "%s::%s: data length too large: %ld\n", "CentauriTransport", "createSecondaryFtab", v38);
    }

    else
    {
      v39 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v39, 3, "%s::%s: requesting buffer of size %u\n", "CentauriTransport", "createSecondaryFtab", v38);
      SecondaryMemory = CentauriControllerAllocateSecondaryMemory();
      v41 = SecondaryMemory;
      if (!SecondaryMemory)
      {
        v42 = CentauriControllerMapSecondaryMemory();
        v43 = v42;
        if (!v42 && buffer && v38 == v65)
        {
          v67.length = CFDataGetLength(v35);
          v67.location = 0;
          CFDataGetBytes(v35, v67, buffer);
          v45 = ACFULogging::getLogInstance(v44);
          ACFULogging::handleMessage(v45, 3, "%s::%s: successfully created secondary ftab\n", "CentauriTransport", "createSecondaryFtab");
        }

        else
        {
          v48 = ACFULogging::getLogInstance(v42);
          ACFULogging::handleMessage(v48, 2, "%s::%s: failed to map memory: 0x%08x\n", "CentauriTransport", "createSecondaryFtab", v43);
          v49 = buffer;
          *a3 = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          if (v49)
          {
            CentauriTransport::destroySecondaryFtab(a1, v49);
            buffer = 0;
          }
        }

        goto LABEL_34;
      }

      v60 = ACFULogging::getLogInstance(SecondaryMemory);
      ACFULogging::handleMessage(v60, 2, "%s::%s: failed to allocate secondary memory: 0x%08x\n", "CentauriTransport", "createSecondaryFtab", v41);
    }

    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v50 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v50, 2, "%s::%s: failed to copy firmware container\n", "CentauriTransport", "createSecondaryFtab");
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    if (!v35)
    {
      v46 = 0;
      goto LABEL_35;
    }
  }

LABEL_34:
  CFRelease(v35);
  v46 = buffer;
LABEL_35:
  (*(*v11 + 56))(v11);
  return v46;
}

void sub_243389B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  (*(*v18 + 56))(v18, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t CentauriTransport::handOffMemswapRegions(ACFULogging *a1, uint64_t a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: handing off memswap regions to control driver\n", "CentauriTransport", "handOffMemswapRegions");
  if (*(a1 + 11))
  {
    v4 = CentauriControllerSetMemSwapRegions();
    v5 = ACFULogging::getLogInstance(v4);
    if (!v4)
    {
      ACFULogging::handleMessage(v5, 3, "%s::%s: successfully handed off memswap regions\n", "CentauriTransport", "handOffMemswapRegions");
      return 1;
    }

    ACFULogging::handleMessage(v5, 2, "%s::%s: failed to set mem swap regions: 0x%08x\n", "CentauriTransport", "handOffMemswapRegions", v4);
  }

  else
  {
    CentauriTransport::handOffMemswapRegions(0);
  }

  return 0;
}

ACFULogging *CentauriTransport::destroySecondaryFtab(CentauriTransport *this, unsigned __int8 *a2)
{
  if (!*(this + 11))
  {
    return CentauriTransport::destroySecondaryFtab(0);
  }

  result = CentauriControllerUnmapSecondaryMemory();
  if (result)
  {
    return CentauriTransport::destroySecondaryFtab(result);
  }

  return result;
}

uint64_t CentauriTransport::reset(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "reset");
  if (*(this + 20))
  {
    CentauriTransport::reset(v3);
    return 0;
  }

  v4 = CentauriTransport::openControlDriver(this);
  if (v4)
  {
    v5 = CentauriControllerReset();
    v6 = ACFULogging::getLogInstance(v5);
    if (!v5)
    {
      ACFULogging::handleMessage(v6, 0, "%s::%s: success\n", "CentauriTransport", "reset");
      return 0;
    }

    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to reset chip: 0x%08x\n", "CentauriTransport", "reset", v5);
  }

  else
  {
    CentauriTransport::reset(v4);
  }

  return 3014;
}

uint64_t CentauriTransport::pingCheck(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "pingCheck");
  if ((*(this + 24) & 1) == 0)
  {
    CentauriTransport::pingCheck(v3);
    return 0;
  }

  CentauriTransport::setBootTimestamp(this, "openCCHIStart");
  v4 = CentauriTransport::openInterfaceDriver(this);
  if ((v4 & 1) == 0)
  {
    CentauriTransport::pingCheck(v4);
    return 3003;
  }

  CentauriTransport::setBootTimestamp(this, "openCCHIEnd");
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], "CentauriTransport", 18);
  if (!v6)
  {
    CentauriTransport::pingCheck(0);
    return 3003;
  }

  v7 = v6;
  CentauriTransport::setBootTimestamp(this, "ccpuPingStart");
  v8 = CentauriTransport::sendCCHICommand(this, v7, 0, 0);
  if (!v8)
  {
    CFRelease(v7);
    return 3003;
  }

  v9 = v8;
  Length = CFDataGetLength(v8);
  if (Length <= 0)
  {
    CentauriTransport::pingCheck(Length);
    v13 = 0;
  }

  else
  {
    CentauriTransport::setBootTimestamp(this, "ccpuPingEnd");
    BytePtr = CFDataGetBytePtr(v9);
    v12 = CFDataGetLength(v9);
    v13 = CFStringCreateWithBytes(v5, BytePtr, v12, 0x8000100u, 0);
    v14 = ACFULogging::getLogInstance(v13);
    v16 = v14;
    if (v13)
    {
      ACFUCommon::stringFromCFString(__p, v13, v15);
      if (v21 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      ACFULogging::handleMessage(v16, 0, "%s::%s: success: '%s'\n", "CentauriTransport", "pingCheck", v17);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = 0;
      goto LABEL_13;
    }

    ACFULogging::handleMessage(v14, 2, "%s::%s: failed to create hello response\n", "CentauriTransport", "pingCheck");
  }

  v18 = 3003;
LABEL_13:
  CFRelease(v7);
  CFRelease(v9);
  if (v13)
  {
    CFRelease(v13);
  }

  return v18;
}

void sub_243389FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "getDebugInfo");
  if ((*(a1 + 97) & 1) == 0)
  {
    v8 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v8, 0, "%s::%s: log collection disabled\n", "CentauriTransport", "getDebugInfo");
    return 0;
  }

  v4 = CentauriTransport::openControlDriver(a1);
  if ((v4 & 1) == 0)
  {
    CentauriTransport::getDebugInfo(v4);
    return 1;
  }

  v5 = CentauriControllerCollectLogsWithOptions();
  if (v5)
  {
    CentauriTransport::getDebugInfo(v5);
    return 1;
  }

  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  Crashlogs = CentauriControllerGetCrashlogs();
  if (Crashlogs != -536870160)
  {
    v7 = Crashlogs;
    if (Crashlogs)
    {
      v11 = ACFULogging::getLogInstance(Crashlogs);
      ACFULogging::handleMessage(v11, 2, "%s::%s: failed to get crashlogs: 0x%08x\n", "CentauriTransport", "getDebugInfo", v7);
    }

    else
    {
      CentauriTransport::getDebugInfo(Crashlogs);
    }

    return 1;
  }

  v10 = ACFULogging::getLogInstance(Crashlogs);
  ACFULogging::handleMessage(v10, 0, "%s::%s: no crashlogs found\n", "CentauriTransport", "getDebugInfo");
  return 0;
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open control driver\n", "CentauriTransport", "getDebugInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: get crashlogs returned success but no crashlogs\n", "CentauriTransport", "getDebugInfo");
}

void CentauriTransport::parseCrashlogs(CentauriTransport *this, CFArrayRef theArray)
{
  v73[3] = *MEMORY[0x277D85DE8];
  v73[0] = "Crashlog.CTRL.bin";
  v73[1] = "Crashlog.WFMAIN.bin";
  v73[2] = "Crashlog.BTMAIN.bin";
  valuePtr = 0;
  memset(&v71, 0, sizeof(v71));
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_87;
  }

  v63 = Count;
  v3 = 0;
  v4 = 0;
  v66 = 0;
  v67 = 0;
  alloc = *MEMORY[0x277CBECE8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
    v6 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v7 = CFGetTypeID(ValueAtIndex);
      TypeID = CFDictionaryGetTypeID();
      if (v7 == TypeID)
      {
        v9 = v67;
        if (v67 || (v9 = CFStringCreateWithCString(alloc, "Metadata", 0x8000100u)) != 0)
        {
          v67 = v9;
          Value = CFDictionaryGetValue(v6, v9);
          v11 = Value;
          if (Value)
          {
            v12 = CFGetTypeID(Value);
            v13 = CFDictionaryGetTypeID();
            if (v12 == v13)
            {
              v14 = v66;
              if (v66 || (v14 = CFStringCreateWithCString(alloc, "SubsystemID", 0x8000100u)) != 0)
              {
                v66 = v14;
                v15 = CFDictionaryGetValue(v11, v14);
                v16 = v15;
                if (v15)
                {
                  v17 = CFGetTypeID(v15);
                  v18 = CFNumberGetTypeID();
                  if (v17 == v18)
                  {
                    v19 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
                    if (v19)
                    {
                      v20 = valuePtr;
                      if (valuePtr >= 3)
                      {
                        LogInstance = ACFULogging::getLogInstance(v19);
                        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid subsystem ID %u at index %zu\n", "CentauriTransport", "parseCrashlogs", valuePtr, v3);
                      }

                      else
                      {
                        if (v4)
                        {
                          CFRelease(v4);
                          v20 = valuePtr;
                        }

                        v4 = CFStringCreateWithCString(alloc, v73[v20], 0x8000100u);
                        if (v4)
                        {
                          v21 = CFDictionaryGetValue(v6, v4);
                          v22 = v21;
                          if (v21)
                          {
                            v23 = CFGetTypeID(v21);
                            v24 = CFDataGetTypeID();
                            if (v23 == v24)
                            {
                              Length = CFDataGetLength(v22);
                              v26 = Length;
                              if (Length <= 0)
                              {
                                v55 = ACFULogging::getLogInstance(Length);
                                ACFULogging::handleMessage(v55, 2, "%s::%s: %s: %s empty\n");
                              }

                              else if (Length <= 0x50)
                              {
                                v56 = ACFULogging::getLogInstance(Length);
                                ACFULogging::handleMessage(v56, 2, "%s::%s: %s: %s too small: %zu bytes\n", "CentauriTransport", "parseCrashlogs", (&off_278DB0598)[valuePtr], v73[valuePtr], v26);
                              }

                              else
                              {
                                BytePtr = CFDataGetBytePtr(v22);
                                v28 = BytePtr;
                                if (BytePtr)
                                {
                                  if (LODWORD(BytePtr->__r_.__value_.__l.__data_) == 1129072709)
                                  {
                                    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      v71.__r_.__value_.__l.__size_ = 0;
                                      v29 = v71.__r_.__value_.__r.__words[0];
                                    }

                                    else
                                    {
                                      *(&v71.__r_.__value_.__s + 23) = 0;
                                      v29 = &v71;
                                    }

                                    v29->__r_.__value_.__s.__data_[0] = 0;
                                    v30 = 32;
                                    while (1)
                                    {
                                      v31 = v28 + v30;
                                      v32 = *(&v28->__r_.__value_.__r.__words[1] + v30 + 4);
                                      if (v32 <= 0xF)
                                      {
                                        v40 = ACFULogging::getLogInstance(BytePtr);
                                        ACFULogging::handleMessage(v40, 2, "%s::%s: %s: section too small in %s\n", "CentauriTransport", "parseCrashlogs", (&off_278DB0598)[valuePtr], v73[valuePtr]);
                                        goto LABEL_58;
                                      }

                                      if (*v31 == 1131639922)
                                      {
                                        if (*(v31 + 2) != 257)
                                        {
                                          v41 = ACFULogging::getLogInstance(BytePtr);
                                          ACFULogging::handleMessage(v41, 2, "%s::%s: %s: section version mismatch in %s: expected 0x%x, found 0x%x\n", "CentauriTransport", "parseCrashlogs", (&off_278DB0598)[valuePtr], v73[valuePtr], 257, *(v31 + 2));
                                          goto LABEL_58;
                                        }

                                        if (v30 + v32 + 32 > v26)
                                        {
                                          v42 = ACFULogging::getLogInstance(BytePtr);
                                          ACFULogging::handleMessage(v42, 2, "%s::%s: %s: section too large in %s: offset %zu, section size %u, total size %zu\n", "CentauriTransport", "parseCrashlogs", (&off_278DB0598)[valuePtr], v73[valuePtr], v30, *(v31 + 3), v26);
                                          goto LABEL_58;
                                        }

                                        if (v32 <= 0x14)
                                        {
                                          v43 = ACFULogging::getLogInstance(BytePtr);
                                          ACFULogging::handleMessage(v43, 2, "%s::%s: %s: string section too small in %s: %u bytes\n", "CentauriTransport", "parseCrashlogs", (&off_278DB0598)[valuePtr], v73[valuePtr], *(v31 + 3));
                                          goto LABEL_58;
                                        }

                                        if (v31[16])
                                        {
                                          break;
                                        }
                                      }

LABEL_56:
                                      v30 += v32;
                                      if (v30 + 48 >= v26)
                                      {
                                        v39 = ACFULogging::getLogInstance(BytePtr);
                                        ACFULogging::handleMessage(v39, 0, "%s::%s: %s: '%s'\n");
                                        goto LABEL_58;
                                      }
                                    }

                                    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
                                    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                    {
                                      size = v71.__r_.__value_.__l.__size_;
                                    }

                                    if (size)
                                    {
                                      std::string::append(&v71, "-", 1uLL);
                                      v32 = *(v31 + 3);
                                    }

                                    v34 = v32 - 20;
                                    if ((v32 - 20) >= 0x7FFFFFFFFFFFFFF8)
                                    {
                                      std::string::__throw_length_error[abi:ne200100]();
                                    }

                                    if (v34 >= 0x17)
                                    {
                                      if ((v34 | 7) == 0x17)
                                      {
                                        v36 = 25;
                                      }

                                      else
                                      {
                                        v36 = (v34 | 7) + 1;
                                      }

                                      p_dst = operator new(v36);
                                      v69 = v34;
                                      v70 = v36 | 0x8000000000000000;
                                      __dst = p_dst;
                                    }

                                    else
                                    {
                                      HIBYTE(v70) = v32 - 20;
                                      p_dst = &__dst;
                                      if (v32 == 20)
                                      {
                                        goto LABEL_47;
                                      }
                                    }

                                    memmove(p_dst, v31 + 20, v34);
LABEL_47:
                                    *(p_dst + v34) = 0;
                                    if (v70 >= 0)
                                    {
                                      v37 = &__dst;
                                    }

                                    else
                                    {
                                      v37 = __dst;
                                    }

                                    if (v70 >= 0)
                                    {
                                      v38 = HIBYTE(v70);
                                    }

                                    else
                                    {
                                      v38 = v69;
                                    }

                                    BytePtr = std::string::append(&v71, v37, v38);
                                    if (SHIBYTE(v70) < 0)
                                    {
                                      operator delete(__dst);
                                    }

                                    v32 = *(v31 + 3);
                                    goto LABEL_56;
                                  }

                                  v58 = ACFULogging::getLogInstance(BytePtr);
                                  ACFULogging::handleMessage(v58, 2, "%s::%s: %s: %s invalid\n");
                                }

                                else
                                {
                                  v57 = ACFULogging::getLogInstance(0);
                                  ACFULogging::handleMessage(v57, 2, "%s::%s: %s: failed to get %s ptr\n");
                                }
                              }
                            }

                            else
                            {
                              v54 = ACFULogging::getLogInstance(v24);
                              ACFULogging::handleMessage(v54, 2, "%s::%s: %s: %s has wrong type\n");
                            }
                          }

                          else
                          {
                            v53 = ACFULogging::getLogInstance(0);
                            ACFULogging::handleMessage(v53, 0, "%s::%s: %s: %s not found\n");
                          }
                        }

                        else
                        {
                          v52 = ACFULogging::getLogInstance(0);
                          ACFULogging::handleMessage(v52, 2, "%s::%s: %s: failed to create crashlog name\n", "CentauriTransport", "parseCrashlogs", (&off_278DB0598)[valuePtr]);
                          v4 = 0;
                        }
                      }
                    }

                    else
                    {
                      v50 = ACFULogging::getLogInstance(v19);
                      ACFULogging::handleMessage(v50, 2, "%s::%s: failed to convert subsystem ID at index %zu\n");
                    }
                  }

                  else
                  {
                    v49 = ACFULogging::getLogInstance(v18);
                    ACFULogging::handleMessage(v49, 2, "%s::%s: subsystem ID at index %zu has wrong type\n");
                  }
                }

                else
                {
                  v48 = ACFULogging::getLogInstance(0);
                  ACFULogging::handleMessage(v48, 2, "%s::%s: no subsystem ID at index %zu\n");
                }
              }

              else
              {
                v60 = ACFULogging::getLogInstance(0);
                ACFULogging::handleMessage(v60, 2, "%s::%s: failed to create subsystem id key\n", "CentauriTransport", "parseCrashlogs");
                v66 = 0;
              }
            }

            else
            {
              v47 = ACFULogging::getLogInstance(v13);
              ACFULogging::handleMessage(v47, 2, "%s::%s: metadata at index %zu has wrong type\n");
            }
          }

          else
          {
            v46 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v46, 2, "%s::%s: no metadata at index %zu\n");
          }
        }

        else
        {
          v59 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v59, 2, "%s::%s: failed to create metadata key\n", "CentauriTransport", "parseCrashlogs");
          v67 = 0;
        }
      }

      else
      {
        v45 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v45, 2, "%s::%s: info at index %zu has wrong type\n");
      }
    }

    else
    {
      v44 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v44, 2, "%s::%s: null info at index %zu\n");
    }

LABEL_58:
    ++v3;
  }

  while (v3 != v63);
  v62 = v66;
  v61 = v67;
  if (v4)
  {
    CFRelease(v4);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

LABEL_87:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }
}

void sub_24338A998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFData *CentauriTransport::runCertification@<X0>(CentauriTransport *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    result = CentauriTransport::copySiKPublicKey(a1);
  }

  else if (a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unknown sikBlobType: %u\n", "CentauriTransport", "runCertification", a2);
    result = 0;
  }

  else
  {
    result = CentauriTransport::copySiKCertificateSigningRequest(a1);
  }

  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1011;
  }

  *a3 = result;
  *(a3 + 8) = v7;
  return result;
}

const __CFData *CentauriTransport::copySiKPublicKey(CentauriTransport *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "copySiKPublicKey");
  v3 = CentauriTransport::openInterfaceDriver(this);
  if ((v3 & 1) == 0)
  {
    v11 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v11, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "copySiKPublicKey");
    return 0;
  }

  v4 = CentauriTransport::sendCCHICommand(this, 0, 0, 5u);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  Length = CFDataGetLength(v4);
  if (Length <= 0)
  {
    v12 = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(v12, 2, "%s::%s: no response payload\n", "CentauriTransport", "copySiKPublicKey");
    CFRelease(v5);
    return 0;
  }

  v7 = ACFUCommon::hexStringFromCFData(&v13, v5, 0);
  *__p = v13;
  v16 = v14;
  v8 = ACFULogging::getLogInstance(v7);
  v9 = __p;
  if (v16 < 0)
  {
    v9 = __p[0];
  }

  ACFULogging::handleMessage(v8, 0, "%s::%s: success: %s\n", "CentauriTransport", "copySiKPublicKey", v9);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_24338ABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriTransport::sendBootTimestamps(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "sendBootTimestamps");
  v2 = CentauriControllerSendBootTimestamps();
  v3 = v2;
  if (v2)
  {
    CentauriTransport::sendBootTimestamps(v2);
  }

  return v3 == 0;
}

void CentauriTransport::~CentauriTransport(std::__shared_weak_count **this)
{
  *this = &unk_28561A990;
  CentauriTransport::closeInterfaceDriver(this);
  CentauriTransport::closeBootDriver(this);
  CentauriTransport::closeControlDriver(this);
  v2 = this[13];
  if (v2)
  {
    CFRelease(v2);
    this[13] = 0;
  }

  v3 = this[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x28213EBC8](this);
}

{
  CentauriTransport::~CentauriTransport(this);

  operator delete(v1);
}

ACFULogging *CentauriTransport::closeInterfaceDriver(ACFULogging *this)
{
  if (*(this + 6))
  {
    v1 = this;
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: closing interface driver\n", "CentauriTransport", "closeInterfaceDriver");
    MEMORY[0x245D31B50](*(v1 + 6));
    v3 = airship_ch_interface_destroy();
    *(v1 + 6) = 0;
    v4 = ACFULogging::getLogInstance(v3);
    return ACFULogging::handleMessage(v4, 0, "%s::%s: interface driver closed\n", "CentauriTransport", "closeInterfaceDriver");
  }

  return this;
}

uint64_t CentauriTransport::closeControlDriver(uint64_t this)
{
  if (*(this + 88))
  {
    v1 = this;
    if ((*(this + 96) & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(LogInstance, 3, "%s::%s: closing control driver\n", "CentauriTransport", "closeControlDriver");
      this = CentauriControllerFree();
      *(v1 + 88) = 0;
    }
  }

  return this;
}

uint64_t CentauriTransport::getPlatform(CentauriTransport *this)
{
  data_np = sysctlbyname_get_data_np();
  LogInstance = ACFULogging::getLogInstance(data_np);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get hw.model\n", "CentauriTransport", "getPlatform");
  return 3;
}

uint64_t CentauriTransport::parseDeviceBootArgs(CentauriTransport *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  data_np = sysctlbyname_get_data_np();
  if (data_np)
  {
    v2 = 1;
  }

  else
  {
    v2 = v49 == 0;
  }

  v3 = !v2;
  v37 = v3;
  if (v2)
  {
    LogInstance = ACFULogging::getLogInstance(data_np);
    v13 = 0;
    v39 = 0;
    v12 = 0;
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get boot-args\n", "CentauriTransport", "parseDeviceBootArgs");
    goto LABEL_41;
  }

  v4 = ACFULogging::getLogInstance(data_np);
  ACFULogging::handleMessage(v4, 3, "%s::%s: boot-args: %s\n", "CentauriTransport", "parseDeviceBootArgs", v49);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v49];
  v6 = [v5 componentsSeparatedByString:@" "];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v6;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v9)
  {
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v8 |= [*(*(&v44 + 1) + 8 * i) isEqualToString:@"-restore"];
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v9);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v7;
  v13 = 0;
  v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v14)
  {
    v39 = 0;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * j) componentsSeparatedByString:@"="];

        v13 = v17;
        if ([v17 count] == 2)
        {
          v18 = [v17 objectAtIndexedSubscript:0];
          v19 = [v18 isEqualToString:@"centauri-second-stage"];

          if (v19)
          {
            v20 = [v13 objectAtIndexedSubscript:1];

            v39 = v20;
          }

          v21 = [v13 objectAtIndexedSubscript:0];
          v22 = [v21 isEqualToString:@"proxima-platform"];

          if (v22)
          {
            v23 = [v13 objectAtIndexedSubscript:1];
            v24 = [v23 intValue] == 3;

            if (v24)
            {
              v26 = ACFULogging::getLogInstance(v25);
              ACFULogging::handleMessage(v26, 0, "%s::%s: Overriding platform to FPGA due to %s boot-arg\n", "CentauriTransport", "parseDeviceBootArgs", [@"proxima-platform" UTF8String]);
              *(this + 20) = 1;
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  else
  {
    v39 = 0;
  }

  if (v8)
  {
    v28 = *(this + 20);
    if (v28 == 2)
    {
      v30 = ACFULogging::getLogInstance(v27);
      v27 = ACFULogging::handleMessage(v30, 0, "%s::%s: Defaulting to disable second boot stage for simulator platform during restore - this is temporary\n");
    }

    else
    {
      if (v28 != 1)
      {
        goto LABEL_36;
      }

      v29 = ACFULogging::getLogInstance(v27);
      v27 = ACFULogging::handleMessage(v29, 0, "%s::%s: Defaulting to disable second boot stage for FPGA platform during restore\n");
    }

    *(this + 24) = 0;
  }

LABEL_36:
  if (v39)
  {
    v31 = ACFULogging::getLogInstance(v27);
    v32 = [v39 BOOLValue];
    v33 = [@"centauri-second-stage" UTF8String];
    v34 = "disabled";
    if (v32)
    {
      v34 = "enabled";
    }

    ACFULogging::handleMessage(v31, 0, "%s::%s: Overriding second boot stage to %s due to %s boot-arg\n", "CentauriTransport", "parseDeviceBootArgs", v34, v33);
    *(this + 24) = [v39 BOOLValue];
  }

  else
  {
    v39 = 0;
  }

LABEL_41:
  if (v49)
  {
    free(v49);
    v49 = 0;
  }

  return v37;
}

void CentauriTransport::platformToString(int a1@<W0>, std::string *a2@<X8>)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "silicon");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "FPGA");
  v16 = 2;
  std::string::basic_string[abi:ne200100]<0>(v17, "simulator");
  std::map<CentauriTransport::Platform,std::string>::map[abi:ne200100](&v9, &v12, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v17[i + 2]) < 0)
    {
      operator delete(v17[i]);
    }
  }

  v5 = v10[0];
  if (!v10[0])
  {
    goto LABEL_12;
  }

  v6 = v10;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v10 && *(v6 + 8) <= a1)
  {
    v7 = std::map<CentauriTransport::BootMode,std::string>::at(&v9, &v11);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      a2->__r_.__value_.__r.__words[2] = v7[2];
      *&a2->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10[0]);
}

void sub_24338B660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void CentauriTransport::bootStageToString(int a1@<W0>, std::string *a2@<X8>)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "ROM");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "secondary boot");
  v16 = 2;
  std::string::basic_string[abi:ne200100]<0>(v17, "secondary lpm boot");
  std::map<airship_ch_boot_stage_id,std::string>::map[abi:ne200100](&v9, &v12, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v17[i + 2]) < 0)
    {
      operator delete(v17[i]);
    }
  }

  v5 = v10[0];
  if (!v10[0])
  {
    goto LABEL_12;
  }

  v6 = v10;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v10 && *(v6 + 8) <= a1)
  {
    v7 = std::map<CentauriTransport::BootMode,std::string>::at(&v9, &v11);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      a2->__r_.__value_.__r.__words[2] = v7[2];
      *&a2->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10[0]);
}

void sub_24338B89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CentauriTransport::writeRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v4 = a4;
    v5 = a2;
    v6 = airship_ch_boot_write_register();
    if (!v6)
    {
      return 1;
    }

    v8 = v6;
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write register %u (%u bytes): 0x%08x\n", "CentauriTransport", "writeRegister", v5, v4, v8);
  }

  else
  {
    CentauriTransport::writeRegister(0);
  }

  return 0;
}

uint64_t *std::map<CentauriTransport::BootMode,std::string>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    v6[1] = v7;
  }

  return result;
}

void sub_24338BAB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278DB0518, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> const&,0>@<X0>(const void **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> const&,std::allocator<ACFUCommon::PersonalizeParams>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> const&,std::allocator<ACFUCommon::PersonalizeParams>,0>(void *a1, const void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28561AA28;
  std::construct_at[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> const&,ACFUCommon::PersonalizeParams*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28561AA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> const&,ACFUCommon::PersonalizeParams*>(uint64_t a1, const void **a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  MEMORY[0x245D31570](a1, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_24338BEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_24338BF5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278DB0520, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t **std::map<CentauriTransport::BootMode,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__construct_node<std::pair<CentauriTransport::BootMode const,std::string> const&>(a1, a4, v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8[0]);
    return v8[0];
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__construct_node<std::pair<CentauriTransport::BootMode const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_24338C3A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::map<CentauriTransport::BootMode,__CFString const*>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

void std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(uint64_t a1, void **a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = *a4;
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__find_equal<CentauriTransport::BootMode>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t **std::map<CentauriTransport::Platform,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::Platform,std::pair<CentauriTransport::Platform const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::Platform,std::pair<CentauriTransport::Platform const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__construct_node<std::pair<CentauriTransport::Platform const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__construct_node<std::pair<CentauriTransport::Platform const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_24338CBB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::map<airship_ch_boot_stage_id,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__emplace_hint_unique_key_args<airship_ch_boot_stage_id,std::pair<airship_ch_boot_stage_id const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__emplace_hint_unique_key_args<airship_ch_boot_stage_id,std::pair<airship_ch_boot_stage_id const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__construct_node<std::pair<airship_ch_boot_stage_id const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__construct_node<std::pair<airship_ch_boot_stage_id const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_24338CD60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t CentauriBooterCreate(uint64_t a1)
{
  v199[1] = *MEMORY[0x277D85DE8];
  v187 = 0;
  v188 = 0;
  context = xmmword_24339A64C;
  v193 = 0x200000002;
  v2 = std::map<CentauriBooterBootMode,CentauriTransport::BootMode>::map[abi:ne200100](v185, &context, 3);
  if (!a1)
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    v156 = "validateBooterConfig";
    v157 = "%s::%s: null config\n";
LABEL_209:
    v90 = 0;
    size = ACFULogging::handleMessage(LogInstance, 2, v157, "ACFUBootInterface", v156);
    v91 = 0;
    Instance = 0;
    goto LABEL_181;
  }

  v3 = (a1 + 40);
  if (*(a1 + 40) >= 3u)
  {
    v158 = ACFULogging::getLogInstance(v2);
    v90 = 0;
    size = ACFULogging::handleMessage(v158, 2, "%s::%s: invalid boot mode %d\n", "ACFUBootInterface", "validateBooterConfig", *v3);
    v91 = 0;
    Instance = 0;
    goto LABEL_181;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    LOBYTE(context) = 1;
    v5 = CFGetTypeID(v4);
    TypeID = CFDictionaryGetTypeID();
    if (v5 != TypeID)
    {
      v165 = ACFULogging::getLogInstance(TypeID);
      size = ACFULogging::handleMessage(v165, 2, "%s::%s: nvramOverrides has wrong type\n", "ACFUBootInterface", "validateBooterConfig");
      goto LABEL_213;
    }

    CFDictionaryApplyFunction(*(a1 + 32), validateNVRAMOverride, &context);
    if ((context & 1) == 0)
    {
LABEL_213:
      v90 = 0;
      v91 = 0;
      Instance = 0;
      goto LABEL_181;
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    LOBYTE(context) = 1;
    v9 = CFGetTypeID(v8);
    v10 = CFArrayGetTypeID();
    if (v9 != v10)
    {
      v166 = "%s::%s: rawCalibrationPaths has wrong type\n";
      goto LABEL_212;
    }

    v11 = *(a1 + 48);
    v200.length = CFArrayGetCount(v11);
    v200.location = 0;
    CFArrayApplyFunction(v11, v200, validatePath, &context);
    if ((context & 1) == 0)
    {
      v166 = "%s::%s: invalid rawCalibrationPaths\n";
      goto LABEL_212;
    }
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    v14 = CFDataGetTypeID();
    if (v13 != v14)
    {
      LogInstance = ACFULogging::getLogInstance(v14);
      v156 = "validateBooterConfig";
      v157 = "%s::%s: lpmConfigurationData has wrong type\n";
      goto LABEL_209;
    }
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    LOBYTE(context) = 1;
    v16 = CFGetTypeID(v15);
    v10 = CFArrayGetTypeID();
    if (v16 == v10)
    {
      v17 = *(a1 + 88);
      v201.length = CFArrayGetCount(v17);
      v201.location = 0;
      CFArrayApplyFunction(v17, v201, validatePath, &context);
      if (context)
      {
        goto LABEL_14;
      }

      v166 = "%s::%s: invalid powerTablePaths\n";
    }

    else
    {
      v166 = "%s::%s: powerTablePaths has wrong type\n";
    }

LABEL_212:
    v167 = ACFULogging::getLogInstance(v10);
    size = ACFULogging::handleMessage(v167, 2, v166, "ACFUBootInterface", "validateBooterConfig");
    goto LABEL_213;
  }

LABEL_14:
  v18 = *a1;
  v19 = *(a1 + 8);
  v189 = *(a1 + 16);
  v20 = v189;
  *keys = xmmword_24339A664;
  keys[2] = 0x400000003;
  v21 = std::map<CentauriBooterLogLevel,ACFULogLevel>::map[abi:ne200100](&context, keys, 3);
  keys[0] = 0;
  values = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  v199[0] = 0;
  if (!v20)
  {
    goto LABEL_22;
  }

  v22 = *(&context + 1);
  if (!*(&context + 1))
  {
    goto LABEL_22;
  }

  v23 = &context + 8;
  do
  {
    if (*(v22 + 7) >= v20)
    {
      v23 = v22;
    }

    v22 = *&v22[8 * (*(v22 + 7) < v20)];
  }

  while (v22);
  if (v23 == &context + 8 || *(v23 + 7) > v20)
  {
LABEL_22:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_23;
  }

  v151 = std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(&context, &v189);
  v152 = *MEMORY[0x277CBECE8];
  v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s=%u", "logLevel", *v151);
  keys[0] = @"ACFUDebugArgs";
  __p.__r_.__value_.__r.__words[0] = v26;
  v153 = CFDictionaryCreate(v152, keys, &__p.__r_.__value_.__l.__data_, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v24 = v153;
  if (v153)
  {
    v199[0] = @"Options";
    values = v153;
    v21 = CFDictionaryCreate(v152, v199, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v25 = v21;
    if (!v21)
    {
      v154 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v154, 2, "%s::%s: failed to create args dict\n", "ACFUBootInterface", "setupLogging");
      v29 = 0;
      goto LABEL_28;
    }

LABEL_23:
    v27 = ACFULogging::getLogInstance(v21);
    inited = ACFULogging::initLog(v27, v25, v18, v19);
    v29 = inited == 0;
    if (inited)
    {
      v159 = ACFULogging::getLogInstance(inited);
      ACFULogging::handleMessage(v159, 2, "%s::%s: failed to initialize logging\n", "ACFUBootInterface", "setupLogging");
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (!v24)
    {
LABEL_29:
      if (!v26)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_28:
    CFRelease(v24);
    goto LABEL_29;
  }

  v173 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v173, 2, "%s::%s: failed to create level dict\n", "ACFUBootInterface", "setupLogging");
  v29 = 0;
  if (v26)
  {
LABEL_30:
    CFRelease(v26);
  }

LABEL_31:
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&context, *(&context + 1));
  if (!v29)
  {
    goto LABEL_213;
  }

  v30 = ACFULogging::getLogInstance(size);
  v31 = ACFULogging::handleMessage(v30, 0, "%s::%s: CentauriUpdater Version: %s\n", "ACFUBootInterface", "logBooterConfig", "CentauriUpdater-56.0.1~5524");
  v32 = ACFULogging::getLogInstance(v31);
  v33 = ACFULogging::handleMessage(v32, 0, "%s::%s: === CentauriBooter Config ===\n", "ACFUBootInterface", "logBooterConfig");
  v34 = ACFULogging::getLogInstance(v33);
  if (*a1)
  {
    v35 = "provided";
  }

  else
  {
    v35 = "not provided";
  }

  v36 = ACFULogging::handleMessage(v34, 0, "%s::%s: Log Sink: %s\n", "ACFUBootInterface", "logBooterConfig", v35);
  v37 = ACFULogging::getLogInstance(v36);
  if (*(a1 + 8))
  {
    v38 = "provided";
  }

  else
  {
    v38 = "not provided";
  }

  v39 = ACFULogging::handleMessage(v37, 0, "%s::%s: Log Client Context: %s\n", "ACFUBootInterface", "logBooterConfig", v38);
  v40 = ACFULogging::getLogInstance(v39);
  v41 = ACFULogging::handleMessage(v40, 0, "%s::%s: Log Level: %d\n", "ACFUBootInterface", "logBooterConfig", *(a1 + 16));
  v42 = ACFULogging::getLogInstance(v41);
  v43 = *(a1 + 24);
  if (!v43)
  {
    v43 = "<default>";
  }

  v44 = ACFULogging::handleMessage(v42, 0, "%s::%s: Firmware Path: %s\n", "ACFUBootInterface", "logBooterConfig", v43);
  v45 = *(a1 + 32);
  v46 = ACFULogging::getLogInstance(v44);
  if (v45)
  {
    ACFULogging::handleMessage(v46, 0, "%s::%s: NVRAM Overrides:\n", "ACFUBootInterface", "logBooterConfig");
    CFDictionaryApplyFunction(*(a1 + 32), logNVRAMOverride, 0);
  }

  else
  {
    v47 = ACFULogging::handleMessage(v46, 0, "%s::%s: NVRAM Overrides: <none>\n", "ACFUBootInterface", "logBooterConfig");
  }

  v48 = ACFULogging::getLogInstance(v47);
  v49 = *v3;
  LODWORD(v199[0]) = *v3;
  LODWORD(context) = 0;
  std::string::basic_string[abi:ne200100]<0>(&context + 1, "normal");
  v194 = 1;
  std::string::basic_string[abi:ne200100]<0>(v195, "low power");
  v196 = 2;
  std::string::basic_string[abi:ne200100]<0>(v197, "remote");
  std::map<CentauriBooterBootMode,std::string>::map[abi:ne200100](keys, &context, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v197[i + 2]) < 0)
    {
      operator delete(v197[i]);
    }
  }

  v51 = keys[1];
  if (!keys[1])
  {
    goto LABEL_54;
  }

  v52 = &keys[1];
  do
  {
    if (*(v51 + 8) >= v49)
    {
      v52 = v51;
    }

    v51 = v51[*(v51 + 8) < v49];
  }

  while (v51);
  if (v52 != &keys[1] && *(v52 + 8) <= v49)
  {
    v139 = std::map<CentauriTransport::BootMode,std::string>::at(keys, v199);
    if (*(v139 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v139, v139[1]);
    }

    else
    {
      v140 = *v139;
      __p.__r_.__value_.__r.__words[2] = v139[2];
      *&__p.__r_.__value_.__l.__data_ = v140;
    }
  }

  else
  {
LABEL_54:
    std::string::basic_string[abi:ne200100]<0>(&__p, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(keys, keys[1]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v54 = ACFULogging::handleMessage(v48, 0, "%s::%s: Boot Mode: %s\n", "ACFUBootInterface", "logBooterConfig", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v55 = ACFULogging::getLogInstance(v54);
  if (*(a1 + 44))
  {
    v56 = "Yes";
  }

  else
  {
    v56 = "No";
  }

  v57 = ACFULogging::handleMessage(v55, 0, "%s::%s: Ignore FDR Calibration Data: %s\n", "ACFUBootInterface", "logBooterConfig", v56);
  v58 = ACFULogging::getLogInstance(v57);
  if (*(a1 + 45))
  {
    v59 = "Yes";
  }

  else
  {
    v59 = "No";
  }

  v60 = ACFULogging::handleMessage(v58, 0, "%s::%s: Allow FDR Raw Calibration Data: %s\n", "ACFUBootInterface", "logBooterConfig", v59);
  v61 = ACFULogging::getLogInstance(v60);
  if (*(a1 + 46))
  {
    v62 = "Yes";
  }

  else
  {
    v62 = "No";
  }

  v63 = ACFULogging::handleMessage(v61, 0, "%s::%s: Disable Host-Side FDR Calibration Data Trust Evaluation: %s\n", "ACFUBootInterface", "logBooterConfig", v62);
  v64 = *(a1 + 48);
  v65 = ACFULogging::getLogInstance(v63);
  if (v64)
  {
    ACFULogging::handleMessage(v65, 0, "%s::%s: Raw Calibration Paths:\n", "ACFUBootInterface", "logBooterConfig");
    v66 = *(a1 + 48);
    v202.length = CFArrayGetCount(v66);
    v202.location = 0;
    CFArrayApplyFunction(v66, v202, logPath, 0);
  }

  else
  {
    v67 = ACFULogging::handleMessage(v65, 0, "%s::%s: Raw Calibration Paths: <none>\n", "ACFUBootInterface", "logBooterConfig");
  }

  v68 = ACFULogging::getLogInstance(v67);
  if (*(a1 + 56))
  {
    v69 = "Yes";
  }

  else
  {
    v69 = "No";
  }

  v70 = ACFULogging::handleMessage(v68, 0, "%s::%s: Always Dump Diagnostics: %s\n", "ACFUBootInterface", "logBooterConfig", v69);
  v71 = ACFULogging::getLogInstance(v70);
  v72 = *(a1 + 64);
  if (!v72)
  {
    v72 = "<none>";
  }

  v73 = ACFULogging::handleMessage(v71, 0, "%s::%s: Diagnostics Path: %s\n", "ACFUBootInterface", "logBooterConfig", v72);
  v74 = ACFULogging::getLogInstance(v73);
  if (*(a1 + 72))
  {
    v75 = "provided";
  }

  else
  {
    v75 = "not provided";
  }

  v76 = ACFULogging::handleMessage(v74, 0, "%s::%s: LPM Configuration Data: %s\n", "ACFUBootInterface", "logBooterConfig", v75);
  v77 = *(a1 + 88);
  v78 = ACFULogging::getLogInstance(v76);
  if (v77)
  {
    ACFULogging::handleMessage(v78, 0, "%s::%s: Power Table Paths:\n", "ACFUBootInterface", "logBooterConfig");
    v79 = *(a1 + 88);
    v203.length = CFArrayGetCount(v79);
    v203.location = 0;
    CFArrayApplyFunction(v79, v203, logPath, 0);
  }

  else
  {
    v80 = ACFULogging::handleMessage(v78, 0, "%s::%s: Power Table Paths: <none>\n", "ACFUBootInterface", "logBooterConfig");
  }

  v81 = ACFULogging::getLogInstance(v80);
  v82 = ACFULogging::handleMessage(v81, 0, "%s::%s: =========================\n", "ACFUBootInterface", "logBooterConfig");
  v83 = ACFULogging::getLogInstance(v82);
  v84 = ACFULogging::handleMessage(v83, 0, "%s::%s: creating booter\n", "ACFUBootInterface", "CentauriBooterCreate");
  if (CentauriBooterCreate::only_once != -1)
  {
    CentauriBooterCreate_cold_1();
  }

  if (!kCentauriBooterTypeID)
  {
    LogInstance = ACFULogging::getLogInstance(v84);
    v156 = "CentauriBooterCreate";
    v157 = "%s::%s: failed to register class with CF\n";
    goto LABEL_209;
  }

  v85 = *MEMORY[0x277CBECE8];
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v156 = "CentauriBooterCreate";
    v157 = "%s::%s: failed to instantiate CF object\n";
    goto LABEL_209;
  }

  v87 = *(a1 + 64);
  if (v87)
  {
    v88 = CFStringCreateWithCString(v85, v87, 0x8000100u);
    if (!v88)
    {
      v89 = ACFULogging::getLogInstance(0);
      v90 = 0;
      size = ACFULogging::handleMessage(v89, 2, "%s::%s: failed to create diagnostics path string\n", "ACFUBootInterface", "CentauriBooterCreate");
      v91 = 0;
      goto LABEL_181;
    }
  }

  else
  {
    v88 = 0;
  }

  v176 = v88;
  ACFUDiagnostics::create(&context, v88, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>((Instance + 24), &context);
  v92 = context;
  *&context = 0;
  if (v92)
  {
    v93 = MEMORY[0x245D31760]();
    operator delete(v93);
  }

  if (!*(Instance + 24))
  {
    v160 = ACFULogging::getLogInstance(v92);
    v161 = "%s::%s: failed to create diagnostics\n";
LABEL_201:
    v90 = 0;
    size = ACFULogging::handleMessage(v160, 2, v161, "ACFUBootInterface", "CentauriBooterCreate");
    v91 = v176;
    goto LABEL_181;
  }

  v94 = *(Instance + 32);
  v183 = *(Instance + 24);
  v184 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v95 = *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(v185, (a1 + 40));
  v96 = *(a1 + 80);
  v97 = *(a1 + 32);
  if (v97 && (v98 = CFGetTypeID(*(a1 + 32)), v98 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v97, @"bootargs"), (v100 = Value) != 0) && (v101 = CFGetTypeID(Value), v101 == CFStringGetTypeID()))
  {
    ACFUCommon::stringFromCFString(&context, v100, v102);
    v103 = SHIBYTE(v193);
    v104 = *(&context + 1);
    p_context = context;
    v174 = context;
    if (v193 >= 0)
    {
      p_context = &context;
    }

    __s = p_context;
    if (v193 >= 0)
    {
      v104 = SHIBYTE(v193);
    }

    if (v104 >= 12)
    {
      v106 = p_context;
      v107 = p_context + v104;
      do
      {
        v108 = memchr(v106, 101, v104 - 11);
        if (!v108)
        {
          break;
        }

        if (*v108 == 0x735F656C62616E65 && *(v108 + 2) == 826108777)
        {
          if (v108 != v107 && v108 - __s != -1)
          {
            v110 = 1;
            goto LABEL_193;
          }

          break;
        }

        v106 = (v108 + 1);
        v104 = v107 - v106;
      }

      while (v107 - v106 >= 12);
    }

    v110 = 0;
LABEL_193:
    if (v103 < 0)
    {
      operator delete(v174);
    }
  }

  else
  {
    v110 = 0;
  }

  CentauriTransport::create(&v183, v95, v96, 1, v110, 0, keys);
  std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(&v187, keys);
  v112 = keys[0];
  keys[0] = 0;
  if (v112)
  {
    (*(*v112 + 64))(v112);
  }

  v113 = v184;
  if (v184)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
  }

  if (!v187)
  {
    v160 = ACFULogging::getLogInstance(v113);
    v161 = "%s::%s: failed to create transport\n";
    goto LABEL_201;
  }

  v114 = *(a1 + 24);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  *(Instance + 84) = 0;
  if (v114)
  {
    v116 = CFStringCreateWithCString(v85, v114, 0x8000100u);
    if (!v116)
    {
      v117 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v117, 2, "%s::%s: failed to create firmware override path string\n");
LABEL_146:
      size = __p.__r_.__value_.__l.__size_;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      if (!size)
      {
        v90 = __p.__r_.__value_.__l.__size_;
LABEL_180:
        v91 = v176;
        goto LABEL_181;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      goto LABEL_148;
    }
  }

  else
  {
    v118 = isPersonalizedFirmwarePresentInDefaultLocation(v113, v111);
    if (!v118)
    {
      v141 = ACFULogging::getLogInstance(v118);
      ACFULogging::handleMessage(v141, 0, "%s::%s: no firmware present\n", "ACFUBootInterface", "createFirmware");
      v142 = *(Instance + 32);
      keys[0] = *(Instance + 24);
      keys[1] = v142;
      if (v142)
      {
        atomic_fetch_add_explicit(v142 + 1, 1uLL, memory_order_relaxed);
      }

      CentauriFirmware::createEmpty(&stru_28561B080, keys, v199);
      std::shared_ptr<CentauriFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(&__p, v199);
      v143 = v199[0];
      v199[0] = 0;
      if (v143)
      {
        (*(*v143 + 56))(v143);
      }

      v144 = keys[1];
      if (keys[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](keys[1]);
      }

      v138 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        v90 = __p.__r_.__value_.__l.__size_;
        goto LABEL_160;
      }

      v172 = ACFULogging::getLogInstance(v144);
      ACFULogging::handleMessage(v172, 2, "%s::%s: failed to create empty firmware\n");
      goto LABEL_146;
    }

    v116 = copyDefaultPersonalizedFirmwarePath(v118, v119);
    if (!v116)
    {
      v171 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v171, 2, "%s::%s: failed to copy default personalized firmware path\n");
      goto LABEL_146;
    }
  }

  FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(v116, v115);
  if (FileDatafromFilePath)
  {
    v121 = *(Instance + 32);
    *&context = *(Instance + 24);
    *(&context + 1) = v121;
    if (v121)
    {
      atomic_fetch_add_explicit((v121 + 8), 1uLL, memory_order_relaxed);
    }

    CentauriFirmware::create(&context, v199);
    std::shared_ptr<CentauriFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(&__p, v199);
    v123 = v199[0];
    v199[0] = 0;
    if (v123)
    {
      (*(*v123 + 56))(v123);
    }

    v124 = *(&context + 1);
    if (*(&context + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&context + 1));
    }

    v125 = __p.__r_.__value_.__r.__words[0] != 0;
    if (!__p.__r_.__value_.__r.__words[0])
    {
      v164 = ACFULogging::getLogInstance(v124);
      ACFULogging::handleMessage(v164, 2, "%s::%s: failed to create firmware\n");
      goto LABEL_144;
    }

    if (!v114)
    {
      Symlink = ACFUCommon::createSymlink(@"/tmp/FTABHarvest/", v116, @"centauri-symlink-ftab.bin", v122);
      v136 = Symlink;
      v137 = ACFULogging::getLogInstance(Symlink);
      if (v136)
      {
        ACFULogging::handleMessage(v137, 0, "%s::%s: successfully created symlink for symbol harvesting\n");
        goto LABEL_144;
      }

      ACFULogging::handleMessage(v137, 2, "%s::%s: failed to create symlink\n");
      goto LABEL_141;
    }

    v126 = CFURLCreateWithString(v85, v116, 0);
    if (!v126)
    {
      v168 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v168, 2, "%s::%s: failed to create custom firmware source URL\n");
      goto LABEL_141;
    }

    v127 = CFURLCreateWithString(v85, @"/tmp/FTABHarvest/centauri-custom-ftab.bin", 0);
    v129 = v127;
    if (!v127)
    {
      v169 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v169, 2, "%s::%s: failed to create custom firmware destination URL\n", "ACFUBootInterface", "configureSymbolHarvesting");
      v134 = 0;
LABEL_140:
      CFRelease(v126);
      if (v134)
      {
LABEL_144:
        CFRelease(FileDatafromFilePath);
        goto LABEL_145;
      }

LABEL_141:
      os_fault_with_payload();
      goto LABEL_144;
    }

    if (ACFUCommon::doesPathExist(v127, v128))
    {
      ACFUCommon::removeFileWithURL(v129, v130);
    }

    v131 = MEMORY[0x245D31100](v129);
    if (v131)
    {
      v170 = ACFULogging::getLogInstance(v131);
      ACFULogging::handleMessage(v170, 2, "%s::%s: failed to create directory: %d\n");
    }

    else
    {
      v132 = AMSupportCopyFile();
      v133 = ACFULogging::getLogInstance(v132);
      if (!v132)
      {
        ACFULogging::handleMessage(v133, 0, "%s::%s: successfully copied custom firmware for symbol harvesting\n", "ACFUBootInterface", "configureSymbolHarvesting");
        v134 = 1;
LABEL_139:
        CFRelease(v129);
        goto LABEL_140;
      }

      ACFULogging::handleMessage(v133, 2, "%s::%s: failed to copy custom firmware: %d\n");
    }

    v134 = 0;
    goto LABEL_139;
  }

  v163 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v163, 2, "%s::%s: failed to create firmware data from file\n", "ACFUBootInterface", "createFirmware");
  v125 = 0;
LABEL_145:
  CFRelease(v116);
  if (!v125)
  {
    goto LABEL_146;
  }

LABEL_148:
  v90 = __p.__r_.__value_.__l.__size_;
  v138 = __p.__r_.__value_.__r.__words[0];
  if (!__p.__r_.__value_.__r.__words[0])
  {
    goto LABEL_180;
  }

LABEL_160:
  v145 = *(Instance + 32);
  v181 = *(Instance + 24);
  v182 = v145;
  if (v145)
  {
    atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v179 = v187;
  v180 = v188;
  if (v188)
  {
    atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v177 = v138;
  v178 = v90;
  if (v90)
  {
    atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(Instance + 16) = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(&v181, &v179, &v177);
  if (v178)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v178);
  }

  if (v180)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v180);
  }

  v146 = v182;
  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }

  if (*(Instance + 16))
  {
    *(Instance + 40) = AMSupportSafeRetain();
    *(Instance + 72) = AMSupportSafeRetain();
    *(Instance + 88) = AMSupportSafeRetain();
    *(Instance + 48) = *(a1 + 44);
    *(Instance + 49) = *(a1 + 45);
    v147 = AMSupportSafeRetain();
    *(Instance + 56) = v147;
    *(Instance + 64) = *(a1 + 56);
    *(Instance + 80) = *(a1 + 40);
    v148 = ACFULogging::getLogInstance(v147);
    ACFULogging::handleMessage(v148, 0, "%s::%s: successfully created booter\n", "ACFUBootInterface", "CentauriBooterCreate");
    goto LABEL_174;
  }

  v162 = ACFULogging::getLogInstance(v146);
  v91 = v176;
  size = ACFULogging::handleMessage(v162, 2, "%s::%s: failed to create boot interface\n", "ACFUBootInterface", "CentauriBooterCreate");
LABEL_181:
  v150 = ACFULogging::getLogInstance(size);
  ACFULogging::handleMessage(v150, 2, "%s::%s: failed to create booter\n", "ACFUBootInterface", "CentauriBooterCreate");
  if (v91)
  {
    CFRelease(v91);
  }

  if (Instance)
  {
    CFRelease(Instance);
    Instance = 0;
  }

LABEL_174:
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(v185, v186);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  if (v188)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v188);
  }

  return Instance;
}

void sub_24338E114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  v34 = *(v32 - 112);
  *(v32 - 112) = 0;
  if (v34)
  {
    CentauriBooterCreate_cold_3();
  }

  v35 = *(v32 - 136);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&a24, a25);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

uint64_t __CentauriBooterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kCentauriBooterTypeID = result;
  return result;
}

void CentauriBooterFinalize(std::__shared_weak_count **a1)
{
  if (a1)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: destroying booter\n", "ACFUBootInterface", "CentauriBooterFinalize");
    v3 = a1[2];
    if (v3)
    {
      v4 = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::~ACFUBootInterface(v3);
      operator delete(v4);
      a1[2] = 0;
    }

    v5 = a1[5];
    if (v5)
    {
      CFRelease(v5);
      a1[5] = 0;
    }

    v6 = a1[7];
    if (v6)
    {
      CFRelease(v6);
      a1[7] = 0;
    }

    v7 = a1[9];
    if (v7)
    {
      CFRelease(v7);
      a1[9] = 0;
    }

    v8 = a1[11];
    if (v8)
    {
      CFRelease(v8);
      a1[11] = 0;
    }

    v9 = a1[4];
    a1[3] = 0;
    a1[4] = 0;
    if (v9)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

CFStringRef CentauriBooterCopyDebugDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<CentauriBooter %p [%p]>{}", v1, v3);
  }

  return result;
}

void *std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28561AB58;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28561ABB8;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

ACFULogging *ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  v8 = a1[1];
  v17 = *a1;
  v18 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a2[1];
  v15 = *a2;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v6, &v17, &v15, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if ((v11 & 1) == 0)
  {
    ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(v7);
    return 0;
  }

  return v7;
}

void sub_24338E614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

ACFULogging *CentauriBooterCopyPreflightParameters(ACFULogging *a1)
{
  v1 = a1;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = "No";
  if (v1)
  {
    v3 = "Yes";
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: bootedQuery %s\n", "ACFUBootInterface", "CentauriBooterCopyPreflightParameters", v3);
  ACFUDiagnostics::create(&v20, 0, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(&v27, &v20);
  v4 = v20;
  v20 = 0;
  if (v4)
  {
    v5 = MEMORY[0x245D31760]();
    operator delete(v5);
  }

  if (!v27)
  {
    v16 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to create diagnostics\n");
    goto LABEL_35;
  }

  v23 = v27;
  v24 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CentauriTransport::create(&v23, 0, 0, 1, 0, 0, &v20);
  std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(&v25, &v20);
  v6 = v20;
  v20 = 0;
  if (v6)
  {
    (*(*v6 + 64))(v6);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (!v25)
  {
    v17 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v17, 2, "%s::%s: failed to create transport\n");
    goto LABEL_35;
  }

  (**v25)(&v20);
  v8 = v20;
  v7 = v21;
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_19;
    }

LABEL_35:
    v13 = 0;
    goto LABEL_28;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v22;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v9)
  {
    v13 = 0;
    goto LABEL_27;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_19:
  v10 = (*(*v8 + 8))(v8);
  v11 = v10;
  if (!v7)
  {
    if (v10)
    {
      goto LABEL_23;
    }

LABEL_36:
    v18 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v18, 0, "%s::%s: missing required personalization parameters\n");
    goto LABEL_38;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if ((v11 & 1) == 0)
  {
    goto LABEL_36;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_23:
  v12 = (**v8)(v8);
  v13 = v12;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v13)
  {
    v14 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v14, 0, "%s::%s: success\n", "ACFUBootInterface", "CentauriBooterCopyPreflightParameters");
    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v19 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v19, 2, "%s::%s: failed to copy preflight dictionary\n");
LABEL_38:
  v13 = 0;
  if (v7)
  {
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_28:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  return v13;
}

void sub_24338E928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriBooterBootChip(uint64_t a1)
{
  v251 = *MEMORY[0x277D85DE8];
  v239 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: booting chip\n", "ACFUBootInterface", "CentauriBooterBootChip");
  if (!a1)
  {
    v194 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v194, 2, "%s::%s: null booter\n", "ACFUBootInterface", "CentauriBooterBootChip");
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != kCentauriBooterTypeID)
  {
    v195 = ACFULogging::getLogInstance(v2);
    v196 = "%s::%s: booter has wrong type\n";
LABEL_283:
    v231 = 0;
    ACFULogging::handleMessage(v195, 2, v196, "ACFUBootInterface", "CentauriBooterBootChip");
    goto LABEL_286;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    v195 = ACFULogging::getLogInstance(v2);
    v196 = "%s::%s: uninitialized booter\n";
    goto LABEL_283;
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v230 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (**v4)(v249);
  v7 = *v249;
  v231 = *&v249[8];
  if (*&v249[8])
  {
    atomic_fetch_add_explicit((*&v249[8] + 8), 1uLL, memory_order_relaxed);
    v6 = *&v249[8];
    v8 = *&v249[16];
    if (*&v249[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v249[8]);
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *&v249[16];
    if (v5)
    {
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  if (v8)
  {
    v197 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v197, 2, "%s::%s: failed to get board params\n");
  }

  else
  {
    if (v231)
    {
      atomic_fetch_add_explicit(&v231->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v7 + 168, &v239);
    v10 = v231;
    if (v231)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v231);
    }

    if (DataAs)
    {
      v11 = v230[4];
      v12 = v230[5];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      isChipRevisionSupported = CentauriFirmware::isChipRevisionSupported(v11, v239);
      v14 = isChipRevisionSupported;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14)
      {
        if (v231)
        {
          atomic_fetch_add_explicit(&v231->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v242 = 0;
        v241 = 0;
        v240 = 0;
        v15 = ACFULogging::getLogInstance(isChipRevisionSupported);
        ACFULogging::handleMessage(v15, 0, "%s::%s: processing firmware for boot\n", "ACFUBootInterface", "populateRuntimeDataInFirmware");
        v16 = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v7 + 8, &v242);
        if ((v16 & 1) == 0)
        {
          v199 = ACFULogging::getLogInstance(v16);
          ACFULogging::handleMessage(v199, 2, "%s::%s: failed to extract chip id\n");
          goto LABEL_309;
        }

        v17 = ACFUCommon::Parameter::GetDataAsType<unsigned long long>(v7 + 40, &v241);
        if ((v17 & 1) == 0)
        {
          v200 = ACFULogging::getLogInstance(v17);
          ACFULogging::handleMessage(v200, 2, "%s::%s: failed to extract ecid\n");
          goto LABEL_309;
        }

        v18 = *(a1 + 16);
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Manifest = ACFUFirmware::getManifest(v19);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        if (!Manifest)
        {
          v22 = ACFUCommon::Parameter::GetDataAsType<unsigned char>(v7 + 104, &v240);
          if ((v22 & 1) == 0)
          {
            v216 = ACFULogging::getLogInstance(v22);
            ACFULogging::handleMessage(v216, 2, "%s::%s: failed to extract sec mode\n");
            goto LABEL_309;
          }

          v23 = v240;
          v24 = ACFULogging::getLogInstance(v22);
          if (v23)
          {
            ACFULogging::handleMessage(v24, 2, "%s::%s: attempted to load unsigned firmware on a secure fused chip\n");
            goto LABEL_309;
          }

          ACFULogging::handleMessage(v24, 0, "%s::%s: injecting dummy manifest\n", "ACFUBootInterface", "populateRuntimeDataInFirmware");
          v25 = CFDataCreate(*MEMORY[0x277CBECE8], dummyManifest, 2690);
          if (!v25)
          {
            v217 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v217, 2, "%s::%s: failed to copy dummy manifest\n");
            goto LABEL_309;
          }

          v26 = *(a1 + 16);
          v27 = *(v26 + 32);
          v28 = *(v26 + 40);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = (*(*v27 + 72))(v27, v25);
          v30 = v29;
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if ((v30 & 1) == 0)
          {
            v218 = ACFULogging::getLogInstance(v29);
            ACFULogging::handleMessage(v218, 2, "%s::%s: failed to set dummy manifest\n", "ACFUBootInterface", "populateRuntimeDataInFirmware");
            CFRelease(v25);
            goto LABEL_309;
          }

          CFRelease(v25);
        }

        *(&v244 + 1) = 0;
        *&v245 = 0;
        *&v244 = &v244 + 8;
        v31 = *(a1 + 40);
        if (v31)
        {
          Count = CFDictionaryGetCount(v31);
          v33 = Count;
          if (Count <= 0)
          {
            v209 = ACFULogging::getLogInstance(Count);
            ACFULogging::handleMessage(v209, 2, "%s::%s: empty overrides dict\n", "ACFUBootInterface", "populateNVRAMInFirmware");
            std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v244, *(&v244 + 1));
            goto LABEL_309;
          }

          v34 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
          v35 = malloc_type_calloc(v33, 8uLL, 0xC0040B8AA526DuLL);
          v36 = v35;
          if (v34 && v35)
          {
            CFDictionaryGetKeysAndValues(*(a1 + 40), v34, v35);
            v37 = 0;
            while (1)
            {
              v38 = CFGetTypeID(v34[v37]);
              TypeID = CFStringGetTypeID();
              if (v38 != TypeID)
              {
                break;
              }

              ACFUCommon::stringFromCFString(&v248, v34[v37], v40);
              if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(v249, v248.__r_.__value_.__l.__data_, v248.__r_.__value_.__l.__size_);
              }

              else
              {
                *v249 = v248;
              }

              *&v249[24] = v36[v37];
              v41 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(&v244, v249, v249);
              v43 = v42;
              if ((v249[23] & 0x80000000) != 0)
              {
                operator delete(*v249);
              }

              if ((v43 & 1) == 0)
              {
                v44 = ACFULogging::getLogInstance(v41);
                if ((v248.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = &v248;
                }

                else
                {
                  v45 = v248.__r_.__value_.__r.__words[0];
                }

                ACFULogging::handleMessage(v44, 2, "%s::%s: failed to insert %s\n", "ACFUBootInterface", "populateNVRAMInFirmware", v45);
              }

              if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v248.__r_.__value_.__l.__data_);
              }

              if ((v43 & 1) == 0)
              {
                v51 = 0;
                goto LABEL_74;
              }

              if (v33 == ++v37)
              {
                goto LABEL_64;
              }
            }

            v189 = ACFULogging::getLogInstance(TypeID);
            ACFUCommon::cfTypeDescription(v249, v38);
            if (v249[23] >= 0)
            {
              v190 = v249;
            }

            else
            {
              v190 = *v249;
            }

            ACFULogging::handleMessage(v189, 2, "%s::%s: override key has wrong type %s\n", "ACFUBootInterface", "populateNVRAMInFirmware", v190);
            if ((v249[23] & 0x80000000) != 0)
            {
              operator delete(*v249);
            }
          }

          else
          {
            v210 = ACFULogging::getLogInstance(v35);
            ACFULogging::handleMessage(v210, 2, "%s::%s: failed to allocate arrays\n", "ACFUBootInterface", "populateNVRAMInFirmware");
          }
        }

        else
        {
          v36 = 0;
          v34 = 0;
LABEL_64:
          v46 = *(a1 + 16);
          v47 = *(v46 + 32);
          v48 = *(v46 + 40);
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::map<std::string,void const*>::map[abi:ne200100](v243, &v244);
          v49 = CentauriFirmware::setNVRAM(v47, v243);
          std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(v243, v243[1]);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          if (v49)
          {
            v51 = 1;
            if (!v36)
            {
              goto LABEL_70;
            }

            goto LABEL_74;
          }

          v208 = ACFULogging::getLogInstance(v50);
          ACFULogging::handleMessage(v208, 2, "%s::%s: failed to handle nvram\n", "ACFUBootInterface", "populateNVRAMInFirmware");
        }

        v51 = 0;
        if (!v36)
        {
LABEL_70:
          if (v34)
          {
            goto LABEL_71;
          }

          goto LABEL_75;
        }

LABEL_74:
        free(v36);
        if (v34)
        {
LABEL_71:
          free(v34);
          std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v244, *(&v244 + 1));
          if ((v51 & 1) == 0)
          {
            goto LABEL_309;
          }

          goto LABEL_76;
        }

LABEL_75:
        std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v244, *(&v244 + 1));
        if (!v51)
        {
          goto LABEL_309;
        }

LABEL_76:
        v52 = v242;
        v53 = v241;
        v54 = *(a1 + 16);
        v55 = *(v54 + 32);
        v56 = *(v54 + 40);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v57 = CentauriFirmware::setCalibration(v55, *(a1 + 56), v52, v53, (*(a1 + 84) & 1) == 0, *(a1 + 48), *(a1 + 49), *(a1 + 50));
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (!v57)
        {
          goto LABEL_309;
        }

        if (*(a1 + 72))
        {
          ACFUDiagnostics::addItem();
          v58 = *(*(a1 + 16) + 40);
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v249, "_lpm");
          v59 = RTKitFirmware::addTagWithData();
          v60 = v59;
          if ((v249[23] & 0x80000000) != 0)
          {
            operator delete(*v249);
          }

          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          }

          v61 = ACFULogging::getLogInstance(v59);
          if (v60)
          {
            ACFULogging::handleMessage(v61, 2, "%s::%s: failed to add lpm tag\n");
            goto LABEL_309;
          }

          Length = CFDataGetLength(*(a1 + 72));
          ACFULogging::handleMessage(v61, 0, "%s::%s: successfully inserted %zu bytes lpm configuration data into firmware\n", "ACFUBootInterface", "populateLPMConfigDataInFirmware", Length);
        }

        v63 = copyPatchBayData("/System/Library/PrivateFrameworks/CentauriAlphaPatchBay.framework/CentauriAlphaPatchBay", "CentauriAlphaPatchBayCopyData", "alpha");
        v64 = copyPatchBayData("/System/Library/PrivateFrameworks/CentauriBetaPatchBay.framework/CentauriBetaPatchBay", "CentauriBetaPatchBayCopyData", "beta");
        v65 = *(a1 + 16);
        v66 = *(v65 + 32);
        v67 = *(v65 + 40);
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v68 = CentauriFirmware::setPatchBay(v66, v63, v64);
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (v63)
        {
          CFRelease(v63);
        }

        if (v64)
        {
          CFRelease(v64);
        }

        if (!v68)
        {
          goto LABEL_309;
        }

        v69 = *(a1 + 88);
        if (v69)
        {
          v70 = *(a1 + 16);
          v72 = *(v70 + 32);
          v71 = *(v70 + 40);
          v226 = v71;
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            v69 = *(a1 + 88);
          }

          v73 = CFArrayGetCount(v69);
          v74 = v73;
          if (v73 <= 0)
          {
            v75 = ACFULogging::getLogInstance(v73);
            ACFULogging::handleMessage(v75, 0, "%s::%s: empty array\n", "ACFUBootInterface", "populatePowerTablesInFirmware");
          }

          obj = 0;
          v76 = 0;
          idx = 0;
          v77 = 0;
          v225 = v74;
          v227 = v74 & ~(v74 >> 63);
          while (1)
          {
            if (idx == v227)
            {
              LODWORD(v110) = 1;
              goto LABEL_134;
            }

            v233 = CFArrayGetValueAtIndex(*(a1 + 88), idx);

            if (!v233)
            {
              v191 = ACFULogging::getLogInstance(v78);
              ACFULogging::handleMessage(v191, 2, "%s::%s: failed to get directory path at index %zu\n", "ACFUBootInterface", "populatePowerTablesInFirmware", idx);
              v77 = 0;
              LODWORD(v110) = 0;
              goto LABEL_134;
            }

            v79 = ACFULogging::getLogInstance(v78);
            v80 = v233;
            ACFULogging::handleMessage(v79, 0, "%s::%s: searching %s\n", "ACFUBootInterface", "populatePowerTablesInFirmware", [v233 UTF8String]);
            v81 = [MEMORY[0x277CCAA00] defaultManager];
            v243[0] = v76;
            v82 = [v81 contentsOfDirectoryAtPath:v233 error:v243];
            v228 = v243[0];

            if (!v82)
            {
              break;
            }

            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            obj = v82;
            v84 = [obj countByEnumeratingWithState:&v244 objects:v249 count:16];
            if (v84)
            {
              v236 = 0;
              v234 = 0;
              v85 = *v245;
              do
              {
                v86 = 0;
                do
                {
                  if (*v245 != v85)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v87 = *(*(&v244 + 1) + 8 * v86);
                  v88 = [v87 pathExtension];
                  v89 = [v88 length] == 0;

                  if (v89)
                  {
                    v90 = v87;
                    std::string::basic_string[abi:ne200100]<0>(&v248, [v87 UTF8String]);
                    v91 = (*(*v72 + 40))(v72, &v248);
                    v92 = v91;
                    if (v91)
                    {
                      v93 = objc_autoreleasePoolPush();
                      v94 = [v233 stringByAppendingPathComponent:v87];
                      v95 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v94];
                      v96 = v95;
                      if (v95)
                      {
                        v97 = ACFULogging::getLogInstance(v95);
                        v98 = v87;
                        ACFULogging::handleMessage(v97, 0, "%s::%s: replacing %s: %u -> %lu bytes\n", "ACFUBootInterface", "populatePowerTablesInFirmware", [v87 UTF8String], v92, -[ACFULogging length](v96, "length"));
                        updated = RTKitFirmware::updateTagWithData();
                        v100 = updated == 0;
                        v101 = 4 * (updated != 0);
                      }

                      else
                      {
                        v105 = ACFULogging::getLogInstance(0);
                        v106 = v94;
                        ACFULogging::handleMessage(v105, 2, "%s::%s: failed to read %s\n", "ACFUBootInterface", "populatePowerTablesInFirmware", [v94 UTF8String]);
                        v100 = 0;
                        v101 = 4;
                      }

                      objc_autoreleasePoolPop(v93);
                      v234 += v100;
                      if (v100)
                      {
                        v102 = 0;
                      }

                      else
                      {
                        v102 = v101;
                      }
                    }

                    else
                    {
                      v103 = ACFULogging::getLogInstance(v91);
                      v104 = v87;
                      ACFULogging::handleMessage(v103, 0, "%s::%s: firmware doesn't contain %s, skipping\n", "ACFUBootInterface", "populatePowerTablesInFirmware", [v87 UTF8String]);
                      v102 = 13;
                    }

                    if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v248.__r_.__value_.__l.__data_);
                    }

                    ++v236;
                    if (v102 != 13)
                    {
                      if (v102)
                      {
                        v110 = obj;
                        goto LABEL_133;
                      }
                    }
                  }

                  ++v86;
                }

                while (v84 != v86);
                v107 = [obj countByEnumeratingWithState:&v244 objects:v249 count:16];
                v84 = v107;
              }

              while (v107);
            }

            else
            {
              v236 = 0;
              v234 = 0;
            }

            v109 = ACFULogging::getLogInstance(v108);
            ++idx;
            v76 = v228;
            v77 = v233;
            ACFULogging::handleMessage(v109, 0, "%s::%s: path %zu of %zu: applied %u of %u power table files\n", "ACFUBootInterface", "populatePowerTablesInFirmware", idx, v225, v234, v236);
          }

          v192 = ACFULogging::getLogInstance(v83);
          v110 = [v228 description];
          v193 = v110;
          ACFULogging::handleMessage(v192, 2, "%s::%s: failed to get directory contents: %s\n", "ACFUBootInterface", "populatePowerTablesInFirmware", [v110 UTF8String]);
          obj = 0;
LABEL_133:

          LODWORD(v110) = 0;
          v76 = v228;
          v77 = v233;
        }

        else
        {
          v205 = ACFULogging::getLogInstance(0);
          v226 = 0;
          ACFULogging::handleMessage(v205, 0, "%s::%s: nothing to do\n", "ACFUBootInterface", "populatePowerTablesInFirmware");
          LODWORD(v110) = 1;
          v77 = 0;
          obj = 0;
          v76 = 0;
        }

LABEL_134:

        if (v226)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v226);
        }

        if (!v110)
        {
          goto LABEL_158;
        }

        *v249 = xmmword_278DB0600;
        *&v249[16] = unk_278DB0610;
        v250 = xmmword_278DB0620;
        std::map<CentauriBooterBootMode,__CFString const*>::map[abi:ne200100](&v244, v249, 3);
        CentauriCommon::getTatsuTagToFileNameMap(v249);
        memset(&v248, 0, sizeof(v248));
        v112 = *(&v244 + 1);
        if (!*(&v244 + 1))
        {
          goto LABEL_144;
        }

        v113 = *(a1 + 80);
        v114 = &v244 + 8;
        do
        {
          if (*(v112 + 8) >= v113)
          {
            v114 = v112;
          }

          v112 = *&v112[8 * (*(v112 + 8) < v113)];
        }

        while (v112);
        if (v114 != &v244 + 8 && v113 >= *(v114 + 8))
        {
          v159 = std::map<CentauriTransport::BootMode,std::string>::at(&v244, (a1 + 80));
          v160 = std::map<__CFString const*,std::string>::at(v249, v159);
          std::string::operator=(&v248, v160);
          v161 = *(*(a1 + 16) + 40);
          if (v161)
          {
            atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v162 = RTKitFirmware::moveTagToTop();
          v163 = v162;
          if (v161)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v161);
          }

          if (!v163)
          {
            LODWORD(v110) = 1;
LABEL_146:
            if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v248.__r_.__value_.__l.__data_);
            }

            std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v249, *&v249[8]);
            std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&v244, *(&v244 + 1));
            if (v110)
            {
              v116 = *(a1 + 16);
              v117 = *(v116 + 32);
              v118 = *(v116 + 40);
              if (v118)
              {
                atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v119 = ACFUFirmware::copyFWContainer(v117);
              v120 = v119;
              if (v118)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v118);
              }

              if (v120)
              {
                v110 = CFGetTypeID(v120);
                v121 = CFDataGetTypeID();
                LOBYTE(v110) = v110 == v121;
                if (v110)
                {
                  v122 = ACFUDiagnostics::addItem();
                  v123 = ACFULogging::getLogInstance(v122);
                  ACFULogging::handleMessage(v123, 0, "%s::%s: successfully processed firmware for boot\n");
                }

                else
                {
                  v207 = ACFULogging::getLogInstance(v121);
                  ACFULogging::handleMessage(v207, 2, "%s::%s: failed to get synthesized firmware data\n");
                }

                CFRelease(v120);
                goto LABEL_158;
              }

              v206 = ACFULogging::getLogInstance(v119);
              ACFULogging::handleMessage(v206, 2, "%s::%s: failed to get synthesized firmware data\n");
LABEL_309:
              LOBYTE(v110) = 0;
            }

LABEL_158:
            v124 = v231;
            if (v231)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v231);
            }

            if ((v110 & 1) == 0)
            {
              v201 = ACFULogging::getLogInstance(v124);
              ACFULogging::handleMessage(v201, 2, "%s::%s: failed to process firmware\n");
              goto LABEL_294;
            }

            v125 = v230[5];
            if (v125)
            {
              atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v126 = *(a1 + 40);
            if (v126 && (v127 = CFGetTypeID(*(a1 + 40)), v127 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v126, @"bootargs"), (v129 = Value) != 0) && (v130 = CFGetTypeID(Value), v130 == CFStringGetTypeID()))
            {
              v132 = v249;
              ACFUCommon::stringFromCFString(v249, v129, v131);
              v133 = v249[23];
              v135 = *v249;
              v134 = *&v249[8];
              if (v249[23] < 0)
              {
                v132 = *v249;
              }

              if (v249[23] >= 0)
              {
                v134 = v249[23];
              }

              v136 = &v132[v134];
              if (v134 >= 17)
              {
                v137 = v132;
                do
                {
                  v138 = memchr(v137, 109, v134 - 16);
                  if (!v138)
                  {
                    break;
                  }

                  if (*v138 == 0x662D656C75646F6DLL && v138[1] == 0x3D657261776D7269 && *(v138 + 16) == 49)
                  {
                    goto LABEL_183;
                  }

                  v137 = v138 + 1;
                  v134 = v136 - v137;
                }

                while (v136 - v137 > 16);
              }

              v138 = v136;
LABEL_183:
              v142 = v138 == v136 || v138 - v132 == -1;
              if (v133 < 0)
              {
                operator delete(v135);
              }
            }

            else
            {
              v142 = 1;
            }

            v143 = *MEMORY[0x277CBECE8];
            v144 = CFURLCreateWithString(*MEMORY[0x277CBECE8], @"/tmp/Centauri/wifi-assert-strings.bin", 0);
            if (v144)
            {
              if (v142)
              {
                v145 = "_wfa";
              }

              else
              {
                v145 = "_wma";
              }

              std::string::basic_string[abi:ne200100]<0>(v249, v145);
              v146 = ACFUFirmware::copyFWDataByFileName();
              v147 = v146;
              if ((v249[23] & 0x80000000) != 0)
              {
                operator delete(*v249);
                if (v147)
                {
LABEL_198:
                  v148 = CFURLCreateWithString(v143, @"/tmp/Centauri/", 0);
                  v150 = v148;
                  if (!v148)
                  {
                    v211 = ACFULogging::getLogInstance(0);
                    ACFULogging::handleMessage(v211, 2, "%s::%s: failed to create directory URL\n", "ACFUBootInterface", "installWiFiAssertStringsFile");
                    LOBYTE(v158) = 0;
                    v150 = v144;
LABEL_239:
                    CFRelease(v150);
                    CFRelease(v147);
                    if (!v125)
                    {
                      goto LABEL_241;
                    }

                    goto LABEL_240;
                  }

                  if (ACFUCommon::doesPathExist(v148, v149))
                  {
LABEL_225:
                    v165 = AMSupportWriteDataToFileURL();
                    if (!v165)
                    {
                      v167 = ACFUCommon::stringFromCFString(v249, @"/tmp/Centauri/wifi-assert-strings.bin", v166);
                      if ((v249[23] & 0x80000000) != 0)
                      {
                        if (*&v249[8])
                        {
                          v168 = *v249;
                          goto LABEL_231;
                        }
                      }

                      else if (v249[23])
                      {
                        v168 = v249;
LABEL_231:
                        v169 = chmod(v168, 0x1B6u);
                        if (!v169)
                        {
                          v170 = ACFULogging::getLogInstance(v169);
                          if (v142)
                          {
                            v171 = "production";
                          }

                          else
                          {
                            v171 = "manufacturing";
                          }

                          ACFULogging::handleMessage(v170, 0, "%s::%s: successfully installed %s file\n", "ACFUBootInterface", "installWiFiAssertStringsFile", v171);
                          LOBYTE(v158) = 1;
LABEL_236:
                          if ((v249[23] & 0x80000000) != 0)
                          {
                            operator delete(*v249);
                          }

                          goto LABEL_238;
                        }

                        v214 = ACFULogging::getLogInstance(v169);
                        v215 = __error();
                        ACFULogging::handleMessage(v214, 2, "%s::%s: failed to change file permissions: %d\n", "ACFUBootInterface", "installWiFiAssertStringsFile", *v215);
LABEL_305:
                        LOBYTE(v158) = 0;
                        goto LABEL_236;
                      }

                      v213 = ACFULogging::getLogInstance(v167);
                      ACFULogging::handleMessage(v213, 2, "%s::%s: failed to create file string\n", "ACFUBootInterface", "installWiFiAssertStringsFile");
                      goto LABEL_305;
                    }

                    v212 = ACFULogging::getLogInstance(v165);
                    ACFULogging::handleMessage(v212, 2, "%s::%s: failed to write file: %d\n");
                    goto LABEL_315;
                  }

                  v151 = MEMORY[0x245D31100](v150);
                  if (v151)
                  {
                    v219 = ACFULogging::getLogInstance(v151);
                    ACFULogging::handleMessage(v219, 2, "%s::%s: failed to create directory: %d\n");
LABEL_315:
                    LOBYTE(v158) = 0;
                    goto LABEL_238;
                  }

                  v153 = ACFUCommon::stringFromCFString(v249, @"/tmp/Centauri/", v152);
                  if ((v249[23] & 0x80000000) != 0)
                  {
                    if (*&v249[8])
                    {
                      v154 = *v249;
                      goto LABEL_219;
                    }
                  }

                  else if (v249[23])
                  {
                    v154 = v249;
LABEL_219:
                    v164 = chmod(v154, 0x1FFu);
                    if (!v164)
                    {
                      v158 = 1;
                      goto LABEL_221;
                    }

                    v221 = ACFULogging::getLogInstance(v164);
                    v222 = __error();
                    ACFULogging::handleMessage(v221, 2, "%s::%s: failed to change directory permissions: %d\n", "ACFUBootInterface", "installWiFiAssertStringsFile", *v222);
LABEL_318:
                    v158 = 0;
LABEL_221:
                    if ((v249[23] & 0x80000000) != 0)
                    {
                      operator delete(*v249);
                      if (!v158)
                      {
LABEL_238:
                        CFRelease(v144);
                        goto LABEL_239;
                      }
                    }

                    else if (!v158)
                    {
                      goto LABEL_238;
                    }

                    goto LABEL_225;
                  }

                  v220 = ACFULogging::getLogInstance(v153);
                  ACFULogging::handleMessage(v220, 2, "%s::%s: failed to create directory string\n", "ACFUBootInterface", "installWiFiAssertStringsFile");
                  goto LABEL_318;
                }
              }

              else if (v146)
              {
                goto LABEL_198;
              }

              v155 = AMSupportRemoveFile();
              v156 = ACFULogging::getLogInstance(v155);
              if (!v155)
              {
                if (v142)
                {
                  v157 = "production";
                }

                else
                {
                  v157 = "manufacturing";
                }

                ACFULogging::handleMessage(v156, 0, "%s::%s: no wifi %s strings in firmware, successfully removed old file\n", "ACFUBootInterface", "installWiFiAssertStringsFile", v157);
                CFRelease(v144);
                LOBYTE(v158) = 1;
                if (!v125)
                {
LABEL_241:
                  if ((v158 & 1) == 0)
                  {
                    os_fault_with_payload();
                  }

                  v172 = v230[2];
                  v173 = v230[3];
                  if (v173)
                  {
                    atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v175 = v230[4];
                  v174 = v230[5];
                  if (v174)
                  {
                    atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v237 = v175;
                  v238 = v174;
                  v176 = (*(*v172 + 16))(v172, &v237);
                  v177 = v238;
                  if (v238)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v238);
                  }

                  if (v173)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v173);
                  }

                  if (v176)
                  {
                    v203 = ACFULogging::getLogInstance(v177);
                    ACFULogging::handleMessage(v203, 2, "%s::%s: failed to push firmware\n");
                  }

                  else
                  {
                    v178 = v230[2];
                    v179 = v230[3];
                    if (v179)
                    {
                      atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v180 = (*(*v178 + 24))(v178);
                    v181 = v180;
                    if (v179)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v179);
                    }

                    if (!v181)
                    {
                      v182 = ACFULogging::getLogInstance(v180);
                      ACFULogging::handleMessage(v182, 0, "%s::%s: successfully booted chip\n", "ACFUBootInterface", "CentauriBooterBootChip");
                      v183 = v230[2];
                      v184 = v230[3];
                      if (v184)
                      {
                        atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v185 = CentauriTransport::sendBootTimestamps(v183);
                      if (v184)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                      }

LABEL_261:
                      v186 = *(a1 + 24);
                      if (!v186)
                      {
                        goto LABEL_267;
                      }

                      if (v185)
                      {
                        v187 = 1;
                        v185 = 1;
                        if (*(a1 + 64) != 1)
                        {
                          goto LABEL_267;
                        }
                      }

                      else
                      {
                        v187 = 0;
                      }

LABEL_266:
                      ACFUDiagnostics::perform(v186);
                      v185 = v187;
                      goto LABEL_267;
                    }

                    v204 = ACFULogging::getLogInstance(v180);
                    ACFULogging::handleMessage(v204, 2, "%s::%s: failed to ping firmware\n");
                  }

LABEL_294:
                  v185 = 0;
                  goto LABEL_261;
                }

LABEL_240:
                std::__shared_weak_count::__release_shared[abi:ne200100](v125);
                goto LABEL_241;
              }

              ACFULogging::handleMessage(v156, 2, "%s::%s: failed to remove file: %d\n", "ACFUBootInterface", "installWiFiAssertStringsFile", v155);
              CFRelease(v144);
            }

            else
            {
              v202 = ACFULogging::getLogInstance(0);
              ACFULogging::handleMessage(v202, 2, "%s::%s: failed to create file URL\n", "ACFUBootInterface", "installWiFiAssertStringsFile");
            }

            LOBYTE(v158) = 0;
            if (!v125)
            {
              goto LABEL_241;
            }

            goto LABEL_240;
          }

          v223 = ACFULogging::getLogInstance(v162);
          if ((v248.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v224 = &v248;
          }

          else
          {
            v224 = v248.__r_.__value_.__r.__words[0];
          }

          ACFULogging::handleMessage(v223, 2, "%s::%s: failed to move %s to top of ftab\n", "ACFUBootInterface", "promoteCCPUFirmwareToTop", v224);
        }

        else
        {
LABEL_144:
          v115 = ACFULogging::getLogInstance(v111);
          ACFULogging::handleMessage(v115, 2, "%s::%s: invalid boot mode\n", "ACFUBootInterface", "promoteCCPUFirmwareToTop");
        }

        LODWORD(v110) = 0;
        goto LABEL_146;
      }
    }

    else
    {
      v198 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v198, 2, "%s::%s: failed to extract chip revision\n");
    }
  }

LABEL_286:
  v187 = 0;
  v185 = 0;
  v186 = *(a1 + 24);
  if (v186)
  {
    goto LABEL_266;
  }

LABEL_267:
  if (v231)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v231);
  }

  return v185;
}

void sub_243390244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, void *a23)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

ACFULogging *isPersonalizedFirmwarePresentInDefaultLocation(uint64_t a1, const __CFString *a2)
{
  v2 = copyDefaultPersonalizedFirmwarePath(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFURLCreateWithString(*MEMORY[0x277CBECE8], v2, 0);
    if (v4)
    {
      v6 = v4;
      doesPathExist = ACFUCommon::doesPathExist(v4, v5);
      LogInstance = ACFULogging::getLogInstance(doesPathExist);
      if (doesPathExist)
      {
        v9 = "Yes";
      }

      else
      {
        v9 = "No";
      }

      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: result: %s\n", "ACFUBootInterface", "isPersonalizedFirmwarePresentInDefaultLocation", v9);
      CFRelease(v6);
    }

    else
    {
      isPersonalizedFirmwarePresentInDefaultLocation(0);
      doesPathExist = 0;
    }

    CFRelease(v3);
  }

  else
  {
    isPersonalizedFirmwarePresentInDefaultLocation(0);
    return 0;
  }

  return doesPathExist;
}

CFTypeID validateNVRAMOverride(const void *a1, const void *a2, _BYTE *a3)
{
  CFNullGetTypeID();
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    v9 = "%s::%s: key has wrong type\n";
    return validateNVRAMOverride(v9, a3);
  }

  if (!a2)
  {
    v9 = "%s::%s: no value\n";
    return validateNVRAMOverride(v9, a3);
  }

  v7 = CFGetTypeID(a2);
  result = CFBooleanGetTypeID();
  if (v7 != result)
  {
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      result = CFStringGetTypeID();
      if (v7 != result)
      {
        result = CFNumberGetTypeID();
        if (v7 != result)
        {
          v9 = "%s::%s: value has wrong type\n";
          return validateNVRAMOverride(v9, a3);
        }
      }
    }
  }

  return result;
}

CFTypeID validatePath(const void *a1, ACFULogging *a2)
{
  if (!a1)
  {
    return validatePath(a2);
  }

  v3 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v3 != result)
  {
    return validatePath(a2);
  }

  return result;
}

void *ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::~ACFUBootInterface(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::map<CentauriBooterLogLevel,ACFULogLevel>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void logNVRAMOverride(void *a1, void *a2, void *a3)
{
  v55[2] = *MEMORY[0x277D85DE8];
  memset(&v53, 0, sizeof(v53));
  memset(&v52, 0, sizeof(v52));
  TypeID = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v46);
  if (!a1 || (v6 = CFGetTypeID(a1), TypeID = CFStringGetTypeID(), v6 != TypeID))
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: key has wrong type\n");
    goto LABEL_37;
  }

  if (!a2)
  {
    v41 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v41, 2, "%s::%s: no value\n");
    goto LABEL_37;
  }

  ACFUCommon::stringFromCFString(&v45, a1, v7);
  v53 = v45;
  v8 = CFGetTypeID(a2);
  if (v8 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a2);
    if (!BytePtr)
    {
      v42 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v42, 2, "%s::%s: failed to extract value\n");
      goto LABEL_37;
    }

    Length = CFDataGetLength(a2);
    v11 = Length;
    if (Length < 1)
    {
      v43 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v43, 2, "%s::%s: value has bad length\n");
      goto LABEL_37;
    }

    do
    {
      *(&v49[-1].__locale_ + *(v47 - 24)) |= 0x4000u;
      v45.__r_.__value_.__s.__data_[0] = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v47, &v45);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 2;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      MEMORY[0x245D318F0]();
      ++BytePtr;
      --v11;
    }

    while (v11);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v46, &v45);
    v14 = std::string::insert(&v45, 0, "0x", 2uLL);
    v15 = *v14;
    valuePtr.__r_.__value_.__r.__words[0] = v14[1];
    *(valuePtr.__r_.__value_.__r.__words + 7) = *(v14 + 15);
    v16 = *(v14 + 23);
    v14[1] = 0;
    v14[2] = 0;
    *v14 = 0;
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    v52.__r_.__value_.__r.__words[0] = v15;
    v52.__r_.__value_.__l.__size_ = valuePtr.__r_.__value_.__r.__words[0];
    *(&v52.__r_.__value_.__r.__words[1] + 7) = *(valuePtr.__r_.__value_.__r.__words + 7);
    *(&v52.__r_.__value_.__s + 23) = v16;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v45.__r_.__value_.__r.__words[0];
LABEL_19:
      operator delete(v17);
    }
  }

  else
  {
    v18 = CFGetTypeID(a2);
    if (v18 != CFStringGetTypeID())
    {
      v24 = CFGetTypeID(a2);
      if (v24 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(a2))
        {
          v25 = "true";
        }

        else
        {
          v25 = "false";
        }

        v14 = std::string::__assign_external(&v52, v25);
      }

      else
      {
        v26 = CFGetTypeID(a2);
        v27 = CFNumberGetTypeID();
        if (v26 != v27)
        {
          v37 = ACFULogging::getLogInstance(v27);
          v38 = CFGetTypeID(a2);
          ACFULogging::handleMessage(v37, 2, "%s::%s: value has unhandled type %lu\n", "ACFUBootInterface", "logNVRAMOverride", v38);
          goto LABEL_37;
        }

        valuePtr.__r_.__value_.__r.__words[0] = 0;
        Type = CFNumberGetType(a2);
        v29 = Type;
        if (Type > kCFNumberNSIntegerType || ((1 << Type) & 0xCF9E) == 0)
        {
          v39 = ACFULogging::getLogInstance(Type);
          ACFULogging::handleMessage(v39, 2, "%s::%s: unhandled number type %ld\n", "ACFUBootInterface", "logNVRAMOverride", v29);
          goto LABEL_37;
        }

        Value = CFNumberGetValue(a2, Type, &valuePtr);
        if (!Value)
        {
          v44 = ACFULogging::getLogInstance(Value);
          ACFULogging::handleMessage(v44, 2, "%s::%s: failed to convert value as a number\n", "ACFUBootInterface", "logNVRAMOverride");
          goto LABEL_37;
        }

        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "0x", 2);
        *(v31 + *(*v31 - 24) + 8) |= 0x4000u;
        v45.__r_.__value_.__s.__data_[0] = 48;
        v32 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, &v45);
        *(v32 + *(*v32 - 24) + 8) = *(v32 + *(*v32 - 24) + 8) & 0xFFFFFFB5 | 8;
        MEMORY[0x245D31910]();
        v14 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v46, &v45);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v52 = v45;
      }

      goto LABEL_32;
    }

    ACFUCommon::stringFromCFString(&valuePtr, a2, v19);
    v20 = std::string::insert(&valuePtr, 0, "", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v45, "", 1uLL);
    v22 = *v14;
    v55[0] = v14[1];
    *(v55 + 7) = *(v14 + 15);
    v23 = *(v14 + 23);
    v14[1] = 0;
    v14[2] = 0;
    *v14 = 0;
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    v52.__r_.__value_.__r.__words[0] = v22;
    v52.__r_.__value_.__l.__size_ = v55[0];
    *(&v52.__r_.__value_.__r.__words[1] + 7) = *(v55 + 7);
    *(&v52.__r_.__value_.__s + 23) = v23;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = valuePtr.__r_.__value_.__r.__words[0];
      goto LABEL_19;
    }
  }

LABEL_32:
  v33 = ACFULogging::getLogInstance(v14);
  v34 = &v53;
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v53.__r_.__value_.__r.__words[0];
  }

  v35 = &v52;
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v52.__r_.__value_.__r.__words[0];
  }

  ACFULogging::handleMessage(v33, 0, "%s::%s: \t%s: %s\n", "ACFUBootInterface", "logNVRAMOverride", v34, v35);
LABEL_37:
  v46[0] = *MEMORY[0x277D82818];
  v36 = *(MEMORY[0x277D82818] + 72);
  *(v46 + *(v46[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v47 = v36;
  v48 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  v48 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  MEMORY[0x245D319A0](&v51);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

void sub_243390EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19, MEMORY[0x277D82818]);
  MEMORY[0x245D319A0](va);
  if (*(v34 - 169) < 0)
  {
    operator delete(*(v34 - 192));
  }

  if (*(v34 - 137) < 0)
  {
    operator delete(*(v34 - 160));
  }

  _Unwind_Resume(a1);
}

void logPath(ACFULogging *TypeID, void *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  if (TypeID && (v2 = TypeID, v3 = CFGetTypeID(TypeID), TypeID = CFStringGetTypeID(), v3 == TypeID))
  {
    v5 = ACFUCommon::stringFromCFString(&v9, v2, v4);
    *__p = v9;
    v12 = v10;
    LogInstance = ACFULogging::getLogInstance(v5);
    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \t%s\n", "ACFUBootInterface", "logPath", v7);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v8, 2, "%s::%s: key has wrong type\n", "ACFUBootInterface", "logPath");
  }
}

void sub_243391038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2433912D0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245D319A0](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  v6 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a2, v5, v6);
LABEL_10:
  *(a2 + v6) = 0;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D31950](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2433914EC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D318D0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245D318E0](v13);
  return a1;
}

void sub_2433918AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245D318E0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24339188CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_243391AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t **std::map<CentauriBooterBootMode,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriBooterBootMode,std::pair<CentauriBooterBootMode const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriBooterBootMode,std::pair<CentauriBooterBootMode const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__construct_node<std::pair<CentauriBooterBootMode const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__construct_node<std::pair<CentauriBooterBootMode const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_243391DCC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<CentauriFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28561AAF8;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void std::__shared_ptr_pointer<CentauriFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CentauriFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CentauriFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(uint64_t ***a1, uint64_t ***a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*>>(a1, a3, &v7);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t a1, char **a2, uint64_t ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 32) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_2433920EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::map<std::string,void const*>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,void const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,void const*>,std::__tree_node<std::__value_type<std::string,void const*>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<std::string,void const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,void const*>,std::__tree_node<std::__value_type<std::string,void const*>,void *> *,long>>>(uint64_t *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,void const*> const&>(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,void const*> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, char **a3, uint64_t *a4, char *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, a2 + 32) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 4, a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 32) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_243392588(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

const void *copyPatchBayData(const char *a1, const char *a2, char *a3)
{
  v5 = dlopen(a1, 1);
  if (!v5)
  {
    copyPatchBayData(a3);
    return 0;
  }

  v6 = v5;
  v7 = dlsym(v5, a2);
  if (!v7)
  {
    copyPatchBayData(a3);
LABEL_19:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v7();
  v9 = v8;
  if (!v8)
  {
    copyPatchBayData(a3);
    goto LABEL_7;
  }

  v10 = CFGetTypeID(v8);
  TypeID = CFDataGetTypeID();
  if (v10 != TypeID)
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    v16 = CFGetTypeID(v9);
    ACFUCommon::cfTypeDescription(__p, v16);
    if (v19 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: %s framework returned wrong type %s\n", "ACFUBootInterface", "copyPatchBayData", a3, v17);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_18;
  }

  Length = CFDataGetLength(v9);
  v13 = ACFULogging::getLogInstance(Length);
  if (!Length)
  {
    ACFULogging::handleMessage(v13, 2, "%s::%s: %s framework returned empty data\n", "ACFUBootInterface", "copyPatchBayData", a3);
LABEL_18:
    CFRelease(v9);
    goto LABEL_19;
  }

  ACFULogging::handleMessage(v13, 0, "%s::%s: received %ld bytes from %s framework\n", "ACFUBootInterface", "copyPatchBayData", Length, a3);
LABEL_7:
  dlclose(v6);
  return v9;
}

void sub_24339279C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<CentauriBooterBootMode,__CFString const*>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::map<CentauriBooterBootMode,CentauriTransport::BootMode>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x245D31760]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CentauriTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CentauriTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CentauriTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v7 = *(a1 + 48);
  }

  if (v7)
  {
    v10 = *a3;
    v11 = a3[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 24);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v10 = *(a1 + 16);
    }

    if (v10)
    {
      v13 = *a4;
      v14 = a4[1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      *(a1 + 32) = v13;
      *(a1 + 40) = v14;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        v13 = *(a1 + 32);
      }

      if (v13)
      {
        v16 = *(a1 + 24);
        v24 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(a1 + 40);
        v23 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *(a1 + 56);
        v22 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ACFURTKitROM::create();
        v19 = *(a1 + 8);
        *a1 = v25;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v20 = v24;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (*a1)
        {
          return 1;
        }

        ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v20);
      }

      else
      {
        ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v15);
      }
    }

    else
    {
      ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v12);
    }
  }

  else
  {
    ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v9);
  }

  return 0;
}

void sub_243392B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t CentauriPlatform::getPlatformIdentifier(CentauriPlatform *this, uint64_t a2, unsigned __int16 *a3)
{
  if (qword_27ED71C70 != -1)
  {
    CentauriPlatform::getPlatformIdentifier();
  }

  if ((_MergedGlobals & 1) == 0)
  {
    CentauriPlatform::getPlatformIdentifier(this);
    return 0;
  }

  if (HIBYTE(_MergedGlobals) != 1)
  {
    *v19 = 0;
    ThunderboltDeviceInfo = CentauriPlatform::getThunderboltDeviceInfo(&v19[1], v19, a3);
    if (ThunderboltDeviceInfo)
    {
      ThunderboltIdentifier = CentauriPlatform::getThunderboltIdentifier(v19[1], v19[0]);
      v11 = ThunderboltIdentifier;
      LogInstance = ACFULogging::getLogInstance(ThunderboltIdentifier);
      CentauriPlatform::thunderboltIdentifierToString(v11, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: thunderbolt, %s\n", "CentauriPlatform", "getPlatformIdentifier", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v11 | 0x80000000;
      goto LABEL_17;
    }

    v16 = ACFULogging::getLogInstance(ThunderboltDeviceInfo);
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to get Thunderbolt device info\n");
    return 0;
  }

  v3 = MGGetSInt64Answer();
  v4 = MGGetSInt64Answer();
  v5 = v4;
  if (!v3 || !v4)
  {
    v17 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v17, 2, "%s::%s: failed to get host chip ID (%lld) or board ID (%lld)\n");
    return 0;
  }

  v6 = ACFULogging::getLogInstance(v4);
  if (v3 >= 0x10000 || v5 >= 0x8000)
  {
    ACFULogging::handleMessage(v6, 2, "%s::%s: host chip ID (%lld) or board ID (%lld) out of range\n");
    return 0;
  }

  v7 = ACFULogging::handleMessage(v6, 3, "%s::%s: builtin, host chip ID 0x%04x, host board ID 0x%04x\n", "CentauriPlatform", "getPlatformIdentifier", v3, v5);
  v8 = v3 | ((v5 & 0x7FFF) << 16);
LABEL_17:
  v14 = ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage(v14, 3, "%s::%s: successfully generated identifier 0x%08x\n", "CentauriPlatform", "getPlatformIdentifier", v8);
  return v8;
}

void sub_243392DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(CentauriPlatform *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  parent = 0;
  v42 = 0;
  valuePtr = 0;
  if (!this || !a2)
  {
    CentauriPlatform::getThunderboltDeviceInfo(this);
    return 0;
  }

  v5 = IOServiceMatching("AppleCentauriManager");
  if (!v5)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    return 0;
  }

  v6 = *MEMORY[0x277CD2898];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v5);
  if (!MatchingService)
  {
    CentauriPlatform::getThunderboltDeviceInfo(MatchingService);
    return 0;
  }

  v8 = MatchingService;
  v9 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Thunderbolt Path", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    v29 = 0;
    goto LABEL_25;
  }

  v11 = CFProperty;
  v12 = CFGetTypeID(CFProperty);
  TypeID = CFStringGetTypeID();
  if (v12 != TypeID)
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    v32 = CFGetTypeID(v11);
    ACFUCommon::cfTypeDescription(__p, v32);
    if (v41 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: thunderbolt path property has wrong type %s\n", "CentauriPlatform", "getThunderboltDeviceInfo", v33);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_38;
  }

  v14 = IORegistryEntryCopyFromPath(v6, v11);
  if (!v14)
  {
    CentauriPlatform::getThunderboltDeviceInfo(v14);
LABEL_38:
    v29 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  ParentEntry = IORegistryEntryGetParentEntry(v14, "IOService", &parent);
  if (ParentEntry)
  {
    v17 = 1;
  }

  else
  {
    v17 = parent == 0;
  }

  if (v17)
  {
    CentauriPlatform::getThunderboltDeviceInfo(ParentEntry);
LABEL_41:
    v29 = 0;
    goto LABEL_23;
  }

  v18 = IORegistryEntryCreateCFProperty(parent, @"Device Vendor ID", v9, 0);
  if (!v18)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    goto LABEL_41;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  v21 = CFNumberGetTypeID();
  if (v20 != v21)
  {
    v34 = ACFULogging::getLogInstance(v21);
    v35 = CFGetTypeID(v19);
    ACFUCommon::cfTypeDescription(__p, v35);
    if (v41 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    ACFULogging::handleMessage(v34, 2, "%s::%s: device vendor ID property has wrong type %s\n", "CentauriPlatform", "getThunderboltDeviceInfo", v36);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_48;
  }

  v22 = IORegistryEntryCreateCFProperty(parent, @"Device Model ID", v9, 0);
  if (!v22)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
LABEL_48:
    v29 = 0;
    goto LABEL_22;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  v25 = CFNumberGetTypeID();
  if (v24 != v25)
  {
    v37 = ACFULogging::getLogInstance(v25);
    v38 = CFGetTypeID(v23);
    ACFUCommon::cfTypeDescription(__p, v38);
    if (v41 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = __p[0];
    }

    ACFULogging::handleMessage(v37, 2, "%s::%s: device model ID property has wrong type %s\n", "CentauriPlatform", "getThunderboltDeviceInfo", v39);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_58;
  }

  Value = CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    CentauriPlatform::getThunderboltDeviceInfo(Value);
LABEL_58:
    v29 = 0;
    goto LABEL_21;
  }

  if (valuePtr >= 0x10000)
  {
    CentauriPlatform::getThunderboltDeviceInfo(&valuePtr);
    goto LABEL_58;
  }

  v27 = CFNumberGetValue(v23, kCFNumberSInt64Type, &v42);
  if (!v27)
  {
    CentauriPlatform::getThunderboltDeviceInfo(v27);
    goto LABEL_58;
  }

  v28 = v42;
  if (v42 >= 0x10000)
  {
    CentauriPlatform::getThunderboltDeviceInfo(&v42);
    goto LABEL_58;
  }

  *this = valuePtr;
  *a2 = v28;
  v29 = 1;
LABEL_21:
  CFRelease(v23);
LABEL_22:
  CFRelease(v19);
LABEL_23:
  IOObjectRelease(v15);
LABEL_24:
  CFRelease(v11);
LABEL_25:
  IOObjectRelease(v8);
  return v29;
}

void sub_2433931A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriPlatform::getThunderboltIdentifier(CentauriPlatform *this, int a2)
{
  v3 = this;
  if (a2 == 45067 && this == 238)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 56869 && this == 90)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: (0x%04x, 0x%04x) -> %hhu\n", "CentauriPlatform", "getThunderboltIdentifier", v3, a2, v7);
  return v7;
}

void CentauriPlatform::thunderboltIdentifierToString(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v16, "generic");
  v17 = 1;
  std::string::basic_string[abi:ne200100]<0>(v18, "Thunderstrike");
  v19 = 2;
  std::string::basic_string[abi:ne200100]<0>(v20, "TigrisCreek");
  std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](&v12, v15, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v20[i + 2]) < 0)
    {
      operator delete(v20[i]);
    }
  }

  v5 = v13[0];
  if (!v13[0])
  {
    goto LABEL_13;
  }

  v6 = v13;
  do
  {
    v7 = v5[32];
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 != v13 && *(v6 + 32) <= a1)
  {
    v10 = std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(&v12, &v14);
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v10, v10[1]);
    }

    else
    {
      v11 = *v10;
      a2->__r_.__value_.__r.__words[2] = v10[2];
      *&a2->__r_.__value_.__l.__data_ = v11;
    }
  }

  else
  {
LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v12, v13[0]);
}

void sub_2433933E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke()
{
  parent = 0;
  v0 = IOServiceMatching("AppleCentauriManager");
  if (v0)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v0);
    v2 = MatchingService;
    if (MatchingService)
    {
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v4 = 1;
      }

      else
      {
        v4 = parent == 0;
      }

      if (v4)
      {
        ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_1(ParentEntry);
      }

      else
      {
        v5 = *MEMORY[0x277CBECE8];
        CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin", *MEMORY[0x277CBECE8], 0);
        if (CFProperty)
        {
          _MergedGlobals = 257;
        }

        else
        {
          CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin-protium", v5, 0);
          HIBYTE(_MergedGlobals) = CFProperty != 0;
          LOBYTE(_MergedGlobals) = 1;
          if (!CFProperty)
          {
            goto LABEL_11;
          }
        }

        CFRelease(CFProperty);
      }
    }

    else
    {
      ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_2(MatchingService);
    }
  }

  else
  {
    ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_3(0);
    v2 = 0;
  }

LABEL_11:
  result = parent;
  if (parent)
  {
    result = IOObjectRelease(parent);
    parent = 0;
  }

  if (v2)
  {
    return IOObjectRelease(v2);
  }

  return result;
}

uint64_t **std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[32] = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_243393918(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriFirmware::create(uint64_t *a2@<X1>, RTKitFirmware **a3@<X8>)
{
  v5 = operator new(0x68uLL);
  RTKitFirmware::RTKitFirmware(v5);
  *v5 = &unk_28561AC38;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0;
  *a3 = v5;
  CentauriCommon::getTatsuTagToFileNameMap(v10);
  v6 = RTKitFirmware::init();
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v10, v10[1]);
  if (v6)
  {
    v8 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v5 + 12);
    *(v5 + 11) = v8;
    *(v5 + 12) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    *a3 = 0;
    (*(*v5 + 56))(v5);
  }
}

void sub_243393A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

void CentauriFirmware::CentauriFirmware(CentauriFirmware *this)
{
  RTKitFirmware::RTKitFirmware(this);
  *v1 = &unk_28561AC38;
  v1[11] = 0;
  v1[12] = 0;
}

void CentauriFirmware::createEmpty(ACFUCommon *a1@<X0>, uint64_t *a2@<X1>, RTKitFirmware **a3@<X8>)
{
  v6 = operator new(0x68uLL);
  RTKitFirmware::RTKitFirmware(v6);
  *v6 = &unk_28561AC38;
  *(v6 + 11) = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  CentauriCommon::getTatsuTagToFileNameMap(v15);
  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(a1, @"/usr/standalone/firmware/Centauri/", v7);
  if (URLByAppendingStrings)
  {
    std::map<__CFString const*,std::string>::map[abi:ne200100](v14, v15);
    v9 = RTKitFirmware::init();
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v14, v14[1]);
    if (v9)
    {
      v11 = *a2;
      v10 = a2[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(v6 + 12);
      *(v6 + 11) = v11;
      *(v6 + 12) = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    else
    {
      *a3 = 0;
      (*(*v6 + 56))(v6);
    }

    CFRelease(URLByAppendingStrings);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create save path\n", "CentauriFirmware", "createEmpty");
    *a3 = 0;
    (*(*v6 + 56))(v6);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v15, v15[1]);
}

void sub_243393C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char *a19)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21 + 24, a16);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a18, a19);
  *v20 = 0;
  if (v19)
  {
    (*(*v19 + 56))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t CentauriFirmware::setNVRAM(uint64_t a1, uint64_t a2)
{
  v75 = 0;
  v74 = 0;
  cf = 0;
  isCentauriBuiltin = CentauriPlatform::isCentauriBuiltin(&v75, a2);
  if ((isCentauriBuiltin & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(isCentauriBuiltin);
    v57 = "%s::%s: failed to determine whether Centauri is builtin\n";
    goto LABEL_85;
  }

  if (v75 == 1)
  {
    v6 = CentauriFirmware::copyRFEM(&v74, v5);
    if ((v6 & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(v6);
      v57 = "%s::%s: failed to copy RFEM\n";
      goto LABEL_85;
    }

    if (!v74)
    {
      goto LABEL_8;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "rfem");
    v72 = v74;
    v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(a2, __p, __p);
    v9 = v7;
    if (v71 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v9 & 1) == 0)
    {
      v64 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v64, 2, "%s::%s: failed to insert RFEM into nvram overrides\n", "CentauriFirmware", "setNVRAM");
    }

    else
    {
LABEL_8:
      v10 = CentauriFirmware::copyWSKU(&cf, v7);
      if ((v10 & 1) == 0)
      {
        LogInstance = ACFULogging::getLogInstance(v10);
        v57 = "%s::%s: failed to copy WSKU\n";
        goto LABEL_85;
      }

      if (!cf)
      {
        goto LABEL_13;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "wsku");
      v72 = cf;
      v11 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(a2, __p, __p);
      v13 = v12;
      if (v71 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13)
      {
        goto LABEL_13;
      }

      v65 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v65, 2, "%s::%s: failed to insert WSKU into nvram overrides\n", "CentauriFirmware", "setNVRAM");
    }

    v18 = 0;
    goto LABEL_93;
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
  v14 = ACFUFirmware::copyFWDataByFileName();
  v16 = v14;
  if ((v71 & 0x80000000) == 0)
  {
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  operator delete(__p[0]);
  if (!v16)
  {
LABEL_35:
    if (*(a2 + 16))
    {
      v34 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v34, 3, "%s::%s: creating fresh nvram file with only overrides\n");
    }

    else
    {
      v36 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v36, 3, "%s::%s: creating empty nvram file\n");
    }

    v37 = ACFURTKitNVRMGenerator::create();
    v18 = __p[0];
    if (__p[0])
    {
      v30 = ACFURTKitNVRMGenerator::copy(__p[0]);
      if (v30)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
        v38 = RTKitFirmware::addTagWithData();
        v39 = v38;
        if (v71 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v39)
        {
          v40 = ACFULogging::getLogInstance(v38);
          ACFULogging::handleMessage(v40, 0, "%s::%s: successfully added an nvram file\n", "CentauriFirmware", "setNVRAM");
          goto LABEL_45;
        }

        v63 = ACFULogging::getLogInstance(v38);
        ACFULogging::handleMessage(v63, 2, "%s::%s: failed to add nvram tag\n", "CentauriFirmware", "setNVRAM");
        goto LABEL_88;
      }

      v62 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v62, 2, "%s::%s: failed to copy nvram payload\n", "CentauriFirmware", "setNVRAM");
LABEL_93:
      v51 = 0;
      goto LABEL_65;
    }

    LogInstance = ACFULogging::getLogInstance(v37);
    v57 = "%s::%s: failed to create nvram generator\n";
LABEL_85:
    v18 = 0;
    ACFULogging::handleMessage(LogInstance, 2, v57, "CentauriFirmware", "setNVRAM");
    goto LABEL_93;
  }

LABEL_15:
  v17 = ACFURTKitNVRMGenerator::create(__p, v16, v15);
  v18 = __p[0];
  if (!__p[0])
  {
    v58 = ACFULogging::getLogInstance(v17);
    v18 = 0;
    ACFULogging::handleMessage(v58, 2, "%s::%s: failed to create nvram generator\n", "CentauriFirmware", "setNVRAM");
    v51 = 0;
    goto LABEL_64;
  }

  if (!*(a2 + 16))
  {
    v35 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v35, 0, "%s::%s: using existing nvram file as is\n", "CentauriFirmware", "setNVRAM");
    v30 = 0;
    goto LABEL_45;
  }

  v19 = ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage(v19, 3, "%s::%s: merging nvram overrides with existing nvram file\n", "CentauriFirmware", "setNVRAM");
  v22 = *a2;
  v20 = (a2 + 8);
  v21 = v22;
  if (v22 == v20)
  {
LABEL_29:
    v30 = ACFURTKitNVRMGenerator::copy(v18);
    if (!v30)
    {
      goto LABEL_82;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
    updated = RTKitFirmware::updateTagWithData();
    v32 = updated;
    if (v71 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v32)
    {
      v33 = ACFULogging::getLogInstance(updated);
      ACFULogging::handleMessage(v33, 0, "%s::%s: successfully merged nvram overrides with existing nvram file\n", "CentauriFirmware", "setNVRAM");
LABEL_45:
      ACFURTKitNVRMGenerator::log(v18);
      if (v30 || (v30 = ACFURTKitNVRMGenerator::copy(v18)) != 0)
      {
        if (*(a1 + 88))
        {
          ACFUDiagnostics::addItem();
        }

        std::string::basic_string[abi:ne200100]<0>(&v66, "bootargs");
        Length = ACFURTKitNVRMGenerator::copyVariable();
        v42 = Length;
        if (v67 < 0)
        {
          operator delete(v66);
          if (!v42)
          {
            goto LABEL_61;
          }
        }

        else if (!Length)
        {
          goto LABEL_61;
        }

        Length = CFDataGetLength(v42);
        if (Length >= 1)
        {
          BytePtr = CFDataGetBytePtr(v42);
          v44 = CFDataGetLength(v42);
          v45 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], BytePtr, v44, 0x8000100u, 0);
          v47 = v45;
          if (v45)
          {
            v48 = ACFUCommon::stringFromCFString(__p, v45, v46);
            v49 = ACFULogging::getLogInstance(v48);
            if (v71 >= 0)
            {
              v50 = __p;
            }

            else
            {
              v50 = __p[0];
            }

            ACFULogging::handleMessage(v49, 0, "%s::%s: Firmware boot-args: '%s'\n", "CentauriFirmware", "setNVRAM", v50);
            if (v71 < 0)
            {
              operator delete(__p[0]);
            }

            CFRelease(v47);
            v51 = 1;
          }

          else
          {
            v59 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v59, 2, "%s::%s: failed to create bootargs string\n", "CentauriFirmware", "setNVRAM");
            v51 = 0;
          }

LABEL_62:
          CFRelease(v42);
          goto LABEL_63;
        }

LABEL_61:
        v52 = ACFULogging::getLogInstance(Length);
        ACFULogging::handleMessage(v52, 0, "%s::%s: Firmware boot-args: <none>\n", "CentauriFirmware", "setNVRAM");
        v51 = 1;
        if (!v42)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

LABEL_82:
      v60 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v60, 2, "%s::%s: failed to copy nvram payload\n", "CentauriFirmware", "setNVRAM");
      goto LABEL_75;
    }

    v61 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed to update nvram tag\n", "CentauriFirmware", "setNVRAM");
LABEL_88:
    v51 = 0;
LABEL_63:
    CFRelease(v30);
    if (!v16)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  while (1)
  {
    v23 = (v21 + 4);
    v24 = (v21 + 4);
    if (*(v21 + 55) < 0)
    {
      v24 = *v23;
    }

    std::string::basic_string[abi:ne200100]<0>(&v68, v24);
    v25 = ACFURTKitNVRMGenerator::add();
    v26 = v25;
    if (v69 < 0)
    {
      operator delete(v68);
    }

    if ((v26 & 1) == 0)
    {
      break;
    }

    v27 = v21[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v21[2];
        v29 = *v28 == v21;
        v21 = v28;
      }

      while (!v29);
    }

    v21 = v28;
    if (v28 == v20)
    {
      goto LABEL_29;
    }
  }

  v55 = ACFULogging::getLogInstance(v25);
  if (*(v21 + 55) < 0)
  {
    v23 = *v23;
  }

  ACFULogging::handleMessage(v55, 2, "%s::%s: failed to add %s\n", "CentauriFirmware", "setNVRAM", v23);
LABEL_75:
  v51 = 0;
  if (v16)
  {
LABEL_64:
    CFRelease(v16);
  }

LABEL_65:
  if (v74)
  {
    CFRelease(v74);
    v74 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    v53 = MEMORY[0x245D317D0](v18);
    operator delete(v53);
  }

  return v51;
}