void sub_1E5303C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::copyIdentifierCmd(std::__shared_weak_count **this, const __CFDictionary **a2)
{
  v68 = 0;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  cf = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 1;
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- COPY IDENTIFIER --------\n", "BasebandRestore", "copyIdentifierCmd");
  if (!a2)
  {
    v43 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v43, 2, "%s::%s: NULL output param\n");
    goto LABEL_15;
  }

  v6 = this[21];
  if (!v6)
  {
    v44 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v44, 2, "%s::%s: Transport object instance missing\n");
    goto LABEL_15;
  }

  if (!v7)
  {
    v61 = 0;
    v62 = 0;
    v18 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v18, 2, "%s::%s: Transport casting failure\n");
    goto LABEL_15;
  }

  v8 = this[22];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v61 = v7;
  v62 = v8;
  Reset = TelephonyBasebandGetReset();
  if ((Reset & 1) == 0)
  {
    v45 = ACFULogging::getLogInstance(Reset);
    v46 = ACFULogging::handleMessage(v45, 2, "%s::%s: Failed to get baseband reset state\n", "BasebandUpdaterTransport", "getReset");
    v47 = ACFULogging::getLogInstance(v46);
    ACFULogging::handleMessage(v47, 2, "%s::%s: Failed to check baseband reset state\n");
    goto LABEL_15;
  }

  Controller = TelephonyBasebandCreateController();
  v64 = Controller;
  if (!Controller)
  {
    v55 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v55, 2, "%s::%s: Failed to create TelephonyBasebandController\n");
    goto LABEL_15;
  }

  v11 = ACFULogging::getLogInstance(Controller);
  ACFULogging::handleMessage(v11, 0, "%s::%s: Cold resetting baseband...\n", "BasebandRestore", "copyIdentifierCmd");
  v12 = TelephonyBasebandPowercycleModem();
  if ((v12 & 1) == 0)
  {
    v56 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v56, 2, "%s::%s: Failed to cold reset baseband\n");
    goto LABEL_15;
  }

  v13 = (this[21]->~__shared_weak_count)(&__p);
  v14 = __p;
  v15 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    v16 = v59;
    v67 = v14;
    v68 = v15;
    v17 = DWORD2(v59);
    LODWORD(v69) = DWORD2(v59);
    if (v59)
    {
      if (!atomic_fetch_add((v59 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = v69;
    }
  }

  else
  {
    v67 = __p;
    v68 = 0;
    v17 = DWORD2(v59);
    LODWORD(v69) = DWORD2(v59);
  }

  if (v17)
  {
    v57 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v57, 2, "%s::%s: Failed to get board params (%d)\n");
LABEL_15:
    v19 = 0;
    v20 = v62;
    if (v62)
    {
      goto LABEL_36;
    }

LABEL_37:
    v40 = cf;
    if (!cf)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v21 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v21, 3, "%s::%s: Successfully gathered personalization parameters from ROM; skipping Sik pub key collection from baseband as baseband is in reset\n");
  v22 = v67;
  v23 = v68;
  __p = v67;
  *&v59 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = (**v22)(v22);
  v25 = v24;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (!v25)
  {
    v48 = ACFULogging::getLogInstance(v24);
    ACFULogging::handleMessage(v48, 2, "%s::%s: Failed to create personalization parameters dictionary\n");
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v25, @"Cellular1,ChipID");
  v27 = Value;
  if (!Value)
  {
    v49 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v49, 2, "%s::%s: Baseband ChipId is missing.\n");
    goto LABEL_15;
  }

  v28 = CFGetTypeID(Value);
  TypeID = CFDataGetTypeID();
  if (v28 != TypeID)
  {
    v50 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v50, 2, "%s::%s: Baseband ChipId is not in expected data format.\n");
    goto LABEL_15;
  }

  v30 = support::cf::createNum64Num32FromData(v27, &v66);
  if ((v30 & 1) == 0)
  {
    v51 = ACFULogging::getLogInstance(v30);
    ACFULogging::handleMessage(v51, 2, "%s::%s: Baseband chipID data conversion failed\n");
    goto LABEL_15;
  }

  CFDictionaryAddValue(v25, @"ChipID", v66);
  v31 = CFDictionaryGetValue(v25, @"Cellular1,ECID");
  v32 = v31;
  if (!v31)
  {
    v52 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v52, 2, "%s::%s: Baseband ECID is missing.\n");
    goto LABEL_15;
  }

  v33 = CFGetTypeID(v31);
  v34 = CFDataGetTypeID();
  if (v33 != v34)
  {
    v53 = ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage(v53, 2, "%s::%s: Baseband ECID is not in expected data format.\n");
    goto LABEL_15;
  }

  v35 = support::cf::createByteSwappedData(v32, &v65);
  if ((v35 & 1) == 0)
  {
    v54 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v54, 2, "%s::%s: Baseband ECID data conversion failed\n");
    goto LABEL_15;
  }

  CFDictionaryAddValue(v25, @"ChipSerialNo", v65);
  if (cf)
  {
    CFDictionaryAddValue(v25, @"CertificationPublicKey", cf);
  }

  ACFULogging::getLogInstance(v36);
  v37 = operator new(0x30uLL);
  strcpy(v37, "BasebandRestore::copyIdentifierCmd");
  __p = v37;
  v59 = xmmword_1E5391310;
  v38 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  *a2 = v25;
  v39 = ACFULogging::getLogInstance(v38);
  ACFULogging::handleMessage(v39, 0, "%s::%s: Copy identifier command success\n", "BasebandRestore", "copyIdentifierCmd");
  v19 = 1;
  v20 = v62;
  if (!v62)
  {
    goto LABEL_37;
  }

LABEL_36:
  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_37;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v40 = cf;
  if (cf)
  {
LABEL_38:
    CFRelease(v40);
  }

LABEL_39:
  if (v64)
  {
    CFRelease(v64);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v41 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  return v19;
}

void sub_1E53043E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a23);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a24);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v24 - 88));
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef((v24 - 80));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 72);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::provisionCmd(const __CFDictionary **this, const __CFDictionary **a2)
{
  v46 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- PROVISION COMMAND --------\n", "BasebandRestore", "provisionCmd");
  v5 = this[17];
  if (!v5)
  {
    v32 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v32, 2, "%s::%s: Missing restore options\n");
    return 0;
  }

  Value = CFDictionaryGetValue(v5, @"EnablePing");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFBooleanGetTypeID()))
  {
    v21 = this[17];
    v22 = this[22];
    v38 = this[21];
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
    }

    v23 = this[20];
    v36 = this[19];
    v37 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
    }

    v34 = 0;
    v35 = 0;
    v24 = provisionBaseband(v21, &v38, &v36, a2, &v34);
    v25 = v24;
    v26 = v35;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    v27 = v37;
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = v39;
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v29 = ACFULogging::getLogInstance(v24);
    if ((v25 & 1) == 0)
    {
      ACFULogging::handleMessage(v29, 2, "%s::%s: Provisioning failed.\n");
      return 0;
    }

    v30 = operator new(0x30uLL);
    strcpy(v30, "BasebandRestore::provisionCmd");
    __p = v30;
    ACFULogging::handleMessageCFType();
    operator delete(__p);
    return 1;
  }

  v9 = CFBooleanGetValue(v7);
  if (v9 != 1)
  {
    return 1;
  }

  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 0, "%s::%s: Baseband provisioning PING is enabled.\n", "BasebandRestore", "provisionCmd");
  v11 = this[17];
  v12 = this[22];
  v44 = this[21];
  v45 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = this[20];
  v42 = this[19];
  v43 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v40 = 0;
  v41 = 0;
  v14 = sendProvisionPing(v11, &v44, &v42, &v46, &v40);
  v15 = v14;
  v16 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = ACFULogging::getLogInstance(v14);
  if (v15)
  {
    if (v46)
    {
      v20 = "Good";
    }

    else
    {
      v20 = "Requires reprovisioning";
    }

    ACFULogging::handleMessage(v19, 0, "%s::%s: Provisioning PING result: %s\n", "BasebandRestore", "provisionCmd", v20);
    return 1;
  }

  ACFULogging::handleMessage(v19, 2, "%s::%s: Provisioning ping failed.\n");
  return 0;
}

void sub_1E53048BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 88);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 72);
  _Unwind_Resume(a1);
}

void BasebandRestore::handleRTIClientImage(uint64_t a1@<X0>, char *a2@<X1>, BasebandRestore *a3@<X8>)
{
  v202 = *MEMORY[0x1E69E9840];
  LogInstance = ACFULogging::getLogInstance(a1);
  if (a2[23] >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Image external to FTAB requested: %s.\n", "BasebandRestore", "handleRTIClientImage", v7);
  v10 = a2[23];
  if (v10 < 0)
  {
    if (*(a2 + 1) == 4)
    {
      v13 = *a2;
      if (**a2 == 1836217966)
      {
        goto LABEL_31;
      }

      if (*v13 == 1953718882 || *v13 == 2036621922)
      {
        goto LABEL_37;
      }

      if (*v13 == 1818452578 || *v13 == 1668309602 || *v13 == 1987076706)
      {
        *a3 = 0;
        if (*v13 == 1818452578)
        {
          goto LABEL_115;
        }

        if (*v13 != 1668309602)
        {
          goto LABEL_112;
        }

        goto LABEL_118;
      }
    }

    if (*(a2 + 1) == 4 && **a2 == 1886544237)
    {
      goto LABEL_82;
    }

    if (*(a2 + 1) == 4)
    {
      v14 = *a2;
      goto LABEL_21;
    }

LABEL_22:
    v15 = ACFULogging::getLogInstance(v8);
    if (a2[23] >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    ACFULogging::handleMessage(v15, 0, "%s::%s: %s image currently not supported. Returning zero size file\n", "BasebandRestore", "handleRTIClientImage", v16);

    BasebandRestore::createZeroSizeContainer(a3);
    return;
  }

  if (v10 != 4)
  {
    goto LABEL_22;
  }

  v11 = *a2;
  if (*a2 <= 1886544236)
  {
    if (v11 != 1668309602 && v11 != 1818452578)
    {
      v14 = a2;
      if (v11 == 1836217966)
      {
LABEL_31:
        v17 = *(a1 + 496);
        if (v17)
        {
          v18 = ACFURTKitNVRMGenerator::copy(v17);
          v199.__r_.__value_.__r.__words[0] = v18;
          *a3 = 0xAAAAAAAAAAAAAAAALL;
          v20 = ACFUDataContainer::create(a3, v18, v19);
          if (*a3)
          {
            v21 = ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage(v21, 3, "%s::%s: Image external to FTAB provided: %s.\n", "BasebandRestore", "handleRTIClientNVRAMFile", "nvrm");
          }

          else
          {
            v84 = ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage(v84, 2, "%s::%s: Failed to create ACFUDataContainer for NVRAM file\n", "BasebandRestore", "handleRTIClientNVRAMFile");
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }

        else
        {
          v57 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v57, 2, "%s::%s: Looks like NVRAM dynamic copy is lost somehow. This should not have happened\n", "BasebandRestore", "handleRTIClientNVRAMFile");
          *a3 = 0;
        }

        return;
      }

LABEL_21:
      if (*v14 != 1954051171)
      {
        goto LABEL_22;
      }

      v53 = *(a1 + 536);
      *a3 = 0;
      if (v53)
      {
        v54 = ACFUDataContainer::create(&v199, v53, v9);
        v55 = v199.__r_.__value_.__r.__words[0];
        *a3 = v199.__r_.__value_.__r.__words[0];
        if (v55)
        {
          v56 = ACFULogging::getLogInstance(v54);
          ACFULogging::handleMessage(v56, 3, "%s::%s: Image external to FTAB provided: %s\n");
        }

        else
        {
          v111 = ACFULogging::getLogInstance(v54);
          ACFULogging::handleMessage(v111, 2, "%s::%s: Failed to create ACFUDataContainer for crash context data: %s\n");
        }

        return;
      }

      v88 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v88, 0, "%s::%s: Data for %s does not exist, returning zero size ACFUDataContainer\n", "BasebandRestore", "handleRTICrashContextFile", "ctxt");
      BasebandRestore::createZeroSizeContainer(&v199);
LABEL_123:
      *a3 = v199.__r_.__value_.__r.__words[0];
      return;
    }

    *a3 = 0;
    if (v11 != 1668309602)
    {
LABEL_115:
      v8 = *(a1 + 512);
      if (!v8)
      {
        goto LABEL_119;
      }

      goto LABEL_116;
    }

LABEL_118:
    v8 = *(a1 + 520);
    if (!v8)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  if (v11 <= 1987076705)
  {
    if (v11 != 1886544237)
    {
      v12 = 1953718882;
      goto LABEL_36;
    }

LABEL_82:
    v197 = 0;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_84;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_84:
        if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
        {
          goto LABEL_385;
        }

        goto LABEL_85;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_385;
    }

LABEL_85:
    if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
    {
      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v46 = off_1ECFD4E60;
      if (!off_1ECFD4E60)
      {
        SharedData::create_default_global(&v199);
        v47 = *&v199.__r_.__value_.__l.__data_;
        *&v199.__r_.__value_.__l.__data_ = 0uLL;
        v48 = *(&off_1ECFD4E60 + 1);
        off_1ECFD4E60 = v47;
        if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        size = v199.__r_.__value_.__l.__size_;
        if (v199.__r_.__value_.__l.__size_ && !atomic_fetch_add((v199.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
        }

        v46 = off_1ECFD4E60;
      }

      v50 = *(&off_1ECFD4E60 + 1);
      v196.__r_.__value_.__r.__words[0] = v46;
      v196.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
      if (*(&off_1ECFD4E60 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v199.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
      *&v192[34] = 0;
      *&v192[36] = 0;
      *&v192[40] = 0x8000000000000028;
      *&v199.__r_.__value_.__r.__words[1] = xmmword_1E538EBC0;
      strcpy(v192, "Asset PT image sBaseband Mobile #");
      strcpy(v199.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image sent");
      SharedData::setPreference<BOOL>(v46, &v199, 0);
      if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v199.__r_.__value_.__l.__data_);
      }

      if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
      }

      memset(&v196, 170, sizeof(v196));
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*&,char const(&)[10],0>(&v199, kBasebandMARadioPlatformFile, "marp.ftab");
      v51 = std::map<std::string,std::string>::map[abi:ne200100](&v196, &v199.__r_.__value_.__l.__data_, 1);
      if (v201 < 0)
      {
        operator delete(v200);
        if ((SHIBYTE(v199.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_103:
          v52 = v196.__r_.__value_.__l.__size_;
          if (!v196.__r_.__value_.__l.__size_)
          {
            goto LABEL_292;
          }

LABEL_173:
          v89 = a2[23];
          if (v89 >= 0)
          {
            v90 = a2;
          }

          else
          {
            v90 = *a2;
          }

          if (v89 >= 0)
          {
            v91 = a2[23];
          }

          else
          {
            v91 = *(a2 + 1);
          }

          v92 = &v196.__r_.__value_.__r.__words[1];
          while (1)
          {
            v93 = *(v52 + 55);
            if (v93 >= 0)
            {
              v94 = (v52 + 32);
            }

            else
            {
              v94 = *(v52 + 32);
            }

            if (v93 >= 0)
            {
              v95 = *(v52 + 55);
            }

            else
            {
              v95 = *(v52 + 40);
            }

            if (v91 >= v95)
            {
              v96 = v95;
            }

            else
            {
              v96 = v91;
            }

            v51 = memcmp(v94, v90, v96);
            if (v51)
            {
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_180;
              }

LABEL_194:
              v92 = v52;
              v52 = *v52;
              if (!v52)
              {
LABEL_195:
                if (v92 != &v196.__r_.__value_.__r.__words[1])
                {
                  v99 = v92[1].__r_.__value_.__l.__size_;
                  p_size = &v92[1].__r_.__value_.__l.__size_;
                  v97 = v99;
                  v100 = *(p_size + 23);
                  if (v100 >= 0)
                  {
                    v101 = p_size;
                  }

                  else
                  {
                    v101 = v97;
                  }

                  if (v100 >= 0)
                  {
                    v102 = *(p_size + 23);
                  }

                  else
                  {
                    v102 = p_size[1];
                  }

                  if (v102 >= v91)
                  {
                    v103 = v91;
                  }

                  else
                  {
                    v103 = v102;
                  }

                  v51 = memcmp(v90, v101, v103);
                  if (v51)
                  {
                    if ((v51 & 0x80000000) == 0)
                    {
LABEL_207:
                      v104 = *(a1 + 128);
                      if (v104)
                      {
                        Value = CFDictionaryGetValue(v104, @"BypassMobileAssetRPDownload");
                        v106 = Value;
                        if (Value)
                        {
                          v107 = CFGetTypeID(Value);
                          if (v107 == CFBooleanGetTypeID())
                          {
                            v108 = CFBooleanGetValue(v106);
                            if (v108 == 1)
                            {
                              v109 = ACFULogging::getLogInstance(v108);
                              if (a2[23] >= 0)
                              {
                                v110 = a2;
                              }

                              else
                              {
                                v110 = *a2;
                              }

                              ACFULogging::handleMessage(v109, 3, "%s::%s: Bypassing MobileAsset files download: returning zero size MA file %s\n", "BasebandRestore", "handleRTIClientMAFile", v110);
                              BasebandRestore::createZeroSizeContainer(a3);
                              goto LABEL_296;
                            }
                          }
                        }
                      }

                      v199.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
                      v199.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
                      v199.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
                      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      v115 = off_1ECFD4E60;
                      if (!off_1ECFD4E60)
                      {
                        SharedData::create_default_global(&__p);
                        v116 = *&__p.__pn_.__r_.__value_.__l.__data_;
                        *&__p.__pn_.__r_.__value_.__l.__data_ = 0uLL;
                        v117 = *(&off_1ECFD4E60 + 1);
                        off_1ECFD4E60 = v116;
                        if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v117->__on_zero_shared)(v117);
                          std::__shared_weak_count::__release_weak(v117);
                        }

                        v118 = __p.__pn_.__r_.__value_.__l.__size_;
                        if (__p.__pn_.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__pn_.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v118->__on_zero_shared)(v118);
                          std::__shared_weak_count::__release_weak(v118);
                        }

                        v115 = off_1ECFD4E60;
                      }

                      v119 = *(&off_1ECFD4E60 + 1);
                      pn.__r_.__value_.__r.__words[0] = v115;
                      pn.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
                      if (*(&off_1ECFD4E60 + 1))
                      {
                        atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      __p.__pn_.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
                      *&__p.__pn_.__r_.__value_.__r.__words[1] = xmmword_1E5390FF0;
                      strcpy(__p.__pn_.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image");
                      SharedData::getPreference<std::string>(v115, &__p, &v199);
                      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
                      }

                      if (v119 && !atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v119->__on_zero_shared)(v119);
                        std::__shared_weak_count::__release_weak(v119);
                      }

                      TypeID = *(a1 + 128);
                      if (TypeID)
                      {
                        TypeID = CFDictionaryGetValue(TypeID, @"MobileAssetRPPath");
                        v121 = TypeID;
                        if (TypeID)
                        {
                          v122 = CFGetTypeID(TypeID);
                          TypeID = CFStringGetTypeID();
                          if (v122 == TypeID)
                          {
                            CStringPtr = CFStringGetCStringPtr(v121, 0x8000100u);
                            TypeID = std::string::__assign_external(&v199, CStringPtr);
                          }
                        }
                      }

                      v124 = HIBYTE(v199.__r_.__value_.__r.__words[2]);
                      if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v124 = v199.__r_.__value_.__l.__size_;
                      }

                      if (v124)
                      {
                        v125 = ACFULogging::getLogInstance(TypeID);
                        v126 = &v199;
                        if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v126 = v199.__r_.__value_.__r.__words[0];
                        }

                        ACFULogging::handleMessage(v125, 3, "%s::%s: Using MobileAsset path: %s\n", "BasebandRestore", "handleRTIClientMAFile", v126);
                        memset(&__p, 170, sizeof(__p));
                        v127 = SHIBYTE(v199.__r_.__value_.__r.__words[2]);
                        if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v128 = HIBYTE(v199.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v128 = v199.__r_.__value_.__l.__size_;
                        }

                        v129 = v128 + 1;
                        if (v128 + 1 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        if (v129 < 0x17)
                        {
                          memset(&pn, 0, sizeof(pn));
                          v131 = &pn;
                          *(&pn.__r_.__value_.__s + 23) = v128 + 1;
                          if (v128)
                          {
                            goto LABEL_318;
                          }
                        }

                        else
                        {
                          if ((v129 | 7) == 0x17)
                          {
                            v130 = 25;
                          }

                          else
                          {
                            v130 = (v129 | 7) + 1;
                          }

                          v131 = operator new(v130);
                          pn.__r_.__value_.__l.__size_ = v128 + 1;
                          pn.__r_.__value_.__r.__words[2] = v130 | 0x8000000000000000;
                          pn.__r_.__value_.__r.__words[0] = v131;
LABEL_318:
                          if (v127 >= 0)
                          {
                            v158 = &v199;
                          }

                          else
                          {
                            v158 = v199.__r_.__value_.__r.__words[0];
                          }

                          memmove(v131, v158, v128);
                        }

                        *&v131[v128] = 47;
                        v159 = std::map<std::string,std::string>::at(v196.__r_.__value_.__l.__size_, a2);
                        v160 = *(v159 + 23);
                        if (v160 >= 0)
                        {
                          v161 = v159;
                        }

                        else
                        {
                          v161 = *v159;
                        }

                        if (v160 >= 0)
                        {
                          v162 = *(v159 + 23);
                        }

                        else
                        {
                          v162 = v159[1];
                        }

                        v163 = std::string::append(&pn, v161, v162);
                        v164 = v163->__r_.__value_.__r.__words[0];
                        v198.__pn_.__r_.__value_.__r.__words[0] = v163->__r_.__value_.__l.__size_;
                        *(v198.__pn_.__r_.__value_.__r.__words + 7) = *(&v163->__r_.__value_.__r.__words[1] + 7);
                        v165 = HIBYTE(v163->__r_.__value_.__r.__words[2]);
                        v163->__r_.__value_.__l.__size_ = 0;
                        v163->__r_.__value_.__r.__words[2] = 0;
                        v163->__r_.__value_.__r.__words[0] = 0;
                        __p.__pn_.__r_.__value_.__r.__words[0] = v164;
                        *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v198.__pn_.__r_.__value_.__r.__words + 7);
                        __p.__pn_.__r_.__value_.__l.__size_ = v198.__pn_.__r_.__value_.__r.__words[0];
                        *(&__p.__pn_.__r_.__value_.__s + 23) = v165;
                        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(pn.__r_.__value_.__l.__data_);
                        }

                        std::__fs::filesystem::path::lexically_normal(&v198, &__p);
                        if (SHIBYTE(v198.__pn_.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&pn, v198.__pn_.__r_.__value_.__l.__data_, v198.__pn_.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          pn = v198.__pn_;
                        }

                        v166 = ctu::fs::file_exists();
                        v167 = v166;
                        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(pn.__r_.__value_.__l.__data_);
                          if (SHIBYTE(v198.__pn_.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_359;
                          }

LABEL_335:
                          if (v167)
                          {
                            goto LABEL_336;
                          }

LABEL_360:
                          v181 = ACFULogging::getLogInstance(v166);
                          std::__fs::filesystem::path::lexically_normal(&pn, &__p);
                          if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            p_pn = &pn;
                          }

                          else
                          {
                            p_pn = pn.__r_.__value_.__r.__words[0];
                          }

                          if (a2[23] >= 0)
                          {
                            v183 = a2;
                          }

                          else
                          {
                            v183 = *a2;
                          }

                          ACFULogging::handleMessage(v181, 0, "%s::%s: MobileAsset file %s does not exist: returning zero size file %s\n", "BasebandRestore", "handleRTIClientMAFile", p_pn, v183);
                          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(pn.__r_.__value_.__l.__data_);
                          }

                          BasebandRestore::createZeroSizeContainer(&pn);
                          v184 = pn.__r_.__value_.__r.__words[0];
                          pn.__r_.__value_.__r.__words[0] = 0;
                          if (v197)
                          {
                            v185 = MEMORY[0x1E6926300]();
                            operator delete(v185);
                            v186 = pn.__r_.__value_.__r.__words[0];
                            pn.__r_.__value_.__r.__words[0] = 0;
                            if (v186)
                            {
                              v187 = MEMORY[0x1E6926300]();
                              operator delete(v187);
                            }
                          }
                        }

                        else
                        {
                          if ((SHIBYTE(v198.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_335;
                          }

LABEL_359:
                          operator delete(v198.__pn_.__r_.__value_.__l.__data_);
                          if (!v167)
                          {
                            goto LABEL_360;
                          }

LABEL_336:
                          Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
                          cf = Mutable;
                          std::__fs::filesystem::path::lexically_normal(&pn, &__p);
                          if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v169 = &pn;
                          }

                          else
                          {
                            v169 = pn.__r_.__value_.__r.__words[0];
                          }

                          CFStringAppendCString(Mutable, v169, 0x8000100u);
                          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(pn.__r_.__value_.__l.__data_);
                          }

                          ACFUDataContainer::create(&pn, Mutable, 1);
                          v170 = pn.__r_.__value_.__r.__words[0];
                          pn.__r_.__value_.__r.__words[0] = 0;
                          v171 = v197;
                          v197 = v170;
                          if (v171)
                          {
                            v172 = MEMORY[0x1E6926300]();
                            operator delete(v172);
                            v171 = pn.__r_.__value_.__r.__words[0];
                            pn.__r_.__value_.__r.__words[0] = 0;
                            if (v171)
                            {
                              v173 = MEMORY[0x1E6926300]();
                              operator delete(v173);
                            }
                          }

                          if (v170)
                          {
                            v174 = ACFULogging::getLogInstance(v171);
                            if (a2[23] >= 0)
                            {
                              v175 = a2;
                            }

                            else
                            {
                              v175 = *a2;
                            }

                            ACFULogging::handleMessage(v174, 3, "%s::%s: Image external to FTAB provided: %s.\n", "BasebandRestore", "handleRTIClientMAFile", v175);
                            pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                            v176 = off_1ECFD4E60;
                            if (!off_1ECFD4E60)
                            {
                              SharedData::create_default_global(&pn);
                              std::shared_ptr<SharedData>::operator=[abi:ne200100](&pn);
                              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&pn);
                              v176 = off_1ECFD4E60;
                            }

                            v177 = *(&off_1ECFD4E60 + 1);
                            v198.__pn_.__r_.__value_.__r.__words[0] = v176;
                            v198.__pn_.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
                            if (*(&off_1ECFD4E60 + 1))
                            {
                              atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
                            }

                            pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                            v178 = operator new(0x28uLL);
                            pn.__r_.__value_.__r.__words[0] = v178;
                            v179 = *&v192[16];
                            *&pn.__r_.__value_.__r.__words[1] = *&v192[32];
                            strcpy(v178 + 31, "sent");
                            v180 = *v192;
                            *v178 = v179;
                            *(v178 + 1) = v180;
                            SharedData::setPreference<BOOL>(v176, &pn, 1);
                            if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(pn.__r_.__value_.__l.__data_);
                            }

                            if (v177 && !atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v177->__on_zero_shared)(v177);
                              std::__shared_weak_count::__release_weak(v177);
                            }

                            Mutable = cf;
                          }

                          else
                          {
                            v188 = ACFULogging::getLogInstance(v171);
                            std::__fs::filesystem::path::lexically_normal(&pn, &__p);
                            if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v189 = &pn;
                            }

                            else
                            {
                              v189 = pn.__r_.__value_.__r.__words[0];
                            }

                            ACFULogging::handleMessage(v188, 2, "%s::%s: Failed to create ACFUDataContainer for MobileAsset file %s\n", "BasebandRestore", "handleRTIClientMAFile", v189);
                            if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(pn.__r_.__value_.__l.__data_);
                            }
                          }

                          if (Mutable)
                          {
                            CFRelease(Mutable);
                          }

                          v184 = v197;
                        }

                        v197 = 0;
                        *a3 = v184;
                        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        v156 = ACFULogging::getLogInstance(TypeID);
                        if (a2[23] >= 0)
                        {
                          v157 = a2;
                        }

                        else
                        {
                          v157 = *a2;
                        }

                        ACFULogging::handleMessage(v156, 0, "%s::%s: MobileAsset path not available: returning zero size file %s\n", "BasebandRestore", "handleRTIClientMAFile", v157);
                        BasebandRestore::createZeroSizeContainer(a3);
                      }

                      if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v199.__r_.__value_.__l.__data_);
                      }

LABEL_296:
                      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v196, v196.__r_.__value_.__l.__size_);
                      if (v197)
                      {
                        goto LABEL_312;
                      }

                      return;
                    }
                  }

                  else if (v91 >= v102)
                  {
                    goto LABEL_207;
                  }
                }

