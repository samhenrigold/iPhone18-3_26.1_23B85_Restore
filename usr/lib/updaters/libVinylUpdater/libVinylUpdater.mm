VinylRestore *VinylRestore::create(VinylRestore *this, const __CFDictionary *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: VinylUpdater Version: %s\n", "VinylRestore", "create", "VinylRestore-144~7392");
  ACFULogging::getLogInstance(v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, "VinylRestore");
  v5 = std::string::append(&v15, "::", 2uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, "create", 6uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18 = v7->__r_.__value_.__r.__words[2];
  v17 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v9 = operator new(0x168uLL);
  VinylRestore::VinylRestore(v9);
  v10 = (*(*v9 + 40))(v9, this, @"eUICC,Ticket");
  if (v10)
  {
    v11 = v10;
    v12 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v12, 2, "%s::%s: Failed to initialize restore object (%d)\n", "VinylRestore", "create", v11);
    v10 = (*(*v9 + 8))(v9);
    v9 = 0;
  }

  v13 = ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage(v13, 4, "%s::%s: leaving: %s\n", "VinylRestore", "create", "create");
  return v9;
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

uint64_t VinylRestore::queryCmd@<X0>(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  isPreflight = ACFURestore::isPreflight(this);
  isNeRDOS = ACFURestore::isNeRDOS(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: isPreflight: %d isNeRDOS() %d\n", "VinylRestore", "queryCmd", isPreflight, isNeRDOS);
  if (ACFURestore::isPreflight(this) && (ACFURestore::isNeRDOS(this) & 1) == 0)
  {
    PersoParameters = ((*this)[2])(this);
    *a2 = PersoParameters;
    *(a2 + 8) = PersoParameters != 0;
  }

  else
  {
    PersoParameters = this[21];
    if (PersoParameters)
    {
      if (PersoParameters)
      {
        v8 = this[22];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        PersoParameters = VinylTransport::getPersoParameters(&v18, PersoParameters);
        *a2 = v18;
        *(a2 + 8) = BYTE8(v18);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }
    }
  }

  ACFULogging::getLogInstance(PersoParameters);
  std::string::basic_string[abi:ne200100]<0>(&v16, "VinylRestore");
  v9 = std::string::append(&v16, "::", 2uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v17, "queryCmd", 8uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v19 = v11->__r_.__value_.__r.__words[2];
  v18 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v14 = ACFULogging::getLogInstance(v13);
  return ACFULogging::handleMessage(v14, 0, "%s::%s: success value %d\n", "VinylRestore", "queryCmd", *(a2 + 8));
}

void sub_299F8D624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylRestore::getPreflightPersoParameters@<X0>(VinylRestore *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 16))(this);
  *a2 = result;
  *(a2 + 8) = result != 0;
  return result;
}

uint64_t VinylRestore::performCmd(const __CFDictionary **this)
{
  ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v12, "VinylRestore");
  v2 = std::string::append(&v12, "::", 2uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, "performCmd", 0xAuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v15 = v4->__r_.__value_.__r.__words[2];
  v14 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  updated = this[21];
  if (!updated)
  {
    goto LABEL_16;
  }

  if (!updated)
  {
    goto LABEL_16;
  }

  v7 = this[22];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updated = VinylTransport::updateFw(updated, this[15]);
  v8 = updated;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!v8)
  {
    v9 = 1;
  }

  else
  {
LABEL_16:
    updated = VinylRestore::performCmd(updated);
    v9 = 0;
  }

  LogInstance = ACFULogging::getLogInstance(updated);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: leaving: VinylRestore: %s\n", "VinylRestore", "performCmd", "performCmd");
  return v9;
}

void sub_299F8D880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void VinylRestore::~VinylRestore(VinylRestore *this)
{
  *this = &unk_2A2030F68;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: VinylRestore: deconstructor\n", "VinylRestore", "~VinylRestore");

  ACFURestore::~ACFURestore(this);
}

{
  VinylRestore::~VinylRestore(this);

  operator delete(v1);
}

void VinylRestore::VinylRestore(VinylRestore *this)
{
  ACFURestore::ACFURestore(this);
  *v1 = &unk_2A2030F68;
  LogInstance = ACFULogging::getLogInstance(v1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: VinylRestore: constructor\n", "VinylRestore", "VinylRestore");
}

__CFDictionary *VinylRestore::gatherPreflightParameters(VinylRestore *this)
{
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v1 = MGCopyAnswer();
  v2 = v1;
  if (!v1)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: basebandFirmwareUpdateInfoDict is NULL\n");
    return 0;
  }

  ACFULogging::getLogInstance(v1);
  std::string::basic_string[abi:ne200100]<0>(&v45, "VinylRestore");
  v3 = std::string::append(&v45, "::", 2uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v46, "gatherPreflightParameters", 0x19uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v48 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  Value = CFDictionaryGetValue(v2, @"kVinylFwUpdateKeyId");
  v8 = CFGetTypeID(Value);
  TypeID = CFDataGetTypeID();
  if (v8 != TypeID || (TypeID = CFDataGetLength(Value), TypeID <= 0x13))
  {
    v39 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v39, 2, "%s::%s: Invalid certIdentifier in \n");
    return 0;
  }

  v10 = CFDictionaryGetValue(v2, @"kVinylFwUpdateKeyId");
  BytePtr = CFDataGetBytePtr(v10);
  v12 = *MEMORY[0x29EDB8ED8];
  v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], BytePtr, 20, *MEMORY[0x29EDB8EE8]);
  v14 = v13;
  v49 = v13;
  if (!v13)
  {
    v42 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v42, 2, "%s::%s: Failed to extract certIdentifier\n");
    return 0;
  }

  ACFULogging::getLogInstance(v13);
  std::string::basic_string[abi:ne200100]<0>(&v45, "VinylRestore");
  v15 = std::string::append(&v45, "::", 2uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v46, "gatherPreflightParameters", 0x19uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v48 = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v50 = Mutable;
  v20 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v21 = v20;
  v51 = v20;
  if (Mutable && v20)
  {
    v22 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v22)
    {
      v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateCsn");
      if (v23 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateEuiccChipId")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateMainFwNonce")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwNonce")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateLoaderVersion")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwMac")) != 0)
      {
        v24 = CFDictionaryGetValue(v2, @"kVinylFwUpdateCsn");
        CFDictionarySetValue(v22, @"eUICC,EID", v24);
        v25 = CFDictionaryGetValue(v2, @"kVinylFwUpdateEuiccChipId");
        CFDictionarySetValue(v22, @"eUICC,ChipID", v25);
        v26 = CFDictionaryGetValue(v2, @"kVinylFwUpdateMainFwNonce");
        CFDictionarySetValue(Mutable, @"Nonce", v26);
        CFDictionarySetValue(v22, @"eUICC,Main", Mutable);
        v27 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwNonce");
        CFDictionarySetValue(v21, @"Nonce", v27);
        CFDictionarySetValue(v22, @"eUICC,Gold", v21);
        CFDictionarySetValue(v22, @"eUICC,RootKeyIdentifier", v14);
        v28 = CFDictionaryGetValue(v2, @"kVinylFwUpdateLoaderVersion");
        CFDictionarySetValue(v22, @"eUICC,FirmwareLoaderVersion", v28);
        v29 = CFDictionaryGetValue(v2, @"kVinylFwUpdateMainFwMac");
        CFDictionarySetValue(v22, @"eUICC,MainFwMac", v29);
        v30 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwMac");
        CFDictionarySetValue(v22, @"eUICC,GoldFwMac", v30);
        v31 = MGCopyAnswer();
        if (v31)
        {
          CFDictionarySetValue(v22, @"eUICC,ApProductionMode", v31);
          CFDictionarySetValue(v22, @"@eUICC,Ticket", *MEMORY[0x29EDB8F00]);
          ACFULogging::getLogInstance(v32);
          std::string::basic_string[abi:ne200100]<0>(&v45, "VinylRestore");
          v33 = std::string::append(&v45, "::", 2uLL);
          v34 = *&v33->__r_.__value_.__l.__data_;
          v46.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v46.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = std::string::append(&v46, "gatherPreflightParameters", 0x19uLL);
          v36 = *&v35->__r_.__value_.__l.__data_;
          v48 = v35->__r_.__value_.__r.__words[2];
          *__p = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType();
          if (SHIBYTE(v48) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v44 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v44, 2, "%s::%s: kMGQSigningFuse returned NULL\n");
        }
      }

      else
      {
        v38 = ACFULogging::getLogInstance(v23);
        ACFULogging::handleMessage(v38, 2, "%s::%s: missing mandatory euicc parameters for personalization\n");
      }

      goto LABEL_33;
    }

    v43 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v43, 2, "%s::%s: Failed to alloc memory for vinyl dictionary\n");
  }

  else
  {
    v40 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v40, 2, "%s::%s: Failed to alloc memory for main/gold entries\n");
  }

  v22 = 0;
LABEL_33:
  CFRelease(v14);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

void sub_299F8E07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v30 - 88));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v30 - 80));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v30 - 72));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
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

uint64_t VinylRestore::init(CFDictionaryRef *this, const __CFDictionary *a2, const void *a3)
{
  v76 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylRestore", "init", "init");
  if (ACFURestore::isNeRDOS(this))
  {
    v69.__r_.__value_.__r.__words[0] = 0;
    Value = CFDictionaryGetValue(a2, @"Options");
    v8 = *MEMORY[0x29EDB8ED8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, Value);
    v72 = MutableCopy;
    v10 = CFDictionaryCreateMutableCopy(v8, 0, a2);
    v11 = *MEMORY[0x29EDB8F00];
    v69.__r_.__value_.__r.__words[0] = v10;
    CFDictionarySetValue(MutableCopy, @"BootedUpdate", v11);
    CFDictionaryReplaceValue(v10, @"Options", MutableCopy);
    ACFULogging::getLogInstance(v12);
    std::string::basic_string[abi:ne200100]<0>(&v70, "VinylRestore");
    v13 = std::string::append(&v70, "::", 2uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v71.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v71.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v71, "init", 4uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v74 = v15->__r_.__value_.__r.__words[2];
    v73 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    v17 = ACFURestore::init(this, v10, a3);
    v18 = v17;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v17 = ACFURestore::init(this, a2, a3);
    v18 = v17;
  }

  if (v18)
  {
    v52 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v52, 2, "%s::%s: ACFURestore init failed\n", "VinylRestore", "init");
    return v18;
  }

  v19 = CFDictionaryContainsKey(this[16], @"RestoreSystemPartition");
  if (v19)
  {
    v20 = CFDictionaryGetValue(this[16], @"RestoreSystemPartition");
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v20))
    {
      return 4002;
    }
  }

  else
  {
    v22 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v22, 0, "%s::%s: ACFURestorePartition key not present in updateroptions, defaulting it to empty string\n", "VinylRestore", "init");
    v20 = &stru_2A2032B88;
  }

  if (CFDictionaryContainsKey(this[16], @"DebugLogPath"))
  {
    v23 = CFDictionaryGetValue(this[16], @"DebugLogPath");
    v24 = CFGetTypeID(v23);
    v25 = CFStringGetTypeID();
    if (v24 != v25)
    {
      v57 = ACFULogging::getLogInstance(v25);
      ACFULogging::handleMessage(v57, 2, "%s::%s: unexpected debug log path type\n", "VinylRestore", "init");
      return 4002;
    }
  }

  isPreflight = ACFURestore::isPreflight(this);
  if (isPreflight)
  {
    isPreflight = ACFURestore::isNeRDOS(this);
    if (!isPreflight)
    {
      v45 = this[24];
      v59 = this[23];
      v60 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      VinylTransport::createTransport(&v59, this[17], &v73);
      std::shared_ptr<ACFUTransport>::operator=[abi:ne200100]<VinylTransport,std::default_delete<VinylTransport>,0>(this + 21, &v73);
      v46 = v73;
      *&v73 = 0;
      if (v46)
      {
        (*(*v46 + 64))(v46);
      }

      v47 = v60;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      if (!this[21])
      {
        v58 = ACFULogging::getLogInstance(v47);
        ACFULogging::handleMessage(v58, 2, "%s::%s: Could not create VinylTransport\n", "VinylRestore", "init");
        return 4008;
      }

      v48 = ACFULogging::getLogInstance(v47);
      ACFULogging::handleMessage(v48, 0, "%s::%s: Initializing VinylRestore for preflight\n", "VinylRestore", "init");
      v42 = 0;
      goto LABEL_65;
    }
  }

  LODWORD(v73) = 1;
  *&v75.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v73 + 1) = 0;
  v74 = 0;
  v75.__r_.__value_.__r.__words[0] = &v75.__r_.__value_.__l.__size_;
  LOWORD(v72) = 1;
  ACFULogging::getLogInstance(isPreflight);
  std::string::basic_string[abi:ne200100]<0>(&v69, "VinylRestore");
  v27 = std::string::append(&v69, "::", 2uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v70, "init", 4uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(v20, @"/usr/standalone/firmware/Vinyl/", v31);
  if (!URLByAppendingStrings)
  {
    v53 = ACFULogging::getLogInstance(0);
    v41 = 0;
    ACFULogging::handleMessage(v53, 2, "%s::%s: Failed to get a restore mount point to create FW object with\n", "VinylRestore", "init");
    v18 = 4000;
    goto LABEL_79;
  }

  *(&v73 + 1) = @"eUICC,Ticket";
  v74 = URLByAppendingStrings;
  getVinylTatsuTagToFileNameMap(&v71);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v75, v75.__r_.__value_.__l.__size_);
  size = v71.__r_.__value_.__l.__size_;
  v75 = v71;
  if (v71.__r_.__value_.__r.__words[2])
  {
    *(v71.__r_.__value_.__l.__size_ + 16) = &v75.__r_.__value_.__l.__size_;
    v71.__r_.__value_.__r.__words[0] = &v71.__r_.__value_.__l.__size_;
    *&v71.__r_.__value_.__r.__words[1] = 0uLL;
    size = 0;
  }

  else
  {
    v75.__r_.__value_.__r.__words[0] = &v75.__r_.__value_.__l.__size_;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v71, size);
  RTKitFirmware::create();
  std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(this + 19, &v71);
  v34 = v71.__r_.__value_.__r.__words[0];
  v71.__r_.__value_.__r.__words[0] = 0;
  if (v34)
  {
    v34 = (*(*v34 + 56))(v34);
  }

  if (!this[19])
  {
    v54 = ACFULogging::getLogInstance(v34);
    v41 = 0;
    ACFULogging::handleMessage(v54, 2, "%s::%s: Could not create RTKitFirmware\n", "VinylRestore", "init");
    v18 = 1000;
    goto LABEL_79;
  }

  v35 = this[24];
  v67 = this[23];
  v68 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  VinylTransport::createTransport(&v67, this[17], &v71);
  std::shared_ptr<ACFUTransport>::operator=[abi:ne200100]<VinylTransport,std::default_delete<VinylTransport>,0>(this + 21, &v71);
  v36 = v71.__r_.__value_.__r.__words[0];
  v71.__r_.__value_.__r.__words[0] = 0;
  if (v36)
  {
    (*(*v36 + 64))(v36);
  }

  v37 = v68;
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (!this[21])
  {
    v55 = ACFULogging::getLogInstance(v37);
    v41 = 0;
    ACFULogging::handleMessage(v55, 2, "%s::%s: Could not create VinylTransport\n", "VinylRestore", "init");
LABEL_78:
    v18 = 4008;
LABEL_79:
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v75, v75.__r_.__value_.__l.__size_);
    if (!v41)
    {
      return v18;
    }

    goto LABEL_71;
  }

  v38 = this[22];
  v65 = this[21];
  v66 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = this[20];
  v63 = this[19];
  v64 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = this[24];
  v61 = this[23];
  v62 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFURTKitROM::create();
  v41 = v71.__r_.__value_.__l.__size_;
  v42 = v71.__r_.__value_.__r.__words[0];
  *&v71.__r_.__value_.__l.__data_ = 0uLL;
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v43 = v66;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (!v42)
  {
    v56 = ACFULogging::getLogInstance(v43);
    ACFULogging::handleMessage(v56, 2, "%s::%s: failed to initialize update operations\n", "VinylRestore", "init");
    goto LABEL_78;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v75, v75.__r_.__value_.__l.__size_);
  if (v41)
  {
    v44 = 0;
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    LODWORD(v73) = 0;
    *(&v73 + 1) = v42;
    v74 = v41;
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_66;
  }