LABEL_292:
                v149 = ACFULogging::getLogInstance(v51);
                if (a2[23] >= 0)
                {
                  v150 = a2;
                }

                else
                {
                  v150 = *a2;
                }

                ACFULogging::handleMessage(v149, 2, "%s::%s: Did not find corresponding MobileAsset file name for 4cc tag %s\n", "BasebandRestore", "handleRTIClientMAFile", v150);
                *a3 = 0;
                goto LABEL_296;
              }
            }

            else
            {
              if (v95 >= v91)
              {
                goto LABEL_194;
              }

LABEL_180:
              v52 = *(v52 + 8);
              if (!v52)
              {
                goto LABEL_195;
              }
            }
          }
        }
      }

      else if ((SHIBYTE(v199.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      operator delete(v199.__r_.__value_.__l.__data_);
      v52 = v196.__r_.__value_.__l.__size_;
      if (!v196.__r_.__value_.__l.__size_)
      {
        goto LABEL_292;
      }

      goto LABEL_173;
    }

LABEL_385:
    v190 = ACFULogging::getLogInstance(v8);
    if (a2[23] >= 0)
    {
      v191 = a2;
    }

    else
    {
      v191 = *a2;
    }

    ACFULogging::handleMessage(v190, 0, "%s::%s: In restoreOS: returning zero size MobileAsset file %s\n", "BasebandRestore", "handleRTIClientMAFile", v191);
    BasebandRestore::createZeroSizeContainer(a3);
    return;
  }

  if (v11 == 1987076706)
  {
    *a3 = 0;
    v13 = a2;
LABEL_112:
    if (*v13 != 1987076706 || (v8 = *(a1 + 528)) == 0)
    {
LABEL_119:
      v63 = ACFULogging::getLogInstance(v8);
      if (a2[23] >= 0)
      {
        v64 = a2;
      }

      else
      {
        v64 = *a2;
      }

      ACFULogging::handleMessage(v63, 0, "%s::%s: FDR combined data for %s does not exist. Returning zero size.\n", "BasebandRestore", "handleRTIClientFDRFile", v64);
      BasebandRestore::createZeroSizeContainer(&v199);
      goto LABEL_123;
    }

LABEL_116:
    v58 = ACFUDataContainer::create(&v199, v8, v9);
    v59 = v199.__r_.__value_.__r.__words[0];
    *a3 = v199.__r_.__value_.__r.__words[0];
    if (v59)
    {
      v60 = ACFULogging::getLogInstance(v58);
      v61 = "%s::%s: Image external to FTAB provided: %s.\n";
      v62 = 3;
    }

    else
    {
      v60 = ACFULogging::getLogInstance(v58);
      v61 = "%s::%s: Failed to create ACFUDataContainer for FDR file: %s\n";
      v62 = 2;
    }

    if (a2[23] >= 0)
    {
      v85 = a2;
    }

    else
    {
      v85 = *a2;
    }

    ACFULogging::handleMessage(v60, v62, v61, "BasebandRestore", "handleRTIClientFDRFile", v85);
    return;
  }

  v12 = 2036621922;
LABEL_36:
  v14 = a2;
  if (v11 != v12)
  {
    goto LABEL_21;
  }

LABEL_37:
  v198.__pn_.__r_.__value_.__r.__words[0] = 0;
  memset(&v199, 170, sizeof(v199));
  GetBasebandNVM4ccToFileNameMap(&v199);
  v23 = v199.__r_.__value_.__l.__size_;
  if (!v199.__r_.__value_.__l.__size_)
  {
    goto LABEL_165;
  }

  v24 = a2[23];
  if (v24 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if (v24 >= 0)
  {
    v26 = a2[23];
  }

  else
  {
    v26 = *(a2 + 1);
  }

  v27 = &v199.__r_.__value_.__r.__words[1];
  do
  {
    while (1)
    {
      v28 = *(v23 + 55);
      v29 = v28 >= 0 ? (v23 + 32) : *(v23 + 32);
      v30 = v28 >= 0 ? *(v23 + 55) : *(v23 + 40);
      v31 = v26 >= v30 ? v30 : v26;
      v22 = memcmp(v29, v25, v31);
      if (v22)
      {
        break;
      }

      if (v30 >= v26)
      {
        goto LABEL_59;
      }

LABEL_45:
      v23 = *(v23 + 8);
      if (!v23)
      {
        goto LABEL_60;
      }
    }

    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_59:
    v27 = v23;
    v23 = *v23;
  }

  while (v23);
LABEL_60:
  if (v27 == &v199.__r_.__value_.__r.__words[1])
  {
    goto LABEL_165;
  }

  v34 = v27[1].__r_.__value_.__l.__size_;
  v33 = &v27[1].__r_.__value_.__l.__size_;
  v32 = v34;
  v35 = *(v33 + 23);
  if (v35 >= 0)
  {
    v36 = v33;
  }

  else
  {
    v36 = v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v33 + 23);
  }

  else
  {
    v37 = v33[1];
  }

  if (v37 >= v26)
  {
    v38 = v26;
  }

  else
  {
    v38 = v37;
  }

  v22 = memcmp(v25, v36, v38);
  if (!v22)
  {
    if (v26 >= v37)
    {
      goto LABEL_72;
    }

LABEL_165:
    v86 = ACFULogging::getLogInstance(v22);
    if (a2[23] >= 0)
    {
      v87 = a2;
    }

    else
    {
      v87 = *a2;
    }

    ACFULogging::handleMessage(v86, 2, "%s::%s: Did not find corresponding NVM file name for 4cc tag %s\n", "BasebandRestore", "handleRTIClientNVMFile", v87);
    *a3 = 0;
LABEL_169:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v199, v199.__r_.__value_.__l.__size_);
    return;
  }

  if ((v22 & 0x80000000) != 0)
  {
    goto LABEL_165;
  }

LABEL_72:
  v39 = *(a1 + 128);
  if (v39)
  {
    v40 = CFDictionaryGetValue(v39, @"BypassNVMDownload");
    v41 = v40;
    if (v40)
    {
      v42 = CFGetTypeID(v40);
      if (v42 == CFBooleanGetTypeID())
      {
        v43 = CFBooleanGetValue(v41);
        if (v43 == 1)
        {
          v44 = ACFULogging::getLogInstance(v43);
          if (a2[23] >= 0)
          {
            v45 = a2;
          }

          else
          {
            v45 = *a2;
          }

          ACFULogging::handleMessage(v44, 3, "%s::%s: Bypassing NVM files download: returning zero size NVM file %s\n", "BasebandRestore", "handleRTIClientNVMFile", v45);
          BasebandRestore::createZeroSizeContainer(a3);
          goto LABEL_169;
        }
      }
    }
  }

  memset(&v196, 170, sizeof(v196));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v65 = off_1ED944170;
  if (!off_1ED944170)
  {
    v66 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v66);
    pn.__r_.__value_.__r.__words[0] = v66;
    v67 = operator new(0x20uLL);
    *v67 = &unk_1F5F05A00;
    v67[1] = 0;
    v67[2] = 0;
    v67[3] = v66;
    v68 = off_1ED944178;
    off_1ED944170 = v66;
    off_1ED944178 = v67;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
    }

    v65 = off_1ED944170;
  }

  v69 = off_1ED944178;
  __p.__pn_.__r_.__value_.__r.__words[0] = v65;
  __p.__pn_.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v65, &v196);
  if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v69->__on_zero_shared)(v69);
    std::__shared_weak_count::__release_weak(v69);
  }

  if (*(a1 + 560))
  {
LABEL_144:
    memset(&__p, 170, sizeof(__p));
    v75 = std::map<std::string,std::string>::at(v199.__r_.__value_.__l.__size_, a2);
    v76 = v75;
    v77 = SHIBYTE(v196.__r_.__value_.__r.__words[2]);
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v78 = v196.__r_.__value_.__l.__size_;
    }

    v79 = *(v75 + 23);
    if (v79 >= 0)
    {
      v80 = *(v75 + 23);
    }

    else
    {
      v80 = v75[1];
    }

    v81 = v80 + v78;
    if (v80 + v78 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v81 <= 0x16)
    {
      memset(&pn, 0, sizeof(pn));
      v83 = &pn;
      *(&pn.__r_.__value_.__s + 23) = v80 + v78;
    }

    else
    {
      *&v192[32] = *(v75 + 23);
      if ((v81 | 7) == 0x17)
      {
        v82 = 25;
      }

      else
      {
        v82 = (v81 | 7) + 1;
      }

      v83 = operator new(v82);
      pn.__r_.__value_.__l.__size_ = v80 + v78;
      pn.__r_.__value_.__r.__words[2] = v82 | 0x8000000000000000;
      pn.__r_.__value_.__r.__words[0] = v83;
      v79 = *&v192[32];
    }

    if (v78)
    {
      if (v77 >= 0)
      {
        v112 = &v196;
      }

      else
      {
        v112 = v196.__r_.__value_.__r.__words[0];
      }

      memmove(v83, v112, v78);
    }

    v113 = &v83[v78];
    if (v80)
    {
      if (v79 >= 0)
      {
        v114 = v76;
      }

      else
      {
        v114 = *v76;
      }

      memmove(v113, v114, v80);
    }

    v113[v80] = 0;
    __p.__pn_ = pn;
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __p.__pn_;
    }

    v132 = ctu::fs::file_exists();
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      v133 = v132;
      operator delete(pn.__r_.__value_.__l.__data_);
      v132 = v133;
    }

    if (v132)
    {
      v134 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      v197 = v134;
      std::__fs::filesystem::path::lexically_normal(&pn, &__p);
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &pn;
      }

      else
      {
        v135 = pn.__r_.__value_.__r.__words[0];
      }

      CFStringAppendCString(v134, v135, 0x8000100u);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      ACFUDataContainer::create(&pn, v134, 1);
      v136 = pn.__r_.__value_.__r.__words[0];
      pn.__r_.__value_.__r.__words[0] = 0;
      v137 = v198.__pn_.__r_.__value_.__r.__words[0];
      v198.__pn_.__r_.__value_.__r.__words[0] = v136;
      if (v137)
      {
        v138 = MEMORY[0x1E6926300]();
        operator delete(v138);
        v137 = pn.__r_.__value_.__r.__words[0];
        pn.__r_.__value_.__r.__words[0] = 0;
        if (v137)
        {
          v139 = MEMORY[0x1E6926300]();
          operator delete(v139);
        }
      }

      if (v136)
      {
        v140 = ACFULogging::getLogInstance(v137);
        if (a2[23] >= 0)
        {
          v141 = a2;
        }

        else
        {
          v141 = *a2;
        }

        ACFULogging::handleMessage(v140, 3, "%s::%s: Image external to FTAB provided: %s.\n", "BasebandRestore", "handleRTIClientNVMFile", v141);
      }

      else
      {
        v152 = ACFULogging::getLogInstance(v137);
        std::__fs::filesystem::path::lexically_normal(&pn, &__p);
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v153 = &pn;
        }

        else
        {
          v153 = pn.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v152, 2, "%s::%s: Failed to create ACFUDataContainer for NVM file %s\n", "BasebandRestore", "handleRTIClientNVMFile", v153);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }
      }

      if (v134)
      {
        CFRelease(v134);
      }
    }

    else
    {
      v142 = ACFULogging::getLogInstance(v132);
      std::__fs::filesystem::path::lexically_normal(&pn, &__p);
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v143 = &pn;
      }

      else
      {
        v143 = pn.__r_.__value_.__r.__words[0];
      }

      if (a2[23] >= 0)
      {
        v144 = a2;
      }

      else
      {
        v144 = *a2;
      }

      ACFULogging::handleMessage(v142, 0, "%s::%s: File %s does not exist: returning zero size NVM file %s\n", "BasebandRestore", "handleRTIClientNVMFile", v143, v144);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      BasebandRestore::createZeroSizeContainer(&pn);
      v136 = pn.__r_.__value_.__r.__words[0];
      pn.__r_.__value_.__r.__words[0] = 0;
      if (v198.__pn_.__r_.__value_.__r.__words[0])
      {
        v145 = MEMORY[0x1E6926300]();
        operator delete(v145);
        v146 = pn.__r_.__value_.__r.__words[0];
        pn.__r_.__value_.__r.__words[0] = 0;
        if (v146)
        {
          v147 = MEMORY[0x1E6926300]();
          operator delete(v147);
        }
      }
    }

    v198.__pn_.__r_.__value_.__r.__words[0] = 0;
    *a3 = v136;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v71 = ACFULogging::getLogInstance(v70);
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v196;
    }

    else
    {
      v72 = v196.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v71, 3, "%s::%s: Preparing BBUFSServer with path: %s\n", "BasebandRestore", "handleRTIClientNVMFile", v72);
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v196;
    }

    else
    {
      v74 = v196.__r_.__value_.__r.__words[0];
    }

    if (v74)
    {
      if (bbufs::prepareDestination(v74, v73))
      {
        *(a1 + 560) = 1;
        goto LABEL_144;
      }

      v148 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
    }

    else
    {
      v148 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    }

    v151 = ACFULogging::getLogInstance(v148);
    ACFULogging::handleMessage(v151, 2, "%s::%s: Failed BBUFSServer prepare for RTI NVM download\n", "BasebandRestore", "handleRTIClientNVMFile");
    *a3 = 0;
  }

  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v154 = v198.__pn_.__r_.__value_.__r.__words[0];
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v199, v199.__r_.__value_.__l.__size_);
  if (v154)
  {
LABEL_312:
    v155 = MEMORY[0x1E6926300]();
    operator delete(v155);
  }
}

void sub_1E53060B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFString>::~CFSharedRef(&a20);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 121) < 0)
  {
    operator delete(*(v40 - 144));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a34, a35);
  std::unique_ptr<ACFUDataContainer>::~unique_ptr[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void BasebandRestore::createZeroSizeContainer(BasebandRestore *this)
{
  v2 = CFDataCreate(*MEMORY[0x1E695E480], 0, 0);
  *this = 0xAAAAAAAAAAAAAAAALL;
  v4 = ACFUDataContainer::create(this, v2, v3);
  if (!*this)
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create ACFUDataContainer with zero size CFData\n", "BasebandRestore", "createZeroSizeContainer");
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1E53064A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<ACFUDataContainer>::~unique_ptr[abi:ne200100](v7);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E53064C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<ACFUDataContainer>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E6926300]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t **std::map<std::string,std::string>::at(uint64_t **a1, const void **a2)
{
  if (!a1)
  {
LABEL_27:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v2 = a1;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = *(v2 + 55);
      v7 = v6 >= 0 ? v2 + 4 : v2[4];
      v8 = v6 >= 0 ? *(v2 + 55) : v2[5];
      v9 = (v8 >= v5 ? v5 : v8);
      v10 = memcmp(v4, v7, v9);
      if (v10)
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_27;
      }
    }

    if (v10 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v11 = memcmp(v7, v4, v9);
    if (v11)
    {
      if ((v11 & 0x80000000) == 0)
      {
        return v2 + 7;
      }

      goto LABEL_26;
    }

    if (v8 >= v5)
    {
      return v2 + 7;
    }

LABEL_26:
    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

const void **ctu::cf::CFSharedRef<__CFString>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SharedData::getPreference<std::string>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v7, v5);
  v6 = (**a1)(a1, v7);
  if (v6)
  {
    ctu::cf::assign();
    CFRelease(v6);
  }

  MEMORY[0x1E6926590](&v7);
  os_unfair_lock_unlock((a1 + 40));
}