LABEL_65:
  v41 = 0;
  LODWORD(v73) = 0;
  v44 = 1;
  *(&v73 + 1) = v42;
  v74 = 0;
LABEL_66:
  LOWORD(v75.__r_.__value_.__l.__data_) = 3;
  v75.__r_.__value_.__s.__data_[2] = 1;
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(this + 3, &v73, &v75.__r_.__value_.__r.__words[1]);
  v49 = v74;
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if ((v44 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v50 = ACFULogging::getLogInstance(v49);
  ACFULogging::handleMessage(v50, 4, "%s::%s: leaving: VinylRestore: %s\n", "VinylRestore", "init", "init");
  v18 = 0;
  if (v41)
  {
LABEL_71:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  return v18;
}

void sub_299F8E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v42 = *(v40 - 160);
  *(v40 - 160) = 0;
  if (v42)
  {
    VinylRestore::init(v42);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2030FC0;
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

void *std::shared_ptr<ACFUTransport>::operator=[abi:ne200100]<VinylTransport,std::default_delete<VinylTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2031020;
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

uint64_t VinylRestore::updateAllowed(VinylRestore *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = *(this + 22);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  Value = CFDictionaryGetValue(*(this + 17), @"BasebandUpdater");
  ctu::cf::dict_adapter::dict_adapter(v35, Value);
  v6 = ctu::cf::dict_adapter::dict_adapter(v34, *(this + 17));
  LogInstance = ACFULogging::getLogInstance(v6);
  isPreflight = ACFURestore::isPreflight(this);
  isNeRDOS = ACFURestore::isNeRDOS(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: isPreflight: %d isNeRDOS() %d\n", "VinylRestore", "updateAllowed", isPreflight, isNeRDOS);
  Bool = ctu::cf::map_adapter::getBool(v35, @"VinylSkipAll");
  v11 = ctu::cf::map_adapter::getBool(v34, @"UpdateBaseband");
  v12 = ACFURestore::isPreflight(this);
  if (v12 && (v12 = ACFURestore::isNeRDOS(this), (v12 & 1) == 0))
  {
    v17 = MGCopyAnswer();
    v18 = v17;
    if (v17)
    {
      ACFULogging::getLogInstance(v17);
      std::string::basic_string[abi:ne200100]<0>(&v30, "VinylRestore");
      v19 = std::string::append(&v30, "::", 2uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v31, "updateAllowed", 0xDuLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v33 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      v17 = CFDictionaryGetValue(v18, @"kVinylFwUpdateCsn");
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    v24 = ACFULogging::getLogInstance(v17);
    v12 = ACFULogging::handleMessage(v24, 0, "%s::%s: basebandFirmwareUpdateInfoDict is valid %d, csn is valid: %d\n", "VinylRestore", "updateAllowed", v18 != 0, v23 != 0);
    if (!v23)
    {
      goto LABEL_10;
    }

    v25 = ACFULogging::getLogInstance(v12);
    v26 = CFGetTypeID(v23);
    TypeID = CFDataGetTypeID();
    Length = CFDataGetLength(v23);
    ACFULogging::handleMessage(v25, 0, "%s::%s: csn is datatype: %d, Length of CSN  %ld\n", "VinylRestore", "updateAllowed", v26 == TypeID, Length);
    v29 = CFGetTypeID(v23);
    v12 = CFDataGetTypeID();
    if (v29 != v12)
    {
      goto LABEL_10;
    }

    v12 = CFDataGetLength(v23);
    v13 = v12 > 0;
  }

  else
  {
    if (Bool & 1 | ((v11 & 1) == 0))
    {
LABEL_10:
      v13 = 0;
      goto LABEL_12;
    }

    v14 = ACFURestore::isNeRDOS(this);
    v12 = VinylTransport::checkVinylPresence(v3, v14);
    v13 = v12;
  }

LABEL_12:
  v15 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v15, 0, "%s::%s: skipAll: %d updateBaseband %d vinylPresent %d\n", "VinylRestore", "updateAllowed", Bool, v11, v13);
  MEMORY[0x29C2B8210](v34);
  MEMORY[0x29C2B8210](v35);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return (Bool ^ 1) & v11 & v13;
}

void sub_299F8EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  MEMORY[0x29C2B8210](v33 - 112, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C2B8210](v33 - 96);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F2931C8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_pointer<VinylTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<VinylTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<VinylTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(void *result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 8;
            break;
          }

          v11 = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 8;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(v5, a2, a2);
    a2 += 8;
  }

  return result;
}

void sub_299F8F4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a3;
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_9:
    *(a3 + 32) = v7;
    RestoreStep::operator=();
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v8, v6, v3);
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t *a1)
{
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, a1[2]);
  v2 = a1[1];
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
      a1[1] = v2;
    }

    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    v10 = operator new(0x40uLL);
    v11 = v10;
    v10[8] = *a3;
    v12 = *(a3 + 16);
    *(v10 + 5) = *(a3 + 8);
    *(v10 + 6) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(v10 + 28) = *(a3 + 24);
    *(v10 + 58) = *(a3 + 26);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v8, v6, v10);
  }

  return v11;
}

void *eUICCFwReaderOpen(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "eUICCFwReader", "eUICCFwReaderOpen", "eUICCFwReaderOpen");
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v5 = vinyl_unzOpen(BytePtr, Length);
  if (!v5)
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to open bbfw archive for reading eUICCFwReaderOpen\n", "eUICCFwReader", "eUICCFwReaderOpen");
  }

  return v5;
}

uint64_t eUICCFwReaderFindAndCopyFileData(ACFULogging *a1, const __CFString *a2, CFTypeRef *a3)
{
  v15 = 0;
  if (a2)
  {
    ACFULogging::getLogInstance(a1);
    *(&v11.__r_.__value_.__s + 23) = 13;
    strcpy(&v11, "eUICCFwReader");
    v6 = std::string::append(&v11, "::", 2uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v12, "eUICCFwReaderFindAndCopyFileData", 0x20uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v14 = v8->__r_.__value_.__r.__words[2];
    v13 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    eUICCFwReaderFindAndCopyFileData_cold_1(&v13, &v11.__r_.__value_.__l.__data_, &v12, &v11.__r_.__value_.__r.__words[2] + 7);
  }

  eUICCFwReaderFindAndCopyFileData_cold_2(a1, a2, &v15, a3, &v16);
  return v16;
}

void sub_299F8FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return vinyl_unzGetCurrentFileInfo(a1, a2, a3, 0x400uLL, 0, 0, 0, 0);
}

uint64_t BBUpdaterCommon::BBUASCIIDigitToInt(__darwin_ct_rune_t this, unsigned int a2)
{
  result = (this - 48);
  if (result > 9)
  {
    v5 = __toupper(this);
    v6 = v5 - 55;
    if (v6 >= a2 || (v5 - 65) >= 0x1A)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

unint64_t BBUpdaterCommon::BBUStringToUInt32(const char *a1, int __base)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return strtoul(a1, 0, __base);
}

BOOL BBUpdaterCommon::BBUFileExists(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

uint64_t BBUpdaterCommon::BBUIsDirectoryEmpty(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = opendir(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  while (1)
  {
    v3 = readdir(v2);
    if (!v3)
    {
      break;
    }

    if (v3->d_name[0] != 46 || v3->d_name[1] && (v3->d_name[1] != 46 || v3->d_name[2]))
    {
      v4 = 0;
      goto LABEL_13;
    }
  }

  v4 = 1;
LABEL_13:
  closedir(v2);
  return v4;
}

DIR *BBUpdaterCommon::BBUReadDirectory(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v9 = 25;
          }

          else
          {
            v9 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v9);
          __dst[1] = d_namlen;
          v13 = v9 | 0x8000000000000000;
          __dst[0] = v8;
        }

        else
        {
          HIBYTE(v13) = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            goto LABEL_14;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
LABEL_14:
        *(v8 + d_namlen) = 0;
        v10 = std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(a2, 0, 0, __dst);
        v11 = *a2;
        *v10 = *a2;
        *(v10 + 1) = a2;
        *(v11 + 1) = v10;
        *a2 = v10;
        ++a2[2];
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__dst[0]);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_299F8FDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterCommon::BBUGetFileName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  ctu::tokenize();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v6 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v6 - 24), *(v6 - 16));
  }

  else
  {
    v3 = *(v6 - 24);
    a2->__r_.__value_.__r.__words[2] = *(v6 - 8);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }

  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_299F8FEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 - 24) = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  _Unwind_Resume(a1);
}

void BBUpdaterCommon::BBUStripCharacters(uint64_t **a1@<X0>, const std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = operator new[](v7 + 1);
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v11 = 0;
    v12 = v6 >> 63;
    v13 = 1;
    v10 = v8;
    do
    {
      if (v12)
      {
        v14 = *a1;
      }

      else
      {
        v14 = a1;
      }

      if (std::string::find(a2, *(v14 + v11), 0) == -1)
      {
        if (*(a1 + 23) >= 0)
        {
          v15 = a1;
        }

        else
        {
          v15 = *a1;
        }

        *v10++ = *(v15 + v11);
      }

      v11 = v13;
      v16 = *(a1 + 23);
      v12 = v16 >> 63;
      if ((v16 & 0x80000000) != 0)
      {
        v16 = a1[1];
      }
    }

    while (v16 > v13++);
  }

  *v10 = 0;
  std::string::basic_string[abi:ne200100]<0>(a3, v9);

  operator delete[](v9);
}

void *BBUpdaterCommon::BBUCFStringToCPPString@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  CFStringGetCString(this, buffer, 1024, 0x8000100u);
  return std::string::basic_string[abi:ne200100]<0>(a2, buffer);
}

void BBUpdaterCommon::BBUStringToArgv(char *a1, uint64_t a2)
{
  std::operator+<char>();
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  *a1 = v19;
  v4 = v20;
  *(a1 + 2) = v20;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x29EDCA600];
    do
    {
      while (1)
      {
        v9 = a1[23] >= 0 ? a1 : *a1;
        v10 = v9[v7];
        v11 = (v10 & 0x80000000) != 0 ? __maskrune(v10, 0x4000uLL) : *(v8 + 4 * v10 + 60) & 0x4000;
        if (v7 >= v6 || !v11)
        {
          break;
        }

        if (a1[23] >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        v12[v7++] = 0;
      }

      if (a1[23] >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *&v19 = &v13[v7];
      std::vector<char *>::push_back[abi:ne200100](a2, &v19);
      v14 = v7 + 1;
      do
      {
        v15 = v14;
        if (a1[23] >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        v17 = v16[v15];
        if ((v17 & 0x80000000) != 0)
        {
          v18 = __maskrune(v17, 0x4000uLL);
        }

        else
        {
          v18 = *(v8 + 4 * v17 + 60) & 0x4000;
        }

        v14 = v15 + 1;
      }

      while (v15 < v6 && !v18);
      v7 = v15;
    }

    while (v15 < v6);
  }

  *&v19 = 0;
  std::vector<char *>::push_back[abi:ne200100](a2, &v19);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

pthread_t BBUpdaterCommon::BBUThreadSpawn(BBUpdaterCommon *this, void *(__cdecl *a2)(void *), void *(*a3)(void *), void *a4)
{
  v4 = a4;
  v11 = *MEMORY[0x29EDCA608];
  v9 = 0;
  pthread_attr_init(&v10);
  if (v4)
  {
    pthread_attr_setdetachstate(&v10, 2);
  }

  v7 = pthread_create(&v9, &v10, a2, a3);
  pthread_attr_destroy(&v10);
  if (v7)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void BBUpdaterCommon::BBUMutex::~BBUMutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}

{
  pthread_mutex_destroy(this);
}

uint64_t BBUpdaterCommon::collectCoreDump(BBUpdaterCommon *this, const __CFString *a2, const __CFString *a3, int a4)
{
  v5 = a3;
  obj = 0;
  cf = 0;
  valuePtr = 2;
  v8 = *MEMORY[0x29EDB8ED8];
  if (byte_2A197F7BF >= 0)
  {
    v9 = &BBUpdaterCommon::bbCoredumpPath;
  }

  else
  {
    v9 = BBUpdaterCommon::bbCoredumpPath;
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v9, 0x8000100u);
  v12 = v10;
  if (!a2)
  {
    a2 = v10;
  }

  if (a4)
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Only attach the the existing coredump dir to output dictionary without executing coredump again.\n");
    BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v13);
    v14 = 0;
LABEL_23:
    v33 = 1;
    goto LABEL_24;
  }

  v14 = MEMORY[0x29C2B7880](&obj);
  if (!v14)
  {
    BBUpdaterCommon::collectCoreDump(0, v15);
LABEL_40:
    v33 = 0;
    goto LABEL_24;
  }

  BBUpdaterRegisterLogSink();
  v16 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"Client", @"Vinyl");
  CFDictionarySetValue(Mutable, @"BootMode", v16);
  CFDictionarySetValue(Mutable, @"SystemRoot", @"/mnt5");
  CFDictionarySetValue(Mutable, @"DataRoot", @"/mnt4");
  if (TelephonyRadiosGetRadioVendor() - 3 > 1)
  {
    v19 = @"RemoteFSRoot";
    v21 = @"/mnt3/bbfs/";
    v20 = Mutable;
  }

  else
  {
    v18 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(v18, @"RemoteFSRoot", @"/mnt3");
    v19 = @"Options";
    v20 = Mutable;
    v21 = v18;
  }

  CFDictionarySetValue(v20, v19, v21);
  CFDictionarySetValue(Mutable, @"coreDumpPath", a2);
  v22 = BBUpdaterSetOptions();
  if (!v22)
  {
    BBUpdaterCommon::collectCoreDump(v22, v23);
    goto LABEL_40;
  }

  v24 = BBUpdaterExecCommand();
  v25 = v24;
  v27 = gBBULogMaskGet(v24, v26);
  if (!v25)
  {
    BBUpdaterCommon::collectCoreDump(v27, v28);
    goto LABEL_40;
  }

  _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Core dump successful \n");
  BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v29);
  if (!v5)
  {
    goto LABEL_23;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CFRelease(v14);
  if (obj)
  {
    CFRelease(obj);
    obj = 0;
  }

  v14 = MEMORY[0x29C2B7880](&obj);
  if (!v14)
  {
    BBUpdaterCommon::collectCoreDump(0, v30);
    goto LABEL_23;
  }

  BBUpdaterRegisterLogSink();
  v31 = BBUpdaterSetOptions();
  if (!v31)
  {
    BBUpdaterCommon::collectCoreDump(v31, v32);
    goto LABEL_40;
  }

  v33 = BBUpdaterExecCommand();
  v35 = gBBULogMaskGet(v33, v34);
  if (v33)
  {
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "BB reset successful\n");
    goto LABEL_23;
  }

  BBUpdaterCommon::collectCoreDump(v35, v36);
LABEL_24:
  if (obj)
  {
    CFShow(obj);
    if (obj)
    {
      CFRelease(obj);
    }

    obj = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v33;
}

CFDictionaryRef BBUpdaterCommon::attachCoredumpPathToOutDict(CFDictionaryRef this, const __CFString *a2, const __CFString *a3)
{
  if (this)
  {
    if (a2)
    {
      v3 = this;
      keys = @"LogDirectory";
      v4 = *MEMORY[0x29EDB8ED8];
      v5 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], a2, 0);
      this = CFDictionaryCreate(v4, &keys, &v5, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      *v3 = this;
    }
  }

  return this;
}

uint64_t BBUpdaterCommon::inRestoreOS(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  return (BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1;
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = BBUpdaterCommon::BBUMGCopyAnswer(@"RestoreOSBuild", a2);
  ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&BOOLean, &v4);
  Value = BOOLean;
  if (BOOLean)
  {
    Value = CFBooleanGetValue(BOOLean);
    BBUpdaterCommon::inRestoreOS(void)::restoreOS = Value != 0;
  }

  if ((*(gBBULogMaskGet(Value, v2) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(24, 0, "BBUCommon", "", "inRestoreOS: %d\n", BBUpdaterCommon::inRestoreOS(void)::restoreOS);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void sub_299F909AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUMGCopyAnswer(BBUpdaterCommon *this, const __CFString *a2)
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    BBUpdaterCommon::BBUMGCopyAnswer();
  }

  v3 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    return 0;
  }

  return v3(this, 0);
}

uint64_t ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke_2()
{
  is_recovery = os_variant_is_recovery();
  BBUpdaterCommon::inRestoreOS(void)::recoveryOS = is_recovery;
  result = gBBULogMaskGet(is_recovery, v1);
  if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(24, 0, "BBUCommon", "", "InRecoveryOS: %d\n", BBUpdaterCommon::inRestoreOS(void)::recoveryOS);
  }

  return result;
}