uint64_t BasebandRestore::updateIMEISvn(BasebandRestore *this, int a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Beginning IMEI SVN check and update (will attempt to set SVN to %d)\n", "BasebandRestore", "updateIMEISvn", a2);
  if (a2 == -1)
  {
    v20 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v20, 2, "%s::%s: The IMEI SVN is invalid\n");
  }

  else if ((a2 - 99) <= 0xFFFFFF9D)
  {
    v21 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v21, 2, "%s::%s: The IMEI SVN (%d) is outside of valid range\n");
  }

  else
  {
    v25 = -86;
    v24 = a2;
    v5 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v5, 4, "%s::%s: Getting current IMEI SVN\n", "BasebandRestore", "updateIMEISvn");
    support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, &v23);
    v7 = v23;
    if (v23)
    {
      Svn = KTLCpsGetSvn();
      if (Svn)
      {
        v9 = ACFULogging::getLogInstance(Svn);
        v10 = ACFULogging::handleMessage(v9, 3, "%s::%s: Current IMEI SVN: %d\n", "BasebandRestore", "updateIMEISvn", v25);
        if (v25 == a2)
        {
          v11 = ACFULogging::getLogInstance(v10);
          ACFULogging::handleMessage(v11, 0, "%s::%s: No need to update the IMEI SVN since the current value is already %d\n");
LABEL_9:
          v15 = 1;
LABEL_13:
          (*(*v7 + 8))(v7);
          return v15;
        }

        v16 = ACFULogging::getLogInstance(v10);
        ACFULogging::handleMessage(v16, 4, "%s::%s: Attempting to set IMEI SVN to %d\n", "BasebandRestore", "updateIMEISvn", v24);
        v13 = KTLCpsSetSvn();
        if (v13)
        {
          v17 = ACFULogging::getLogInstance(v13);
          ACFULogging::handleMessage(v17, 0, "%s::%s: Successfully changed IMEI SVN from %d to %d\n", "BasebandRestore", "updateIMEISvn", v25, a2);
          goto LABEL_9;
        }
      }

      else
      {
        v12 = ACFULogging::getLogInstance(Svn);
        ACFULogging::handleMessage(v12, 0, "%s::%s: Despite failing to get current IMEI SVN, attempting to set IMEI SVN to %d\n", "BasebandRestore", "updateIMEISvn", a2);
        v13 = KTLCpsSetSvn();
        if (v13)
        {
          v14 = ACFULogging::getLogInstance(v13);
          ACFULogging::handleMessage(v14, 0, "%s::%s: Successfully set IMEI SVN to %d\n");
          goto LABEL_9;
        }
      }

      v18 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v18, 2, "%s::%s: Failed to set IMEI SVN to %d\n", "BasebandRestore", "updateIMEISvn", a2);
      v15 = 0;
      goto LABEL_13;
    }

    v22 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v22, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n");
  }

  return 0;
}

const void **ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t BasebandRestore::isBasebandProvisioned(BasebandRestore *this, BOOL *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v10 = 0xAAAAAAAAAAAAAAAALL;
  support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, &v10);
  v4 = v10;
  if (v10)
  {
    v5 = KTLGetManifestStatus();
    if (v5)
    {
      logManifestStatus(v11);
      *a2 = WORD2(v11[0]) == 0;
      v6 = 1;
LABEL_4:
      (*(*v4 + 8))(v4);
      return v6;
    }

    LogInstance = ACFULogging::getLogInstance(v5);
    v8 = "%s::%s: Failed to send get manifest status command\n";
  }

  else
  {
    v8 = "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n";
    LogInstance = ACFULogging::getLogInstance(v3);
  }

  ACFULogging::handleMessage(LogInstance, 2, v8, "BasebandRestore", "isBasebandProvisioned");
  v6 = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_4;
  }

  return result;
}

void sub_1E5306B0C(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::getBasebandCrashReason(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  memset(&v25, 0, sizeof(v25));
  v5 = ACFUDiagnostics::copyDiagnosticsPath(*(a1 + 184));
  v6 = v5;
  if (v5)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
    std::string::__assign_external(&v25, CStringPtr);
    CoredumpCrashReport = support::parsers::getCoredumpCrashReport(&v25.__r_.__value_.__l.__data_, &v28, __p, &v31);
    if (CoredumpCrashReport)
    {
      v9 = HIBYTE(v30);
      if (v30 < 0)
      {
        v9 = v29;
      }

      if (v9)
      {
        LogInstance = ACFULogging::getLogInstance(CoredumpCrashReport);
        if (v31 > 3)
        {
          v11 = "Invalid";
        }

        else
        {
          v11 = off_1E876E8B0[v31];
        }

        v12 = &v28;
        if (v30 < 0)
        {
          v12 = v28;
        }

        v13 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Baseband coredump report:\n\tCoredump type: %s\n\tFull report:\n%s\n", "BasebandRestore", "getBasebandCrashReason", v11, v12);
        v14 = v31;
        *a3 = v31 == 1;
        if (v14 == 1)
        {
          v15 = ACFULogging::getLogInstance(v13);
          ACFULogging::handleMessage(v15, 3, "%s::%s: Not populating crash reason summary due to emergency coredump\n", "BasebandRestore", "getBasebandCrashReason");
LABEL_26:
          v18 = 1;
          goto LABEL_27;
        }

        if (v14 == 2)
        {
          v16 = HIBYTE(v27);
          if (v27 < 0)
          {
            v16 = __p[1];
          }

          if (v16)
          {
            if (__p != a2)
            {
              if (*(a2 + 23) < 0)
              {
                if (v27 >= 0)
                {
                  v17 = __p;
                }

                else
                {
                  v17 = __p[0];
                }

                std::string::__assign_no_alias<false>(a2, v17, v16);
              }

              else if (SHIBYTE(v27) < 0)
              {
                std::string::__assign_no_alias<true>(a2, __p[0], __p[1]);
              }

              else
              {
                *a2 = *__p;
                *(a2 + 16) = v27;
              }
            }

            goto LABEL_26;
          }

          v24 = ACFULogging::getLogInstance(v13);
          ACFULogging::handleMessage(v24, 2, "%s::%s: Failed to get baseband crash reason summary (empty)\n");
        }

        else
        {
          v23 = ACFULogging::getLogInstance(v13);
          ACFULogging::handleMessage(v23, 2, "%s::%s: Failed to get crash reason summary (coredump type is not a sw trap)\n");
        }
      }

      else
      {
        v22 = ACFULogging::getLogInstance(CoredumpCrashReport);
        ACFULogging::handleMessage(v22, 2, "%s::%s: Failed to get coredump report (empty)\n");
      }
    }

    else
    {
      v21 = ACFULogging::getLogInstance(CoredumpCrashReport);
      ACFULogging::handleMessage(v21, 2, "%s::%s: Failed to get coredump crash report\n");
    }

    v18 = 0;
LABEL_27:
    CFRelease(v6);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  v20 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v20, 2, "%s::%s: Invalid coredump path\n", "BasebandRestore", "getBasebandCrashReason");
  v18 = 0;
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_33:
    operator delete(__p[0]);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      return v18;
    }

LABEL_34:
    operator delete(v28);
    return v18;
  }

LABEL_32:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_34;
  }

  return v18;
}

void sub_1E5306DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((*(v26 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v26 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v26 - 80));
  _Unwind_Resume(exception_object);
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t std::pair<ACFURestore::UpdateSteps const,RestoreStep>::~pair(uint64_t result)
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

void std::__shared_ptr_pointer<BasebandRestore *,std::shared_ptr<BasebandRestore>::__shared_ptr_default_delete<BasebandRestore,BasebandRestore>,std::allocator<BasebandRestore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandRestore *,std::shared_ptr<BasebandRestore>::__shared_ptr_default_delete<BasebandRestore,BasebandRestore>,std::allocator<BasebandRestore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BasebandRestore *,std::shared_ptr<BasebandRestore>::__shared_ptr_default_delete<BasebandRestore,BasebandRestore>,std::allocator<BasebandRestore>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53932C2)
  {
    if (((v2 & 0x80000001E53932C2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53932C2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53932C2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<ACFUError>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F03A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::unique_ptr<ACFUDiagnostics>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E6926260]();
    operator delete(v4);
    return v3;
  }

  return v1;
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
    v1 = MEMORY[0x1E6926260]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53933ACLL)
  {
    if (((v2 & 0x80000001E53933ACLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53933ACLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53933ACLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<RTKitFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393435)
  {
    if (((v2 & 0x80000001E5393435 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393435))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393435 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandUpdaterTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandUpdaterTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BasebandUpdaterTransport  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53934C7)
  {
    if (((v2 & 0x80000001E53934C7 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53934C7))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53934C7 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F03BD8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F03BD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::operator()(ACFULogging *a1, uint64_t a2, __int128 *a3)
{
  v304 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *a2;
  v272 = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *a3;
  v271 = *a3;
  *a3 = 0uLL;
  v6 = *(a1 + 1);
  v275 = 0;
  v276 = 0;
  v274 = -1;
  if (!v4)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: NULL transport parameter\n", "BasebandRestore", "operator()");
    goto LABEL_105;
  }

  v270 = v5;
  v8 = 0;
  if (v7 && v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v3;
  }

  v275 = v7;
  v276 = v8;
  v9 = BasebandUpdaterTransport::retrieveChipRev(v7, &v274);
  v10 = v9;
  if (v9)
  {
    v85 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v85, 3, "%s::%s: Warning: unable to retrieve baseband chip revision (error code = %d), so skipping chip-revision/firmware-recipe check\n", "BasebandRestore", "operator()", v10);
    goto LABEL_26;
  }

  v11 = ACFUFirmware::copyFWDataByTag(v270, @"Cellular1,Recipe");
  v12 = v11;
  if (!v11)
  {
    v86 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v86, 3, "%s::%s: Warning: unable to copy recipe from baseband firmware, so skipping chip-revision/firmware-recipe check\n", "BasebandRestore", "operator()");
    goto LABEL_26;
  }

  __s2.__r_.__value_.__r.__words[2] = 0x200000000000000;
  *&__s2.__r_.__value_.__l.__data_ = v274 & 0xF | 0x30u;
  *(&__s2.__r_.__value_.__l.__data_ + 1) = ((v274 >> 4) + 65);
  __p[1] = 0;
  v290 = 0x200000000000000;
  __p[0] = ((v274 >> 4) + 65);
  *(__p + 1) = v274 & 0xF | 0x30;
  BytePtr = CFDataGetBytePtr(v11);
  Length = CFDataGetLength(v12);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v298 = 2863311530;
  v299 = 0xAAAAAAAAAAAAAAAALL;
  v301 = 0xAAAAAAAAAAAAAAAALL;
  v303 = 0xAAAAAAAAAAAAAAAALL;
  *v295 = v15;
  v296 = 0xAAAAAAAAAAAAAAAALL;
  *&value[16] = v15;
  v294 = v15;
  *value = BytePtr;
  *&value[8] = Length;
  v297 = 0;
  v300 = 0uLL;
  v302 = 0;
  LODWORD(BytePtr) = RecipeUtil::_parseVariables(value);
  CFRelease(v12);
  if (BytePtr)
  {
    v87 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v87, 3, "%s::%s: Failed to parse baseband firmware recipe info, so skipping chip-revision/firmware-recipe check\n", "BasebandRestore", "operator()");
    v25 = 7;
    v26 = 1;
    goto LABEL_21;
  }

  v17 = *(&v300 + 1);
  if (!*(&v300 + 1) || (v18 = v301) == 0)
  {
LABEL_13:
    v22 = ACFULogging::getLogInstance(v16);
    if (v290 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    ACFULogging::handleMessage(v22, 2, "%s::%s: Baseband chip revision %s is not supported by the baseband firmware\n", "BasebandRestore", "operator()", v23);
    v24 = *(v6 + 384);
    v287.__r_.__value_.__r.__words[0] = *(v6 + 376);
    v287.__r_.__value_.__l.__size_ = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v273, " is not supported by the baseband firmware", &v288);
    ACFUError::addError();
    if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v273.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v288.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((SHIBYTE(v288.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v287);
      v25 = 4;
      v26 = 3006;
      goto LABEL_21;
    }

    operator delete(v288.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

  v19 = 0;
  v20 = 1;
  while (1)
  {
    v21 = *(v17 + 8 * v19);
    v16 = strncmp(v21, &__s2, 4uLL);
    if (!v16)
    {
      break;
    }

    v19 = v20++;
    if (v18 <= v19)
    {
      goto LABEL_13;
    }
  }

  *(&v301 + 1) = v21;
  v51 = ACFULogging::getLogInstance(v16);
  if (v290 >= 0)
  {
    v52 = __p;
  }

  else
  {
    v52 = __p[0];
  }

  ACFULogging::handleMessage(v51, 4, "%s::%s: Baseband chip revision %s is supported by the baseband firmware\n", "BasebandRestore", "operator()", v52);
  v25 = 0;
  v26 = 1;
LABEL_21:
  RecipeUtil::uninit(value);
  if (SHIBYTE(v290) < 0)
  {
    operator delete(__p[0]);
    if (v25 == 7)
    {
      goto LABEL_26;
    }
  }

  else if (v25 == 7)
  {
    goto LABEL_26;
  }

  if (v25)
  {
    goto LABEL_488;
  }

LABEL_26:
  if (!ACFURestore::isPreflighted(v6) || (ACFURestore::isNeRDOS(v6) & 1) != 0)
  {
    goto LABEL_28;
  }

  if (!v53)
  {
    *value = 0;
    *&value[8] = 0;
    v81 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v81, 2, "%s::%s: Invalid transport parameter type\n", "BasebandRestore", "operator()");
LABEL_105:
    v26 = 1005;
    goto LABEL_488;
  }

  *value = v53;
  *&value[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v54 = BasebandUpdaterTransport::setPreflightMode(v53);
  v26 = v54;
  if (v54)
  {
    v263 = ACFULogging::getLogInstance(v54);
    ACFULogging::handleMessage(v263, 2, "%s::%s: Failed to set preflight mode on the Baseband transport\n", "BasebandRestore", "operator()");
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v26)
  {
    goto LABEL_488;
  }

LABEL_28:
  ValueIfPresent = *(v6 + 128);
  *value = 0;
  __s2.__r_.__value_.__s.__data_[0] = 0;
  if (ValueIfPresent)
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(ValueIfPresent, @"EraseEFS", value);
    if (ValueIfPresent)
    {
      v28 = *value;
      if (*value)
      {
        v29 = CFGetTypeID(*value);
        ValueIfPresent = CFBooleanGetTypeID();
        if (v29 == ValueIfPresent)
        {
          ValueIfPresent = ctu::cf::assign(&__s2, v28, v30);
        }
      }
    }
  }

  v31 = ACFULogging::getLogInstance(ValueIfPresent);
  ACFULogging::handleMessage(v31, 3, "%s::%s: eraseEFS: %d\n", "BasebandRestore", "getEraseEFSOption", __s2.__r_.__value_.__s.__data_[0]);
  if (__s2.__r_.__value_.__s.__data_[0] != 1)
  {
    goto LABEL_81;
  }

  memset(value, 170, 24);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v32 = off_1ED944170;
  if (!off_1ED944170)
  {
    v33 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v33);
    __p[0] = v33;
    v34 = operator new(0x20uLL);
    *v34 = &unk_1F5F05A00;
    v34[1] = 0;
    v34[2] = 0;
    v34[3] = v33;
    v35 = off_1ED944178;
    off_1ED944170 = v33;
    off_1ED944178 = v34;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
    }

    v32 = off_1ED944170;
  }

  v36 = off_1ED944178;
  __s2.__r_.__value_.__r.__words[0] = v32;
  __s2.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v32, value);
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v38 = ACFULogging::getLogInstance(v37);
  if (value[23] >= 0)
  {
    v39 = value;
  }

  else
  {
    v39 = *value;
  }

  ACFULogging::handleMessage(v38, 0, "%s::%s: Erasing baseband file system at path: %s\n", "BasebandRestore", "eraseBasebandFileSystem", v39);
  v40 = ctu::fs::file_exists();
  if ((v40 & 1) == 0)
  {
    v55 = ACFULogging::getLogInstance(v40);
    v56 = value;
    if (value[23] < 0)
    {
      v56 = *value;
    }

    v49 = ACFULogging::handleMessage(v55, 3, "%s::%s: Path %s does not exist, therefore nothing to erase. Continuing\n", "BasebandRestore", "eraseBasebandFileSystem", v56);
    goto LABEL_78;
  }

  is_directory = ctu::fs::is_directory();
  if (is_directory)
  {
    v42 = ctu::fs::remove_directory_contents();
    if (v42)
    {
      v43 = ACFULogging::getLogInstance(v42);
      v44 = ACFULogging::handleMessage(v43, 3, "%s::%s: Successfully deleted baseband file system directory contents\n", "BasebandRestore", "eraseBasebandFileSystem");
      v45 = ACFULogging::getLogInstance(v44);
      if (value[23] >= 0)
      {
        v46 = value;
      }

      else
      {
        v46 = *value;
      }

      ACFULogging::handleMessage(v45, 3, "%s::%s: Preparing BBUFSServer with path: %s\n", "BasebandRestore", "eraseBasebandFileSystem", v46);
      if (value[23] >= 0)
      {
        v48 = value;
      }

      else
      {
        v48 = *value;
      }

      if (!v48)
      {
        v50 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
LABEL_110:
        v83 = ACFULogging::getLogInstance(v50);
        v49 = ACFULogging::handleMessage(v83, 2, "%s::%s: Failed BBUFSServer prepare after erasing baseband file system\n", "BasebandRestore", "eraseBasebandFileSystem");
        v57 = 0;
        v26 = 1;
        if ((value[23] & 0x80000000) != 0)
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      v49 = bbufs::prepareDestination(v48, v47);
      if ((v49 & 1) == 0)
      {
        v50 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
        goto LABEL_110;
      }

LABEL_78:
      v26 = 0;
      v57 = 1;
      if ((value[23] & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    v82 = ACFULogging::getLogInstance(v42);
    v49 = ACFULogging::handleMessage(v82, 2, "%s::%s: Failed to delete baseband file system directory contents\n", "BasebandRestore", "eraseBasebandFileSystem");
  }

  else
  {
    v79 = ACFULogging::getLogInstance(is_directory);
    v80 = value;
    if (value[23] < 0)
    {
      v80 = *value;
    }

    v49 = ACFULogging::handleMessage(v79, 2, "%s::%s: Failed to erase baseband file system: %s exists but is not a directory. This should never happen\n", "BasebandRestore", "eraseBasebandFileSystem", v80);
  }

  v57 = 0;
  v26 = 1004;
  if ((value[23] & 0x80000000) != 0)
  {
LABEL_79:
    operator delete(*value);
  }

LABEL_80:
  if ((v57 & 1) == 0)
  {
    v255 = ACFULogging::getLogInstance(v49);
    ACFULogging::handleMessage(v255, 2, "%s::%s: Encountered an error (%d) while erasing baseband file system\n", "BasebandRestore", "operator()", v26);
    goto LABEL_488;
  }

LABEL_81:
  *&value[8] = 0xAAAAAAAAAAAAAAAALL;
  *&value[16] = 0xAAAAAAAAAAAAAALL;
  v292 = 0;
  *value = 0xAAAAAAAAAAAAAA00;
  __s2.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s2.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  __s2.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  __p[1] = 0xAAAAAAAAAA00736DLL;
  v290 = 0xAAAAAAAAAAAAAAALL;
  v280 = 0;
  v281 = 0;
  cf = 0;
  __p[0] = *"NvramItems";
  v288.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v288.__r_.__value_.__r.__words[1] = xmmword_1E53931C0;
  strcpy(v288.__r_.__value_.__l.__data_, "auto-boot='1', bootdelay='0', sdd-vers='20104'");
  v287.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v287.__r_.__value_.__r.__words[1] = xmmword_1E53931D0;
  strcpy(v287.__r_.__value_.__l.__data_, "auto-boot='1', bootdelay='0', host-env='1', sdd-vers='20104'");
  v283.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
  *&v283.__r_.__value_.__r.__words[1] = xmmword_1E53931D0;
  strcpy(v283.__r_.__value_.__l.__data_, "auto-boot='1', bootdelay='0', host-env='0', sdd-vers='20104'");
  v58 = *(v6 + 128);
  if (!v58)
  {
    v88 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v88, 2, "%s::%s: fUpdaterOptions dictionary is NULL\n");
LABEL_509:
    v26 = 1;
    goto LABEL_191;
  }

  v59 = CFDictionaryGetValue(v58, @"NVRAMItems");
  v60 = v59;
  if (v59)
  {
    CFRetain(v59);
    v292 = v60;
    v61 = CFGetTypeID(v60);
    TypeID = CFStringGetTypeID();
    if (v61 != TypeID)
    {
      v254 = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(v254, 2, "%s::%s: cfNvramItems has incorrect type, fail.\n");
      goto LABEL_509;
    }

    CStringPtr = CFStringGetCStringPtr(v60, 0x8000100u);
    v64 = std::string::__assign_external(value, CStringPtr);
    v65 = ACFULogging::getLogInstance(v64);
    v66 = value;
    if (value[23] < 0)
    {
      v66 = *value;
    }

    v59 = ACFULogging::handleMessage(v65, 0, "%s::%s: User defined NVRAM items: %s\n", "BasebandRestore", "processNVRAMItems", v66);
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_89;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_89:
      v67 = BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
      if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
      {
        goto LABEL_90;
      }

LABEL_119:
      if (*(v6 + 544) == 1)
      {
        v89 = ACFULogging::getLogInstance(v59);
        v90 = &v287;
        if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v90 = v287.__r_.__value_.__r.__words[0];
        }

        v91 = ACFULogging::handleMessage(v89, 3, "%s::%s: Default NVRAM items for bbutil: %s\n", "BasebandRestore", "processNVRAMItems", v90);
        if ((value[23] & 0x80000000) != 0)
        {
          if (*&value[8])
          {
            goto LABEL_124;
          }
        }

        else if (value[23])
        {
LABEL_124:
          v92 = ACFULogging::getLogInstance(v91);
          ACFULogging::handleMessage(v92, 3, "%s::%s: Merge default NVRAM items for bbutil with the above user defined NVRAM items.\n", "BasebandRestore", "processNVRAMItems");
LABEL_133:
          v73 = HIBYTE(v287.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            size = v287.__r_.__value_.__l.__size_;
            v75 = v287.__r_.__value_.__r.__words[0];
            v77 = (v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v78 = &v287;
            goto LABEL_163;
          }

          v74 = &v287;
          if ((*(&v287.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_99;
          }

LABEL_135:
          std::string::__assign_no_alias<true>(&__s2, v74->__r_.__value_.__l.__data_, v74->__r_.__value_.__l.__size_);
          goto LABEL_170;
        }

        v96 = ACFULogging::getLogInstance(v91);
        ACFULogging::handleMessage(v96, 3, "%s::%s: Checking if sticky_nvram_items.plist exists in the file system\n", "BasebandRestore", "processNVRAMItems");
        StickyNvramItems = readStickyNvramItems(value);
        v26 = StickyNvramItems;
        if (!StickyNvramItems)
        {
          goto LABEL_133;
        }

LABEL_520:
        v262 = ACFULogging::getLogInstance(StickyNvramItems);
        ACFULogging::handleMessage(v262, 2, "%s::%s: NVRAM sticky_nvram_items.plist read failed with status: (%d)\n", "BasebandRestore", "processNVRAMItems", v26);
        goto LABEL_191;
      }

      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_1ECFD4F48)
      {
        v94 = operator new(0x18uLL);
        MEMORY[0x1E69265F0](v94, @"com.apple.AppleBasebandManager", *MEMORY[0x1E695E8B8]);
        v279.__r_.__value_.__r.__words[0] = v94;
        v93 = operator new(0x20uLL);
        *v93 = &unk_1F5F03C68;
        v93[1] = 0;
        v93[2] = 0;
        v93[3] = v94;
        v95 = *(&xmmword_1ECFD4F48 + 1);
        *&xmmword_1ECFD4F48 = v94;
        *(&xmmword_1ECFD4F48 + 1) = v93;
        if (!v95)
        {
          v282.__r_.__value_.__r.__words[0] = v94;
          v282.__r_.__value_.__l.__size_ = v93;
          goto LABEL_138;
        }

        if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v95->__on_zero_shared)(v95);
          std::__shared_weak_count::__release_weak(v95);
        }
      }

      v93 = *(&xmmword_1ECFD4F48 + 1);
      v94 = xmmword_1ECFD4F48;
      *&v282.__r_.__value_.__l.__data_ = xmmword_1ECFD4F48;
      if (!*(&xmmword_1ECFD4F48 + 1))
      {
LABEL_139:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        if (v290 >= 0)
        {
          v98 = __p;
        }

        else
        {
          v98 = __p[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&v279, v98);
        v99 = (**v94)(v94, v279.__r_.__value_.__r.__words[0]);
        v100 = v99;
        if (v99)
        {
          v101 = CFGetTypeID(v99);
          if (v101 == CFStringGetTypeID())
          {
            v102 = v100;
          }

          else
          {
            v102 = 0;
          }

          CFRelease(v100);
          v103 = MEMORY[0x1E6926590](&v279);
          v104 = v282.__r_.__value_.__l.__size_;
          if (!v282.__r_.__value_.__l.__size_)
          {
            goto LABEL_151;
          }
        }

        else
        {
          v102 = 0;
          v103 = MEMORY[0x1E6926590](&v279);
          v104 = v282.__r_.__value_.__l.__size_;
          if (!v282.__r_.__value_.__l.__size_)
          {
            goto LABEL_151;
          }
        }

        if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v104->__on_zero_shared)(v104);
          std::__shared_weak_count::__release_weak(v104);
        }

LABEL_151:
        if (v102)
        {
          CFRetain(v102);
          v105 = cf;
          cf = v102;
          if (v105)
          {
            CFRelease(v105);
          }

          v106 = CFGetTypeID(v102);
          v107 = CFStringGetTypeID();
          if (v106 != v107)
          {
            v264 = ACFULogging::getLogInstance(v107);
            ACFULogging::handleMessage(v264, 2, "%s::%s: defaultsNvramStr has incorrect type, fail.\n");
            goto LABEL_509;
          }

          v108 = ACFULogging::getLogInstance(v107);
          ACFULogging::handleMessage(v108, 0, "%s::%s: Found defaults write data for daemon NvramItems. Consuming it.\n", "BasebandRestore", "processNVRAMItems");
          v109 = CFStringGetCStringPtr(v102, 0x8000100u);
          v103 = std::string::__assign_external(&v283, v109);
        }

        v110 = ACFULogging::getLogInstance(v103);
        v111 = &v283;
        if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v111 = v283.__r_.__value_.__r.__words[0];
        }

        v112 = ACFULogging::handleMessage(v110, 0, "%s::%s: Default NVRAM items for commcenter/basebandd: %s\n", "BasebandRestore", "processNVRAMItems", v111);
        v113 = ACFULogging::getLogInstance(v112);
        ACFULogging::handleMessage(v113, 0, "%s::%s: Checking if sticky_nvram_items.plist exists in the file system\n", "BasebandRestore", "processNVRAMItems");
        StickyNvramItems = readStickyNvramItems(value);
        v26 = StickyNvramItems;
        if (!StickyNvramItems)
        {
          v73 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            size = v283.__r_.__value_.__l.__size_;
            v75 = v283.__r_.__value_.__r.__words[0];
            v77 = (v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v78 = &v283;
            goto LABEL_163;
          }

          v74 = &v283;
          if ((*(&v283.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_135;
        }

        goto LABEL_520;
      }

LABEL_138:
      atomic_fetch_add_explicit(v93 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_139;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  v67 = BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
  {
    goto LABEL_119;
  }

LABEL_90:
  v68 = ACFULogging::getLogInstance(v59);
  v69 = &v288;
  if ((v288.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v69 = v288.__r_.__value_.__r.__words[0];
  }

  v70 = ACFULogging::handleMessage(v68, 0, "%s::%s: Default NVRAM items for restore: %s\n", "BasebandRestore", "processNVRAMItems", v69);
  if ((value[23] & 0x80000000) != 0)
  {
    if (*&value[8])
    {
      goto LABEL_94;
    }

LABEL_96:
    v72 = ACFULogging::getLogInstance(v70);
    ACFULogging::handleMessage(v72, 0, "%s::%s: No user defined NVRAM items. So, use default NVRAM items for restore.\n");
    goto LABEL_97;
  }

  if (!value[23])
  {
    goto LABEL_96;
  }

LABEL_94:
  v71 = ACFULogging::getLogInstance(v70);
  ACFULogging::handleMessage(v71, 0, "%s::%s: Merge default NVRAM items for restore with the above user defined NVRAM items.\n");
LABEL_97:
  v73 = HIBYTE(v288.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v74 = &v288;
    if ((*(&v288.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_99:
      __s2 = *v74;
      goto LABEL_170;
    }

    goto LABEL_135;
  }

  size = v288.__r_.__value_.__l.__size_;
  v75 = v288.__r_.__value_.__r.__words[0];
  v77 = (v288.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  v78 = &v288;
LABEL_163:
  if (v77)
  {
    v114 = v75;
  }

  else
  {
    v114 = v78;
  }

  if (v77)
  {
    v115 = size;
  }

  else
  {
    v115 = v73;
  }

  std::string::__assign_no_alias<false>(&__s2, v114, v115);
LABEL_170:
  if ((value[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v282, *value, *&value[8]);
  }

  else
  {
    v282 = *value;
  }

  if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, __s2.__r_.__value_.__l.__data_, __s2.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = __s2;
  }

  v116 = createNVData(&v282, &v279, v67 & 1, &v280);
  v26 = v116;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_178:
      if (!v26)
      {
        goto LABEL_179;
      }

LABEL_210:
      v125 = ACFULogging::getLogInstance(v116);
      ACFULogging::handleMessage(v125, 2, "%s::%s: NVRAM data creation failed with status: (%d)\n", "BasebandRestore", "processNVRAMItems", v26);
      goto LABEL_191;
    }
  }

  else if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_178;
  }

  operator delete(v282.__r_.__value_.__l.__data_);
  if (v26)
  {
    goto LABEL_210;
  }

LABEL_179:
  if (!v280)
  {
    v251 = ACFULogging::getLogInstance(v116);
    ACFULogging::handleMessage(v251, 2, "%s::%s: NVRAM data creation failed, null nv data\n");
    goto LABEL_509;
  }

  v117 = *(v6 + 128);
  v277 = v280;
  v278 = v281;
  if (v281)
  {
    atomic_fetch_add_explicit(&v281->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  saveNVRAMFile(v117, &v277);
  v118 = v278;
  if (v278 && !atomic_fetch_add(&v278->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v118->__on_zero_shared)(v118);
    std::__shared_weak_count::__release_weak(v118);
  }

  v120 = v280;
  v119 = v281;
  if (v281)
  {
    atomic_fetch_add_explicit(&v281->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v121 = *(v6 + 504);
  *(v6 + 496) = v120;
  *(v6 + 504) = v119;
  if (v121 && !atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v121->__on_zero_shared)(v121);
    std::__shared_weak_count::__release_weak(v121);
  }

  v26 = 0;
LABEL_191:
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v287.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_193:
      if ((SHIBYTE(v288.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_199;
    }
  }

  else if ((SHIBYTE(v287.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_193;
  }

  operator delete(v287.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v288.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_194:
    if ((SHIBYTE(v290) & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_200;
  }

LABEL_199:
  operator delete(v288.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v290) & 0x80000000) == 0)
  {
LABEL_195:
    v122 = cf;
    if (!cf)
    {
      goto LABEL_202;
    }

    goto LABEL_201;
  }

LABEL_200:
  operator delete(__p[0]);
  v122 = cf;
  if (cf)
  {
LABEL_201:
    CFRelease(v122);
  }

LABEL_202:
  v123 = v281;
  if (v281 && !atomic_fetch_add(&v281->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v123->__on_zero_shared)(v123);
    std::__shared_weak_count::__release_weak(v123);
    if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_205:
      if ((value[23] & 0x80000000) == 0)
      {
        goto LABEL_206;
      }

LABEL_213:
      operator delete(*value);
      v124 = v292;
      if (!v292)
      {
        goto LABEL_215;
      }

      goto LABEL_214;
    }
  }

  else if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_205;
  }

  operator delete(__s2.__r_.__value_.__l.__data_);
  if ((value[23] & 0x80000000) != 0)
  {
    goto LABEL_213;
  }

LABEL_206:
  v124 = v292;
  if (v292)
  {
LABEL_214:
    CFRelease(v124);
  }

LABEL_215:
  if (v26)
  {
    v138 = ACFULogging::getLogInstance(v124);
    ACFULogging::handleMessage(v138, 2, "%s::%s: Encountered an error (%d) during NVRAM processing\n", "BasebandRestore", "operator()", v26);
    goto LABEL_488;
  }

  __s2.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  v292 = 0;
  *&__s2.__r_.__value_.__l.__data_ = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v290 = 0;
  memset(&v288, 0, sizeof(v288));
  memset(&v287, 0, sizeof(v287));
  v285 = 0;
  cf = 0;
  v283.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAA01;
  __dst = 0;
  *&v283.__r_.__value_.__l.__data_ = 0xAAAAAAAAAAAA0100;
  memset(&v282, 170, sizeof(v282));
  value[23] = 4;
  strcpy(value, "bbcl");
  HIBYTE(v294) = 4;
  strcpy(&value[24], "bbpc");
  BYTE7(v296) = 4;
  strcpy(v295, "bbpv");
  std::vector<std::string>::vector[abi:ne200100](&v282, value, 3uLL);
  if ((SBYTE7(v296) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v294) & 0x80000000) == 0)
    {
      goto LABEL_218;
    }

LABEL_246:
    operator delete(*&value[24]);
    if ((value[23] & 0x80000000) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_247;
  }

  operator delete(v295[0]);
  if (SHIBYTE(v294) < 0)
  {
    goto LABEL_246;
  }

LABEL_218:
  if ((value[23] & 0x80000000) == 0)
  {
    goto LABEL_219;
  }

LABEL_247:
  operator delete(*value);
LABEL_219:
  v280 = 0;
  v281 = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v126 = off_1ED944170;
  if (!off_1ED944170)
  {
    v127 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v127);
    v277 = v127;
    v128 = operator new(0x20uLL);
    *v128 = &unk_1F5F05A00;
    v128[1] = 0;
    v128[2] = 0;
    v128[3] = v127;
    v129 = off_1ED944178;
    off_1ED944170 = v127;
    off_1ED944178 = v128;
    if (v129 && !atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v129->__on_zero_shared)(v129);
      std::__shared_weak_count::__release_weak(v129);
    }

    v126 = off_1ED944170;
  }

  v130 = off_1ED944178;
  v279.__r_.__value_.__r.__words[0] = v126;
  v279.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v126, value);
  if (SHIBYTE(v290) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *value;
  v290 = *&value[16];
  value[23] = 0;
  value[0] = 0;
  if (v130 && !atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v130->__on_zero_shared)(v130);
    std::__shared_weak_count::__release_weak(v130);
  }

  v132 = ACFULogging::getLogInstance(v131);
  if (v290 >= 0)
  {
    v133 = __p;
  }

  else
  {
    v133 = __p[0];
  }

  ACFULogging::handleMessage(v132, 3, "%s::%s: Process FDR files with root path: %s\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v133);
  if (v290 >= 0)
  {
    v135 = __p;
  }

  else
  {
    v135 = __p[0];
  }

  if (!v135)
  {
    v139 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    goto LABEL_251;
  }

  if ((bbufs::prepareDestination(v135, v134) & 1) == 0)
  {
    v139 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
LABEL_251:
    v140 = ACFULogging::getLogInstance(v139);
    if (v290 >= 0)
    {
      v141 = __p;
    }

    else
    {
      v141 = __p[0];
    }

    ACFULogging::handleMessage(v140, 2, "%s::%s: Failed to prepare bbfs path: %s\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v141);
    v26 = 1004;
    v142 = v281;
    if (v281)
    {
      goto LABEL_461;
    }

    goto LABEL_463;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_241;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_241:
      if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
      {
        goto LABEL_258;
      }

      goto LABEL_242;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
LABEL_258:
    v143 = *(v6 + 128);
    if (v143)
    {
      v144 = CFDictionaryGetValue(v143, @"APTicket");
      v136 = v144;
      if (v144)
      {
        v145 = ACFULogging::getLogInstance(v144);
        ACFULogging::handleMessage(v145, 0, "%s::%s: Found the APTicket key in updater options\n", "BasebandRestore", "handleFDRForNonBridgeSetup");
        AMSupportSafeRetain();
        v146 = CFGetTypeID(v136);
        v147 = CFDataGetTypeID();
        if (v146 != v147)
        {
          v261 = ACFULogging::getLogInstance(v147);
          ACFULogging::handleMessage(v261, 2, "%s::%s: Invalid APTicket data type.\n", "BasebandRestore", "handleFDRForNonBridgeSetup");
          v26 = 1;
          goto LABEL_459;
        }

        v283.__r_.__value_.__l.__size_ = v136;
        v137 = *(v6 + 168);
        if (!v137)
        {
          goto LABEL_265;
        }

        goto LABEL_262;
      }

      v260 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v260, 2, "%s::%s: Invalid ap ticket\n");
    }

    else
    {
      v259 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v259, 2, "%s::%s: Invalid updater options\n");
    }

    v26 = 1;
    v142 = v281;
    if (v281)
    {
      goto LABEL_461;
    }

    goto LABEL_463;
  }

LABEL_242:
  if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
  {
    goto LABEL_258;
  }

  v136 = 0;
  v137 = *(v6 + 168);
  if (!v137)
  {
    goto LABEL_265;
  }

LABEL_262:
  if (!v137)
  {
LABEL_265:
    v148 = 0;
    goto LABEL_266;
  }

  v148 = *(v6 + 176);
  if (v148)
  {
    atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_266:
  v149 = v281;
  v280 = v137;
  v281 = v148;
  if (v149)
  {
    if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v149->__on_zero_shared)(v149);
      std::__shared_weak_count::__release_weak(v149);
    }

    v137 = v280;
  }

  if (!v137)
  {
    v252 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v252, 2, "%s::%s: Invalid typecast, fail.\n");
    goto LABEL_506;
  }

  v150 = (**v137)(value);
  v152 = *value;
  v151 = *&value[8];
  if (*&value[8])
  {
    atomic_fetch_add_explicit((*&value[8] + 8), 1uLL, memory_order_relaxed);
  }

  v153 = __s2.__r_.__value_.__l.__size_;
  __s2.__r_.__value_.__r.__words[0] = v152;
  __s2.__r_.__value_.__l.__size_ = v151;
  if (v153 && !atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v153->__on_zero_shared)(v153);
    std::__shared_weak_count::__release_weak(v153);
  }

  v154 = *&value[16];
  LODWORD(__s2.__r_.__value_.__r.__words[2]) = *&value[16];
  v155 = *&value[8];
  if (*&value[8])
  {
    if (!atomic_fetch_add((*&value[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v155->__on_zero_shared)(v155);
      std::__shared_weak_count::__release_weak(v155);
    }

    v154 = __s2.__r_.__value_.__r.__words[2];
  }

  if (v154)
  {
    v253 = ACFULogging::getLogInstance(v150);
    ACFULogging::handleMessage(v253, 2, "%s::%s: Failed to get board params (%d)\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v154);
LABEL_506:
    v26 = 1;
    if (!v136)
    {
      goto LABEL_460;
    }

LABEL_459:
    CFRelease(v136);
    goto LABEL_460;
  }

  v156 = *&__s2.__r_.__value_.__l.__data_;
  if (!__s2.__r_.__value_.__l.__size_)
  {
    if (*(__s2.__r_.__value_.__r.__words[0] + 48))
    {
      goto LABEL_285;
    }

    goto LABEL_499;
  }

  atomic_fetch_add_explicit((__s2.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  v157 = *(v156 + 48);
  if (!atomic_fetch_add((*(&v156 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v156 + 1) + 16))(*(&v156 + 1));
    std::__shared_weak_count::__release_weak(*(&v156 + 1));
  }

  if ((v157 & 1) == 0)
  {
LABEL_499:
    v248 = ACFULogging::getLogInstance(v150);
    ACFULogging::handleMessage(v248, 2, "%s::%s: Failed to get ECID parameter for FDR data instance\n");
    goto LABEL_506;
  }

LABEL_285:
  v158 = ACFULogging::getLogInstance(v150);
  v159 = ACFULogging::handleMessage(v158, 3, "%s::%s: Successfully gathered personalization parameters\n", "BasebandRestore", "handleFDRForNonBridgeSetup");
  v160 = *&__s2.__r_.__value_.__l.__data_;
  *value = *&__s2.__r_.__value_.__l.__data_;
  if (__s2.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((__s2.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v160 + 48) == 1)
  {
    v159 = *(v160 + 40);
    if (v159)
    {
      v161 = CFDataGetBytePtr(v159);
      v159 = CFDataGetLength(*(v160 + 40));
      if (v159 <= 8)
      {
        __dst = 0;
        v159 = memcpy(&__dst, v161, v159);
      }
    }
  }

  if (*(&v160 + 1) && !atomic_fetch_add((*(&v160 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v160 + 1) + 16))(*(&v160 + 1));
    std::__shared_weak_count::__release_weak(*(&v160 + 1));
  }

  v162 = ACFULogging::getLogInstance(v159);
  v163 = capabilities::radio::chipID(v162);
  v164 = ACFULogging::handleMessage(v162, 3, "%s::%s: ChipID: 0x%x, ECID: 0x%016llx\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v163, __dst);
  v166 = v282.__r_.__value_.__l.__size_;
  v165 = v282.__r_.__value_.__r.__words[0];
  if (v282.__r_.__value_.__r.__words[0] == v282.__r_.__value_.__l.__size_)
  {
LABEL_458:
    v26 = 0;
    if (!v136)
    {
      goto LABEL_460;
    }

    goto LABEL_459;
  }

  v268 = v282.__r_.__value_.__l.__size_;
  alloc = *MEMORY[0x1E695E480];
  v265 = (v6 + 520);
  v266 = (v6 + 512);
  v267 = (v6 + 528);
  v167 = "%s::%s: ------------ Generate FDR combined data for %s ------------\n";
  while (2)
  {
    v168 = ACFULogging::getLogInstance(v164);
    v169 = v165;
    if (v165[23] < 0)
    {
      v169 = *v165;
    }

    v170 = ACFULogging::handleMessage(v168, 4, v167, "BasebandRestore", "handleFDRForNonBridgeSetup", v169);
    if (v165[23] < 0)
    {
      std::string::__init_copy_ctor_external(value, *v165, *(v165 + 1));
    }

    else
    {
      v171 = *v165;
      *&value[16] = *(v165 + 2);
      *value = v171;
    }

    HIBYTE(v294) = 0;
    value[24] = 0;
    capabilities::radio::chipID(v170);
    DataLocalCopy = ACFUFDR::getDataLocalCopy();
    v174 = v279.__r_.__value_.__l.__size_;
    v173 = v279.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v294) < 0)
    {
      operator delete(*&value[24]);
      if ((value[23] & 0x80000000) == 0)
      {
        goto LABEL_305;
      }

LABEL_347:
      operator delete(*value);
      goto LABEL_305;
    }

    if ((value[23] & 0x80000000) != 0)
    {
      goto LABEL_347;
    }

LABEL_305:
    v175 = ACFULogging::getLogInstance(DataLocalCopy);
    v176 = v165;
    if (v165[23] < 0)
    {
      v176 = *v165;
    }

    ACFULogging::handleMessage(v175, 3, "%s::%s: FDR Data validation result for %s: 0x%016llx\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v176, v174);
    v164 = v292;
    v292 = v173;
    if (v164)
    {
      CFRelease(v164);
      v173 = v292;
    }

    if (!v173)
    {
      goto LABEL_297;
    }

    v177 = v167;
    v178 = v136;
    memset(value, 170, 24);
    GetBasebandFDR4ccToFileNameMap(value);
    v180 = *&value[8];
    if (!*&value[8])
    {
LABEL_452:
      v239 = ACFULogging::getLogInstance(v179);
      v136 = v178;
      if (v165[23] < 0)
      {
        v165 = *v165;
      }

      ACFULogging::handleMessage(v239, 2, "%s::%s: Did not find corresponding FDR file name for 4cc tag %s\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v165);
LABEL_455:
      v26 = 1;
      goto LABEL_456;
    }

    v181 = v165[23];
    if (v181 >= 0)
    {
      v182 = v165;
    }

    else
    {
      v182 = *v165;
    }

    if (v181 >= 0)
    {
      v183 = *(v165 + 23);
    }

    else
    {
      v183 = *(v165 + 1);
    }

    v184 = &value[8];
    v185 = *&value[8];
    do
    {
      while (1)
      {
        v186 = *(v185 + 55);
        v187 = v186 >= 0 ? v185 + 4 : v185[4];
        v188 = v186 >= 0 ? *(v185 + 55) : v185[5];
        v189 = v183 >= v188 ? v188 : v183;
        v179 = memcmp(v187, v182, v189);
        if (v179)
        {
          break;
        }

        if (v188 >= v183)
        {
          goto LABEL_332;
        }

LABEL_318:
        v185 = v185[1];
        if (!v185)
        {
          goto LABEL_333;
        }
      }

      if ((v179 & 0x80000000) != 0)
      {
        goto LABEL_318;
      }

LABEL_332:
      v184 = v185;
      v185 = *v185;
    }

    while (v185);
LABEL_333:
    if (v184 == &value[8])
    {
      goto LABEL_452;
    }

    v192 = *(v184 + 4);
    v191 = (v184 + 32);
    v190 = v192;
    v193 = *(v191 + 23);
    if (v193 >= 0)
    {
      v194 = v191;
    }

    else
    {
      v194 = v190;
    }

    if (v193 >= 0)
    {
      v195 = *(v191 + 23);
    }

    else
    {
      v195 = v191[1];
    }

    if (v195 >= v183)
    {
      v196 = v183;
    }

    else
    {
      v196 = v195;
    }

    v179 = memcmp(v182, v194, v196);
    if (v179)
    {
      if ((v179 & 0x80000000) == 0)
      {
        goto LABEL_351;
      }

      goto LABEL_452;
    }

    if (v183 < v195)
    {
      goto LABEL_452;
    }

LABEL_351:
    while (2)
    {
      while (2)
      {
        v197 = *(v180 + 55);
        if (v197 >= 0)
        {
          v198 = v180 + 4;
        }

        else
        {
          v198 = v180[4];
        }

        if (v197 >= 0)
        {
          v199 = *(v180 + 55);
        }

        else
        {
          v199 = v180[5];
        }

        if (v199 >= v183)
        {
          v200 = v183;
        }

        else
        {
          v200 = v199;
        }

        v201 = memcmp(v182, v198, v200);
        if (v201)
        {
          if (v201 < 0)
          {
            goto LABEL_350;
          }
        }

        else if (v183 < v199)
        {
LABEL_350:
          v180 = *v180;
          if (!v180)
          {
            goto LABEL_523;
          }

          continue;
        }

        break;
      }

      v202 = memcmp(v198, v182, v200);
      if (v202)
      {
        if ((v202 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_368;
      }

      if (v199 < v183)
      {
LABEL_368:
        v180 = v180[1];
        if (!v180)
        {
LABEL_523:
          std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
        }

        continue;
      }

      break;
    }

    if (&v288 != (v180 + 7))
    {
      v203 = *(v180 + 79);
      if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v203 >= 0)
        {
          v204 = v180 + 7;
        }

        else
        {
          v204 = v180[7];
        }

        if (v203 >= 0)
        {
          v205 = *(v180 + 79);
        }

        else
        {
          v205 = v180[8];
        }

        v202 = std::string::__assign_no_alias<false>(&v288, v204, v205);
      }

      else if ((*(v180 + 79) & 0x80) != 0)
      {
        v202 = std::string::__assign_no_alias<true>(&v288, v180[7], v180[8]);
      }

      else
      {
        v288 = *(v180 + 7);
      }
    }

    v206 = ACFULogging::getLogInstance(v202);
    v207 = v165;
    if (v165[23] < 0)
    {
      v207 = *v165;
    }

    v208 = &v288;
    if ((v288.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v208 = v288.__r_.__value_.__r.__words[0];
    }

    v209 = ACFULogging::handleMessage(v206, 4, "%s::%s: FDR file name for %s is: %s\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v207, v208);
    v210 = SHIBYTE(v290);
    if (v290 >= 0)
    {
      v211 = HIBYTE(v290);
    }

    else
    {
      v211 = __p[1];
    }

    v212 = SHIBYTE(v288.__r_.__value_.__r.__words[2]);
    if ((v288.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v213 = HIBYTE(v288.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v213 = v288.__r_.__value_.__l.__size_;
    }

    v214 = v213 + v211;
    if (v213 + v211 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v214 <= 0x16)
    {
      memset(&v279, 0, sizeof(v279));
      v216 = &v279;
      *(&v279.__r_.__value_.__s + 23) = v213 + v211;
      if (!v211)
      {
        goto LABEL_404;
      }

LABEL_400:
      if (v210 >= 0)
      {
        v217 = __p;
      }

      else
      {
        v217 = __p[0];
      }

      v209 = memmove(v216, v217, v211);
      goto LABEL_404;
    }

    if ((v214 | 7) == 0x17)
    {
      v215 = 25;
    }

    else
    {
      v215 = (v214 | 7) + 1;
    }

    v209 = operator new(v215);
    v216 = v209;
    v279.__r_.__value_.__l.__size_ = v213 + v211;
    v279.__r_.__value_.__r.__words[2] = v215 | 0x8000000000000000;
    v279.__r_.__value_.__r.__words[0] = v209;
    if (v211)
    {
      goto LABEL_400;
    }

LABEL_404:
    v218 = v216 + v211;
    if (v213)
    {
      if (v212 >= 0)
      {
        v219 = &v288;
      }

      else
      {
        v219 = v288.__r_.__value_.__r.__words[0];
      }

      v209 = memmove(v218, v219, v213);
    }

    v218[v213] = 0;
    if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v287.__r_.__value_.__l.__data_);
    }

    v287 = v279;
    v220 = ACFULogging::getLogInstance(v209);
    v221 = v165;
    if (v165[23] < 0)
    {
      v221 = *v165;
    }

    v222 = &v287;
    if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v222 = v287.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v220, 4, "%s::%s: FDR file path for %s is: %s\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v221, v222);
    if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v223 = &v287;
    }

    else
    {
      v223 = v287.__r_.__value_.__r.__words[0];
    }

    v224 = CFStringCreateWithCString(alloc, v223, 0x8000100u);
    v225 = cf;
    cf = v224;
    v136 = v178;
    if (v225)
    {
      CFRelease(v225);
    }

    if (!v224)
    {
      v256 = ACFULogging::getLogInstance(v225);
      ACFULogging::handleMessage(v256, 2, "%s::%s: Could not create the FDR file path string\n");
      goto LABEL_513;
    }

    v226 = CFURLCreateWithString(alloc, v224, 0);
    v227 = v285;
    v285 = v226;
    if (v227)
    {
      CFRelease(v227);
    }

    if (v226)
    {
      v228 = AMSupportWriteDataToFileURL();
      if (v228)
      {
        v258 = ACFULogging::getLogInstance(v228);
        v136 = v178;
        ACFULogging::handleMessage(v258, 2, "%s::%s: failed to write data to output URL\n", "BasebandRestore", "handleFDRForNonBridgeSetup");
        v26 = 1004;
        goto LABEL_456;
      }

      v229 = ACFULogging::getLogInstance(v228);
      v230 = v165;
      if (v165[23] < 0)
      {
        v230 = *v165;
      }

      v231 = &v287;
      if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v231 = v287.__r_.__value_.__r.__words[0];
      }

      v232 = ACFULogging::handleMessage(v229, 4, "%s::%s: For %s, combined FDR data is saved as: %s\n", "BasebandRestore", "handleFDRForNonBridgeSetup", v230, v231);
      v233 = v165[23];
      if (v233 < 0)
      {
        v136 = v178;
        v167 = v177;
        v166 = v268;
        if (*(v165 + 1) == 4)
        {
          v234 = *v165;
          if (**v165 == 1818452578)
          {
LABEL_447:
            if (v266 != &v292)
            {
              v238 = v292;
              if (v292)
              {
                CFRetain(v292);
              }

              v236 = *v266;
              *v266 = v238;
              if (v236)
              {
                goto LABEL_451;
              }
            }

            goto LABEL_296;
          }

          if (*v234 == 1668309602)
          {
            goto LABEL_442;
          }

LABEL_433:
          if (*v234 == 1987076706)
          {
            if (v267 != &v292)
            {
              v235 = v292;
              if (v292)
              {
                CFRetain(v292);
              }

              v236 = *v267;
              *v267 = v235;
              if (v236)
              {
                goto LABEL_451;
              }
            }

            goto LABEL_296;
          }
        }

LABEL_502:
        v249 = ACFULogging::getLogInstance(v232);
        ACFULogging::handleMessage(v249, 2, "%s::%s: Unsupported data class.\n", "BasebandRestore", "handleFDRForNonBridgeSetup");
        goto LABEL_455;
      }

      v136 = v178;
      v167 = v177;
      v166 = v268;
      if (v233 != 4)
      {
        goto LABEL_502;
      }

      if (*v165 == 1818452578)
      {
        goto LABEL_447;
      }

      v234 = v165;
      if (*v165 != 1668309602)
      {
        goto LABEL_433;
      }

LABEL_442:
      if (v265 != &v292)
      {
        v237 = v292;
        if (v292)
        {
          CFRetain(v292);
        }

        v236 = *v265;
        *v265 = v237;
        if (v236)
        {
LABEL_451:
          CFRelease(v236);
        }
      }

LABEL_296:
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(value, *&value[8]);
LABEL_297:
      v165 += 24;
      if (v165 == v166)
      {
        goto LABEL_458;
      }

      continue;
    }

    break;
  }

  v257 = ACFULogging::getLogInstance(v227);
  ACFULogging::handleMessage(v257, 2, "%s::%s: Could not create the FDR file path URL\n");
LABEL_513:
  v26 = 4000;
LABEL_456:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(value, *&value[8]);
  if (v136)
  {
    goto LABEL_459;
  }

LABEL_460:
  v142 = v281;
  if (v281)
  {
LABEL_461:
    if (!atomic_fetch_add(&v142->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v142->__on_zero_shared)(v142);
      std::__shared_weak_count::__release_weak(v142);
    }
  }

LABEL_463:
  v240 = v282.__r_.__value_.__r.__words[0];
  if (v282.__r_.__value_.__r.__words[0])
  {
    v241 = v282.__r_.__value_.__l.__size_;
    v242 = v282.__r_.__value_.__r.__words[0];
    if (v282.__r_.__value_.__l.__size_ != v282.__r_.__value_.__r.__words[0])
    {
      do
      {
        v243 = *(v241 - 1);
        v241 -= 3;
        if (v243 < 0)
        {
          operator delete(*v241);
        }
      }

      while (v241 != v240);
      v242 = v282.__r_.__value_.__r.__words[0];
    }

    v282.__r_.__value_.__l.__size_ = v240;
    operator delete(v242);
  }

  if (v285)
  {
    CFRelease(v285);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v287.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v288.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_477;
    }

LABEL_481:
    operator delete(v288.__r_.__value_.__l.__data_);
    if (SHIBYTE(v290) < 0)
    {
      goto LABEL_482;
    }

LABEL_478:
    v244 = __s2.__r_.__value_.__l.__size_;
    if (!__s2.__r_.__value_.__l.__size_)
    {
      goto LABEL_484;
    }

LABEL_483:
    if (atomic_fetch_add(&v244->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_484;
    }

    (v244->__on_zero_shared)(v244);
    std::__shared_weak_count::__release_weak(v244);
    v245 = v292;
    if (!v292)
    {
      goto LABEL_486;
    }

LABEL_485:
    CFRelease(v245);
    goto LABEL_486;
  }

  operator delete(v287.__r_.__value_.__l.__data_);
  if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_481;
  }

LABEL_477:
  if ((SHIBYTE(v290) & 0x80000000) == 0)
  {
    goto LABEL_478;
  }

LABEL_482:
  operator delete(__p[0]);
  v244 = __s2.__r_.__value_.__l.__size_;
  if (__s2.__r_.__value_.__l.__size_)
  {
    goto LABEL_483;
  }

LABEL_484:
  v245 = v292;
  if (v292)
  {
    goto LABEL_485;
  }

LABEL_486:
  if (v26)
  {
    v250 = ACFULogging::getLogInstance(v245);
    ACFULogging::handleMessage(v250, 2, "%s::%s: Encountered an error (%d) during FDR processing\n", "BasebandRestore", "operator()", v26);
  }

LABEL_488:
  v246 = v276;
  if (v276 && !atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v246->__on_zero_shared)(v246);
    std::__shared_weak_count::__release_weak(v246);
  }

  if (*(&v271 + 1) && !atomic_fetch_add((*(&v271 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v271 + 1) + 16))(*(&v271 + 1));
    std::__shared_weak_count::__release_weak(*(&v271 + 1));
  }

  if (v272 && !atomic_fetch_add(&v272->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v272->__on_zero_shared)(v272);
    std::__shared_weak_count::__release_weak(v272);
  }

  return v26;
}

void sub_1E5309908(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<BasebandRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15BasebandRestore4initEPK14__CFDictionaryPKvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void std::shared_ptr<SharedData>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0uLL;
  v2 = *(&off_1ECFD4E60 + 1);
  off_1ECFD4E60 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x1E6926600]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53936BELL)
  {
    if (((v2 & 0x80000001E53936BELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53936BELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53936BELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E6926600]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t __cxx_global_var_init_25()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_564()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_565()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_566()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUEURUpdateSource::getSBLType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getSBLType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1Au, "Assertion failure(false && Invalid radio type: Specified radio does not have a SBL1 file.)");
  }

  return 16391;
}

uint64_t BBUEURUpdateSource::getSequencerRamType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x28u, "Assertion failure(false && Invalid radio type: Specified radio does not have a SequencerRam file.)");
  }

  return 16419;
}

uint64_t BBUEURUpdateSource::getSignedFirmwareSOCViewType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x37u, "Assertion failure(false && Invalid radio type: Specified radio does not have a SignedFirmwareSOCView file.)");
  }

  return 16420;
}

uint64_t BBUEURUpdateSource::getXBLscType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x46u, "Assertion failure(false && Invalid radio type: Specified radio does not have a XBLsc file.)");
  }

  return 16421;
}