uint64_t BBUpdaterCommon::getECID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getECID();
  }

  return BBUpdaterCommon::getECID(void)::ecid;
}

void ___ZN15BBUpdaterCommon7getECIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = BBUpdaterCommon::BBUMGCopyAnswer(@"UniqueChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v4);
  if (number)
  {
    Value = CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getECID(void)::ecid);
    if ((*(gBBULogMaskGet(Value, v3) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(24, 0, "BBUCommon", "", "ECID: 0x%llx\n", BBUpdaterCommon::getECID(void)::ecid);
    }

    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_299F90B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t BBUpdaterCommon::getEUICCChipID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getEUICCChipID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getEUICCChipID();
  }

  return BBUpdaterCommon::getEUICCChipID(void)::euiccChipID;
}

void ___ZN15BBUpdaterCommon14getEUICCChipIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = BBUpdaterCommon::BBUMGCopyAnswer(@"EUICCChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v2);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getEUICCChipID(void)::euiccChipID);
    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_299F90C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef BBUpdaterCommon::BBUReadNVRAM@<X0>(BBUpdaterCommon *this@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  if ((atomic_load_explicit(byte_2A14F5CD0, memory_order_acquire) & 1) == 0)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if (BBUpdaterCommon::BBUReadNVRAM(void)::onceToken != -1)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if ((*(gBBULogMaskGet(this, a3) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(&cf, &_MergedGlobals);
    CFOBJ_STR(&cf, __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    _BBULog(24, 0, "BBUCommon", "", "NVRAM: %s\n", v4);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  result = _MergedGlobals;
  *a2 = _MergedGlobals;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_299F90D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15BBUpdaterCommon12BBUReadNVRAMEv_block_invoke()
{
  v17 = 0;
  v0 = MEMORY[0x29C2B7D20](*MEMORY[0x29EDCA6A0], &v17);
  if (v0)
  {
    gBBULogMaskGet(v0, v1);
    v2 = _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", "KERN_SUCCESS == kr", "", "", 503);
    result = gBBULogMaskGet(v2, v3);
    if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(24, 0, "BBUCommon", "", "Could not get master port %d\n");
    }
  }

  else
  {
    v5 = IORegistryEntryFromPath(v17, "IODeviceTree:/options");
    if (v5)
    {
      v7 = v5;
      properties[0] = 0;
      properties[1] = &_MergedGlobals;
      CFProperties = IORegistryEntryCreateCFProperties(v5, properties, *MEMORY[0x29EDB8ED8], 0);
      v9 = ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(properties);
      if (CFProperties)
      {
        v11 = 1;
      }

      else
      {
        v11 = _MergedGlobals == 0;
      }

      if (v11)
      {
        gBBULogMaskGet(v9, v10);
        v12 = _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", "KERN_SUCCESS == kr && nvramInfo", "", "", 509);
        if ((*(gBBULogMaskGet(v12, v13) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(24, 0, "BBUCommon", "", "Could not load NVRAM? %d\n", CFProperties);
        }
      }

      return IOObjectRelease(v7);
    }

    else
    {
      gBBULogMaskGet(v5, v6);
      v14 = _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", "nvramRef", "", "", 506);
      result = gBBULogMaskGet(v14, v15);
      if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
      {
        return _BBULog(24, 0, "BBUCommon", "", "Could not find NVRAM via IOKit\n");
      }
    }
  }

  return result;
}

void sub_299F90FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(va);
  _Unwind_Resume(a1);
}

BOOL BBUpdaterCommon::isNVRAMKeyPresent(BBUpdaterCommon *this, const __CFString *a2)
{
  BBUpdaterCommon::BBUReadNVRAM(this, &theDict, a2);
  v4 = theDict;
  if (theDict)
  {
    v4 = CFDictionaryContainsKey(theDict, this);
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  if ((*(gBBULogMaskGet(v4, v3) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    v7 = "No :-(";
    if (v5)
    {
      v7 = "Yes :-)";
    }

    _BBULog(24, 0, "BBUCommon", "", "NVRAM '%s' exists? %s\n", CStringPtr, v7);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
  return v5;
}

void sub_299F910C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUCreateCFError(CFErrorRef *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  userInfo = 0;
  if (!a1)
  {
    v18 = gBBULogMaskGet(0, a2);
    if ((BBUpdaterCommon::BBUCreateCFError(v18) & 1) == 0)
    {
      goto LABEL_16;
    }

    v15 = "error";
    v16 = 576;
LABEL_15:
    _BBULog(1, 6, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Support/BBUCommon.cpp", v16, v15);
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v14 = 0;
    if ((*gBBULogMaskGet(0, v9) & 2) == 0 || gBBULogVerbosity <= 5)
    {
      goto LABEL_17;
    }

    v15 = "ctu::cf::create( userInfo, 2)";
    v16 = 577;
    goto LABEL_15;
  }

  v10 = userInfo;
  userInfo = Mutable;
  v20 = v10;
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v20);
  v20 = 0;
  v11 = ctu::cf::convert_copy();
  if ((v11 & 1) == 0)
  {
    v14 = 0;
    if ((*gBBULogMaskGet(v11, v12) & 2) == 0 || gBBULogVerbosity < 6)
    {
      goto LABEL_17;
    }

    v15 = "ctu::cf::convert_copy( description, errorMsg)";
    v16 = 578;
    goto LABEL_15;
  }

  v13 = v20;
  ctu::cf::insert<__CFString const*,__CFString const*>(userInfo, *MEMORY[0x29EDB8F38], v20);
  if (a4)
  {
    ctu::cf::insert<__CFString const*,__CFError *>(userInfo, *MEMORY[0x29EDB8F68], a4);
  }

  *a1 = CFErrorCreate(v7, @"BBUpdater", a3, userInfo);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = 1;
LABEL_17:
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&userInfo);
  return v14;
}

void sub_299F912B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFString const*>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_299F91350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFError *>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_299F913F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void *BBUpdaterCommon::BBUStrError@<X0>(BBUpdaterCommon *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__strerrbuf = 0u;
  v6 = 0u;
  if (strerror_r(this, __strerrbuf, 0x80uLL))
  {
    snprintf(__strerrbuf, 0x80uLL, "unknown error %d", v2);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, __strerrbuf);
}

const char *BBUpdaterCommon::redactedString(BBUpdaterCommon *this, const char *a2)
{
  if (BBUpdaterCommon::inRestoreOS(this))
  {
    return this;
  }

  else
  {
    return "0x<< SNUM >>";
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
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

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void *___ZN15BBUpdaterCommonL15BBUMGCopyAnswerEPK10__CFString_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer = result;
  }

  return result;
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

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
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

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
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

char *std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  *(v7 + 1) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 16), *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    *(v7 + 4) = *(a4 + 16);
  }

  return v8;
}

void *ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFBooleanGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFNumberGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{

  return _BBULog(1, 6, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{

  return _BBULog(0, 0xFFFFFFFFLL, a3, a4, a5);
}

uint64_t _GLOBAL__sub_I_BBUCommon_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&BBUpdaterCommon::bbCoredumpPath, "/mnt4/wireless/Library/Logs/CrashReporter/Vinyl/Baseband/baseband_updater_logs/");
  v0 = MEMORY[0x29EDC9388];

  return __cxa_atexit(v0, &BBUpdaterCommon::bbCoredumpPath, &dword_299F8C000);
}

VinylSecureElement *VinylSecureElement::create(VinylSecureElement *this)
{
  v1 = operator new(1uLL);
  VinylSecureElement::init(v1);
  return v1;
}

uint64_t VinylSecureElement::init(VinylSecureElement *this)
{
  v1 = dlopen("/usr/lib/libnfrestore.dylib", 261);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x2Eu, "Assertion failure(lib != __null && Could not find /usr/lib/libnfrestore.dylib)", v5, v6, v7);
    goto LABEL_10;
  }

  v2 = v1;
  pfnNfRestoreOpenWithSE = dlsym(v1, "NfRestoreSEOpenWithError");
  if (!pfnNfRestoreOpenWithSE)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x31u, "Assertion failure(pfnNfRestoreOpenWithSE != __null && Could not find NfRestoreSEOpenWithError symbol\\n)", v8, v9, v10);
    goto LABEL_10;
  }

  pfnNfRestoreSEClose = dlsym(v2, "NfRestoreSEClose");
  if (!pfnNfRestoreSEClose)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x34u, "Assertion failure(pfnNfRestoreSEClose != __null && Could not find NfRestoreSEClose symbol\\n)", v11, v12, v13);
    goto LABEL_10;
  }

  pfnNfRestoreDumpUART = dlsym(v2, "NfRestoreDumpUART");
  if (!pfnNfRestoreDumpUART)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x37u, "Assertion failure(pfnNfRestoreDumpUART != __null && Could not find pfnNfRestoreDumpUART symbol\\n)", v14, v15, v16);
LABEL_10:
  }

  return 0;
}

uint64_t VinylSecureElement::PowerUpSE(VinylSecureElement *this)
{
  v6 = 0;
  if (pfnNfRestoreOpenWithSE)
  {
    v1 = pfnNfRestoreDumpUART == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = pfnNfRestoreOpenWithSE(0, 0, &v6);
  v2 = v3;
  if (v6)
  {
    gBBULogMaskGet(v3, v4);
    _BBULog(0, 0xFFFFFFFFLL, "VinylSecureElement", "", "pfnNfRestoreOpenWithSE failure, outResult: %d\n", v6);
  }

  __ns.__rep_ = 1000000000;
  std::this_thread::sleep_for (&__ns);
  return v2;
}

uint64_t VinylSecureElement::PowerDownSE(VinylSecureElement *this, void *a2)
{
  if (!pfnNfRestoreSEClose)
  {
    return 1;
  }

  v2 = pfnNfRestoreSEClose(a2);
  gBBULogMaskGet(v2, v3);
  _BBULog(0, 0xFFFFFFFFLL, "VinylSecureElement", "", "SE closed SUCCESSFULLY\n");
  return 0;
}

uint64_t _BBUFSDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sDelegate)
  {
    return sDelegate(result, a2, &a9);
  }

  return result;
}

uint64_t VinylMipcTransport::open(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (!*(a2 + 24) || !*a3)
  {
    return 0;
  }

  std::function<void ()(unsigned char const*,unsigned long)>::operator=((a1 + 112), a2);
  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  TelephonyBasebandPCITransportInitParameters();
  v16 = *(a1 + 144);
  v22 = 0;
  v23 = 0;
  v18 = 0x200001B58;
  v20 = 0xF0000000000FLL;
  v15 = 30;
  v19 |= 5u;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_7;
  v13[4] = v7;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v13;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1;
  v11[3] = &__block_descriptor_tmp_3;
  v11[4] = a1;
  v11[5] = v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  v21 = v11;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v9 = TelephonyBasebandPCITransportCreate();
  *(a1 + 152) = v9;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v9;
}

void sub_299F91F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(unsigned char const*,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(void *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    v6 = a1[6];
    if (v6 && (v9 = a1[4], (v10 = std::__shared_weak_count::lock(v6)) != 0))
    {
      v11 = v10;
      if (a2 || !a1[5])
      {
        free(a3);
      }

      else
      {
        std::function<void ()(unsigned char const*,unsigned long)>::operator()(v9 + 112, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {

      free(a3);
    }
  }
}

uint64_t std::function<void ()(unsigned char const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t VinylMipcTransport::close(VinylMipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t VinylMipcTransport::write(VinylMipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v7 = *(this + 10);
    if (!v7)
    {
      return 0;
    }

    result = v7(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (v10)
    {
      result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
      if (a4)
      {
        if (result)
        {
          *a4 = v11;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VinylMipcTransport::isReady(VinylMipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void VinylMipcTransport::~VinylMipcTransport(VinylMipcTransport *this)
{
  VinylMipcTransport::~VinylMipcTransport(this);

  operator delete(v1);
}

{
  *this = &unk_2A20311A0;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](this + 112);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
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

void sub_299F926E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void CFOBJ_STR(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@", *a1);
  ctu::cf::assign();
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_299F927B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t VinylControllerMapBBUReturnToVinylResult(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return result;
    case 4:
    case 12:
      goto LABEL_4;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 13:
      result = 11;
      break;
    case 14:
      result = 12;
      break;
    case 15:
      result = 13;
      break;
    case 16:
      result = 14;
      break;
    case 17:
      result = 15;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 21;
      break;
    case 24:
      result = 22;
      break;
    case 25:
      result = 23;
      break;
    case 26:
      result = 24;
      break;
    case 27:
      result = 25;
      break;
    default:
      if (result == 107)
      {
        result = 26;
      }

      else
      {
LABEL_4:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t eUICC::Perso::Perform(uint64_t a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v6 = off_2A14F58A8;
  if (!off_2A14F58A8)
  {
    v7 = operator new(0x38uLL);
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = 0;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v13, v7);
    v8 = v13;
    v13 = 0uLL;
    v9 = *(&off_2A14F58A8 + 1);
    off_2A14F58A8 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    v6 = off_2A14F58A8;
  }

  v10 = *(&off_2A14F58A8 + 1);
  if (*(&off_2A14F58A8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F58A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v11 = eUICC::Perso::PersoImplementation::Perform(v6, a1, a2, a3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v11;
}

uint64_t eUICC::Perso::PersoImplementation::Perform(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __p = 0;
  v50 = 0;
  v51 = 0;
  if (!*a4)
  {
    gBBULogMaskGet(a1, a2);
    v19 = 109;
    v20 = "vinylValve";
LABEL_15:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v20, "", "", v19);
    v21 = 10;
    goto LABEL_20;
  }

  *(a1 + 24) = a2;
  v9 = dispatch_queue_create("PersoImpl", 0);
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a2 + 47);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 32);
  }

  if (!v11)
  {
    gBBULogMaskGet(v10, v8);
    v19 = 114;
    v20 = "!performOptions.alderHostname.empty()";
    goto LABEL_15;
  }

  ReverseProxyGetSettings(a2 + 24, &v48);
  v12 = (a1 + 8);
  if ((a1 + 8) != &v48)
  {
    v52 = *v12;
    *v12 = v48;
    v48 = 0;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v52);
  }

  v13 = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v48);
  if (!*v12)
  {
    gBBULogMaskGet(v13, v14);
    v19 = 116;
    v20 = "this->reverseProxySettings";
    goto LABEL_15;
  }

  v15 = eUICC::Perso::PersoImplementation::ForcePerso(a1, &__p, a4);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v17 = 119;
    v18 = "kBBUReturnSuccess == ret";
LABEL_19:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v18, "", "", v17);
    v21 = 18;
    goto LABEL_20;
  }

  inited = eUICC::Perso::PersoImplementation::InitPersoDevice(a1, &__p, a4);
  if (inited || __p == v50)
  {
    gBBULogMaskGet(inited, v23);
    v17 = 123;
LABEL_18:
    v18 = "kBBUReturnSuccess == ret && !dataBuffer.empty()";
    goto LABEL_19;
  }

  v28 = eUICC::Perso::PersoImplementation::InitPersoServer(a1, &__p, a3, a4);
  if (v28 || __p == v50)
  {
    gBBULogMaskGet(v28, v29);
    v30 = 126;
LABEL_28:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret && !dataBuffer.empty()", "", "", v30);
    v21 = 53;
    goto LABEL_20;
  }

  v31 = eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(a1, &__p, a4);
  if (v31 || __p == v50)
  {
    gBBULogMaskGet(v31, v32);
    v17 = 129;
    goto LABEL_18;
  }

  WrapKeyServer = eUICC::Perso::PersoImplementation::GetWrapKeyServer(a1, &__p);
  if (WrapKeyServer || __p == v50)
  {
    gBBULogMaskGet(WrapKeyServer, v34);
    v30 = 132;
    goto LABEL_28;
  }

  v35 = eUICC::Perso::PersoImplementation::FinalizePersoDevice(a1, &__p, a4);
  v21 = v35;
  if (v35)
  {
    gBBULogMaskGet(v35, v36);
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 135);
    goto LABEL_20;
  }

  v37 = *(a1 + 16);
  *(a1 + 16) = 0;
  v52 = v37;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v52);
  NonceServer = eUICC::Perso::PersoImplementation::GetNonceServer(a1, &__p, a4);
  if (NonceServer || __p == v50)
  {
    gBBULogMaskGet(NonceServer, v39);
    v30 = 140;
    goto LABEL_28;
  }

  ValidationBlob = eUICC::Perso::PersoImplementation::CreateValidationBlob(NonceServer, &__p);
  if (ValidationBlob || __p == v50)
  {
    gBBULogMaskGet(ValidationBlob, v41);
    v30 = 143;
    goto LABEL_28;
  }

  v42 = eUICC::Perso::PersoImplementation::ValidatePersoDevice(a1, &__p, a4);
  if (v42 || __p == v50)
  {
    gBBULogMaskGet(v42, v43);
    v30 = 146;
    goto LABEL_28;
  }

  v44 = eUICC::Perso::PersoImplementation::SendReceiptServer(a1, &__p);
  v21 = v44;
  if (v44)
  {
    gBBULogMaskGet(v44, v45);
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 149);
  }

  else
  {
    v47 = *(a1 + 32);
    for (i = *(a1 + 40); i != v47; std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i))
    {
      i -= 48;
    }

    v21 = 0;
    *(a1 + 40) = v47;
  }

LABEL_20:
  v24 = *(a1 + 16);
  *(a1 + 16) = 0;
  v52 = v24;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v52);
  *(a1 + 24) = 0;
  v26 = *a1;
  *a1 = 0;
  if (v26)
  {
    dispatch_release(v26);
  }

  gBBULogMaskGet(v26, v25);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ret %d records %zu\n", v21, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4));
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_299F92E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::Perso::DumpTransactions(std::string *a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v2 = off_2A14F58A8;
  if (!off_2A14F58A8)
  {
    v3 = operator new(0x38uLL);
    v3[4] = 0;
    v3[5] = 0;
    v3[6] = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v7, v3);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(&off_2A14F58A8 + 1);
    off_2A14F58A8 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v2 = off_2A14F58A8;
  }

  v6 = *(&off_2A14F58A8 + 1);
  if (*(&off_2A14F58A8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F58A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, *(v2 + 32), *(v2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 40) - *(v2 + 32)) >> 4));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

std::string *eUICC::Perso::PersoImplementation::DumpTransactions@<X0>(std::string *a1@<X8>, uint64_t a2@<X0>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
}

void *eUICC::Perso::PersoImplementation::create_default_global@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;

  return std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(a1, v2);
}

uint64_t eUICC::Perso::PersoImplementation::ForcePerso(BBUpdaterCommon *a1, uint64_t a2, void *a3)
{
  *&__dst[71] = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 3) + 48) != 1)
  {
    return 0;
  }

  v30 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v28 = 0;
  v29 = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  (*(**a3 + 8))(__dst);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (__dst[0] != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v6);
    v8 = 180;
    goto LABEL_7;
  }

  if (!LOBYTE(__dst[1]))
  {
    v9 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v28);
    if (v9)
    {
      gBBULogMaskGet(v9, v10);
      v11 = 186;
LABEL_13:
      v14 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == derRet", "", "", v11);
      gBBULogMaskGet(v14, v15);
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n");
      v7 = 10;
      goto LABEL_14;
    }

    v12 = DEREncodeItemIntoVector(0x2000000000000010uLL, v29 - v28, v28, &__p);
    if (v12)
    {
      gBBULogMaskGet(v12, v13);
      v11 = 188;
      goto LABEL_13;
    }

    v17 = (*(**a3 + 72))(*a3, &__p, a2);
    v7 = v17;
    if (v17)
    {
      gBBULogMaskGet(v17, v18);
      v19 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 192);
      gBBULogMaskGet(v19, v20);
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n");
      goto LABEL_14;
    }

    (*(**a3 + 16))(*a3, 0, 1);
    *__ns = 10000000000;
    std::this_thread::sleep_for (__ns);
    (*(**a3 + 8))(__ns);
    memcpy(__dst, __ns, 0x11BuLL);
    v21 = TelephonyRadiosGetRadioVendor();
    if (__dst[0] == (v21 - 5) < 0xFFFFFFFD)
    {
      if (LOBYTE(__dst[1]))
      {
        goto LABEL_4;
      }

      gBBULogMaskGet(v21, v22);
      v23 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "cardData.contents.perso", "", "", 201);
      gBBULogMaskGet(v23, v24);
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Still persod after force?\n");
LABEL_8:
      v7 = 18;
      goto LABEL_14;
    }

    gBBULogMaskGet(v21, v22);
    v8 = 200;
LABEL_7:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "cardData.Valid()", "", "", v8);
    goto LABEL_8;
  }

LABEL_4:
  v7 = 0;
LABEL_14:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v7;
}

void sub_299F933E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoDevice(BBUpdaterCommon *a1, const void **a2, void *a3)
{
  v37 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v6 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v34);
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v8 = 219;
LABEL_5:
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == derRet", "", "", v8);
    gBBULogMaskGet(v11, v12);
    v13 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n");
    v15 = 10;
    goto LABEL_6;
  }

  v9 = DEREncodeItemIntoVector(0x2000000000000010uLL, v35 - v34, v34, &v31);
  if (v9)
  {
    gBBULogMaskGet(v9, v10);
    v8 = 221;
    goto LABEL_5;
  }

  v28 = 0;
  v29 = operator new(0x19uLL);
  v30 = xmmword_299FDFCB0;
  strcpy(v29, "InitPersoDeviceBlob.bin");
  __p = 0;
  v27 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v31, v32, v32 - v31);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v29, &__p);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v17 = (*(**a3 + 72))(*a3, &v31, a2);
  v15 = v17;
  if (v17)
  {
    gBBULogMaskGet(v17, v18);
    v19 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 227);
    gBBULogMaskGet(v19, v20);
    v13 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n");
  }

  else
  {
    v23 = 0;
    v24 = operator new(0x20uLL);
    v25 = xmmword_299FDFCC0;
    strcpy(v24, "InitPersoDeviceResponse.bin");
    v21 = 0;
    v22 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v21, *a2, a2[1], a2[1] - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v24, &v21);
    v13 = v21;
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    v15 = 0;
  }

LABEL_6:
  gBBULogMaskGet(v13, v14);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoDevice %d\n", v15);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v15;
}

void sub_299F936FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    *(v30 - 88) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 72);
  if (v33)
  {
    *(v30 - 64) = v33;
    operator delete(v33);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v30 - 48));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoServer(void *a1, const void **a2, uint64_t a3, void *(****a4)(std::string *__return_ptr))
{
  v64 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v49, *a2, a2[1], a2[1] - *a2);
  memset(v61, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v61, v49, v50, v50 - v49);
  v59 = 0;
  memset(__p, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *v61, *&v61[8], *&v61[8] - *v61);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = values[0];
    v59 = values[0];
  }

  else
  {
    v8 = 0;
  }

  if (__p[0].__r_.__value_.__r.__words[0])
  {
    __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v52 = v8;
  if (*v61)
  {
    *&v61[8] = *v61;
    operator delete(*v61);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *a3, *(a3 + 8));
  }

  else
  {
    v47 = *a3;
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v61, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    *v61 = v47;
  }

  v58 = 0;
  if ((v61[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *v61, *&v61[8]);
  }

  else
  {
    __p[0] = *v61;
  }

  v59 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v58;
    v58 = v59;
    values[0] = v9;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(values);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v48 = v58;
  v58 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v58);
  if ((v61[23] & 0x80000000) != 0)
  {
    operator delete(*v61);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  (***a4)(__p);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (LODWORD(__p[0].__r_.__value_.__l.__data_) != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v11);
    v18 = 0;
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "hwType.Valid()", "", "", 248);
LABEL_33:
    v15 = 18;
    goto LABEL_34;
  }

  *v61 = xmmword_29F293298;
  *&v61[16] = *&off_29F2932A8;
  values[0] = @"StartSession";
  values[1] = v8;
  v12 = @"2";
  if (!v63)
  {
    v12 = @"0";
  }

  values[2] = v48;
  values[3] = v12;
  v13 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(v61, values, 4, &v53);
  v15 = v13;
  if (v13)
  {
    gBBULogMaskGet(v13, v14);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 262);
    v18 = 0;
    goto LABEL_34;
  }

  v44 = 0;
  v45 = operator new(0x20uLL);
  v46 = xmmword_299FDFCD0;
  strcpy(v45, "InitPersoServerRequest.plist");
  v42 = 0;
  v43 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v42, v53, v54, v54 - v53);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v45, &v42);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  v20 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &v53, v61);
  v22 = *v61;
  v18 = *&v61[8];
  if (!*v61)
  {
    gBBULogMaskGet(v20, v21);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 268);
LABEL_65:
    v15 = 53;
    goto LABEL_34;
  }

  v40 = operator new(0x20uLL);
  v41 = xmmword_299FDFCE0;
  strcpy(v40, "InitPersoServerResponse.plist");
  (*(*v22 + 40))(&v39, v22);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v40, &v39);
  if (v39)
  {
    CFRelease(v39);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  (*(*v22 + 40))(&v38, v22);
  v15 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v38, &theDict);
  v24 = v38;
  if (v38)
  {
    CFRelease(v38);
  }

  if (v15)
  {
    gBBULogMaskGet(v24, v23);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 272);
    goto LABEL_34;
  }

  if (!theDict)
  {
    gBBULogMaskGet(0, v23);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDict", "", "", 273);
    goto LABEL_33;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(v61, values);
  v25 = a1[2];
  a1[2] = *v61;
  *v61 = v25;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v61);
  Length = a1[2];
  if (!Length || (Length = CFStringGetLength(Length)) == 0)
  {
    gBBULogMaskGet(Length, v26);
    v31 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0", "", "", 277);
    gBBULogMaskGet(v31, v32);
    v33 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v33, 0x8000100u);
    v16 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n");
    goto LABEL_65;
  }

  *v61 = CFDictionaryGetValue(theDict, @"DATA");
  v28 = ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, v61);
  if (!cf)
  {
    gBBULogMaskGet(v28, 0);
    v34 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 280);
    gBBULogMaskGet(v34, v35);
    v36 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v36, 0x8000100u);
    v16 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n");
    goto LABEL_65;
  }

  memset(v61, 0, 24);
  ctu::cf::assign();
  v29 = *v61;
  v30 = *&v61[16];
  v16 = *a2;
  if (*a2)
  {
    a2[1] = v16;
    v37 = v29;
    operator delete(v16);
    v29 = v37;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v15 = 0;
  *a2 = v29;
  a2[2] = v30;
LABEL_34:
  gBBULogMaskGet(v16, v17);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoServer %d\n", v15);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v48);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  return v15;
}

void sub_299F93F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, const void *a39, const void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49)
{
  if (__p)
  {
    a49 = __p;
    operator delete(__p);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a35);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a41);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(uint64_t a1, const void **a2, void *a3)
{
  v22 = operator new(0x28uLL);
  v23 = xmmword_299FDFCF0;
  strcpy(v22, "AuthenticatePersoDeviceRequest.bin");
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v22, &__p);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v6 = (*(**a3 + 80))(*a3, a2, a2);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 295);
    gBBULogMaskGet(v9, v10);
    v11 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete AuthPerso command\n");
  }

  else
  {
    v16 = 0;
    v17 = operator new(0x28uLL);
    v18 = xmmword_299FDFD00;
    strcpy(v17, "AuthenticatePersoDeviceResponse.bin");
    v14 = 0;
    v15 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v14, *a2, a2[1], a2[1] - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v17, &v14);
    v11 = v14;
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17);
    }
  }

  gBBULogMaskGet(v11, v12);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "AuthenticatePersoDevice %d\n", v8);
  return v8;
}

void sub_299F942E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetWrapKeyServer(uint64_t a1, const void **a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v42 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v48 = 0;
  keys = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&keys, __p, v35, v35 - __p);
  v43 = 0;
  v44 = 0uLL;
  v45 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v44, keys, *(&keys + 1), *(&keys + 1) - keys);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = values[0];
    v43 = values[0];
  }

  else
  {
    v4 = 0;
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v37 = v4;
  if (keys)
  {
    *(&keys + 1) = keys;
    operator delete(keys);
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  keys = xmmword_29F2932C8;
  v48 = @"SessionId";
  values[0] = @"GetWrapKey";
  values[1] = v4;
  values[2] = *(a1 + 16);
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 3, &v38);
  v7 = v5;
  if (v5)
  {
    gBBULogMaskGet(v5, v6);
    v8 = 0;
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 317);
    goto LABEL_31;
  }

  v31 = 0;
  v32 = operator new(0x20uLL);
  v33 = xmmword_299FDFCE0;
  strcpy(v32, "GetWrapKeyServerRequest.plist");
  v29 = 0;
  v30 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v29, v38, v39, v39 - v38);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v32, &v29);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  v11 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &v38, &v44);
  v8 = *(&v44 + 1);
  v13 = v44;
  if (!v44)
  {
    gBBULogMaskGet(v11, v12);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 322);
LABEL_26:
    v7 = 53;
    goto LABEL_31;
  }

  v27 = operator new(0x20uLL);
  v28 = xmmword_299FDFD10;
  strcpy(v27, "GetWrapKeyServerResponse.plist");
  (*(*v13 + 40))(&cf, v13);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v27, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  (*(*v13 + 40))(&v25, v13);
  v7 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v25, &v42);
  v15 = v25;
  if (v25)
  {
    CFRelease(v25);
  }

  if (v7)
  {
    gBBULogMaskGet(v15, v14);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 325);
    goto LABEL_31;
  }

  *&v44 = CFDictionaryGetValue(v42, @"DATA");
  v16 = ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&v41, &v44);
  if (!v41)
  {
    gBBULogMaskGet(v16, 0);
    v20 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 329);
    gBBULogMaskGet(v20, v21);
    v22 = CFCopyDescription(v42);
    CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
    v9 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", CStringPtr);
    goto LABEL_26;
  }

  v44 = 0uLL;
  v45 = 0;
  ctu::cf::assign();
  v17 = v44;
  v18 = v45;
  v9 = *a2;
  if (*a2)
  {
    a2[1] = v9;
    v24 = v17;
    operator delete(v9);
    v17 = v24;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v7 = 0;
  *a2 = v17;
  a2[2] = v18;
LABEL_31:
  gBBULogMaskGet(v9, v10);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetWrapKeyServer %d\n", v7);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v42);
  return v7;
}

void sub_299F94844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  v44 = *(v42 - 144);
  if (v44)
  {
    *(v42 - 136) = v44;
    operator delete(v44);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v42 - 168));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v42 - 160));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::FinalizePersoDevice(uint64_t a1, const void **a2, void *a3)
{
  v14 = 0;
  v15 = operator new(0x20uLL);
  v16 = xmmword_299FDFD10;
  strcpy(v15, "FinalizePersoDeviceRequest.bin");
  __p = 0;
  v13 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v6 = (*(**a3 + 96))(*a3, a2);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 344);
    gBBULogMaskGet(v9, v10);
    v6 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete FinalizePerso command\n");
  }

  gBBULogMaskGet(v6, v7);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "FinalizePersoDevice %d\n", v8);
  return v8;
}

void sub_299F94B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetNonceServer(void *a1, uint64_t a2, void *(****a3)(void *__return_ptr))
{
  v53 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  __p = 0;
  v44 = 0;
  v45 = 0;
  (***a3)(v49);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (LODWORD(v49[0]) != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v6);
    v13 = 0;
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "hwType.Valid()", "", "", 362);
    v10 = 18;
    goto LABEL_8;
  }

  *keys = xmmword_29F2932B8;
  if (v50)
  {
    v7 = @"2";
  }

  else
  {
    v7 = @"0";
  }

  values[0] = @"GetNonce";
  values[1] = v7;
  v8 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, values, 2, &__p);
  v10 = v8;
  if (v8)
  {
    gBBULogMaskGet(v8, v9);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 376);
    v13 = 0;
    goto LABEL_8;
  }

  v40 = 0;
  v41 = operator new(0x20uLL);
  v42 = xmmword_299FDFCC0;
  strcpy(v41, "GetNonceServerRequest.plist");
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v38, __p, v44, v44 - __p);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v41, &v38);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  v15 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &__p, keys);
  v17 = keys[0];
  v13 = keys[1];
  if (!keys[0])
  {
    gBBULogMaskGet(v15, v16);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 382);