uint64_t BBUEURUpdateSource::getAPPSType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getAPPSType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x53u, "Assertion failure(false && Invalid radio type: Specified radio does not have an APPS file.)");
  }

  return 16393;
}

uint64_t BBUEURUpdateSource::getQDSP6SWType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getQDSP6SWType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x5Eu, "Assertion failure(false && Invalid radio type: Specified radio does not have a QDSP6SW file.)");
  }

  return 16396;
}

uint64_t BBUEURUpdateSource::getTZType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getTZType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x69u, "Assertion failure(false && Invalid radio type: Specified radio does not have a TZ file.)");
  }

  return 16397;
}

uint64_t BBUEURUpdateSource::getACDBType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getACDBType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x74u, "Assertion failure(false && Invalid radio type: Specified radio does not have an ACDBT file.)");
  }

  return 16399;
}

uint64_t BBUEURUpdateSource::getEFS1Type(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getEFS1Type(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x7Fu, "Assertion failure(false && Invalid radio type: Specified radio does not have an EFS1 file.)");
  }

  return 16400;
}

uint64_t BBUEURUpdateSource::getEFS2Type(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getEFS2Type(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x8Au, "Assertion failure(false && Invalid radio type: Specified radio does not have an EFS2 file.)");
  }

  return 16401;
}

uint64_t BBUEURUpdateSource::getEFS3Type(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getEFS3Type(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x95u, "Assertion failure(false && Invalid radio type: Specified radio does not have an EFS3 file.)");
  }

  return 16402;
}

uint64_t BBUEURUpdateSource::getCalType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getCalType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xA0u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Cal file.)");
  }

  return 16403;
}

uint64_t BBUEURUpdateSource::getProvType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getProvType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xABu, "Assertion failure(false && Invalid radio type: Specified radio does not have a Prov file.)");
  }

  return 16404;
}

uint64_t BBUEURUpdateSource::getPacType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getPacType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xB6u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Pac file.)");
  }

  return 16405;
}

uint64_t BBUEURUpdateSource::getBBCFGType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getBBCFGType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xC1u, "Assertion failure(false && Invalid radio type: Specified radio does not have a BBCFG file.)");
  }

  return 16407;
}

uint64_t BBUEURUpdateSource::getMDMDDRType(BBUEURUpdateSource *this)
{
  MDMDDRType = capabilities::updater::getMDMDDRType(this);
  if (MDMDDRType == 1)
  {
    return 16427;
  }

  if (MDMDDRType == 2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xCEu, "Assertion failure(false && Invalid radio type: Specified radio does not have a MDMDDR file.)");
  }

  return 16413;
}

uint64_t BBUEURUpdateSource::getAPDPType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getAPDPType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xD9u, "Assertion failure(false && Invalid radio type: Specified radio does not have a APDP file.)");
  }

  return 16408;
}

uint64_t BBUEURUpdateSource::getDEVCFGType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getDEVCFGType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xE4u, "Assertion failure(false && Invalid radio type: Specified radio does not have a DEVCFG file.)");
  }

  return 16409;
}

uint64_t BBUEURUpdateSource::getSECType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getSECType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xEFu, "Assertion failure(false && Invalid radio type: Specified radio does not have a SEC file.)");
  }

  return 16410;
}

uint64_t BBUEURUpdateSource::getHYPType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getHYPType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0xFAu, "Assertion failure(false && Invalid radio type: Specified radio does not have a HYP file.)");
  }

  return 16411;
}

uint64_t BBUEURUpdateSource::getAOPType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getAOPType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x105u, "Assertion failure(false && Invalid radio type: Specified radio does not have a AOP file.)");
  }

  return 16412;
}

uint64_t BBUEURUpdateSource::getOEMMiscType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getOEMMiscType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x110u, "Assertion failure(false && Invalid radio type: Specified radio does not have a OEMMisc file.)");
  }

  return 16414;
}

uint64_t BBUEURUpdateSource::getQTIMiscType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getQTIMiscType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x11Bu, "Assertion failure(false && Invalid radio type: Specified radio does not have a QTIMisc file.)");
  }

  return 16415;
}

uint64_t BBUEURUpdateSource::getXblCfgType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getXblCfgType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x126u, "Assertion failure(false && Invalid radio type: Specified radio does not have a XBL Config file.)");
  }

  return 16416;
}

uint64_t BBUEURUpdateSource::getUEFIType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getUEFIType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x131u, "Assertion failure(false && Invalid radio type: Specified radio does not have a UEFI file.)");
  }

  return 16417;
}

uint64_t BBUEURUpdateSource::getXblSupportType(BBUEURUpdateSource *this)
{
  if (capabilities::updater::getXblSupportType(this) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x13Cu, "Assertion failure(false && Invalid radio type: Specified radio does not have a XBL Support file.)");
  }

  return 16418;
}

uint64_t BBUEURUpdateSource::getShrmType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x14Au, "Assertion failure(false && Invalid radio type: Specified radio does not have a Shrm file.)");
  }

  return 16422;
}

uint64_t BBUEURUpdateSource::getCpucpType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x159u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Cpucp file.)");
  }

  return 16423;
}

uint64_t BBUEURUpdateSource::getAOPDevCfgType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x168u, "Assertion failure(false && Invalid radio type: Specified radio does not have a AOPDevCfg file.)");
  }

  return 16424;
}

uint64_t BBUEURUpdateSource::getQdsp6SwDtbsType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x177u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Qdsp6SwDtbs file.)");
  }

  return 16425;
}

uint64_t BBUEURUpdateSource::getQupv3FwType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x186u, "Assertion failure(false && Invalid radio type: Specified radio does not have a Qupv3Fw file.)");
  }

  return 16426;
}

uint64_t BBUEURUpdateSource::getPTType(BBUEURUpdateSource *this)
{
  if (!capabilities::radio::mav25Plus(this))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x195u, "Assertion failure(false && Invalid radio type: Specified radio does not have a PT file.)");
  }

  return 16428;
}

uint64_t BBUEURUpdateSource::containsFile(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    v4 = *(a1 + 103);
    if (v4 >= 0)
    {
      v5 = *(a1 + 103);
    }

    else
    {
      v5 = *(a1 + 88);
    }

    v6 = v5 + 1;
    if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 < 0x17)
    {
      memset(&v19, 0, sizeof(v19));
      v10 = &v19;
      *(&v19.__r_.__value_.__s + 23) = v5 + 1;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((v6 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v6 | 7) + 1;
      }

      v9 = a1;
      v10 = operator new(v8);
      a1 = v9;
      v19.__r_.__value_.__l.__size_ = v5 + 1;
      v19.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
      v19.__r_.__value_.__r.__words[0] = v10;
    }

    if (v4 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    memmove(v10, v11, v5);
LABEL_19:
    *&v10[v5] = 47;
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = std::string::append(&v19, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    result = ctu::fs::file_exists();
    if (SHIBYTE(v21) < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      result = v17;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v18 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v18;
  }

  v2 = *(a1 + 64);

  return BBUZipFile::containsFile(v2, a2);
}

void sub_1E530B4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void *BBUEURUpdateSource::createDataSource(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = *(a1 + 103);
    }

    else
    {
      v9 = *(a1 + 88);
    }

    v10 = v9 + 1;
    if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 < 0x17)
    {
      memset(&v21, 0, sizeof(v21));
      v13 = &v21;
      *(&v21.__r_.__value_.__s + 23) = v9 + 1;
      if (!v9)
      {
        goto LABEL_23;
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

      v12 = a1;
      v13 = operator new(v11);
      a1 = v12;
      v21.__r_.__value_.__l.__size_ = v9 + 1;
      v21.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
      v21.__r_.__value_.__r.__words[0] = v13;
    }

    if (v8 >= 0)
    {
      v14 = (a1 + 80);
    }

    else
    {
      v14 = *(a1 + 80);
    }

    memmove(v13, v14, v9);
LABEL_23:
    *&v13[v9] = 47;
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    v18 = std::string::append(&v21, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v23 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v7 = operator new(0x30uLL);
    *v7 = &unk_1F5F00F28;
    *(v7 + 1) = 0u;
    *(v7 + 3) = 0u;
    if (BBUFileDataSource::init(v7, __p, a3))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v7;
      }
    }

    else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    operator delete(v21.__r_.__value_.__l.__data_);
    return v7;
  }

  v6 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = operator new(0x38uLL);
  *v7 = &unk_1F5F02918;
  v7[1] = v5;
  v7[4] = 0;
  v7[5] = 0;
  v7[3] = 0;
  if (BBUZipDataSource::init(v7, a2, a3))
  {
    (*(*v7 + 8))(v7);
    v7 = 0;
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return v7;
}