LABEL_36:
    v10 = 53;
    goto LABEL_8;
  }

  v36 = operator new(0x20uLL);
  v37 = xmmword_299FDFCD0;
  strcpy(v36, "GetNonceServerResponse.plist");
  (*(*v17 + 40))(&v35, v17);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v36, &v35);
  if (v35)
  {
    CFRelease(v35);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  (*(*v17 + 40))(&v34, v17);
  v10 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v34, &theDict);
  v19 = v34;
  if (v34)
  {
    CFRelease(v34);
  }

  if (v10)
  {
    gBBULogMaskGet(v19, v18);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 385);
    goto LABEL_8;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  v20 = ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(keys, values);
  v21 = a1[2];
  a1[2] = keys[0];
  keys[0] = v21;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v20);
  Length = a1[2];
  if (!Length || (Length = CFStringGetLength(Length)) == 0)
  {
    gBBULogMaskGet(Length, v22);
    v27 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0", "", "", 389);
    gBBULogMaskGet(v27, v28);
    v29 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v29, 0x8000100u);
    v11 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n");
    goto LABEL_36;
  }

  keys[0] = CFDictionaryGetValue(theDict, @"DATA");
  v24 = ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, keys);
  if (!cf)
  {
    gBBULogMaskGet(v24, 0);
    v30 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 391);
    gBBULogMaskGet(v30, v31);
    v32 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v32, 0x8000100u);
    v11 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n");
    goto LABEL_36;
  }

  keys[0] = 0;
  keys[1] = 0;
  v52 = 0;
  ctu::cf::assign();
  v25 = *keys;
  v26 = v52;
  v11 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v11;
    v33 = v25;
    operator delete(v11);
    v25 = v33;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v10 = 0;
  *a2 = v25;
  *(a2 + 16) = v26;
LABEL_8:
  gBBULogMaskGet(v11, v12);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetNonceServer %d\n", v10);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  return v10;
}

void sub_299F950D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, uint64_t a37, const void *a38, const void *a40)
{
  v42 = *(v40 - 80);
  if (v42)
  {
    *(v40 - 72) = v42;
    operator delete(v42);
  }

  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a40);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::CreateValidationBlob(BBUpdaterCommon *a1, unint64_t *a2)
{
  v57 = *MEMORY[0x29EDCA608];
  ECID = BBUpdaterCommon::getECID(a1);
  v53 = 4;
  v52 = 17433507;
  v55[0] = 0;
  v55[2] = 512;
  *&v56[8] = 0u;
  v55[1] = 12;
  *v56 = xmmword_299FDFD20;
  *&v56[16] = 512;
  v51[0] = v55;
  v51[1] = 2;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v3 = a2[1] - *a2;
  v24[0] = *a2;
  v24[1] = v3;
  v4 = DERDecodeItem(v24, v25);
  v6 = v4;
  if (v4)
  {
    gBBULogMaskGet(v4, v5);
    v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 451);
  }

  else
  {
    v9 = DEREncodeItemIntoVector(0xCuLL, 6uLL, "kNonce", &v35);
    v6 = v9;
    if (v9)
    {
      gBBULogMaskGet(v9, v10);
      v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 455);
    }

    else
    {
      v49[0] = v35;
      v49[1] = v36 - v35;
      v49[2] = v25[1];
      v49[3] = v25[2];
      v11 = DEREncodeSequenceIntoVector(0x2000000000000010, v49, v51, &v41);
      v6 = v11;
      if (v11)
      {
        gBBULogMaskGet(v11, v12);
        v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 461);
      }

      else
      {
        v13 = DEREncodeItemIntoVector(0xCuLL, 0x11uLL, "kDeviceIdentifier", &v44);
        v6 = v13;
        if (v13)
        {
          gBBULogMaskGet(v13, v14);
          v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 465);
        }

        else
        {
          v15 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v38);
          v6 = v15;
          if (v15)
          {
            gBBULogMaskGet(v15, v16);
            v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 467);
          }

          else
          {
            v50[0] = v44;
            v50[1] = v45 - v44;
            v50[2] = v38;
            v50[3] = v39 - v38;
            v17 = DEREncodeSequenceIntoVector(0x2000000000000010, v50, v51, &v32);
            v6 = v17;
            if (v17)
            {
              gBBULogMaskGet(v17, v18);
              v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 473);
            }

            else
            {
              v48[0] = v32;
              v48[1] = v33 - v32;
              v48[2] = v41;
              v48[3] = v42 - v41;
              v19 = DEREncodeSequenceIntoVector(0x2000000000000010, v48, v51, &v29);
              v6 = v19;
              if (v19)
              {
                gBBULogMaskGet(v19, v20);
                v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 482);
              }

              else
              {
                v21 = DEREncodeItemIntoVector(0xA000000000000005, v30 - v29, v29, &__p);
                v6 = v21;
                if (v21)
                {
                  gBBULogMaskGet(v21, v22);
                  v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 485);
                }

                else
                {
                  v47[0] = &v52;
                  v47[1] = 5;
                  v47[2] = __p;
                  v47[3] = v27 - __p;
                  v7 = DEREncodeSequenceIntoVector(0x2000000000000010, v47, v51, a2);
                  v6 = v7;
                  if (v7)
                  {
                    gBBULogMaskGet(v7, v8);
                    v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 493);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  gBBULogMaskGet(v7, v8);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "CreateValidationBlob DR %d\n", v6);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v6)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

void sub_299F956FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::ValidatePersoDevice(uint64_t a1, const void **a2, void *a3)
{
  v14 = 0;
  v15 = operator new(0x20uLL);
  v16 = xmmword_299FDFD10;
  strcpy(v15, "ValidatePersoDeviceRequest.bin");
  __p = 0;
  v13 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v6 = (*(**a3 + 88))(*a3, a2, a2);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 506);
    gBBULogMaskGet(v9, v10);
    v6 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete ValidatePerso command\n");
  }

  gBBULogMaskGet(v6, v7);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ValidatePersoDevice %d\n", v8);
  return v8;
}

void sub_299F958F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::SendReceiptServer(void *a1, const void **a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v33 = 0;
  v34 = 0;
  values = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&values, __p, v25, v25 - __p);
  v31 = 0;
  keys[0] = 0;
  keys[1] = 0;
  v36 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(keys, values, v33, v33 - values);
  v18[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v18[0];
    v31 = v18[0];
  }

  else
  {
    v4 = 0;
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  v27 = v4;
  if (values)
  {
    v33 = values;
    operator delete(values);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  *keys = xmmword_29F2932C8;
  v36 = @"SessionId";
  values = @"SendReceipt";
  v33 = v4;
  v34 = a1[2];
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, &values, 3, &v28);
  v7 = v5;
  if (v5)
  {
    gBBULogMaskGet(v5, v6);
    v8 = 0;
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 525);
  }

  else
  {
    v21 = 0;
    v22 = operator new(0x20uLL);
    v23 = xmmword_299FDFD10;
    strcpy(v22, "SendReceiptServerRequest.plist");
    v19 = 0;
    v20 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v19, v28, v29, v29 - v28);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v22, &v19);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    v11 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &v28, v18);
    v13 = v18[0];
    v8 = v18[1];
    if (v18[0])
    {
      v16 = operator new(0x20uLL);
      v17 = xmmword_299FDFD30;
      strcpy(v16, "SendReceiptServerResponse.plist");
      (*(*v13 + 40))(&cf, v13);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v16, &cf);
      v9 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16);
      }

      v7 = 0;
      a2[1] = *a2;
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 530);
      v7 = 53;
    }
  }

  gBBULogMaskGet(v9, v10);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "SendReceiptServer %d\n", v7);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v7;
}

void sub_299F95C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *eUICC::Perso::PersoImplementation::logTransactionData(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 48))
  {
    result = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, a3);
  }

  else
  {
    std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, a3);
    result = v4 + 2;
    *(a1 + 40) = v4 + 2;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(const void **keys, const void **values, CFIndex numValues, uint64_t a4)
{
  v30 = 0;
  v31 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, numValues, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v29 = v5;
  if (!v5)
  {
    gBBULogMaskGet(0, 0);
    v12 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "inDict", "", "", 587);
    gBBULogMaskGet(v12, v13);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create dictionary\n");
LABEL_15:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v29);
    v11 = 11;
    goto LABEL_18;
  }

  error[0] = 0;
  error[1] = &v31;
  Data = CFPropertyListCreateData(v4, v5, kCFPropertyListXMLFormat_v1_0, 0, error);
  v30 = Data;
  v7 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!Data)
  {
    gBBULogMaskGet(v7, v8);
    v14 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "outData", "", "", 589);
    gBBULogMaskGet(v14, v15);
    ctu::cf::show(error, 1, v16, v29);
    v17 = v28;
    v18 = error[0];
    ctu::cf::show(__p, 1, v19, v31);
    v20 = error;
    if (v17 < 0)
    {
      v20 = v18;
    }

    if (v26 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to serialize dictionary %s error %s\n", v20, v21);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_15;
  }

  v9 = ctu::cf::assign();
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    gBBULogMaskGet(v9, v10);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 591);
    gBBULogMaskGet(v22, v23);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to assign output data\n");
    v11 = 11;
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v29);
  CFRelease(Data);
LABEL_18:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v31);
  return v11;
}

void sub_299F96078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v25 - 56));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v25 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v25 - 40));
  _Unwind_Resume(a1);
}

uint64_t *eUICC::Perso::PersoImplementation::PostDataSync@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A20312B0;
  v27 = v6;
  v28 = v6;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v6);
  aBlock[1] = 0;
  v24 = 0;
  v22[2] = 0;
  aBlock[0] = &aBlock[1];
  v22[1] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(aBlock, aBlock[1]);
  (*(*v25 + 8))(v25, *a1);
  v7 = v25;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v27, aBlock);
  (*(*v7 + 16))(v7, aBlock[0]);
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  (*(*v25 + 96))(v25, 60.0);
  v8 = v25;
  v9 = a1[1];
  v22[0] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  (*(*v8 + 88))(v8, v22);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v22);
  (*(*v25 + 56))(v25, a2);
  __p[1] = 0;
  v21 = 0;
  __p[0] = 0;
  (*(*v25 + 40))(v25, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(&v27, aBlock);
  v10 = (*(*aBlock[0] + 16))(aBlock[0]);
  if (v10 == 1 && (v10 = (*(*aBlock[0] + 24))(aBlock[0]), v10 == 200))
  {
    *a3 = *aBlock;
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    v12 = (*(*aBlock[0] + 16))(aBlock[0]);
    v13 = (*(*aBlock[0] + 24))(aBlock[0]);
    v14 = (*(*aBlock[0] + 32))(aBlock[0]);
    (*(*aBlock[0] + 72))(&cf);
    v15 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "result %d code %d raw_error %ld error %s\n", v12, v13, v14, CStringPtr);
    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&cf);
    *a3 = 0;
    *(a3 + 8) = 0;
    if (aBlock[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](aBlock[1]);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v17 = v27;
  if (v27 && !atomic_fetch_add(v27 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v17 + 16))(v17);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v28);
}

void sub_299F96500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *aBlock, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v25 - 48);
  if (v28)
  {
    if (!atomic_fetch_add(v28 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v28 + 16))(v28, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v25 - 40));
  _Unwind_Resume(a1);
}

void eUICC::Perso::PersoImplementation::logTransactionCFData(uint64_t a1, __int128 *a2, CFDataRef *a3)
{
  if (*a3)
  {
    BytePtr = CFDataGetBytePtr(*a3);
    Length = CFDataGetLength(*a3);
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, BytePtr, &BytePtr[Length], Length);
    v8 = *(a1 + 40);
    if (v8 >= *(a1 + 48))
    {
      v9 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, &__p);
    }

    else
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, &__p);
      v9 = v8 + 2;
      *(a1 + 40) = v8 + 2;
    }

    *(a1 + 40) = v9;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

void sub_299F966AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(const __CFData **a1, __CFError **a2)
{
  v33 = 0;
  v34 = 0;
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet(a1, 0);
    v14 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "inData", "", "", 604);
    gBBULogMaskGet(v14, v15);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create data\n");
LABEL_15:
    v13 = 11;
    goto LABEL_23;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v34;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, error);
  v33 = v6;
  v7 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!v6)
  {
    gBBULogMaskGet(v7, v8);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "outPlist", "", "", 606);
    gBBULogMaskGet(v16, v17);
    ctu::cf::show(error, 1, v18, *a1);
    v19 = v32;
    v20 = error[0];
    ctu::cf::show(__p, v34, v21);
    v22 = error;
    if (v19 < 0)
    {
      v22 = v20;
    }

    if (v30 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to deserialize dictionary %s error %s\n", v22, v23);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_15;
  }

  v9 = CFGetTypeID(v6);
  TypeID = CFDictionaryGetTypeID();
  if (v9 == TypeID)
  {
    __p[0] = v6;
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(error, __p);
    v12 = *a2;
    *a2 = error[0];
    error[0] = v12;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(error);
    v13 = 0;
  }

  else
  {
    gBBULogMaskGet(TypeID, v11);
    v24 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()", "", "", 607);
    gBBULogMaskGet(v24, v25);
    ctu::cf::show(error, v6, v26);
    if (v32 >= 0)
    {
      v27 = error;
    }

    else
    {
      v27 = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Deserialized plist data is not a dictionary: %s\n", v27);
    if (v32 < 0)
    {
      operator delete(error[0]);
    }

    v13 = 11;
  }

  CFRelease(v6);
LABEL_23:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v34);
  return v13;
}

void sub_299F969B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_299F96AF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(*(v6 + 1), a2, v8);
    }

    *(v6 + 1) = v7 + v8;
  }

  return result;
}

void sub_299F96C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = v9 + 2 * v3;
  v18 = v17;
  v19 = &v9[2 * v8];
  std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(v17, a2, a3);
  v10 = v17 + 2;
  v11 = *(a1 + 8) - *a1;
  v12 = v17 - v11;
  memcpy(v17 - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v10;
}

void sub_299F96E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  return this;
}

void sub_299F96EC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_299F96FD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(v6, a2, a3, v6->__r_.__value_.__l.__size_);
    v6->__r_.__value_.__l.__size_ = result;
  }

  return result;
}

void sub_299F9708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](this, v6);
      v6 += 3;
      this += 2;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_299F97158(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *(a2 + 3), *(a2 + 4), *(a2 + 4) - *(a2 + 3));
  return this;
}

void sub_299F971E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2031238;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299F97398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 32);
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a2 + 16));
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a2 + 8));
    if (*a2)
    {
      dispatch_release(*a2);
    }

    operator delete(a2);
  }
}

void *ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(a1, v5);
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

uint64_t *std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2B8CD0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2B8CE0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x29EDC9548] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2A1C6FB70](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2B8CD0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>@<X0>(atomic_ullong **a1@<X0>, void **a2@<X8>)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3002000000;
  v8[3] = __Block_byref_object_copy_;
  v8[4] = __Block_byref_object_dispose_;
  v4 = operator new(0xA0uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A20312B0;
  v9 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  v5 = *a1;
  *a1 = v4;
  if (v5 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke;
  aBlock[3] = &unk_29F2932E8;
  aBlock[4] = v8;
  *a2 = _Block_copy(aBlock);
  _Block_object_dispose(v8, 8);
  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v9);
}

void sub_299F97B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v13 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::set_value(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(v3, a2);
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_299F97D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(a1, v5);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_94()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance, &dword_299F8C000);
  }

  return result;
}

const __CFString **VinylGoldFirmwareCreate(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v9 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "VinylGoldFirmwareCreate", "VinylGoldFirmwareCreate");
  ACFULogging::getLogInstance(v9);
  std::string::basic_string[abi:ne200100]<0>(&v21, "VinylFirmware");
  v10 = std::string::append(&v21, "::", 2uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, "VinylGoldFirmwareCreate", 0x17uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v14 = operator new(0xC0uLL);
  VinylFirmware::VinylFirmware(v14, @"/update/gold/firmware.der", @"/update/gold/info.plist", @"/update/gold/profile.bin", off_29F293368);
  v15 = VinylFirmware::setFwInfo(v14, a1, a2, a3);
  if (v15)
  {
    v16 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v16, 2, "%s::%s: setFwInfo failed delete vinylFirmware object\n", "VinylFirmware", "VinylGoldFirmwareCreate");
    VinylFirmware::~VinylFirmware(v14);
    operator delete(v17);
    v14 = 0;
  }

  else
  {
    v18 = VinylFirmware::setRecoveryFwInfo(v14, a1, a2, a3, 0, a4);
  }

  v19 = ACFULogging::getLogInstance(v18);
  ACFULogging::handleMessage(v19, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "VinylGoldFirmwareCreate", "VinylGoldFirmwareCreate");
  return v14;
}

uint64_t VinylFirmware::setFwInfo(const __CFString **this, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  v34 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  v9 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "setFwInfo", "setFwInfo");
  v32 = 0;
  v33 = 0;
  this[15] = 0;
  if (!a2 || !a3 || !a4)
  {
    v23 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v23, 2, "%s::%s: invalid params passed\n");
LABEL_17:
    v19 = 99;
    goto LABEL_14;
  }

  FWSrcPath = VinylFirmware::getFWSrcPath(v9, a3, a4);
  v11 = FWSrcPath;
  v33 = FWSrcPath;
  if (!FWSrcPath)
  {
    v24 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v24, 2, "%s::%s: Get FW source path failed\n");
    goto LABEL_17;
  }

  FileDataFromZip = VinylFirmware::getFileDataFromZip(FWSrcPath, a2, FWSrcPath, this[12]);
  v13 = FileDataFromZip;
  v32 = FileDataFromZip;
  if (!FileDataFromZip)
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: Get FW Data from Zip failed\n", "VinylFirmware", "setFwInfo");
    v19 = 99;
    goto LABEL_13;
  }

  v14 = VinylFirmware::getFileDataFromZip(FileDataFromZip, a2, v11, this[13]);
  this[18] = v14;
  if (!v14)
  {
    v26 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v26, 2, "%s::%s: Get InfoPlist Data from Zip failed\n");
LABEL_24:
    v19 = 99;
    goto LABEL_12;
  }

  v15 = VinylFirmware::getFileDataFromZip(v14, a2, v11, this[14]);
  this[19] = v15;
  if (!v15)
  {
    v27 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v27, 2, "%s::%s: Get Profile Data from Zip failed\n");
    goto LABEL_24;
  }

  v16 = *MEMORY[0x29EDB8ED8];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v13);
  this[15] = MutableCopy;
  if (!MutableCopy)
  {
    v28 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v28, 2, "%s::%s: Create FwData copy failed\n");
    goto LABEL_24;
  }

  Im4p = VinylFirmware::createIm4p(this, a2, this + 2, this + 17);
  v19 = Im4p;
  if (Im4p)
  {
    v29 = ACFULogging::getLogInstance(Im4p);
    ACFULogging::handleMessage(v29, 2, "%s::%s: error getting properlylist\n", "VinylFirmware", "setFwInfo");
    goto LABEL_12;
  }

  v20 = this[18];
  error[0] = 0;
  error[1] = &v34;
  this[21] = CFPropertyListCreateWithData(v16, v20, 0, 0, error);
  v21 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!this[21])
  {
    v30 = ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage(v30, 2, "%s::%s: error getting properlylist\n");
    goto LABEL_24;
  }

  v19 = 0;
LABEL_12:
  CFRelease(v13);
LABEL_13:
  CFRelease(v11);
LABEL_14:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v34);
  return v19;
}

void sub_299F982F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va2);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(va3);
  _Unwind_Resume(a1);
}

const void **VinylFirmware::setRecoveryFwInfo(VinylFirmware *this, const __CFData *a2, const __CFData *a3, const __CFData *a4, int a5, const __CFData *a6)
{
  v109 = *MEMORY[0x29EDCA608];
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  cf = 0;
  *(this + 16) = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  v10 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: entering: %s\n", "VinylFirmware", "setRecoveryFwInfo", "setRecoveryFwInfo");
  if (!a2 || !a3 || !a4 || !a6)
  {
    v84 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v84, 2, "%s::%s: invalid params passed\n");
    goto LABEL_79;
  }

  FwMac = VinylFirmware::getFwMac(v10, *(this + 21));
  v12 = FwMac;
  if (!FwMac)
  {
    v85 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v85, 2, "%s::%s: Failed getting FW MAC\n");
    goto LABEL_79;
  }

  ACFULogging::getLogInstance(FwMac);
  std::string::basic_string[abi:ne200100]<0>(&v97, "VinylFirmware");
  v13 = std::string::append(&v97, "::", 2uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v98.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v98.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v98, "setRecoveryFwInfo", 0x11uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v100 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v17);
  std::string::basic_string[abi:ne200100]<0>(&v97, "VinylFirmware");
  v18 = std::string::append(&v97, "::", 2uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v98.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v98.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v98, "setRecoveryFwInfo", 0x11uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v100 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  BytePtr = CFDataGetBytePtr(v12);
  v23 = CFDataGetBytePtr(a6);
  Length = CFDataGetLength(v12);
  if (Length >= CFDataGetLength(a6))
  {
    v25 = a6;
  }

  else
  {
    v25 = v12;
  }

  v26 = CFDataGetLength(v25);
  v27 = memcmp(BytePtr, v23, v26);
  v28 = v27;
  v29 = ACFULogging::getLogInstance(v27);
  v30 = ACFULogging::handleMessage(v29, 0, "%s::%s: SM::Recovery -- normal? %d macMatchRequired %d\n", "VinylFirmware", "setRecoveryFwInfo", v28 == 0, a5);
  if (v28)
  {
    if ((a5 & 1) == 0)
    {
      strcpy(v108, "/recovery/gold-");
      strcpy(v107, "/firmware.der");
      strcpy(v106, "/info.plist");
      FWSrcPath = VinylFirmware::getFWSrcPath(v30, a3, a4);
      v96 = FWSrcPath;
      if (FWSrcPath)
      {
        v32 = malloc(0x22uLL);
        v33 = malloc(0x20uLL);
        v89 = v33;
        __str = v32;
        if (v32 && v33)
        {
          v91 = FWSrcPath;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          alloc = *MEMORY[0x29EDB8ED8];
          v38 = "%s%03d%s";
          v39 = "::";
          while (1)
          {
            v40 = snprintf(__str, 0x22uLL, v38, v108, v37, v107);
            __str[33] = 0;
            v41 = ACFULogging::getLogInstance(v40);
            ACFULogging::handleMessage(v41, 0, "%s::%s: fwFileName %s\n", "VinylFirmware", "setRecoveryFwInfo", __str);
            v42 = CFStringCreateWithCString(alloc, __str, 0x8000100u);
            v43 = v42;
            v104 = v42;
            if (v36)
            {
              CFRelease(v36);
            }

            if (!v43)
            {
              v82 = ACFULogging::getLogInstance(v42);
              ACFULogging::handleMessage(v82, 2, "%s::%s: Failed to alloc create fwFilePath CFString\n");
              goto LABEL_90;
            }

            ACFULogging::getLogInstance(v42);
            std::string::basic_string[abi:ne200100]<0>(&v97, "VinylFirmware");
            v44 = std::string::append(&v97, v39, 2uLL);
            v45 = *&v44->__r_.__value_.__l.__data_;
            v98.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
            *&v98.__r_.__value_.__l.__data_ = v45;
            v44->__r_.__value_.__l.__size_ = 0;
            v44->__r_.__value_.__r.__words[2] = 0;
            v44->__r_.__value_.__r.__words[0] = 0;
            v46 = std::string::append(&v98, "setRecoveryFwInfo", 0x11uLL);
            v47 = *&v46->__r_.__value_.__l.__data_;
            v100 = v46->__r_.__value_.__r.__words[2];
            *__p = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType();
            if (SHIBYTE(v100) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v98.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97.__r_.__value_.__l.__data_);
            }

            v48 = snprintf(v89, 0x20uLL, v38, v108, v37, v106);
            v89[31] = 0;
            v49 = ACFULogging::getLogInstance(v48);
            ACFULogging::handleMessage(v49, 0, "%s::%s: plistFileName %s\n", "VinylFirmware", "setRecoveryFwInfo", v89);
            v50 = CFStringCreateWithCString(alloc, v89, 0x8000100u);
            v51 = v50;
            v103 = v50;
            if (v35)
            {
              CFRelease(v35);
            }

            if (!v51)
            {
              break;
            }

            ACFULogging::getLogInstance(v50);
            std::string::basic_string[abi:ne200100]<0>(&v97, "VinylFirmware");
            v52 = std::string::append(&v97, v39, 2uLL);
            v53 = *&v52->__r_.__value_.__l.__data_;
            v98.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
            *&v98.__r_.__value_.__l.__data_ = v53;
            v52->__r_.__value_.__l.__size_ = 0;
            v52->__r_.__value_.__r.__words[2] = 0;
            v52->__r_.__value_.__r.__words[0] = 0;
            v54 = std::string::append(&v98, "setRecoveryFwInfo", 0x11uLL);
            v55 = *&v54->__r_.__value_.__l.__data_;
            v100 = v54->__r_.__value_.__r.__words[2];
            *__p = v55;
            v54->__r_.__value_.__l.__size_ = 0;
            v54->__r_.__value_.__r.__words[2] = 0;
            v54->__r_.__value_.__r.__words[0] = 0;
            v56 = ACFULogging::handleMessageCFType();
            v57 = v91;
            if (SHIBYTE(v100) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v98.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97.__r_.__value_.__l.__data_);
            }

            FileDataFromZip = VinylFirmware::getFileDataFromZip(v56, a2, v91, v43);
            v102 = FileDataFromZip;
            if (v34)
            {
              CFRelease(v34);
              v57 = v96;
            }

            v59 = v103;
            v60 = VinylFirmware::getFileDataFromZip(FileDataFromZip, a2, v57, v103);
            v61 = cf;
            cf = v60;
            if (v61)
            {
              CFRelease(v61);
            }

            v34 = v102;
            v62 = 1;
            if (v102 && v60)
            {
              v90 = v59;
              v91 = v57;
              v63 = v37;
              v64 = v39;
              v65 = v38;
              __p[0] = 0;
              __p[1] = &v105;
              v66 = CFPropertyListCreateWithData(alloc, v60, 0, 0, __p);
              v98.__r_.__value_.__r.__words[0] = v66;
              v67 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(__p);
              v68 = VinylFirmware::getFwMac(v67, v66);
              v69 = CFDataGetBytePtr(v68);
              v70 = CFDataGetBytePtr(a6);
              v71 = CFDataGetLength(v68);
              if (v71 >= CFDataGetLength(a6))
              {
                v72 = a6;
              }

              else
              {
                v72 = v68;
              }

              v73 = CFDataGetLength(v72);
              v74 = memcmp(v69, v70, v73);
              if (!v74)
              {
                *(this + 16) = CFDataCreateMutableCopy(alloc, 0, v34);
              }

              v38 = v65;
              if (v66)
              {
                CFRelease(v66);
              }

              v62 = 1;
              if (v74)
              {
                v39 = v64;
                v36 = v43;
                v75 = v63 == 999;
                v37 = (v63 + 1);
                v35 = v90;
                if (!v75)
                {
                  continue;
                }
              }
            }

            goto LABEL_61;
          }

          v83 = ACFULogging::getLogInstance(v50);
          ACFULogging::handleMessage(v83, 2, "%s::%s: Failed to alloc create plistFilePath CFString\n");
        }

        else
        {
          v87 = ACFULogging::getLogInstance(v33);
          ACFULogging::handleMessage(v87, 2, "%s::%s: Failed to alloc memory for filename\n", "VinylFirmware", "setRecoveryFwInfo");
        }

LABEL_90:
        v62 = 0;
      }

      else
      {
        v86 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v86, 2, "%s::%s: Get FW source path failed\n", "VinylFirmware", "setRecoveryFwInfo");
        v62 = 0;
        v89 = 0;
        __str = 0;
      }

LABEL_61:
      v30 = v96;
      if (v96)
      {
        CFRelease(v96);
      }

      if ((v62 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }
  }

  else
  {
    *(this + 16) = *(this + 15);
    v30 = AMSupportSafeRetain();
  }

  v89 = 0;
  __str = 0;
LABEL_67:
  if (*(this + 16))
  {
    ACFULogging::getLogInstance(v30);
    std::string::basic_string[abi:ne200100]<0>(&v97, "VinylFirmware");
    v76 = std::string::append(&v97, "::", 2uLL);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v98.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v98.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v98, "setRecoveryFwInfo", 0x11uLL);
    v79 = *&v78->__r_.__value_.__l.__data_;
    v100 = v78->__r_.__value_.__r.__words[2];
    *__p = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v100) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v80 = ACFULogging::getLogInstance(v30);
    ACFULogging::handleMessage(v80, 0, "%s::%s: Recovery Fw is not available\n", "VinylFirmware", "setRecoveryFwInfo");
  }

LABEL_75:
  if (__str)
  {
    free(__str);
  }

  if (v89)
  {
    free(v89);
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v104)
  {
    CFRelease(v104);
  }

  return ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v105);
}

void sub_299F98CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a21);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a41);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v41 - 176));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v41 - 168));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v41 - 160));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v41 - 152));
  _Unwind_Resume(a1);
}

const __CFString **VinylMainFirmwareCreate(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v9 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "VinylMainFirmwareCreate", "VinylMainFirmwareCreate");
  ACFULogging::getLogInstance(v9);
  std::string::basic_string[abi:ne200100]<0>(&v21, "VinylFirmware");
  v10 = std::string::append(&v21, "::", 2uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, "VinylMainFirmwareCreate", 0x17uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v14 = operator new(0xC0uLL);
  VinylFirmware::VinylFirmware(v14, @"/update/main/firmware.der", @"/update/main/info.plist", @"/update/main/profile.bin", off_29F293308);
  v15 = VinylFirmware::setFwInfo(v14, a1, a2, a3);
  if (v15)
  {
    v16 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v16, 2, "%s::%s: setFwInfo failed delete vinylFirmware object\n", "VinylFirmware", "VinylMainFirmwareCreate");
    VinylFirmware::~VinylFirmware(v14);
    operator delete(v17);
    v14 = 0;
  }

  else
  {
    v18 = VinylFirmware::setRecoveryFwInfo(v14, a1, a2, a3, 1, a4);
  }

  v19 = ACFULogging::getLogInstance(v18);
  ACFULogging::handleMessage(v19, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "VinylMainFirmwareCreate", "VinylMainFirmwareCreate");
  return v14;
}

VinylFirmware *VinylFirmwareCreate(__CFData *a1, __CFData *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "VinylFirmwareCreate", "VinylFirmwareCreate");
  v13 = operator new(0xC0uLL);
  v14 = VinylFirmware::VinylFirmware(v13, a1, a2, a3, a4, a5, off_29F293368);
  if (a6)
  {
    v14 = VinylFirmware::setAuthPayload(v13, a6);
    if (v14)
    {
      v17 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v17, 2, "%s::%s: setAuthPayload failed delete vinylFirmware object\n", "VinylFirmware", "VinylFirmwareCreate");
      VinylFirmware::~VinylFirmware(v13);
      operator delete(v18);
      v13 = 0;
    }
  }

  v15 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v15, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "VinylFirmwareCreate", "VinylFirmwareCreate");
  return v13;
}

uint64_t VinylFirmware::VinylFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *a1 = *a5;
  *(a1 + 16) = v6;
  v7 = a5[2];
  v8 = a5[3];
  v9 = a5[5];
  *(a1 + 64) = a5[4];
  *(a1 + 80) = v9;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 112) = a4;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = "/usr/lib/libauthinstall.dylib";
  *(a1 + 184) = 0;
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  *(a1 + 184) = dlopen(*(a1 + 176), 1);
  return a1;
}