void sub_1E530B77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *BBUEURUpdateSource::createDataSourceFromSpecificPath(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    v7 = *(a3 + 23);
    v8 = v7 >= 0 ? *(a3 + 23) : *(a3 + 8);
    if (v8)
    {
      v9 = v5 + 1;
      if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v9 <= 0x16)
      {
        memset(&v20, 0, sizeof(v20));
        v14 = &v20;
        *(&v20.__r_.__value_.__s + 23) = v5 + 1;
      }

      else
      {
        if ((v9 | 7) == 0x17)
        {
          v11 = 25;
        }

        else
        {
          v11 = (v9 | 7) + 1;
        }

        v12 = a2;
        v13 = operator new(v11);
        a2 = v12;
        v14 = v13;
        v20.__r_.__value_.__l.__size_ = v5 + 1;
        v20.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
        v20.__r_.__value_.__r.__words[0] = v13;
      }

      if (v4 < 0)
      {
        a2 = *a2;
      }

      memmove(v14, a2, v5);
      *(&v14->__r_.__value_.__l.__data_ + v5) = 47;
      if (v7 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = std::string::append(&v20, v16, v8);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v22 = v17->__r_.__value_.__r.__words[2];
      *__p = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v15 = operator new(0x30uLL);
      *v15 = &unk_1F5F00F28;
      *(v15 + 8) = 0u;
      *(v15 + 24) = 0u;
      if (BBUFileDataSource::init(v15, __p, a4))
      {
        (*(*v15 + 8))(v15);
        v15 = 0;
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v15;
        }
      }

      else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v15;
      }

      operator delete(v20.__r_.__value_.__l.__data_);
      return v15;
    }
  }

  return 0;
}

void sub_1E530B998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::saveFile(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1CEu, "Assertion failure(fZipFile && Firmware data source error.)");
  }

  if (!BBUZipFile::containsFile(v4, a2))
  {
    return 35;
  }

  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v38 = v8;
  v39 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = operator new(0x38uLL);
  *v9 = &unk_1F5F02918;
  v9[1] = v8;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  if (BBUZipDataSource::init(v9, a2, 0))
  {
    (*(*v9 + 8))(v9);
    v9 = 0;
  }

  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9)
    {
      goto LABEL_10;
    }

    return 35;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v9)
  {
    return 35;
  }

LABEL_10:
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[7] = v10;
  v36[8] = v10;
  v36[5] = v10;
  v36[6] = v10;
  v36[3] = v10;
  v36[4] = v10;
  v36[1] = v10;
  v36[2] = v10;
  v36[0] = v10;
  v34 = v10;
  v35 = v10;
  v32 = v10;
  *__p = v10;
  v30 = v10;
  v31 = v10;
  v29 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = a3[1];
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/", 1);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = a2[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  if ((BYTE8(v35) & 0x10) != 0)
  {
    v21 = v35;
    if (v35 < *(&v32 + 1))
    {
      *&v35 = *(&v32 + 1);
      v21 = *(&v32 + 1);
    }

    v22 = v32;
    v19 = v21 - v32;
    if ((v21 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      v19 = 0;
      HIBYTE(v28) = 0;
      v20 = __dst;
      goto LABEL_38;
    }

    v22 = *(&v30 + 1);
    v19 = *(&v31 + 1) - *(&v30 + 1);
    if (*(&v31 + 1) - *(&v30 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_44:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v19 | 7) + 1;
    }

    v20 = operator new(v24);
    __dst[1] = v19;
    v28 = v24 | 0x8000000000000000;
    __dst[0] = v20;
  }

  else
  {
    HIBYTE(v28) = v19;
    v20 = __dst;
    if (!v19)
    {
      goto LABEL_38;
    }
  }

  memmove(v20, v22, v19);
LABEL_38:
  *(v20 + v19) = 0;
  v25 = (*(*v9 + 48))(v9, __dst, 0);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v29 = *MEMORY[0x1E69E54E8];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v29 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v30);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v36);
  return v25;
}

void sub_1E530BDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::saveImages(BBUEURUpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1E6u, "Assertion failure(fZipFile && Firmware data source error.)");
  }

  memset(__src, 170, 24);
  capabilities::radio::personalizedFirmwarePath(__src, this);
  if (SHIBYTE(__src[2]) < 0)
  {
    if (__src[1])
    {
      v2 = __src[0];
      goto LABEL_7;
    }

LABEL_80:
    v27 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v27, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x1E9u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)");
  }

  if (!HIBYTE(__src[2]))
  {
    goto LABEL_80;
  }

  v2 = __src;
LABEL_7:
  v28 = this;
  BBUFeedback::handleComment(*(this + 1), "Saving image to %s", v2);
  v3 = 0;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v4;
  *v30.st_qspare = v4;
  v30.st_birthtimespec = v4;
  *&v30.st_size = v4;
  v30.st_mtimespec = v4;
  v30.st_ctimespec = v4;
  *&v30.st_uid = v4;
  v30.st_atimespec = v4;
  *&v30.st_dev = v4;
  while (1)
  {
    do
    {
      while (1)
      {
        if (__src[2] >= 0)
        {
          v5 = __src;
        }

        else
        {
          v5 = __src[0];
        }

        v6 = stat(v5, &v30);
        if (v3 == -1 || !v6)
        {
          v20 = __src;
          if (__src[2] < 0)
          {
            v20 = __src[0];
          }

          BBUFeedback::handleComment(*(v28 + 1), "Saving image to %s, success", v20);
          result = 0;
          if (SHIBYTE(__src[2]) < 0)
          {
            goto LABEL_64;
          }

          return result;
        }

        v7 = HIBYTE(__src[2]);
        v8 = __src[1];
        v9 = __src[2] >= 0 ? HIBYTE(__src[2]) : __src[1];
        if (v9 > v3)
        {
          v10 = __src[0];
          v11 = __src[2] >= 0 ? __src : __src[0];
          v12 = memchr(v11 + v3, 47, v9 - v3);
          v13 = v12 - v11;
          if (v12 && v13 != -1)
          {
            break;
          }
        }

        v3 = 1;
        if ((v7 & 0x80) != 0)
        {
          if (v8)
          {
            memset(__dst, 170, sizeof(__dst));
            v13 = v8;
            v7 = v8;
            v10 = __src[0];
            v15 = v8;
            if (v8 >= 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_60;
            }

            goto LABEL_38;
          }
        }

        else if (v7)
        {
          v13 = v7;
          memset(__dst, 170, sizeof(__dst));
          v10 = __src;
          v15 = v7;
          goto LABEL_38;
        }
      }

      v3 = 1;
    }

    while (!v13);
    memset(__dst, 170, sizeof(__dst));
    if ((v7 & 0x80) != 0)
    {
      v7 = v8;
      if (v8 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_60:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v10 = __src;
      if (v7 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v7;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_60;
      }
    }

LABEL_38:
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v15 | 7) + 1;
      }

      v16 = operator new(v17);
      __dst[1] = v15;
      __dst[2] = (v17 | 0x8000000000000000);
      __dst[0] = v16;
LABEL_45:
      memmove(v16, v10, v15);
      goto LABEL_46;
    }

    HIBYTE(__dst[2]) = v15;
    v16 = __dst;
    if (v7)
    {
      goto LABEL_45;
    }

LABEL_46:
    *(v16 + v15) = 0;
    v18 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
    if (stat(v18, &v30))
    {
      v19 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
      if (mkdir(v19, 0x1EDu))
      {
        break;
      }
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    v3 = v13 + 1;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v23 = v28;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_68:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v24 = (**v23)(v23);
        v25 = __dst;
        if (SHIBYTE(__dst[2]) < 0)
        {
          v25 = __dst[0];
        }

        _BBULog(3, 0, v24, "", "Failed to create path %s", v25);
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v23 = v28;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_68;
    }
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    result = 35;
    if (SHIBYTE(__src[2]) < 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    result = 35;
    if (SHIBYTE(__src[2]) < 0)
    {
LABEL_64:
      v22 = result;
      operator delete(__src[0]);
      return v22;
    }
  }

  return result;
}

void sub_1E530C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v17 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v17 - 120));
  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::cleanupFirmwareImage(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x211u, "Assertion failure(fZipFile && Firmware data source error.)");
  }

  memset(v30, 170, sizeof(v30));
  capabilities::radio::personalizedFirmwarePath(v30, a1);
  v4 = SHIBYTE(v30[2]);
  if ((SHIBYTE(v30[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v30[2]))
    {
      v5 = v30[1];
      goto LABEL_6;
    }

LABEL_44:
    v26 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v26, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x216u, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)");
  }

  v5 = v30[1];
  if (!v30[1])
  {
    goto LABEL_44;
  }

LABEL_6:
  if (SHIBYTE(v30[2]) >= 0)
  {
    v6 = SHIBYTE(v30[2]);
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v27, 0, sizeof(v27));
    v9 = &v27;
    *(&v27.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v27.__r_.__value_.__l.__size_ = v6 + 1;
    v27.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v27.__r_.__value_.__r.__words[0] = v9;
  }

  if (v4 >= 0)
  {
    v10 = v30;
  }

  else
  {
    v10 = v30[0];
  }

  memmove(v9, v10, v6);
LABEL_20:
  *&v9[v6] = 47;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v27, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = v30;
  if (SHIBYTE(v30[2]) < 0)
  {
    v17 = v30[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Removing Firmware image [%s] in path [%s]\n", v16, v17);
  v18 = HIBYTE(v29);
  if (v29 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (unlink(v19))
  {
    v20 = *(a1 + 8);
    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    BBUFeedback::handleComment(v20, "Unable to remove Firmware image [%s]. Error[%d][%s]\n", v19, v21, v23);
    v18 = HIBYTE(v29);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v30[2]) & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_42:
    operator delete(v30[0]);
    return 0;
  }

  if (SHIBYTE(v30[2]) < 0)
  {
    goto LABEL_42;
  }

  return 0;
}

void sub_1E530C5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::saveFirmwareImage(uint64_t a1, const char *a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x228u, "Assertion failure(fZipFile && Firmware data source error.)");
  }

  memset(v35, 170, sizeof(v35));
  capabilities::radio::personalizedFirmwarePath(v35, a1);
  if ((SHIBYTE(v35[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v35[2]))
    {
      goto LABEL_4;
    }

LABEL_21:
    v16 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v16, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x22Fu, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)");
  }

  if (!v35[1])
  {
    goto LABEL_21;
  }

LABEL_4:
  v4 = BBUEURUpdateSource::saveImages(a1);
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[7] = v5;
  v33[8] = v5;
  v33[5] = v5;
  v33[6] = v5;
  v33[3] = v5;
  v33[4] = v5;
  v33[1] = v5;
  v33[2] = v5;
  v33[0] = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  *__p = v5;
  v27 = v5;
  v28 = v5;
  v26 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  if (v35[2] >= 0)
  {
    v6 = v35;
  }

  else
  {
    v6 = v35[0];
  }

  if (v35[2] >= 0)
  {
    v7 = HIBYTE(v35[2]);
  }

  else
  {
    v7 = v35[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/", 1);
  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  if (v4)
  {
    goto LABEL_41;
  }

  v13 = *(a1 + 64);
  if ((BYTE8(v32) & 0x10) != 0)
  {
    v17 = v32;
    if (v32 < *(&v29 + 1))
    {
      *&v32 = *(&v29 + 1);
      v17 = *(&v29 + 1);
    }

    v18 = v29;
    v14 = v17 - v29;
    if ((v17 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v25) = 0;
      v15 = __dst;
      goto LABEL_33;
    }

    v18 = *(&v27 + 1);
    v14 = *(&v28 + 1) - *(&v27 + 1);
    if (*(&v28 + 1) - *(&v27 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_47:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v14 | 7) + 1;
    }

    v15 = operator new(v19);
    __dst[1] = v14;
    v25 = v19 | 0x8000000000000000;
    __dst[0] = v15;
  }

  else
  {
    HIBYTE(v25) = v14;
    v15 = __dst;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  memmove(v15, v18, v14);
LABEL_33:
  *(v15 + v14) = 0;
  v4 = BBUZipFile::saveDataToFile(v13, __dst);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  if (a2[23] >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v21 = v35;
  if (v35[2] < 0)
  {
    v21 = v35[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Saving Firmware image [%s] in path [%s]\n", v20, v21);
LABEL_41:
  *&v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v26 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v26 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v27);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v33);
  if (SHIBYTE(v35[2]) < 0)
  {
    operator delete(v35[0]);
  }

  return v4;
}

void sub_1E530CA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18);
  if (*(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(a1);
}

void BBUEURUpdateSource::loadProvisioningData(BBUEURUpdateSource *this)
{
  v2 = operator new(0x30uLL);
  strcpy(v2, "provisioning/info.plist");
  v23 = v2;
  v24 = xmmword_1E5392690;
  strcpy(v22, "provisioning/puk.pem");
  HIBYTE(v22[2]) = 20;
  v3 = operator new(0x30uLL);
  strcpy(v3, "provisioning/manifest.bin");
  __p = v3;
  v21 = xmmword_1E53926A0;
  v4 = *(this + 8);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x249u, "Assertion failure(fZipFile && Firmware data source error.)");
    goto LABEL_60;
  }

  v19 = 13;
  strcpy(v18, "provisioning/");
  if (BBUZipFile::containsFile(v4, v18))
  {
    *(this + 120) = 1;
  }

  if (BBUZipFile::containsFile(*(this + 8), &v23))
  {
    if (*(this + 16))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x254u, "Provisioning Dictionary Source is not NULL");
      goto LABEL_60;
    }

    v6 = *(this + 8);
    v5 = *(this + 9);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = operator new(0x38uLL);
    *v7 = &unk_1F5F02918;
    v7[1] = v6;
    v7[4] = 0;
    v7[5] = 0;
    v7[3] = 0;
    if (BBUZipDataSource::init(v7, &v23, 0))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    *(this + 16) = v7;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v8 = (**this)(this);
      _BBULog(3, 0, v8, "", "Loaded provisioning dictionary\n");
    }
  }

LABEL_17:
  if (!BBUZipFile::containsFile(*(this + 8), v22))
  {
    goto LABEL_30;
  }

  if (*(this + 17))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x25Eu, "Provisioning Public Key Source is not NULL");
    goto LABEL_60;
  }

  v10 = *(this + 8);
  v9 = *(this + 9);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = operator new(0x38uLL);
  *v11 = &unk_1F5F02918;
  v11[1] = v10;
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = 0;
  if (BBUZipDataSource::init(v11, v22, 0))
  {
    (*(*v11 + 8))(v11);
    v11 = 0;
  }

  *(this + 17) = v11;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**this)(this);
    _BBULog(3, 0, v12, "", "Loaded public key source\n");
  }

LABEL_30:
  if (!BBUZipFile::containsFile(*(this + 8), &__p))
  {
    goto LABEL_43;
  }

  if (*(this + 18))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x267u, "Provisioning Manifest Source is not NULL");
LABEL_60:
  }

  v14 = *(this + 8);
  v13 = *(this + 9);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = operator new(0x38uLL);
  *v15 = &unk_1F5F02918;
  v15[1] = v14;
  v15[4] = 0;
  v15[5] = 0;
  v15[3] = 0;
  if (BBUZipDataSource::init(v15, &__p, 0))
  {
    (*(*v15 + 8))(v15);
    v15 = 0;
  }

  *(this + 18) = v15;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v16 = (**this)(this);
    _BBULog(3, 0, v16, "", "Loaded provisioning manifest\n", v14, v13);
  }

LABEL_43:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v22[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        return;
      }

LABEL_49:
      operator delete(v23);
      return;
    }
  }

  else if ((SHIBYTE(v22[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v22[0]);
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_49;
  }
}

void sub_1E530D198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v24 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v24 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v24 - 80));
  if ((*(v24 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v24 - 56));
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::copyProvisioningData(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x27Cu, "Assertion failure(false && Unrecognized provisoning support type.)");
  }

  v5 = *(a1 + 136);
  if (*(a1 + 136) == 0)
  {
    return 0;
  }

  v6 = operator new(0x18uLL);
  v7 = v6;
  v8 = *(a1 + 144);
  *v6 = &unk_1F5F037C0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v9 = (v6 + 16);
  if (v5)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v6, v6 + 1, v5);
  }

  if (v8)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v7, v9, v8);
  }

  *a3 = v7;
  return 1;
}

void sub_1E530D378(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::getFusingSource(BBUEURUpdateSource *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 26);
    if ((v3 & 4) != 0)
    {
      return *(this + 14);
    }

    *(this + 26) = v3 | 4;
    v13 = 19;
    strcpy(__p, "fusingprogram.plist");
    if (!BBUZipFile::containsFile(v2, __p))
    {
      return *(this + 14);
    }

    if (*(this + 14))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x291u, "Fusing Source had read once");
    }

    v5 = *(this + 8);
    v4 = *(this + 9);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 19;
    strcpy(__p, "fusingprogram.plist");
    v6 = operator new(0x38uLL);
    *v6 = &unk_1F5F02918;
    v6[1] = v5;
    v6[4] = 0;
    v6[5] = 0;
    v6[3] = 0;
    if (BBUZipDataSource::init(v6, __p, 0))
    {
      (*(*v6 + 8))(v6);
      v6 = 0;
    }

    *(this + 14) = v6;
    if (v13 < 0)
    {
      operator delete(*__p);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v7 = (**this)(this);
      _BBULog(3, 0, v7, "", "Loaded Fusing program \n");
    }

LABEL_18:
    if (!*(this + 14))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_21:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v8 = (**this)(this);
            _BBULog(3, 0, v8, "", "loading failed\n");
          }
        }
      }
    }

    return *(this + 14);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v10 = (**this)(this);
    _BBULog(3, 0, v10, "", "Fusing Source cannot be non-zipped source.\n");
    return 0;
  }

  return result;
}

void sub_1E530D77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::getManifestSource(BBUEURUpdateSource *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    goto LABEL_82;
  }

  *(this + 26) = v2 | 1;
  v3 = *(this + 8);
  if (v3)
  {
    (*(*this + 56))(__p, this);
    v4 = BBUZipFile::containsFile(v3, __p);
    if (SHIBYTE(v43) < 0)
    {
      v6 = v4;
      operator delete(__p[0]);
      if (!v6)
      {
        goto LABEL_82;
      }
    }

    else if (!v4)
    {
      goto LABEL_82;
    }

    if (!*(this + 19))
    {
      v8 = *(this + 8);
      v7 = *(this + 9);
      v40 = v8;
      v41 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*this + 56))(__p, this);
      v9 = operator new(0x38uLL);
      *v9 = &unk_1F5F02918;
      v9[1] = v8;
      v9[4] = 0;
      v9[5] = 0;
      v9[3] = 0;
      if (BBUZipDataSource::init(v9, __p, 0))
      {
        (*(*v9 + 8))(v9);
        v9 = 0;
      }

      *(this + 19) = v9;
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

LABEL_91:
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x2A6u, "Root Manifest Source is not NULL");
LABEL_98:
  }

  v5 = *(this + 103);
  if (v5 < 0)
  {
    if (!*(this + 11))
    {
      goto LABEL_82;
    }
  }

  else if (!*(this + 103))
  {
    goto LABEL_82;
  }

  if (v5 >= 0)
  {
    v10 = *(this + 103);
  }

  else
  {
    v10 = *(this + 11);
  }

  v11 = v10 + 1;
  if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_95:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = (this + 80);
  if (v11 < 0x17)
  {
    memset(&v39, 0, sizeof(v39));
    v14 = &v39;
    *(&v39.__r_.__value_.__s + 23) = v10 + 1;
    if (!v10)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v11 | 7) + 1;
    }

    v14 = operator new(v13);
    v39.__r_.__value_.__l.__size_ = v10 + 1;
    v39.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
    v39.__r_.__value_.__r.__words[0] = v14;
  }

  if (v5 >= 0)
  {
    v15 = this + 80;
  }

  else
  {
    v15 = *v12;
  }

  memmove(v14, v15, v10);
LABEL_38:
  *&v14[v10] = 47;
  (*(*this + 56))(&v36, this);
  if ((v38 & 0x80u) == 0)
  {
    v16 = &v36;
  }

  else
  {
    v16 = v36;
  }

  if ((v38 & 0x80u) == 0)
  {
    v17 = v38;
  }

  else
  {
    v17 = v37;
  }

  v18 = std::string::append(&v39, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v43 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = ctu::fs::file_exists();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
    if ((v38 & 0x80000000) == 0)
    {
LABEL_46:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_51:
      operator delete(v39.__r_.__value_.__l.__data_);
      if (!v20)
      {
        goto LABEL_82;
      }

      goto LABEL_52;
    }
  }

  else if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v36);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  if (!v20)
  {
    goto LABEL_82;
  }

LABEL_52:
  if (*(this + 19))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x2AFu, "Root Manifest Source is not NULL");
    goto LABEL_98;
  }

  v21 = *(this + 103);
  if (v21 >= 0)
  {
    v22 = *(this + 103);
  }

  else
  {
    v22 = *(this + 11);
  }

  v23 = v22 + 1;
  if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_95;
  }

  if (v23 < 0x17)
  {
    memset(&v39, 0, sizeof(v39));
    v25 = &v39;
    *(&v39.__r_.__value_.__s + 23) = v22 + 1;
    if (!v22)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if ((v23 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v23 | 7) + 1;
    }

    v25 = operator new(v24);
    v39.__r_.__value_.__l.__size_ = v22 + 1;
    v39.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
    v39.__r_.__value_.__r.__words[0] = v25;
  }

  if (v21 >= 0)
  {
    v26 = this + 80;
  }

  else
  {
    v26 = *v12;
  }

  memmove(v25, v26, v22);
LABEL_67:
  *&v25[v22] = 47;
  (*(*this + 56))(&v36, this);
  if ((v38 & 0x80u) == 0)
  {
    v27 = &v36;
  }

  else
  {
    v27 = v36;
  }

  if ((v38 & 0x80u) == 0)
  {
    v28 = v38;
  }

  else
  {
    v28 = v37;
  }

  v29 = std::string::append(&v39, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v43 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = operator new(0x30uLL);
  *v31 = &unk_1F5F00F28;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  if (BBUFileDataSource::init(v31, __p, 0))
  {
    (*(*v31 + 8))(v31);
    v31 = 0;
  }

  *(this + 19) = v31;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
    if ((v38 & 0x80000000) == 0)
    {
LABEL_77:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    }
  }

  else if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

  operator delete(v36);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if (gBBULogMaskGet(void)::once != -1)
    {
      goto LABEL_91;
    }

    goto LABEL_79;
  }

LABEL_90:
  operator delete(v39.__r_.__value_.__l.__data_);
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_91;
  }

LABEL_79:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    goto LABEL_82;
  }

LABEL_80:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v32 = (**this)(this);
    _BBULog(3, 0, v32, "", "Loaded Manifest\n");
  }

LABEL_82:
  if (!*(this + 19))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return *(this + 19);
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return *(this + 19);
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v33 = (**this)(this);
      _BBULog(3, 0, v33, "", "loading failed\n");
    }
  }

  return *(this + 19);
}

void sub_1E530DE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t BBUEURUpdateSource::hasManifestSource(BBUEURUpdateSource *this)
{
  if (*(this + 104))
  {
    return *(this + 19) != 0;
  }

  (*(*this + 56))(__p);
  result = BBUEURUpdateSource::containsFile(this, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    return v3;
  }

  return result;
}

void sub_1E530E038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURUpdateSource::generateHash(BBUEURUpdateSource *this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEURUpdateSource.cpp", 0x2D4u, "Assertion failure(fZipFile && Firmware data source error.)");
  }

  v4 = *(v2 + 144);
  v5 = operator new(0x18uLL);
  v5[4] = 0;
  *v5 = &unk_1F5F04B00;
  *(v5 + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  BBUDataSource::generateHash(v5, a2, 0);
  (*(*v5 + 8))(v5);
  return 1;
}

uint64_t eUICC::Options::Options(uint64_t a1, const __CFDictionary **a2)
{
  v56 = *MEMORY[0x1E69E9840];
  *a1 = 255;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 4) = 0;
  *(a1 + 39) = 0;
  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v46, *a2);
  *(a1 + 11) = ctu::cf::map_adapter::getBool(v46, @"VinylForceGold");
  *(a1 + 10) = ctu::cf::map_adapter::getBool(v46, @"VinylForceMain");
  ctu::cf::map_adapter::getString();
  if (*(a1 + 39) < 0)
  {
    operator delete(*v3);
  }

  *v3 = *v47;
  v3[2] = v47[2];
  Bool = ctu::cf::map_adapter::getBool(v46, @"restoredInternal");
  *(a1 + 42) = Bool;
  if (Bool)
  {
    *(a1 + 8) = ctu::cf::map_adapter::getBool(v46, @"VinylSkipAll");
    *(a1 + 9) = ctu::cf::map_adapter::getBool(v46, @"VinylOnlyPerso");
    if (ctu::cf::map_adapter::getBool(v46, @"VinylUse4FF"))
    {
      *a1 = 1;
    }

    memset(v47, 170, sizeof(v47));
    memset(__p, 0, sizeof(__p));
    ctu::cf::map_adapter::getString();
    v6 = SHIBYTE(v47[2]);
    v7 = v47;
    v8 = v47[0];
    if (SHIBYTE(v47[2]) < 0)
    {
      v7 = v47[0];
    }

    if (SHIBYTE(v47[2]) >= 0)
    {
      v9 = SHIBYTE(v47[2]);
    }

    else
    {
      v9 = v47[1];
    }

    if (v9)
    {
      v10 = (v9 + v7);
      v11 = v9 - 1;
      v12 = v11;
      v13 = v7;
      do
      {
        if (v13 != v10)
        {
          v15 = 0;
          do
          {
            if (v15[v13] != aEuiccforcepers[v15])
            {
              v14 = &v15[v13];
              if (v15 != 16)
              {
                goto LABEL_22;
              }

              goto LABEL_24;
            }

            v16 = v15 + 1;
            if (v12 == v15)
            {
              break;
            }

            v17 = v15++ == 15;
          }

          while (!v17);
          v14 = &v16[v13];
          if (v16 == 16)
          {
            goto LABEL_24;
          }
        }

LABEL_22:
        v13 = (v13 + 1);
        --v12;
      }

      while (v13 != v10);
      v13 = v10;
      v14 = v10;
LABEL_24:
      *(a1 + 40) = v13 != v14;
      v18 = v11;
      v19 = v7;
      do
      {
        if (v19 != v10)
        {
          v21 = 0;
          do
          {
            if (v21[v19] != aEuiccpersostat[v21])
            {
              v20 = &v21[v19];
              if (v21 != 17)
              {
                goto LABEL_34;
              }

              goto LABEL_36;
            }

            v22 = v21 + 1;
            if (v18 == v21)
            {
              break;
            }

            v17 = v21++ == 16;
          }

          while (!v17);
          v20 = &v22[v19];
          if (v22 == 17)
          {
            goto LABEL_36;
          }
        }

LABEL_34:
        v19 = (v19 + 1);
        --v18;
      }

      while (v19 != v10);
      v19 = v10;
      v20 = v10;
LABEL_36:
      *(a1 + 41) = v19 != v20;
      while (v7 == v10)
      {
LABEL_46:
        v7 = (v7 + 1);
        --v11;
        if (v7 == v10)
        {
          goto LABEL_51;
        }
      }

      v24 = 0;
      do
      {
        if (v24[v7] != aEuiccforcecust[v24])
        {
          v23 = &v24[v7];
          if (v24 != 19)
          {
            goto LABEL_46;
          }

          goto LABEL_49;
        }

        v25 = v24 + 1;
        if (v11 == v24)
        {
          break;
        }

        v17 = v24++ == 18;
      }

      while (!v17);
      v23 = &v25[v7];
      if (v25 != 19)
      {
        goto LABEL_46;
      }

LABEL_49:
      if (v7 != v23)
      {
        *(a1 + 42) = 0;
      }
    }

    else
    {
      *(a1 + 40) = 0;
    }

LABEL_51:
    if (v6 < 0)
    {
      operator delete(v8);
    }
  }

  if (BBUpdaterCommon::isNVRAMKeyPresent(@"BBUForceVinylUpdate", v5))
  {
    *(a1 + 10) = 257;
  }

  memset(__p, 170, sizeof(__p));
  memset(v47, 0, sizeof(v47));
  ctu::cf::map_adapter::getString();
  if (SHIBYTE(v47[2]) < 0)
  {
    operator delete(v47[0]);
    v29 = HIBYTE(__p[2]);
    v27 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v29 = __p[1];
    }

    if (!v29)
    {
LABEL_59:
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_60;
      }

LABEL_83:
      operator delete(__p[0]);
      goto LABEL_60;
    }
  }

  else
  {
    v26 = HIBYTE(__p[2]);
    v27 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v26 = __p[1];
    }

    if (!v26)
    {
      goto LABEL_59;
    }
  }

  HIBYTE(v47[2]) = 9;
  strcpy(v47, "Bootstrap");
  v50 = 3;
  v48 = 1;
  v49[0] = 7105601;
  v51 = 2;
  v52[23] = 21;
  strcpy(v52, "Bootstrap Preferences");
  v53 = 3;
  v54[23] = 15;
  strcpy(v54, "All Preferences");
  v55 = 4;
  v44[0] = 0;
  v44[1] = 0;
  v43 = v44;
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v43, v44, v47, v47);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v43, v44, v49, v49);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v43, v44, v52, v52);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(&v43, v44, v54, v54);
  v30 = v44[0];
  if (!v44[0])
  {
    goto LABEL_84;
  }

  v31 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
  v32 = v44;
  v33 = v44[0];
  do
  {
    v34 = v32;
    v35 = (v33 + 32);
    if (*(v33 + 55) >= 0)
    {
      v36 = (v33 + 32);
    }

    else
    {
      v36 = *(v33 + 32);
    }

    v37 = strcasecmp(v36, v31);
    if (v37 >= 0)
    {
      v32 = v33;
    }

    v33 = *(v33 + ((v37 >> 28) & 8));
  }

  while (v33);
  if (v32 == v44)
  {
    goto LABEL_84;
  }

  v38 = v34 + 4;
  if (v37 >= 0)
  {
    v38 = v35;
  }

  v39 = *(v32 + 55) >= 0 ? v38 : *v38;
  if (strcasecmp(v31, v39) < 0)
  {
LABEL_84:
    exception = __cxa_allocate_exception(0x210uLL);
    v41 = exception;
    v42 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v42 = __p[0];
    }

    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Public/eUICCOptions.cpp", 0x48u, "Invalid Refurb Option %s", v42);
  }

  *(a1 + 4) = *(v32 + 14);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(v30);
  if ((HIBYTE(__p[2]) & 0x80) != 0)
  {
    goto LABEL_83;
  }

LABEL_60:
  MEMORY[0x1E69265E0](v46);
  return a1;
}

void sub_1E530E7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69265E0](&a19, a2, a3, a4, a5, a6, a7, a8);
  if (*(v26 + 39) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

uint64_t *eUICC::Options::ToString@<X0>(uint64_t *__return_ptr a1@<X8>, eUICC::Options *this@<X0>)
{
  v60 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59[7] = v4;
  v59[8] = v4;
  v59[5] = v4;
  v59[6] = v4;
  v59[3] = v4;
  v59[4] = v4;
  v59[1] = v4;
  v59[2] = v4;
  v58 = v4;
  v59[0] = v4;
  *v56 = v4;
  v57 = v4;
  v54 = v4;
  v55 = v4;
  v52 = v4;
  v53 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v52);
  v5 = v52;
  *(&v52 + *(v52 - 24) + 8) |= 1u;
  *(&v52 + *(v5 - 24) + 8) = *(&v52 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "=========== eUICC Options ============\n", 39);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "uimSlot       ", 14);
  v8 = MEMORY[0x1E69270D0](v7, *this);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "skipAll       ", 14);
  v11 = MEMORY[0x1E69270B0](v10, *(this + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "onlyPerso     ", 14);
  v14 = MEMORY[0x1E69270B0](v13, *(this + 9));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "forceMain     ", 14);
  v17 = MEMORY[0x1E69270B0](v16, *(this + 10));
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "forceGold     ", 14);
  v20 = MEMORY[0x1E69270B0](v19, *(this + 11));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "forcePerso    ", 14);
  v23 = MEMORY[0x1E69270B0](v22, *(this + 40));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n", 1);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "alderHost     ", 14);
  v26 = *(this + 39);
  if (v26 >= 0)
  {
    v27 = this + 16;
  }

  else
  {
    v27 = *(this + 2);
  }

  if (v26 >= 0)
  {
    v28 = *(this + 39);
  }

  else
  {
    v28 = *(this + 3);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "persoStatic   ", 14);
  v32 = MEMORY[0x1E69270B0](v31, *(this + 41));
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\n", 1);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "internalBuild ", 14);
  v35 = MEMORY[0x1E69270B0](v34, *(this + 42));
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\n", 1);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "postProcess   ", 14);
  v38 = *(this + 1);
  if (v38 > 2)
  {
    if (v38 != 3)
    {
      if (v38 == 4)
      {
        v41 = operator new(0x20uLL);
        __p[0] = v41;
        *&__p[1] = xmmword_1E5393720;
        qmemcpy(v41, "Clear All eSIM Preferences", 26);
        v39 = v41 + 26;
        v40 = 26;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v41 = operator new(0x28uLL);
    __p[0] = v41;
    *&__p[1] = xmmword_1E5390C30;
    qmemcpy(v41, "Clear Bootstrap eSIM Preferences", 32);
    v39 = v41 + 32;
    v40 = 32;
  }

  else
  {
    if (v38 != 1)
    {
      if (v38 == 2)
      {
        v39 = &__p[2] + 3;
        v40 = 19;
        HIBYTE(__p[2]) = 19;
        qmemcpy(__p, "Delete All Profiles", 19);
LABEL_15:
        v41 = __p;
        goto LABEL_18;
      }

LABEL_14:
      v39 = &__p[1] + 1;
      v40 = 9;
      HIBYTE(__p[2]) = 9;
      qmemcpy(__p, "No Action", 9);
      goto LABEL_15;
    }

    v41 = operator new(0x28uLL);
    __p[0] = v41;
    *&__p[1] = xmmword_1E5392800;
    qmemcpy(v41, "Delete All Non-Bootstrap Profiles", 33);
    v39 = v41 + 33;
    v40 = 33;
  }

LABEL_18:
  *v39 = 0;
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v41, v40);
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "======================================\n", 39);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    v44 = BYTE8(v58);
    if ((BYTE8(v58) & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v46 = v58;
    if (v58 < *(&v55 + 1))
    {
      *&v58 = *(&v55 + 1);
      v46 = *(&v55 + 1);
    }

    v47 = v55;
    v45 = v46 - v55;
    if ((v46 - v55) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  operator delete(__p[0]);
  v44 = BYTE8(v58);
  if ((BYTE8(v58) & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((v44 & 8) == 0)
  {
    v45 = 0;
    *(a1 + 23) = 0;
    goto LABEL_34;
  }

  v47 = *(&v53 + 1);
  v45 = *(&v54 + 1) - *(&v53 + 1);
  if (*(&v54 + 1) - *(&v53 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_38:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_26:
  if (v45 >= 0x17)
  {
    if ((v45 | 7) == 0x17)
    {
      v48 = 25;
    }

    else
    {
      v48 = (v45 | 7) + 1;
    }

    v49 = operator new(v48);
    a1[1] = v45;
    a1[2] = v48 | 0x8000000000000000;
    *a1 = v49;
    a1 = v49;
    goto LABEL_33;
  }

  *(a1 + 23) = v45;
  if (v45)
  {
LABEL_33:
    memmove(a1, v47, v45);
  }

LABEL_34:
  *(a1 + v45) = 0;
  *&v52 = *MEMORY[0x1E69E54E8];
  *(&v52 + *(v52 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v52 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  *(&v52 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v53);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v59);
}

void sub_1E530EE00(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,eUICC::VinylPostProcess> const&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result + 1;
  if (result + 1 != a2)
  {
    v9 = *(a3 + 23) >= 0 ? a3 : *a3;
    v10 = *(a2 + 55) >= 0 ? (a2 + 32) : *(a2 + 32);
    result = strcasecmp(v9, v10);
    if ((result & 0x80000000) == 0)
    {
      result = strcasecmp(v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v15 = v6 + 1;
      v14 = v6[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
          v6 = v15;
          v16 = v15;
        }

        while (v14);
      }

      else
      {
        v16 = v6;
        do
        {
          v27 = v16;
          v16 = v16[2];
        }

        while (*v16 != v27);
      }

      if (v16 == v8)
      {
        goto LABEL_54;
      }

      v30 = v16[4];
      v28 = v16 + 4;
      v29 = v30;
      v31 = (*(v28 + 23) >= 0 ? v28 : v29);
      if (strcasecmp(v9, v31) < 0)
      {
        goto LABEL_54;
      }

      v32 = *v8;
      v15 = v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_54;
      }

      while (1)
      {
        while (1)
        {
          v6 = v32;
          v37 = v32[4];
          v35 = v32 + 4;
          v36 = v37;
          v38 = (*(v35 + 23) >= 0 ? v35 : v36);
          if ((strcasecmp(v9, v38) & 0x80000000) == 0)
          {
            break;
          }

          v32 = *v6;
          v15 = v6;
          if (!*v6)
          {
            goto LABEL_54;
          }
        }

        result = strcasecmp(v38, v9);
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        v32 = v6[1];
        if (!v32)
        {
LABEL_45:
          v15 = v6 + 1;
          goto LABEL_54;
        }
      }
    }
  }

  v11 = *v6;
  if (*v7 == v6)
  {
    v13 = v6;
  }

  else
  {
    if (v11)
    {
      v12 = *v6;
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v17 = v6;
      do
      {
        v13 = v17[2];
        v18 = *v13 == v17;
        v17 = v13;
      }

      while (v18);
    }

    if (*(v13 + 55) >= 0)
    {
      v19 = (v13 + 4);
    }

    else
    {
      v19 = v13[4];
    }

    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    result = strcasecmp(v19, v20);
    if ((result & 0x80000000) == 0)
    {
      v22 = *v8;
      v15 = v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_54;
      }

      while (1)
      {
        while (1)
        {
          v6 = v22;
          v25 = v22[4];
          v23 = v22 + 4;
          v24 = v25;
          v26 = (*(v23 + 23) >= 0 ? v23 : v24);
          if ((strcasecmp(v20, v26) & 0x80000000) == 0)
          {
            break;
          }

          v22 = *v6;
          v15 = v6;
          if (!*v6)
          {
            goto LABEL_54;
          }
        }

        result = strcasecmp(v26, v20);
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        v22 = v6[1];
        if (!v22)
        {
          goto LABEL_45;
        }
      }
    }
  }

  if (v11)
  {
    v21 = v13;
  }

  else
  {
    v21 = v6;
  }

  if (v11)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v6;
  }

  if (!*v15)
  {
    v6 = v21;
LABEL_54:
    v33 = operator new(0x40uLL);
    v34 = v33;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v33 + 32), *a4, *(a4 + 8));
    }

    else
    {
      *(v33 + 2) = *a4;
      *(v33 + 6) = *(a4 + 16);
    }

    *(v34 + 14) = *(a4 + 24);
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = v6;
    *v15 = v34;
    v39 = **v7;
    if (v39)
    {
      *v7 = v39;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v7[1], v34);
    ++v7[2];
  }

  return result;
}

void sub_1E530F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,__CFData const*>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t BBUICE16PersonalizationParameters::getFusingState(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (*(*v3 + 24))(v3);
    *a2 = capabilities::fusing::inferFusingStateFromCertID(v4);
    return 0;
  }

  else
  {
    *a2 = 0;
    return 3;
  }
}

uint64_t BBUICE16PersonalizationParameters::setPublicKeyHash(uint64_t a1, const __CFData *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 40) = a2;
  if (a2)
  {
    v5 = (*(*a2 + 16))(a2);
    a2 = BBUICEPersonalizationParameters::ICECertID::createFromPublicKeyHashData(v5, v6);
  }

  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = a2;
  return result;
}

void BBUICE16PersonalizationParameters::~BBUICE16PersonalizationParameters(BBUICE16PersonalizationParameters *this)
{
  BBUPersonalizationParameters::~BBUPersonalizationParameters(this);

  operator delete(v1);
}

uint64_t BBUPersonalizationParameters::setSerialNumber(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 32) = a2;
  return result;
}

void DaleController::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  v6 = operator new(0x30uLL);
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  ACFUTransport::ACFUTransport(v6);
  v7 = &unk_1F5F03E50;
  *v6 = &unk_1F5F03E50;
  *(v6 + 6) = 0;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  v8 = a1[1];
  v17 = *a1;
  v18 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *v6;
  }

  v9 = v7[9](v6, &v17);
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v9;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v9 = v11;
  }

  if ((v9 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize controller object\n", "DaleController", "create");
    goto LABEL_17;
  }

  v12 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v6 + 5);
  *(v6 + 4) = v12;
  *(v6 + 5) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v15 = *a3;
  *a3 = v6;
  if (v15)
  {
    v6 = v15;
LABEL_17:
    (*(*v6 + 64))(v6);
  }
}

void sub_1E530F57C(_Unwind_Exception *a1)
{
  v4 = *v1;
  (*(*v2 + 64))(v2);
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 64))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1E530F5F8(_Unwind_Exception *a1)
{
  operator delete(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController::init(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = ACFUTransport::init();
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v4;
    }
  }

  return result;
}

void DaleController::getBoardParameters(DaleController *this@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = 0;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0;
  if (a2)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v6 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: getting board parameters (preflight)...\n", "DaleController", "getBoardParameters");
    v7 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v7, 0, "%s::%s: preflight get board parameters not implemented yet, returning success...\n", "DaleController", "preflightGetBoardParameters");
    v36 = 0;
    v37 = 0;
    LODWORD(v38) = 0;
LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  if (*(this + 6) == 2)
  {
    v10 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v10, 0, "%s::%s: getting board parameters (loader)...\n", "DaleController", "getBoardParameters");
    v35 = 0xAAAAAAAAAAAAAAAALL;
    DaleController_Loader::create(&v35);
    if (v35)
    {
      DaleController_Loader::getBoardParameters(v35, a3, &v32);
      v12 = v32;
      v13 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v33;
        v36 = v12;
        v37 = v13;
        v15 = v34;
        LODWORD(v38) = v34;
        if (v33)
        {
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          v15 = v38;
        }
      }

      else
      {
        v36 = v32;
        v37 = 0;
        v15 = v34;
        LODWORD(v38) = v34;
      }

      if (v15)
      {
        v30 = ACFULogging::getLogInstance(v11);
        ACFULogging::handleMessage(v30, 2, "%s::%s: failed to get board params\n", "DaleController", "getBoardParameters");
        v22 = 0;
      }

      else
      {
        v15 = 1;
        v22 = 1;
      }
    }

    else
    {
      v27 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v27, 2, "%s::%s: failed to create loader object\n", "DaleController", "getBoardParameters");
      v22 = 0;
      v15 = 1;
    }

    v23 = v35;
    v35 = 0;
    if (v23)
    {
LABEL_26:
      (*(*v23 + 8))(v23);
    }

LABEL_27:
    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(v16, 0, "%s::%s: getting board parameters (rom)...\n", "DaleController", "getBoardParameters");
  v17 = (*(*this + 32))(this);
  if (!v17)
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    DaleController_BootROM::create(&v35);
    if (v35)
    {
      DaleController_BootROM::getBoardParameters(v35, &v32);
      v19 = v32;
      v20 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = v33;
        v36 = v19;
        v37 = v20;
        v15 = v34;
        LODWORD(v38) = v34;
        if (v33)
        {
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }

          v15 = v38;
        }
      }

      else
      {
        v36 = v32;
        v37 = 0;
        v15 = v34;
        LODWORD(v38) = v34;
      }

      if (v15)
      {
        v31 = ACFULogging::getLogInstance(v18);
        ACFULogging::handleMessage(v31, 2, "%s::%s: failed to get board params\n", "DaleController", "getBoardParameters");
        v22 = 0;
      }

      else
      {
        v15 = 1;
        v22 = 1;
      }
    }

    else
    {
      v29 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v29, 2, "%s::%s: failed to create bootrom object\n", "DaleController", "getBoardParameters");
      v22 = 0;
      v15 = 1;
    }

    v23 = v35;
    v35 = 0;
    if (v23)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v28 = ACFULogging::getLogInstance(v17);
  v15 = 1;
  ACFULogging::handleMessage(v28, 2, "%s::%s: failed to reset chip (ACFU error code = %d)\n", "DaleController", "getBoardParameters", 1);
LABEL_29:
  v24 = v36;
  v25 = v37;
  if (!v37)
  {
    *a4 = v36;
    *(a4 + 8) = 0;
    *(a4 + 16) = v15;
    v26 = v37;
    if (!v37)
    {
      return;
    }

    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  *a4 = v24;
  *(a4 + 8) = v25;
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a4 + 16) = v15;
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v37;
  if (v37)
  {
LABEL_35:
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }
}