uint64_t VinylFirmware::VinylFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFData *a5, uint64_t a6, _OWORD *a7)
{
  v9 = a7[1];
  *a1 = *a7;
  *(a1 + 16) = v9;
  v10 = a7[2];
  v11 = a7[3];
  v12 = a7[5];
  *(a1 + 64) = a7[4];
  *(a1 + 80) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  *(a1 + 136) = a4;
  *(a1 + 144) = a5;
  *(a1 + 152) = a6;
  *(a1 + 176) = "/usr/lib/libauthinstall.dylib";
  *(a1 + 184) = 0;
  v16 = 0;
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  v13 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v16;
  *(a1 + 168) = CFPropertyListCreateWithData(v13, a5, 0, 0, error);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  *(a1 + 184) = dlopen(*(a1 + 176), 1);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v16);
  return a1;
}

void sub_299F99314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

void VinylFirmware::~VinylFirmware(VinylFirmware *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: VinylFirmware destructor called\n", "VinylFirmware", "~VinylFirmware");
  v3 = *(this + 12);
  if (v3)
  {
    CFRelease(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 13);
  if (v4)
  {
    CFRelease(v4);
    *(this + 13) = 0;
  }

  v5 = *(this + 14);
  if (v5)
  {
    CFRelease(v5);
    *(this + 14) = 0;
  }

  v6 = *(this + 15);
  if (v6)
  {
    CFRelease(v6);
    *(this + 15) = 0;
  }

  v7 = *(this + 16);
  if (v7)
  {
    CFRelease(v7);
    *(this + 16) = 0;
  }

  v8 = *(this + 17);
  if (v8)
  {
    CFRelease(v8);
    *(this + 17) = 0;
  }

  v9 = *(this + 18);
  if (v9)
  {
    CFRelease(v9);
    *(this + 18) = 0;
  }

  v10 = *(this + 19);
  if (v10)
  {
    CFRelease(v10);
    *(this + 19) = 0;
  }

  v11 = *(this + 21);
  if (v11)
  {
    CFRelease(v11);
    *(this + 21) = 0;
  }

  v12 = *(this + 20);
  if (v12)
  {
    CFRelease(v12);
    *(this + 20) = 0;
  }

  v13 = *(this + 23);
  if (v13)
  {
    dlclose(v13);
    *(this + 23) = 0;
  }
}

ACFULogging *VinylFirmware::getFWSrcPath(VinylFirmware *this, const __CFData *a2, const __CFData *a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v5 = malloc(0x41uLL);
  if (!v5)
  {
    VinylFirmware::getFWSrcPath(0);
    return 0;
  }

  v6 = v5;
  if (!a2 || !a3)
  {
    VinylFirmware::getFWSrcPath(v5);
LABEL_41:
    v33 = 0;
    goto LABEL_36;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 0, a2);
  LogInstance = ACFULogging::getLogInstance(MutableCopy);
  if (!MutableCopy)
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: certPlusLdrVer memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
    goto LABEL_41;
  }

  std::string::basic_string[abi:ne200100]<0>(&v40, "VinylFirmware");
  v9 = std::string::append(&v40, "::", 2uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v41, "getFWSrcPath", 0xCuLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v43 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
  ACFULogging::getLogInstance(v15);
  std::string::basic_string[abi:ne200100]<0>(&v40, "VinylFirmware");
  v16 = std::string::append(&v40, "::", 2uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v41, "getFWSrcPath", 0xCuLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v43 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  CFDataGetBytePtr(MutableCopy);
  CFDataGetLength(MutableCopy);
  v20 = AMSupportDigestSha256();
  if (v20)
  {
    VinylFirmware::getFWSrcPath(v20);
  }

  else
  {
    v21 = CFDataCreate(0, bytes, 32);
    v22 = ACFULogging::getLogInstance(v21);
    if (v21)
    {
      std::string::basic_string[abi:ne200100]<0>(&v40, "VinylFirmware");
      v23 = std::string::append(&v40, "::", 2uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v25 = std::string::append(&v41, "getFWSrcPath", 0xCuLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v43 = v25->__r_.__value_.__r.__words[2];
      *__p = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      v27 = bytes;
      v28 = 65;
      v29 = v6;
      do
      {
        v30 = *v27++;
        v31 = snprintf(v29, v28, "%02x", v30);
        v29 += 2;
        v28 -= 2;
      }

      while (v28 != 1);
      v6[64] = 0;
      v32 = ACFULogging::getLogInstance(v31);
      ACFULogging::handleMessage(v32, 4, "%s::%s: vinylgetFwData srcPath %s:\n", "VinylFirmware", "getFWSrcPath", v6);
      v33 = CFStringCreateWithCString(0, v6, 0x8000100u);
      v34 = ACFULogging::getLogInstance(v33);
      if (v33)
      {
        std::string::basic_string[abi:ne200100]<0>(&v40, "VinylFirmware");
        v35 = std::string::append(&v40, "::", 2uLL);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v41, "getFWSrcPath", 0xCuLL);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v43 = v37->__r_.__value_.__r.__words[2];
        *__p = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        ACFULogging::handleMessage(v34, 2, "%s::%s: fwSrcPath memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
      }

      CFRelease(v21);
      goto LABEL_35;
    }

    ACFULogging::handleMessage(v22, 2, "%s::%s: digestRef memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
  }

  v33 = 0;
LABEL_35:
  CFRelease(MutableCopy);
LABEL_36:
  free(v6);
  return v33;
}

void sub_299F99970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef VinylFirmware::getFileDataFromZip(VinylFirmware *this, const __CFData *a2, const __CFString *a3, const __CFString *a4)
{
  v32 = 0;
  ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
  v7 = std::string::append(&v28, "::", 2uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v29, "getFileDataFromZip", 0x12uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v31 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v11);
  std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
  v12 = std::string::append(&v28, "::", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v29, "getFileDataFromZip", 0x12uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v31 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v16 = "%s::%s: invalid params passed\n";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_28;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    v16 = "%s::%s: Unable to allocate memory for fullPath:\n";
LABEL_28:
    VinylFirmware::getFileDataFromZip(v16);
    return 0;
  }

  v18 = Mutable;
  CFStringAppend(Mutable, a3);
  CFStringAppend(v18, a4);
  ACFULogging::getLogInstance(v19);
  std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
  v20 = std::string::append(&v28, "::", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v29, "getFileDataFromZip", 0x12uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v31 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v24 = eUICCFwReaderOpen(a2);
  v25 = v24;
  if (!v24)
  {
    v27 = "%s::%s: Unable to unzip the fwdata:\n";
LABEL_31:
    VinylFirmware::getFileDataFromZip(v27);
    goto LABEL_25;
  }

  if (eUICCFwReaderFindAndCopyFileData(v24, v18, &v32))
  {
    v27 = "%s::%s: Unable to copy the firmware:\n";
    goto LABEL_31;
  }

LABEL_25:
  eUICCFwReaderClose(v25);
  CFRelease(v18);
  return v32;
}

void sub_299F99CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylFirmware::createIm4p(ACFULogging *a1, ACFULogging *a2, CFStringRef *a3, void *a4)
{
  v89 = *MEMORY[0x29EDCA608];
  v86 = 0;
  v85 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "createIm4p", "createIm4p");
  v7 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  values = Mutable;
  v88 = CFArrayCreateMutable(0, 0, v7);
  theArray = v88;
  v9 = 1;
  v10 = Mutable;
  if (!a2 || !a3)
  {
    goto LABEL_100;
  }

  v11 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_82;
  }

  v9 = 2;
  if (!Mutable)
  {
LABEL_100:
    v11 = 0;
    v12 = 0;
    goto LABEL_82;
  }

  v11 = 0;
  v12 = 0;
  if (!v88)
  {
    goto LABEL_82;
  }

  v13 = CFArrayCreate(0, &values, 2, MEMORY[0x29EDB9000]);
  a3[6] = v13;
  if (!v13)
  {
    goto LABEL_107;
  }

  v82[0] = a1;
  v82[1] = a3;
  v14 = eUICCFwReaderStart(a2, VinylFirmwareReaderInfoPlistCallback, v82);
  v9 = v14;
  if (v14)
  {
    VinylFirmware::createIm4p(v14);
LABEL_107:
    v12 = 0;
    v11 = 0;
    goto LABEL_83;
  }

  if (!a3[7])
  {
    VinylFirmware::createIm4p(v14);
LABEL_106:
    v9 = 0;
    goto LABEL_107;
  }

  v9 = eUICCFwReaderStart(a2, VinylFirmwareReaderCallback, v82);
  v15 = ACFULogging::getLogInstance(v9);
  if (v9)
  {
    ACFULogging::handleMessage(v15, 2, "%s::%s: failed to read zip file\n", "VinylFirmware", "createIm4p");
    goto LABEL_107;
  }

  std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
  v16 = std::string::append(&v78, "::", 2uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v79, "createIm4p", 0xAuLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v81 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v20);
  std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
  v21 = std::string::append(&v78, "::", 2uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v79, "createIm4p", 0xAuLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v81 = v23->__r_.__value_.__r.__words[2];
  *__p = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v25);
  std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
  v26 = std::string::append(&v78, "::", 2uLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v79, "createIm4p", 0xAuLL);
  v29 = Mutable;
  v30 = *&v28->__r_.__value_.__l.__data_;
  v81 = v28->__r_.__value_.__r.__words[2];
  *__p = v30;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v31 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (a3[3])
  {
    ACFULogging::getLogInstance(v31);
    std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
    v32 = std::string::append(&v78, "::", 2uLL);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v79, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v35 = *&v34->__r_.__value_.__l.__data_;
    v81 = v34->__r_.__value_.__r.__words[2];
    *__p = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v31 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }
  }

  if (a3[4])
  {
    ACFULogging::getLogInstance(v31);
    std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
    v36 = std::string::append(&v78, "::", 2uLL);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v79, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v39 = *&v38->__r_.__value_.__l.__data_;
    v81 = v38->__r_.__value_.__r.__words[2];
    *__p = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v31 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }
  }

  if (a3[5])
  {
    ACFULogging::getLogInstance(v31);
    std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
    v40 = std::string::append(&v78, "::", 2uLL);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v79, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v43 = *&v42->__r_.__value_.__l.__data_;
    v81 = v42->__r_.__value_.__r.__words[2];
    *__p = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v31 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }
  }

  if (a3[6])
  {
    ACFULogging::getLogInstance(v31);
    std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
    v44 = std::string::append(&v78, "::", 2uLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v79, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v47 = *&v46->__r_.__value_.__l.__data_;
    v81 = v46->__r_.__value_.__r.__words[2];
    *__p = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }
  }

  Count = CFArrayGetCount(v29);
  v49 = Count;
  if (Count <= 0)
  {
    VinylFirmware::createIm4p(Count);
    goto LABEL_106;
  }

  v50 = CFArrayGetCount(theArray);
  if (v49 != v50)
  {
    VinylFirmware::createIm4p(v50);
    goto LABEL_106;
  }

  v12 = malloc(8 * v49);
  v51 = malloc(8 * v49);
  v11 = v51;
  if (v12 && v51)
  {
    v90.location = 0;
    v90.length = v49;
    CFArrayGetValues(Mutable, v90, v12);
    v91.location = 0;
    v91.length = v49;
    CFArrayGetValues(theArray, v91, v11);
    DEREncoderCreate();
    DEREncoderCreate();
    v52 = 0;
    do
    {
      DEREncoderCreate();
      CFDataGetBytePtr(v12[v52]);
      CFDataGetLength(v12[v52]);
      v53 = DEREncoderAddData();
      if (v53)
      {
        VinylFirmware::createIm4p(v53);
        goto LABEL_81;
      }

      CFDataGetBytePtr(v11[v52]);
      CFDataGetLength(v11[v52]);
      v54 = DEREncoderAddData();
      if (v54)
      {
        VinylFirmware::createIm4p(v54);
        goto LABEL_81;
      }

      v55 = DEREncoderAddSequenceFromEncoder();
      if (v55)
      {
        VinylFirmware::createIm4p(v55);
        goto LABEL_81;
      }

      DEREncoderDestroy();
      ++v52;
    }

    while (v49 != v52);
    v56 = DEREncoderAddSequenceFromEncoder();
    if (v56)
    {
      VinylFirmware::createIm4p(v56);
    }

    else
    {
      DEREncoderDestroy();
      EncodedBuffer = DEREncoderCreateEncodedBuffer();
      if (EncodedBuffer)
      {
        VinylFirmware::createIm4p(EncodedBuffer);
      }

      else
      {
        v58 = CFDataCreateWithBytesNoCopy(0, v86, v85, *MEMORY[0x29EDB8EE0]);
        if (!v58)
        {
          v9 = 2;
          goto LABEL_82;
        }

        if (CFStringGetCString(*a3, buffer, 5, 0x8000100u))
        {
          CString = CFStringGetCString(@"1.0", v83, 5, 0x8000100u);
          if (CString)
          {
            ACFULogging::getLogInstance(CString);
            std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
            v60 = std::string::append(&v78, "::", 2uLL);
            v61 = *&v60->__r_.__value_.__l.__data_;
            v79.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
            *&v79.__r_.__value_.__l.__data_ = v61;
            v60->__r_.__value_.__l.__size_ = 0;
            v60->__r_.__value_.__r.__words[2] = 0;
            v60->__r_.__value_.__r.__words[0] = 0;
            v62 = std::string::append(&v79, "createIm4p", 0xAuLL);
            v63 = *&v62->__r_.__value_.__l.__data_;
            v81 = v62->__r_.__value_.__r.__words[2];
            *__p = v63;
            v62->__r_.__value_.__l.__size_ = 0;
            v62->__r_.__value_.__r.__words[2] = 0;
            v62->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType();
            if (SHIBYTE(v81) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v79.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v78.__r_.__value_.__l.__data_);
            }

            v64 = *(a1 + 23);
            if (v64)
            {
              v65 = dlsym(v64, "AMAuthInstallApImg4CreatePayload");
              v66 = dlerror();
              if (!v66 && v65)
              {
                v9 = (v65)(buffer, v83, v58, 0, 0, a4);
                v67 = ACFULogging::getLogInstance(v9);
                if (!v9)
                {
                  std::string::basic_string[abi:ne200100]<0>(&v78, "VinylFirmware");
                  v68 = std::string::append(&v78, "::", 2uLL);
                  v69 = *&v68->__r_.__value_.__l.__data_;
                  v79.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
                  *&v79.__r_.__value_.__l.__data_ = v69;
                  v68->__r_.__value_.__l.__size_ = 0;
                  v68->__r_.__value_.__r.__words[2] = 0;
                  v68->__r_.__value_.__r.__words[0] = 0;
                  v70 = std::string::append(&v79, "createIm4p", 0xAuLL);
                  v71 = *&v70->__r_.__value_.__l.__data_;
                  v81 = v70->__r_.__value_.__r.__words[2];
                  *__p = v71;
                  v70->__r_.__value_.__l.__size_ = 0;
                  v70->__r_.__value_.__r.__words[2] = 0;
                  v70->__r_.__value_.__r.__words[0] = 0;
                  ACFULogging::handleMessageCFType();
                  VinylFirmware::createIm4p(__p, &v78, &v79);
LABEL_81:
                  v9 = 0;
                  goto LABEL_82;
                }

                ACFULogging::handleMessage(v67, 0, "%s::%s: failed to create im4p\n", "VinylFirmware", "createIm4p");
LABEL_82:
                if (!v10)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }

              VinylFirmware::createIm4p(v66);
            }

            else
            {
              VinylFirmware::createIm4p(0);
            }

            v9 = 99;
            goto LABEL_82;
          }
        }
      }
    }

    v9 = 3;
    goto LABEL_82;
  }

  VinylFirmware::createIm4p(v51);
  v9 = 0;
LABEL_83:
  CFRelease(v10);
LABEL_84:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    free(v12);
  }

  if (v11)
  {
    free(v11);
  }

  DEREncoderDestroy();
  DEREncoderDestroy();
  v72 = a3[6];
  if (v72)
  {
    CFRelease(v72);
    a3[6] = 0;
  }

  v73 = a3[7];
  if (v73)
  {
    CFRelease(v73);
    a3[7] = 0;
  }

  if (v86)
  {
    free(v86);
  }

  return v9;
}