void sub_1E530FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ACFULogging *DaleController::pushFirmware_BootROMStage(const DaleImage **this, const DaleFirmware *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: push firmware: bootrom stage\n", "DaleController", "pushFirmware_BootROMStage");
  DaleController_BootROM::create(&v11);
  v5 = v11;
  if (v11)
  {
    v6 = DaleController_BootROM::sendLoader(v11, this[20]);
    v7 = v6;
    if ((v6 & 1) == 0)
    {
      v10 = ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage(v10, 2, "%s::%s: failed to send loader\n", "DaleController", "pushFirmware_BootROMStage");
    }

    (*(*v5 + 8))(v5);
    return v7;
  }

  else
  {
    v9 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v9, 2, "%s::%s: failed to create bootrom object\n", "DaleController", "pushFirmware_BootROMStage");
    return 0;
  }
}

uint64_t std::optional<std::unordered_map<std::string,std::string>>::~optional(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_11:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_11;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t DaleController::pushFirmware(ACFULogging *a1, const void **a2)
{
  v2 = a2[1];
  v8[0] = *a2;
  v8[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v7[40] = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  result = DaleController::pushFirmware(a1, v8, v7, &v5);
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v4;
    }
  }

  return result;
}

void sub_1E530FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::optional<std::shared_ptr<BasebandBootLogger>>::~optional(va);
  std::optional<std::unordered_map<std::string,std::string>>::~optional(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 32);
  _Unwind_Resume(a1);
}

uint64_t DaleController::pushFirmware(ACFULogging *a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: pushing firmware...\n", "DaleController", "pushFirmware");
  if (*(a4 + 16) == 1)
  {
    v8 = a4[1];
    v84 = *a4;
    v85 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  if (!*a2)
  {
    v63 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v63, 2, "%s::%s: invalid firmware object\n");
LABEL_88:
    v14 = 0;
    v44 = 3001;
    goto LABEL_68;
  }

  if (!v9)
  {
    v64 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v64, 2, "%s::%s: failed to cast firmware object\n");
    goto LABEL_88;
  }

  v11 = v9;
  v12 = DaleController::pushFirmware_BootROMStage(v9, v10);
  if ((v12 & 1) == 0)
  {
    v65 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v65, 2, "%s::%s: failed to push firwmare (bootrom stage)\n");
    goto LABEL_88;
  }

  if (v84)
  {
    v13 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v13, 0, "%s::%s: [pl normal boot] start logging...\n", "DaleController", "pushFirmware");
    v12 = dispatch_group_create();
    v14 = v12;
    if (v12)
    {
      group = v12;
      dispatch_retain(v12);
      dispatch_group_enter(v14);
      (*(*v84 + 16))(v84, &group, 1);
      v12 = group;
      if (group)
      {
        dispatch_group_leave(group);
        v12 = group;
        if (group)
        {
          dispatch_release(group);
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v15, 0, "%s::%s: push firmware: loader stage\n", "DaleController", "pushFirmware_LoaderStage");
  v93 = 0;
  v92 = -1;
  v91 = 0xAAAAAAAAAAAAAAAALL;
  DaleController_Loader::create(&v91);
  if (!v91)
  {
    v66 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v66, 2, "%s::%s: failed to create loader object\n");
    goto LABEL_62;
  }

  Controller = TelephonyBasebandCreateController();
  v90 = Controller;
  if (!Controller)
  {
    v68 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v68, 2, "%s::%s: failed to create libtu controller object\n", "DaleController", "pushFirmware_LoaderStage");
    goto LABEL_62;
  }

  v18 = v91;
  LOBYTE(__p[0]) = 0;
  v89 = 0;
  if (*(a3 + 40) == 1)
  {
    *__p = 0u;
    *v87 = 0u;
    v88 = *(a3 + 32);
    prime = *(a3 + 8);
    if (prime == 1)
    {
      prime = 2;
LABEL_33:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(__p, prime);
LABEL_34:
      for (i = *(a3 + 16); i; i = *i)
      {
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(__p, i + 2, (i + 2));
      }

      v89 = 1;
      goto LABEL_37;
    }

    if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(*(a3 + 8));
      v20 = __p[1];
      v21 = prime >= __p[1];
      if (prime > __p[1])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
      v21 = 1;
      if (prime)
      {
        goto LABEL_33;
      }
    }

    if (v21)
    {
      goto LABEL_34;
    }

    v22 = vcvtps_u32_f32(v87[1] / v88);
    if (v20 < 3 || (v23 = vcnt_s8(v20), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v22 = std::__next_prime(v22);
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }
    }

    if (prime <= v22)
    {
      prime = v22;
    }

    if (prime >= v20)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_37:
  BasebandCapabilites = DaleController_Loader::getBasebandCapabilites(v18);
  v27 = BasebandCapabilites;
  if (v89 != 1)
  {
    goto LABEL_41;
  }

  v28 = v87[0];
  if (v87[0])
  {
    do
    {
      v37 = *v28;
      if (*(v28 + 63) < 0)
      {
        operator delete(v28[5]);
        if (*(v28 + 39) < 0)
        {
LABEL_54:
          operator delete(v28[2]);
        }
      }

      else if (*(v28 + 39) < 0)
      {
        goto LABEL_54;
      }

      operator delete(v28);
      v28 = v37;
    }

    while (v37);
  }

  BasebandCapabilites = __p[0];
  __p[0] = 0;
  if (BasebandCapabilites)
  {
    operator delete(BasebandCapabilites);
  }

LABEL_41:
  if (v27)
  {
    v29 = TelephonyBasebandSetBasebandProperty();
    v30 = WORD2(v27);
    if (v29)
    {
      v31 = 1;
      goto LABEL_44;
    }

    v70 = ACFULogging::getLogInstance(v29);
    ACFULogging::handleMessage(v70, 2, "%s::%s: failed to set baseband coredump capability in driver\n", "DaleController", "pushFirmware_LoaderStage");
  }

  else
  {
    v69 = ACFULogging::getLogInstance(BasebandCapabilites);
    ACFULogging::handleMessage(v69, 2, "%s::%s: failed to get baseband capabilities\n", "DaleController", "pushFirmware_LoaderStage");
    v30 = 0;
  }

  v31 = 0;
LABEL_44:
  CFRelease(Controller);
  if (!v31)
  {
    goto LABEL_62;
  }

  v32 = DaleController_Loader::setDeviceConfig(v91);
  if ((v32 & 1) == 0)
  {
    v71 = ACFULogging::getLogInstance(v32);
    ACFULogging::handleMessage(v71, 2, "%s::%s: failed to set device config\n");
    goto LABEL_62;
  }

  BootMode = DaleController_Loader::getBootMode(v91, &v92, &v93);
  if ((BootMode & 1) == 0)
  {
    v72 = ACFULogging::getLogInstance(BootMode);
    ACFULogging::handleMessage(v72, 2, "%s::%s: failed to get boot mode\n");
    goto LABEL_62;
  }

  v34 = ACFULogging::getLogInstance(BootMode);
  v35 = v92;
  if ((v92 + 1) > 3u)
  {
    v36 = "???";
  }

  else
  {
    v36 = off_1E876E8D0[(v92 + 1)];
  }

  v38 = ACFULogging::handleMessage(v34, 0, "%s::%s: boot mode: %s\n", "DaleController", "pushFirmware_LoaderStage", v36);
  if ((v35 | 2) != 2)
  {
    v41 = ACFULogging::getLogInstance(v38);
    ACFULogging::handleMessage(v41, 2, "%s::%s: invalid boot mode\n");
    goto LABEL_62;
  }

  if (v93)
  {
    v73 = ACFULogging::getLogInstance(v38);
    ACFULogging::handleMessage(v73, 2, "%s::%s: fatal error: exception type present in cold boot\n");
    goto LABEL_62;
  }

  if (!v35)
  {
    v50 = v91;
    v51 = (*(*v11 + 10))(v11);
    v52 = DaleController_Loader::processDDR(v50, v51, 1);
    if (v52)
    {
      v53 = DaleController_Loader::sendImage_BBTicket(v91, v11[22], 0);
      if (v53)
      {
        v54 = DaleController_Loader::sendImage_BBCfgHashTable(v91, v11[23]);
        if (v54)
        {
          v55 = v91;
          v56 = (*(*v11 + 11))(v11, v30);
          v57 = DaleController_Loader::sendImage_BBCfgSegment(v55, v56);
          if (v57)
          {
            v58 = DaleController_Loader::sendImage_Bundle(v91, v11[25]);
            if (v58)
            {
              goto LABEL_79;
            }

            v82 = ACFULogging::getLogInstance(v58);
            ACFULogging::handleMessage(v82, 2, "%s::%s: failed to send modem bundle image\n");
          }

          else
          {
            v81 = ACFULogging::getLogInstance(v57);
            ACFULogging::handleMessage(v81, 2, "%s::%s: failed to send bbcfg segment image\n");
          }
        }

        else
        {
          v80 = ACFULogging::getLogInstance(v54);
          ACFULogging::handleMessage(v80, 2, "%s::%s: failed to send bbcfg hash-table image\n");
        }
      }

      else
      {
        v79 = ACFULogging::getLogInstance(v53);
        ACFULogging::handleMessage(v79, 2, "%s::%s: failed to send bbticket\n");
      }
    }

    else
    {
      v78 = ACFULogging::getLogInstance(v52);
      ACFULogging::handleMessage(v78, 2, "%s::%s: failed to process ddr\n");
    }

LABEL_62:
    v42 = 0;
    v43 = v91;
    v91 = 0;
    if (!v43)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v39 = DaleController_Loader::verifyFastBootStatus(v91);
  if ((v39 & 1) == 0)
  {
    v40 = ACFULogging::getLogInstance(v39);
    ACFULogging::handleMessage(v40, 2, "%s::%s: failed to verify fastboot status\n");
    goto LABEL_62;
  }

LABEL_79:
  v59 = DaleController_Loader::sendImage_Calibration(v91, v11[26]);
  if ((v59 & 1) == 0)
  {
    v74 = ACFULogging::getLogInstance(v59);
    ACFULogging::handleMessage(v74, 2, "%s::%s: failed to send calibration image\n");
    goto LABEL_62;
  }

  v60 = DaleController_Loader::sendImage_ProvisioningManifest(v91, v11[29]);
  if ((v60 & 1) == 0)
  {
    v75 = ACFULogging::getLogInstance(v60);
    ACFULogging::handleMessage(v75, 2, "%s::%s: failed to send provisioning image\n");
    goto LABEL_62;
  }

  v61 = DaleController_Loader::sendImage_Nvram(v91, v11[27], 2);
  if ((v61 & 1) == 0)
  {
    v76 = ACFULogging::getLogInstance(v61);
    ACFULogging::handleMessage(v76, 2, "%s::%s: failed to send nvram dynamic image\n");
    goto LABEL_62;
  }

  v62 = DaleController_Loader::sendImage_Bundle(v91, v11[28]);
  if ((v62 & 1) == 0)
  {
    v77 = ACFULogging::getLogInstance(v62);
    ACFULogging::handleMessage(v77, 2, "%s::%s: failed to send system bundle image\n");
    goto LABEL_62;
  }

  v42 = 1;
  v43 = v91;
  v91 = 0;
  if (v43)
  {
LABEL_63:
    v43 = (*(*v43 + 8))(v43);
  }

LABEL_64:
  if (v42)
  {
    v44 = 0;
    if (!v14)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v67 = ACFULogging::getLogInstance(v43);
    ACFULogging::handleMessage(v67, 2, "%s::%s: failed to push firwmare (loader stage)\n", "DaleController", "pushFirmware");
    v44 = 3001;
    if (!v14)
    {
      goto LABEL_68;
    }
  }

  v45 = dispatch_time(0, 5000000000);
  v46 = dispatch_group_wait(v14, v45);
  if (v46)
  {
    v47 = ACFULogging::getLogInstance(v46);
    ACFULogging::handleMessage(v47, 2, "%s::%s: [PL normal boot] timeout on pl log\n", "DaleController", "pushFirmware");
  }

LABEL_68:
  v48 = v85;
  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  return v44;
}

void sub_1E5310658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22)
{
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a22);
  v25 = *(v23 - 96);
  *(v23 - 96) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    if (!v22)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v22);
  _Unwind_Resume(a1);
}

uint64_t DaleController::collectExceptionInfo(ACFUDiagnostics **a1, const DaleImage **this, char a3, char **a4, uint64_t *a5)
{
  if (*(a5 + 16) == 1)
  {
    v9 = *a5;
    v8 = a5[1];
    v76 = *a5;
    v77 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v76 = 0;
    v77 = 0;
  }

  if (!this)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid firmware object\n");
LABEL_62:
    v51 = 3001;
    goto LABEL_89;
  }

  v10 = DaleController::pushFirmware_BootROMStage(this, this);
  if ((v10 & 1) == 0)
  {
    v50 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v50, 2, "%s::%s: failed to push firwmare (bootrom stage)\n");
    goto LABEL_62;
  }

  if (v9)
  {
    v11 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v11, 0, "%s::%s: [pl coredump] start logging...\n", "DaleController", "collectExceptionInfo");
    v10 = dispatch_group_create();
    v12 = v10;
    if (v10)
    {
      group = v10;
      dispatch_retain(v10);
      dispatch_group_enter(v12);
      (*(*v9 + 16))(v9, &group, 1);
      v10 = group;
      if (group)
      {
        dispatch_group_leave(group);
        v10 = group;
        if (group)
        {
          dispatch_release(group);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage(v13, 0, "%s::%s: coredump collection: loader stage\n", "DaleController", "exception_LoaderStage");
  LOBYTE(v84) = 0;
  v82 = -1;
  v83.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  DaleController_Loader::create(&v83);
  if (!v83.__r_.__value_.__r.__words[0])
  {
    v52 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v52, 2, "%s::%s: failed to create loader object\n");
    goto LABEL_79;
  }

  LOBYTE(__p) = 0;
  v81 = 0;
  BasebandCapabilites = DaleController_Loader::getBasebandCapabilites(v83.__r_.__value_.__l.__data_);
  v15 = BasebandCapabilites;
  if (v81 == 1)
  {
    v16 = v80;
    if (!v80)
    {
LABEL_22:
      BasebandCapabilites = __p;
      __p = 0;
      if (BasebandCapabilites)
      {
        operator delete(BasebandCapabilites);
      }

      goto LABEL_24;
    }

    while (1)
    {
      v17 = *v16;
      if (v16[63] < 0)
      {
        operator delete(*(v16 + 5));
        if ((v16[39] & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        operator delete(*(v16 + 2));
        operator delete(v16);
        v16 = v17;
        if (!v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v16[39] < 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        operator delete(v16);
        v16 = v17;
        if (!v17)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_24:
  if ((v15 & 1) == 0)
  {
    v54 = ACFULogging::getLogInstance(BasebandCapabilites);
    ACFULogging::handleMessage(v54, 2, "%s::%s: failed to get baseband capabilities\n", "DaleController", "exception_LoaderStage");
    v31 = 0;
    v32 = v83.__r_.__value_.__r.__words[0];
    v83.__r_.__value_.__r.__words[0] = 0;
    if (!v32)
    {
      goto LABEL_40;
    }

LABEL_39:
    v32 = (*(*v32 + 8))(v32);
    goto LABEL_40;
  }

  v18 = DaleController_Loader::setDeviceConfig(v83.__r_.__value_.__l.__data_);
  if (v18)
  {
    BootMode = DaleController_Loader::getBootMode(v83.__r_.__value_.__l.__data_, &v82, &v84);
    if (BootMode)
    {
      v20 = ACFULogging::getLogInstance(BootMode);
      v21 = v82;
      if ((v82 + 1) > 3u)
      {
        v22 = "???";
      }

      else
      {
        v22 = off_1E876E8D0[(v82 + 1)];
      }

      v23 = v84;
      v24 = ACFULogging::handleMessage(v20, 0, "%s::%s: boot mode: %s, exctype: 0x%x\n", "DaleController", "exception_LoaderStage", v22, v84);
      if (v21 == 1)
      {
        if (v23)
        {
          CrashReason = DaleController_Loader::getCrashReason(v83.__r_.__value_.__l.__data_, a4);
          if (CrashReason)
          {
            if (a3)
            {
              goto LABEL_38;
            }

            if ((v15 & 0x10000) != 0)
            {
              v26 = v83.__r_.__value_.__r.__words[0];
              v27 = (*(*this + 10))(this);
              v28 = DaleController_Loader::processDDR(v26, v27, 0);
              if (v28)
              {
                v29 = DaleController_Loader::sendImage_BBTicket(v83.__r_.__value_.__l.__data_, this[22], 0);
                if (v29)
                {
                  v30 = DaleController_Loader::sendImage_Bundle(v83.__r_.__value_.__l.__data_, this[28]);
                  if (v30)
                  {
LABEL_38:
                    v31 = 1;
                    v32 = v83.__r_.__value_.__r.__words[0];
                    v83.__r_.__value_.__r.__words[0] = 0;
                    if (!v32)
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_39;
                  }

                  v66 = ACFULogging::getLogInstance(v30);
                  ACFULogging::handleMessage(v66, 2, "%s::%s: failed to send system bundle image\n");
                }

                else
                {
                  v65 = ACFULogging::getLogInstance(v29);
                  ACFULogging::handleMessage(v65, 2, "%s::%s: failed to send bbticket\n");
                }
              }

              else
              {
                v64 = ACFULogging::getLogInstance(v28);
                ACFULogging::handleMessage(v64, 2, "%s::%s: failed to process ddr\n");
              }
            }

            else
            {
              v63 = ACFULogging::getLogInstance(CrashReason);
              ACFULogging::handleMessage(v63, 2, "%s::%s: baseband coredump collection not supported in firmware\n");
            }
          }

          else
          {
            v59 = ACFULogging::getLogInstance(CrashReason);
            ACFULogging::handleMessage(v59, 2, "%s::%s: failed to get crash reason\n");
          }
        }

        else
        {
          v58 = ACFULogging::getLogInstance(v24);
          ACFULogging::handleMessage(v58, 2, "%s::%s: fatal error: exception info not present during coredump collection\n");
        }
      }

      else
      {
        v57 = ACFULogging::getLogInstance(v24);
        ACFULogging::handleMessage(v57, 2, "%s::%s: invalid boot mode\n");
      }
    }

    else
    {
      v56 = ACFULogging::getLogInstance(BootMode);
      ACFULogging::handleMessage(v56, 2, "%s::%s: failed to get boot mode\n");
    }
  }

  else
  {
    v55 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to set device config\n");
  }

LABEL_79:
  v31 = 0;
  v32 = v83.__r_.__value_.__r.__words[0];
  v83.__r_.__value_.__r.__words[0] = 0;
  if (v32)
  {
    goto LABEL_39;
  }

LABEL_40:
  if ((v31 & 1) == 0)
  {
    v53 = ACFULogging::getLogInstance(v32);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to push firwmare (coredump loader stage)\n");
LABEL_74:
    v51 = 3001;
    goto LABEL_85;
  }

  if (a3)
  {
    goto LABEL_84;
  }

  v33 = a1[1];
  v84 = 0;
  v34 = ACFUDiagnostics::copyDiagnosticsPath(v33);
  v36 = v34;
  v84 = v34;
  if (!v34)
  {
    v60 = ACFULogging::getLogInstance(0);
    v42 = ACFULogging::handleMessage(v60, 2, "%s::%s: invalid coredump path\n", "DaleController", "coredump");
    goto LABEL_73;
  }

  v37 = ACFUCommon::stringFromCFString(&__p, v34, v35);
  v38 = __p;
  v39 = v79;
  v40 = v80;
  if (v80 >= 0)
  {
    v41 = HIBYTE(v80);
  }

  else
  {
    v41 = v79;
  }

  if (!v41)
  {
    v62 = ACFULogging::getLogInstance(v37);
    ACFULogging::handleMessage(v62, 2, "%s::%s: failed to get coredump save directory in str format\n", "DaleController", "coredump");
  }

  CFRelease(v36);
  if (!v41)
  {
LABEL_82:
    v48 = 0;
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_58;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v83, v38, v39);
  }

  else
  {
    v83.__r_.__value_.__r.__words[0] = v38;
    v83.__r_.__value_.__l.__size_ = v39;
    v83.__r_.__value_.__r.__words[2] = v40;
  }

  v43 = DaleController_ExceptionDump::create(&v83, &__p);
  v44 = __p;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (!v44)
  {
    v67 = ACFULogging::getLogInstance(v43);
    v42 = ACFULogging::handleMessage(v67, 2, "%s::%s: failed to create exception dump object\n", "DaleController", "coredump");
    goto LABEL_82;
  }

  v45 = DaleController_ExceptionDump::handshake(v44);
  if (v45)
  {
    v46 = ACFULogging::getLogInstance(v45);
    ACFULogging::handleMessage(v46, 0, "%s::%s: coredump transfer handshake successful; starting transfer...\n", "DaleController", "coredump");
    v47 = DaleController_ExceptionDump::transfer(v44);
    if (v47)
    {
      v48 = 1;
      v42 = (*(*v44 + 8))(v44);
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_83;
    }

    v73 = ACFULogging::getLogInstance(v47);
    ACFULogging::handleMessage(v73, 2, "%s::%s: failed to transfer coredump content\n");
  }

  else
  {
    v72 = ACFULogging::getLogInstance(v45);
    ACFULogging::handleMessage(v72, 2, "%s::%s: failed to establish handshake message\n");
  }

  v48 = 0;
  v42 = (*(*v44 + 8))(v44);
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_83:
    operator delete(v38);
    if (v48)
    {
      goto LABEL_84;
    }

LABEL_73:
    v61 = ACFULogging::getLogInstance(v42);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed to transfer coredump\n");
    goto LABEL_74;
  }

LABEL_58:
  if ((v48 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_84:
  v51 = 0;
LABEL_85:
  if (v12)
  {
    v68 = dispatch_time(0, 5000000000);
    v69 = dispatch_group_wait(v12, v68);
    if (v69)
    {
      v70 = ACFULogging::getLogInstance(v69);
      ACFULogging::handleMessage(v70, 2, "%s::%s: [pl coredump] timeout on pl log\n", "DaleController", "collectExceptionInfo");
    }

    dispatch_release(v12);
  }

LABEL_89:
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return v51;
}