void sub_299F9A968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const void *VinylFirmware::getFwMac(VinylFirmware *this, const __CFDictionary *a2)
{
  if (a2 && (v3 = CFDictionaryGetTypeID(), this = CFGetTypeID(a2), v3 == this))
  {
    Value = CFDictionaryGetValue(a2, @"com.apple.EmbeddedSoftwareRestore.eUICC.firmwareMac");
    if (Value)
    {
      TypeID = CFDataGetTypeID();
      Length = CFGetTypeID(Value);
      if (TypeID == Length && (Length = CFDataGetLength(Value), Length == 8))
      {
        ACFULogging::getLogInstance(8);
        std::string::basic_string[abi:ne200100]<0>(&v12, "VinylFirmware");
        v7 = std::string::append(&v12, "::", 2uLL);
        v8 = *&v7->__r_.__value_.__l.__data_;
        v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
        *&v13.__r_.__value_.__l.__data_ = v8;
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        v9 = std::string::append(&v13, "getFwMac", 8uLL);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v15 = v9->__r_.__value_.__r.__words[2];
        v14 = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14);
        }

        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        VinylFirmware::getFwMac(Length);
      }
    }

    else
    {
      VinylFirmware::getFwMac(0);
    }
  }

  else
  {
    VinylFirmware::getFwMac(this);
    return 0;
  }

  return Value;
}

void sub_299F9ABB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

uint64_t VinylFirmware::getRecoveryFwData(VinylFirmware *this)
{
  ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v12, "VinylFirmware");
  v2 = std::string::append(&v12, "::", 2uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, "getRecoveryFwData", 0x11uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v15 = v4->__r_.__value_.__r.__words[2];
  v14 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v6);
  std::string::basic_string[abi:ne200100]<0>(&v12, "VinylFirmware");
  v7 = std::string::append(&v12, "::", 2uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v13, "getRecoveryFwData", 0x11uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15 = v9->__r_.__value_.__r.__words[2];
  v14 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return *(this + 16);
}

void sub_299F9ADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

uint64_t VinylFirmwareReaderInfoPlistCallback(VinylFirmware *a1, CFStringRef theString, ACFULogging *a3)
{
  if (a1)
  {
    v6 = *(a1 + 1);

    return VinylFirmware::fwReaderInfoPlistCallback(a1, v6, theString, a3);
  }

  else
  {
    VinylFirmwareReaderInfoPlistCallback(a1);
    return 0;
  }
}

uint64_t VinylFirmwareReaderCallback(VinylFirmware **a1, CFStringRef theString, ACFULogging *a3)
{
  if (a1)
  {
    v6 = a1[1];
    v7 = *a1;

    return VinylFirmware::fwReaderCallback(v7, v6, theString, a3);
  }

  else
  {
    VinylFirmwareReaderCallback(a1);
    return 0;
  }
}

CFStringRef VinylFirmware::getPathComponent(VinylFirmware *this, const __CFString *a2)
{
  if (!a2)
  {
    VinylFirmware::getPathComponent(this);
    return 0;
  }

  v2 = *MEMORY[0x29EDB8ED8];
  v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], a2, kCFURLPOSIXPathStyle, 0);
  if (!v3)
  {
    VinylFirmware::getPathComponent(0);
    return 0;
  }

  v4 = v3;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v2, v3);
  if (!PathComponent)
  {
    VinylFirmware::getPathComponent(v4);
    return 0;
  }

  v6 = PathComponent;
  v7 = CFURLGetString(PathComponent);
  Copy = CFStringCreateCopy(v2, v7);
  if (!Copy)
  {
    VinylFirmware::getPathComponent(0);
  }

  CFRelease(v4);
  CFRelease(v6);
  return Copy;
}

uint64_t VinylFirmware::checkVinylFwLdrVerLegacy(VinylFirmware *this, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count <= 0)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(Count);
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(0);
    return 1;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
  if (!ArrayBySeparatingStrings)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(0);
    return 1;
  }

  v6 = ArrayBySeparatingStrings;
  v7 = CFArrayGetCount(ArrayBySeparatingStrings);
  if (v7 == 2)
  {
    v8 = CFArrayGetValueAtIndex(v6, 0);
    IntValue = CFStringGetIntValue(v8);
    v10 = CFArrayGetValueAtIndex(v6, 1);
    v11 = ((CFStringGetIntValue(v10) | (IntValue << 8)) & 0x7FFFu) < 0x301;
  }

  else
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(v7);
    v11 = 1;
  }

  CFRelease(v6);
  return v11;
}

const __CFData *VinylFirmware::fwLdrVerEqual(VinylFirmware *this, CFArrayRef theArray, const __CFData *a3)
{
  if (!theArray || (this = CFArrayGetCount(theArray), this <= 0))
  {
    VinylFirmware::fwLdrVerEqual(this);
    return 0;
  }

  if (a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
      if (ArrayBySeparatingStrings)
      {
        v7 = ArrayBySeparatingStrings;
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count == 2)
        {
          BytePtr = CFDataGetBytePtr(a3);
          a3 = BytePtr;
          if (!BytePtr)
          {
            VinylFirmware::fwLdrVerEqual(0);
            goto LABEL_17;
          }

          v10 = *BytePtr;
          v11 = CFArrayGetValueAtIndex(v7, 0);
          if (CFStringGetIntValue(v11) == v10)
          {
            v12 = *(a3 + 1);
            v13 = CFArrayGetValueAtIndex(v7, 1);
            a3 = (CFStringGetIntValue(v13) == v12);
LABEL_17:
            CFRelease(v7);
            return a3;
          }
        }

        else
        {
          VinylFirmware::fwLdrVerEqual(Count);
        }

        a3 = 0;
        goto LABEL_17;
      }

      VinylFirmware::fwLdrVerEqual(0);
    }

    else
    {
      VinylFirmware::fwLdrVerEqual(0);
    }

    return 0;
  }

  VinylFirmware::fwLdrVerEqual(this);
  return a3;
}

uint64_t VinylFirmware::generateMeasurement@<X0>(CFDataRef *this@<X0>, const void **a2@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "generateMeasurement", "generateMeasurement");
  *a2 = 0;
  CFDataGetBytePtr(this[17]);
  CFDataGetLength(this[17]);
  v5 = AMSupportDigestSha256();
  if (v5)
  {
    v14 = ACFULogging::getLogInstance(v5);
    return ACFULogging::handleMessage(v14, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "generateMeasurement");
  }

  else
  {
    __p[0] = CFDataCreate(0, bytes, 32);
    v6 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, __p);
    ACFULogging::getLogInstance(v6);
    std::string::basic_string[abi:ne200100]<0>(&v15, "VinylFirmware");
    v7 = std::string::append(&v15, "::", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v16, "generateMeasurement", 0x13uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v12 = ACFULogging::getLogInstance(v11);
    return ACFULogging::handleMessage(v12, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "generateMeasurement", "generateMeasurement");
  }
}

void sub_299F9B30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v30);
  _Unwind_Resume(a1);
}

void VinylFirmware::getFirmwareAPDUs(VinylFirmware **this@<X0>, uint64_t a2@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "getFirmwareAPDUs", "getFirmwareAPDUs");
  v5 = this[15];

  VinylFirmware::getFirmwareAPDUs(v5, a2);
}

void VinylFirmware::getFirmwareAPDUs(VinylFirmware *this@<X0>, uint64_t a2@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "getFirmwareAPDUs", "getFirmwareAPDUs");
  v35 = 0uLL;
  v36 = 0;
  v32[0] = CFDataGetMutableBytePtr(this);
  v32[1] = CFDataGetLength(this);
  v31 = 0;
  v5 = DERParseSequence(v32, 2u, &eUICC::DER::vinylFirmwareImageItemSpec, v33, 0x20uLL);
  if (v5 || (v5 = DERDecodeSeqInit(&v34, &v31, v30), v5))
  {
    v23 = ACFULogging::getLogInstance(v5);
    v24 = ACFULogging::handleMessage(v23, 2, "%s::%s: Invalid input Firmware\n", "VinylFirmware", "getFirmwareAPDUs");
  }

  else
  {
    while (1)
    {
      v6 = DERDecodeSeqNext(v30, v28);
      if (v6 == 1)
      {
        v22 = ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage(v22, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "getFirmwareAPDUs", "getFirmwareAPDUs");
        *a2 = v35;
        *(a2 + 16) = v36;
        return;
      }

      if (v6)
      {
        break;
      }

      v6 = DERParseSequenceContent(&v29, 3u, &eUICC::DER::vinylFirmwareImageAPDUItemSpec, v27, 0x30uLL);
      if (v6)
      {
        break;
      }

      v7 = v27[0];
      v8 = v27[1];
      v10 = v27[2];
      v9 = v27[3];
      v11 = *(&v35 + 1);
      if (*(&v35 + 1) >= v36)
      {
        v13 = (*(&v35 + 1) - v35) >> 5;
        v14 = v13 + 1;
        if ((v13 + 1) >> 59)
        {
          std::vector<char *>::__throw_length_error[abi:ne200100]();
        }

        v15 = &v36[-v35];
        if (&v36[-v35] >> 4 > v14)
        {
          v14 = v15 >> 4;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFE0)
        {
          v16 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          v17 = std::__allocate_at_least[abi:ne200100]<std::allocator<VinylFirmware::APDU>>(&v35, v16);
        }

        else
        {
          v17 = 0;
        }

        v18 = &v17[32 * v13];
        v19 = &v17[32 * v16];
        *v18 = v7;
        *(v18 + 1) = v8;
        *(v18 + 2) = v10;
        *(v18 + 3) = v9;
        v12 = v18 + 32;
        v20 = &v18[-(*(&v35 + 1) - v35)];
        memcpy(v20, v35, *(&v35 + 1) - v35);
        v21 = v35;
        *&v35 = v20;
        *(&v35 + 1) = v12;
        v36 = v19;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        **(&v35 + 1) = v27[0];
        v11[1] = v8;
        v12 = v11 + 4;
        v11[2] = v10;
        v11[3] = v9;
      }

      *(&v35 + 1) = v12;
    }

    v25 = ACFULogging::getLogInstance(v6);
    v24 = ACFULogging::handleMessage(v25, 2, "%s::%s: Corrupt eUICC FW Data!\n", "VinylFirmware", "getFirmwareAPDUs");
  }

  v26 = ACFULogging::getLogInstance(v24);
  ACFULogging::handleMessage(v26, 4, "%s::%s: leaving: %s due to failure\n", "VinylFirmware", "getFirmwareAPDUs", "getFirmwareAPDUs");
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}

void sub_299F9B66C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *VinylFirmware::getVersionString@<X0>(CFMutableDataRef *this@<X0>, void *a2@<X8>)
{
  v9[0] = CFDataGetMutableBytePtr(this[15]);
  v9[1] = CFDataGetLength(this[15]);
  if (!DERParseSequence(v9, 2u, &eUICC::DER::vinylFirmwareImageItemSpec, v12, 0x20uLL))
  {
    result = DERParseSequenceContent(v12, 3u, &eUICC::DER::vinylFirmwareImageHeaderItemSpec, &__src, 0x30uLL);
    if (!result)
    {
      v5 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v6 = __src;
      if (__len >= 0x17)
      {
        if ((__len | 7) == 0x17)
        {
          v7 = 25;
        }

        else
        {
          v7 = (__len | 7) + 1;
        }

        v8 = operator new(v7);
        a2[1] = v5;
        a2[2] = v7 | 0x8000000000000000;
        *a2 = v8;
        a2 = v8;
      }

      else
      {
        *(a2 + 23) = __len;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      result = memmove(a2, v6, v5);
LABEL_12:
      *(a2 + v5) = 0;
      return result;
    }
  }

  return VinylFirmware::getVersionString(a2);
}

void VinylFirmware::bootloaderVersion(VinylFirmware *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  std::to_string(&v11, this);
  v5 = std::string::append(&v11, ".", 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v12, p_p, size);
  *a3 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_299F9B88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void VinylFirmware::generateMeasurementDict(VinylFirmware *this@<X0>, const __CFData *a2@<X1>, CFMutableDictionaryRef *a3@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: generateMeasurementDict\n", "VinylFirmware", "generateMeasurementDict");
  v32 = 0;
  v33 = 0;
  *a3 = 0;
  __p[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = ctu::cf::CFSharedRef<__CFDictionary>::operator=(a3, __p);
  if (!*a3)
  {
    v24 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to create measurementDict\n");
    return;
  }

  CFDataGetBytePtr(this);
  CFDataGetLength(this);
  v8 = AMSupportDigestSha256();
  if (v8)
  {
    v25 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v25, 2, "%s::%s: failed to compute digest\n");
    return;
  }

  v9 = CFDataCreate(0, bytes, 32);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v11 = Mutable;
  v33 = Mutable;
  if (v9 && Mutable)
  {
    CFDictionarySetValue(Mutable, @"Digest", v9);
    CFDictionarySetValue(*a3, @"eUICC,Gold", v11);
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    v12 = AMSupportDigestSha256();
    if (!v12)
    {
      v13 = CFDataCreate(0, bytes, 32);
      v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v15 = v14;
      v32 = v14;
      if (v14 && v13)
      {
        CFDictionarySetValue(v14, @"Digest", v13);
        CFDictionarySetValue(*a3, @"eUICC,Main", v15);
        ACFULogging::getLogInstance(v16);
        std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
        v17 = std::string::append(&v28, "::", 2uLL);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v29, "generateMeasurementDict", 0x17uLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v31 = v19->__r_.__value_.__r.__words[2];
        *__p = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = ACFULogging::handleMessageCFType();
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v22 = ACFULogging::getLogInstance(v21);
        ACFULogging::handleMessage(v22, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "generateMeasurementDict", "generateMeasurementDict");
      }

      else
      {
        v27 = ACFULogging::getLogInstance(v14);
        ACFULogging::handleMessage(v27, 2, "%s::%s: failed to create mainDict\n", "VinylFirmware", "generateMeasurementDict");
      }

      goto LABEL_15;
    }

    v26 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "generateMeasurementDict");
LABEL_27:
    v15 = 0;
    v13 = 0;
LABEL_15:
    CFRelease(v9);
    if (v13)
    {
      CFRelease(v13);
    }

    if (v15)
    {
      CFRelease(v15);
      v11 = v33;
    }

    goto LABEL_19;
  }

  v23 = ACFULogging::getLogInstance(Mutable);
  ACFULogging::handleMessage(v23, 2, "%s::%s: failed to create goldDict\n", "VinylFirmware", "generateMeasurementDict");
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_19:
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_299F9BC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylFirmware::generateMeasurement@<X0>(VinylFirmware *this@<X0>, const void **a2@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "generateMeasurement", "generateMeasurement");
  *a2 = 0;
  CFDataGetBytePtr(this);
  CFDataGetLength(this);
  v5 = AMSupportDigestSha256();
  if (v5)
  {
    v14 = ACFULogging::getLogInstance(v5);
    return ACFULogging::handleMessage(v14, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "generateMeasurement");
  }

  else
  {
    __p[0] = CFDataCreate(0, bytes, 32);
    v6 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, __p);
    ACFULogging::getLogInstance(v6);
    std::string::basic_string[abi:ne200100]<0>(&v15, "VinylFirmware");
    v7 = std::string::append(&v15, "::", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v16, "generateMeasurement", 0x13uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v12 = ACFULogging::getLogInstance(v11);
    return ACFULogging::handleMessage(v12, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "generateMeasurement", "generateMeasurement");
  }
}

void sub_299F9BF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v30);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
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

void *std::__allocate_at_least[abi:ne200100]<std::allocator<VinylFirmware::APDU>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(32 * a2);
}

void VinylEURCommunication::statusCallback(const void *a1, uint64_t a2, int a3)
{
  if ((*gBBULogMaskGet(a1, a2) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(0, 0, "VinylEURCommunication", "", "transport %p, status: %#x\n", a1, a3);
  }

  if (a3 == 1)
  {
    Controller = TelephonyBasebandCreateController();
    v6 = TelephonyBasebandResetModem();
    v7 = v6;
    if ((*gBBULogMaskGet(v6, v8) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = "failure";
      if (v7)
      {
        v9 = "success";
      }

      _BBULog(2, 0, "VinylEURCommunication", "", "Resetting modem: %s\n", v9);
    }

    if (Controller)
    {
      CFRelease(Controller);
    }
  }
}

void sub_299F9C0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}