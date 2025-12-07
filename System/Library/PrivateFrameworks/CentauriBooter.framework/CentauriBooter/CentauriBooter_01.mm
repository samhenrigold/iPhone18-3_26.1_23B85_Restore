uint64_t CentauriFirmware::copyRFEM(CentauriFirmware *this, const __CFData **a2)
{
  v2 = this;
  if (!this)
  {
    CentauriFirmware::copyRFEM(0);
    return v2;
  }

  v3 = IOServiceNameMatching("centauri");
  if (!v3)
  {
    CentauriFirmware::copyRFEM(0);
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
  if (!MatchingService)
  {
    CentauriFirmware::copyRFEM(MatchingService);
    return 0;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"wifi-rfem-info", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    TypeID = CFDataGetTypeID();
    if (v8 != TypeID)
    {
      CFRelease(v7);
      LogInstance = ACFULogging::getLogInstance(v16);
      ACFUCommon::cfTypeDescription(&v21, v8);
      if (v22 >= 0)
      {
        v18 = &v21;
      }

      else
      {
        v18 = v21;
      }

      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: property has wrong type %s\n", "CentauriFirmware", "copyRFEM", v18);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }

      v2 = 0;
      goto LABEL_15;
    }

    ACFULogging::getLogInstance(TypeID);
    std::string::basic_string[abi:ne200100]<0>(&v19, "CentauriFirmware");
    v10 = std::string::append(&v19, "::", 2uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v20, "copyRFEM", 8uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v22 = v12->__r_.__value_.__r.__words[2];
    v21 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    *v2 = v7;
  }

  else
  {
    v14 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v14, 3, "%s::%s: RFEM not found\n", "CentauriFirmware", "copyRFEM");
  }

  v2 = 1;
LABEL_15:
  IOObjectRelease(v5);
  return v2;
}

void sub_243394704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::copyWSKU(CentauriFirmware *this, const __CFString **a2)
{
  v2 = this;
  if (this)
  {
    v3 = MGCopyAnswer();
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      TypeID = CFDataGetTypeID();
      if (v5 == TypeID)
      {
        Length = CFDataGetLength(v4);
        if (Length == 16)
        {
          BytePtr = CFDataGetBytePtr(v4);
          v9 = BytePtr;
          v10 = *BytePtr;
          if (*BytePtr == 0x1000000)
          {
            LogInstance = ACFULogging::getLogInstance(BytePtr);
            ACFULogging::handleMessage(LogInstance, 0, "%s::%s: swapping endianness\n", "CentauriFirmware", "copyWSKU");
            *v9 = vrev32q_s8(*v9);
            v10 = v9->i32[0];
          }

          if (v10 == 1)
          {
            v12 = 0;
            v13 = &v9->i8[8];
            do
            {
              if (*(v12 + v13) < 0)
              {
                CentauriFirmware::copyWSKU(v12);
                goto LABEL_20;
              }

              v12 = (v12 + 1);
            }

            while (v12 != 8);
            v14 = *v13;
            v15 = ACFULogging::getLogInstance(8);
            if (!v14)
            {
              ACFULogging::handleMessage(v15, 0, "%s::%s: ignoring empty WSKU\n", "CentauriFirmware", "copyWSKU");
              goto LABEL_16;
            }

            ACFULogging::handleMessage(v15, 0, "%s::%s: WSKU: '%s'\n", "CentauriFirmware", "copyWSKU", v13);
            v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v13, 0x8000100u);
            if (v16)
            {
              *v2 = v16;
LABEL_16:
              v2 = 1;
              goto LABEL_17;
            }

            CentauriFirmware::copyWSKU(0);
          }

          else
          {
            CentauriFirmware::copyWSKU(v9);
          }
        }

        else
        {
          CentauriFirmware::copyWSKU(Length);
        }
      }

      else
      {
        v19 = ACFULogging::getLogInstance(TypeID);
        ACFUCommon::cfTypeDescription(__p, v5);
        if (v22 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        ACFULogging::handleMessage(v19, 2, "%s::%s: unexpected type %s\n", "CentauriFirmware", "copyWSKU", v20);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_20:
      v2 = 0;
LABEL_17:
      CFRelease(v4);
    }

    else
    {
      v17 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v17, 3, "%s::%s: WSKU not found\n", "CentauriFirmware", "copyWSKU");
      return 1;
    }
  }

  else
  {
    CentauriFirmware::copyWSKU(0);
  }

  return v2;
}

void sub_2433949A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::setCalibration(CentauriFirmware *this, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v8 = CentauriFirmware::copyCalibrationData(a2, a3, a4, a6, a7, a8, a5, &v54);
  if ((v8 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to copy calibration data\n", "CentauriFirmware", "setCalibration");
LABEL_50:
    v38 = 0;
    goto LABEL_37;
  }

  v9 = v54;
  v10 = v55;
  if (v54 == v55)
  {
    v33 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v33, 0, "%s::%s: proceeding to boot without any calibration data\n", "CentauriFirmware", "setCalibration");
    std::string::basic_string[abi:ne200100]<0>(bytes, "_cal");
    v34 = (*(*this + 40))(this, bytes);
    v35 = v34;
    if (SBYTE3(v58) < 0)
    {
      operator delete(*bytes);
      if (!v35)
      {
        goto LABEL_36;
      }
    }

    else if (!v34)
    {
      goto LABEL_36;
    }

    v39 = ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage(v39, 0, "%s::%s: removing %u bytes of existing calibration data from firmware\n", "CentauriFirmware", "setCalibration", v35);
    std::string::basic_string[abi:ne200100]<0>(bytes, "_cal");
    v40 = RTKitFirmware::removeTag();
    v41 = v40;
    if (SBYTE3(v58) < 0)
    {
      operator delete(*bytes);
    }

    if (v41)
    {
      v48 = ACFULogging::getLogInstance(v40);
      ACFULogging::handleMessage(v48, 2, "%s::%s: failed to remove calibration tag\n", "CentauriFirmware", "setCalibration");
      goto LABEL_50;
    }

LABEL_36:
    v38 = 1;
    goto LABEL_37;
  }

  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v12 = Mutable;
  if (!Mutable)
  {
    v47 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to allocate data\n", "CentauriFirmware", "setCalibration");
    goto LABEL_50;
  }

  v13 = v10 - v9;
  memset(v59, 0, sizeof(v59));
  v14 = 0x8E38E38E38E38E39 * v13;
  v58 = 0u;
  *&bytes[4] = 0u;
  *bytes = 954437177 * v13;
  CFDataAppendBytes(Mutable, bytes, 64);
  CFDataIncreaseLength(v12, v14 << 6);
  Length = CFDataGetLength(v12);
  v16 = 0;
  v17 = 0;
  v18 = v54;
  do
  {
    v19 = CFDataGetLength(v18[9 * v16]);
    if (v54[9 * v16 + 3])
    {
      v20 = "fdr";
    }

    else
    {
      v20 = "raw";
    }

    v21 = CFStringCreateWithFormat(alloc, 0, @"cal-file-%u-%s.bin", v17, v20);
    if (!v21)
    {
      v45 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v45, 2, "%s::%s: failed to create diagnostic filename\n", "CentauriFirmware", "setCalibration");
      goto LABEL_46;
    }

    if (*(this + 11))
    {
      ACFUDiagnostics::addItem();
    }

    CFRelease(v21);
    v23 = ACFULogging::getLogInstance(v22);
    if (v54[9 * v16 + 3])
    {
      v24 = "fdr";
    }

    else
    {
      v24 = "raw";
    }

    ACFULogging::handleMessage(v23, 0, "%s::%s: inserting %ld bytes of %s calibration data into firmware\n", "CentauriFirmware", "setCalibration", v19, v24);
    v25 = &v54[9 * v16];
    *(v25 + 4) = Length;
    *(v25 + 5) = v19;
    v61.location = (v16 << 6) + 64;
    v61.length = 64;
    CFDataReplaceBytes(v12, v61, v25 + 8, 64);
    BytePtr = CFDataGetBytePtr(v54[9 * v16]);
    CFDataAppendBytes(v12, BytePtr, v19);
    v18 = v54;
    Length += HIDWORD(v54[9 * v16 + 2]);
    v16 = (v17 + 1);
    v17 = v16;
  }

  while (v14 > v16);
  if (*(this + 11))
  {
    ACFUDiagnostics::addItem();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
  v27 = (*(*this + 40))(this, __p);
  v28 = v27;
  if (v53 < 0)
  {
    operator delete(__p[0]);
    if (!v28)
    {
      goto LABEL_27;
    }

LABEL_19:
    v29 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v29, 0, "%s::%s: replacing %u bytes of existing calibration data in firmware\n", "CentauriFirmware", "setCalibration", v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
    updated = RTKitFirmware::updateTagWithData();
    v31 = updated;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v31)
    {
LABEL_30:
      v37 = ACFULogging::getLogInstance(updated);
      ACFULogging::handleMessage(v37, 0, "%s::%s: successfully inserted calibration data into firmware\n", "CentauriFirmware", "setCalibration");
      v38 = 1;
      goto LABEL_31;
    }

    v32 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v32, 2, "%s::%s: failed to update calibration tag\n");
  }

  else
  {
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
    updated = RTKitFirmware::addTagWithData();
    v36 = updated;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v36)
    {
      goto LABEL_30;
    }

    v49 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v49, 2, "%s::%s: failed to add calibration tag\n");
  }

LABEL_46:
  v38 = 0;
LABEL_31:
  CFRelease(v12);
LABEL_37:
  v42 = v54;
  v43 = v55;
  if (v54 != v55)
  {
    do
    {
      if (*v42)
      {
        CFRelease(*v42);
        *v42 = 0;
      }

      v42 += 9;
    }

    while (v42 != v43);
    v42 = v54;
  }

  if (v42)
  {
    v55 = v42;
    operator delete(v42);
  }

  return v38;
}

void sub_243394F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::copyCalibrationData(ACFULogging *a1, unsigned int a2, uint64_t a3, char a4, char a5, char a6, int a7, CFTypeRef **a8)
{
  v89 = *MEMORY[0x277D85DE8];
  LogInstance = ACFULogging::getLogInstance(a1);
  v13 = "does not support";
  if (a7)
  {
    v13 = "supports";
  }

  v14 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: looking for calibration data, firmware %s FDR trust evaluation\n", "CentauriFirmware", "copyCalibrationData", v13);
  if (a4)
  {
    v15 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v15, 0, "%s::%s: ignoring FDR calibration data if it exists\n", "CentauriFirmware", "copyCalibrationData");
    goto LABEL_50;
  }

  v79 = 0;
  v80 = "BWC3";
  v77 = 0;
  v78 = 0;
  v16 = std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&v77, &v80, &v81, 1uLL);
  v73 = a5;
  v74 = a6;
  v75 = 0;
  v17 = a7;
  v76 = a7;
  CentauriFirmware::getManifestUniqueId(v16, &v72);
  size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v72.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v43 = 0;
    goto LABEL_45;
  }

  v20 = v77;
  v67 = v78;
  if (v77 == v78)
  {
LABEL_42:
    if (*a8 == a8[1])
    {
      v42 = ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage(v42, 0, "%s::%s: no FDR calibration data found\n", "CentauriFirmware", "copyCalibrationData");
    }

    v43 = 1;
    goto LABEL_45;
  }

  while (v17)
  {
    ACFUCommon::FDRDataClass::FDRDataClass(&v80, *v20);
    DataLocalCopy = ACFUFDR::getDataLocalCopy();
    if (SBYTE7(v83) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    if (v71)
    {
LABEL_74:
      v61 = ACFULogging::getLogInstance(DataLocalCopy);
      ACFULogging::handleMessage(v61, 2, "%s::%s: failed to validate calibration data\n", "CentauriFirmware", "copyCalibrationData");
      AMSupportSafeRelease();
      goto LABEL_65;
    }

    if (!theDict)
    {
LABEL_40:
      v41 = ACFULogging::getLogInstance(DataLocalCopy);
      v18 = ACFULogging::handleMessage(v41, 0, "%s::%s: %s not found\n", "CentauriFirmware", "copyCalibrationData", *v20);
      goto LABEL_41;
    }

    v87 = 0u;
    v88 = 0u;
    *__dst = 0u;
    v86 = 0u;
    v22 = ACFULogging::getLogInstance(DataLocalCopy);
    ACFULogging::handleMessage(v22, 0, "%s::%s: found FDR calibration data: %s\n", "CentauriFirmware", "copyCalibrationData", *v20);
    v23 = strlcpy(__dst, *v20, 8uLL);
    if (v23 >= 8)
    {
      v63 = ACFULogging::getLogInstance(v23);
      strlen(*v20);
      ACFULogging::handleMessage(v63, 2, "%s::%s: data class too large (%zu >= %zu)\n");
LABEL_64:
      AMSupportSafeRelease();
      goto LABEL_65;
    }

    LOBYTE(v86) = v86 | 1;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v72;
    }

    else
    {
      v24 = v72.__r_.__value_.__r.__words[0];
    }

    v25 = strlcpy(&v87, v24, 0x20uLL);
    if (v25 >= 0x20)
    {
      v64 = ACFULogging::getLogInstance(v25);
      ACFULogging::handleMessage(v64, 2, "%s::%s: manifest unique id too large (%zu >= %zu)\n");
      goto LABEL_64;
    }

    v80 = theDict;
    v81 = *__dst;
    __p = v86;
    v83 = v87;
    v84 = v88;
    std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v80);
LABEL_41:
    if (++v20 == v67)
    {
      goto LABEL_42;
    }
  }

  DataLocalCopy = ACFUFDR::getDictLocalCopy();
  if (v71)
  {
    goto LABEL_74;
  }

  if (!theDict)
  {
    goto LABEL_40;
  }

  v26 = ACFULogging::getLogInstance(DataLocalCopy);
  ACFULogging::handleMessage(v26, 0, "%s::%s: found FDR calibration data: %s\n", "CentauriFirmware", "copyCalibrationData", *v20);
  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    v62 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v62, 2, "%s::%s: %s is empty\n", "CentauriFirmware", "copyCalibrationData", *v20);
    AMSupportSafeRelease();
    goto LABEL_65;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  v28 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v28)
  {
    v65 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v65, 2, "%s::%s: failed to allocate keys\n", "CentauriFirmware", "copyCalibrationData");
    AMSupportSafeRelease();
    goto LABEL_65;
  }

  v29 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (v29)
  {
    CFDictionaryGetKeysAndValues(theDict, v28, v29);
    if (Count >= 1)
    {
      v30 = 0;
      while (1)
      {
        v31 = v28[v30];
        if (!v31)
        {
          v53 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v53, 2, "%s::%s: subCC index %zu null key\n");
          goto LABEL_64;
        }

        if (!v29[v30])
        {
          v54 = ACFULogging::getLogInstance(v31);
          ACFULogging::handleMessage(v54, 2, "%s::%s: subCC index %zu null value\n");
          goto LABEL_64;
        }

        v32 = CFGetTypeID(v31);
        TypeID = CFStringGetTypeID();
        if (v32 != TypeID)
        {
          v55 = ACFULogging::getLogInstance(TypeID);
          ACFULogging::handleMessage(v55, 2, "%s::%s: subCC index %zu wrong key type\n");
          goto LABEL_64;
        }

        v34 = CFGetTypeID(v29[v30]);
        v35 = CFDataGetTypeID();
        if (v34 != v35)
        {
          break;
        }

        v37 = ACFUCommon::stringFromCFString(__dst, v28[v30], v36);
        v38 = ACFULogging::getLogInstance(v37);
        if ((SBYTE7(v86) & 0x80u) == 0)
        {
          v39 = __dst;
        }

        else
        {
          v39 = *__dst;
        }

        ACFULogging::handleMessage(v38, 0, "%s::%s: found subCC index %zu: %s\n", "CentauriFirmware", "copyCalibrationData", v30, v39);
        v40 = CFRetain(v29[v30]);
        v84 = 0u;
        v83 = 0u;
        __p = 0u;
        v81 = 0u;
        v80 = v40;
        std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v80);
        if (SBYTE7(v86) < 0)
        {
          operator delete(*__dst);
        }

        if (Count == ++v30)
        {
          goto LABEL_39;
        }
      }

      v56 = ACFULogging::getLogInstance(v35);
      ACFULogging::handleMessage(v56, 2, "%s::%s: subCC index %zu wrong value type\n");
      goto LABEL_64;
    }

LABEL_39:
    v18 = AMSupportSafeRelease();
    v17 = a7;
    goto LABEL_41;
  }

  v66 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v66, 2, "%s::%s: failed to allocate values\n", "CentauriFirmware", "copyCalibrationData");
  AMSupportSafeRelease();
LABEL_65:
  v43 = 0;
LABEL_45:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v43)
  {
LABEL_50:
    if (a1)
    {
      v44 = CFArrayGetCount(a1);
      if (v44 >= 1)
      {
        v45 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v45);
          FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(ValueAtIndex, v47);
          v49 = ACFULogging::getLogInstance(FileDatafromFilePath);
          if (!FileDatafromFilePath)
          {
            break;
          }

          ACFULogging::handleMessage(v49, 0, "%s::%s: found raw calibration data: index %zu\n", "CentauriFirmware", "copyCalibrationData", v45);
          v80 = FileDatafromFilePath;
          v81 = 0u;
          __p = 0u;
          v83 = 0u;
          v84 = 0u;
          std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v80);
          v44 = CFArrayGetCount(a1);
          if (++v45 >= v44)
          {
            goto LABEL_57;
          }
        }

        ACFULogging::handleMessage(v49, 2, "%s::%s: failed to read raw calibration data: index %zu\n", "CentauriFirmware", "copyCalibrationData", v45);
        goto LABEL_67;
      }
    }

    else
    {
      v50 = ACFULogging::getLogInstance(0);
      v44 = ACFULogging::handleMessage(v50, 0, "%s::%s: no raw calibration data provided\n", "CentauriFirmware", "copyCalibrationData");
    }

LABEL_57:
    if (*a8 == a8[1])
    {
      v51 = ACFULogging::getLogInstance(v44);
      ACFULogging::handleMessage(v51, 0, "%s::%s: no calibration data found\n", "CentauriFirmware", "copyCalibrationData");
    }

    v52 = 1;
  }

  else
  {
LABEL_67:
    v57 = a8;
    v59 = *a8;
    v58 = a8[1];
    if (*a8 != v58)
    {
      do
      {
        if (*v59)
        {
          CFRelease(*v59);
          *v59 = 0;
          v57 = a8;
        }

        v59 += 9;
      }

      while (v59 != v58);
      v59 = *v57;
    }

    v52 = 0;
    v57[1] = v59;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  return v52;
}

void sub_243395834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::setPatchBay(CentauriFirmware *this, const __CFData *a2, const __CFData *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
  v6 = (*(*this + 40))(this, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
  updated = (*(*this + 40))(this, __p);
  v8 = updated;
  if (v24 < 0)
  {
    operator delete(__p[0]);
    if (a2)
    {
LABEL_5:
      v9 = *(this + 11);
      if (v9)
      {
        v9 = ACFUDiagnostics::addItem();
      }

      if (v6)
      {
        LogInstance = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: replacing %u bytes of existing alpha data in firmware\n", "CentauriFirmware", "setPatchBay", v6);
        std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
        updated = RTKitFirmware::updateTagWithData();
        v11 = updated;
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v11)
        {
          v12 = "%s::%s: failed to update alpha tag\n";
LABEL_41:
          CentauriFirmware::setPatchBay(v12);
          return 0;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
        updated = RTKitFirmware::addTagWithData();
        v15 = updated;
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v15)
        {
          v12 = "%s::%s: failed to add alpha tag\n";
          goto LABEL_41;
        }
      }

      goto LABEL_21;
    }
  }

  else if (a2)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    v13 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v13, 0, "%s::%s: removing %u bytes of existing alpha data from firmware\n", "CentauriFirmware", "setPatchBay", v6);
    std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
    updated = RTKitFirmware::removeTag();
    v14 = updated;
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      v12 = "%s::%s: failed to remove alpha tag\n";
      goto LABEL_41;
    }
  }

LABEL_21:
  if (a3)
  {
    v16 = *(this + 11);
    if (v16)
    {
      v16 = ACFUDiagnostics::addItem();
    }

    if (v8)
    {
      v17 = ACFULogging::getLogInstance(v16);
      ACFULogging::handleMessage(v17, 0, "%s::%s: replacing %u bytes of existing beta data in firmware\n", "CentauriFirmware", "setPatchBay", v8);
      std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
      v18 = RTKitFirmware::updateTagWithData();
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18)
      {
        v12 = "%s::%s: failed to update beta tag\n";
        goto LABEL_41;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
      v21 = RTKitFirmware::addTagWithData();
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21)
      {
        v12 = "%s::%s: failed to add beta tag\n";
        goto LABEL_41;
      }
    }
  }

  else if (v8)
  {
    v19 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v19, 0, "%s::%s: removing %u bytes of existing beta data from firmware\n", "CentauriFirmware", "setPatchBay", v8);
    std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
    v20 = RTKitFirmware::removeTag();
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      v12 = "%s::%s: failed to remove beta tag\n";
      goto LABEL_41;
    }
  }

  return 1;
}

void sub_243395C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriFirmware::isChipRevisionSupported(CentauriFirmware *this, unsigned __int8 a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  memset(&v21, 0, sizeof(v21));
  CentauriFirmware::getSupportedChipRevision(&v19);
  v23 = v20;
  *__p = v19;
  v3 = HIBYTE(v20);
  v4 = SHIBYTE(v20);
  v5 = *(&v19 + 1);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v20);
  }

  else
  {
    v6 = *(&v19 + 1);
  }

  v7 = 1;
  if (v6)
  {
    *(&v21.__r_.__value_.__s + 23) = 1;
    LOWORD(v21.__r_.__value_.__l.__data_) = ((a2 >> 4) + 65);
    std::string::push_back(&v21, a2 & 0xF | 0x30);
    v9 = __p[0];
    if (v4 >= 0)
    {
      v10 = (__p + v3);
    }

    else
    {
      v10 = (__p[0] + v5);
    }

    if (v4 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v11 != v10)
    {
      do
      {
        v8 = __toupper(*v11);
        *v11 = v8;
        v11 = (v11 + 1);
      }

      while (v11 != v10);
      LOBYTE(v4) = HIBYTE(v23);
      v9 = __p[0];
    }

    if ((v4 & 0x80u) == 0)
    {
      v9 = __p;
    }

    v12 = *v9;
    v13 = v21.__r_.__value_.__r.__words[0];
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v21;
    }

    v14 = v13->__r_.__value_.__s.__data_[0];
    v7 = v12 == v14;
    if (v12 == v14)
    {
      if ((*(&v21.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    LogInstance = ACFULogging::getLogInstance(v8);
    v17 = __p;
    if (v23 < 0)
    {
      v17 = __p[0];
    }

    v18 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v21.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: %s firmware is incompatible with %s hardware\n", "CentauriFirmware", "isChipRevisionSupported", v17, v18);
    if ((*(&v21.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_21:
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

LABEL_22:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_243395E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void CentauriFirmware::getSupportedChipRevision(uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "bver");
  v3 = ACFUFirmware::copyFWDataByFileName();
  v4 = v3;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], BytePtr, Length, 0x8000100u, 0);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      LogInstance = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: bver: '%s'\n", "CentauriFirmware", "getSupportedChipRevision", [(ACFULogging *)v9 UTF8String]);
      v28 = 0;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"chip_revision_([a-zA-Z][0-9])" options:0 error:&v28];
      v12 = v28;
      v13 = v12;
      if (v11)
      {
        v14 = [v11 firstMatchInString:v9 options:0 range:{0, -[ACFULogging length](v9, "length")}];
        v15 = [v14 numberOfRanges];
        if (v15 == 2)
        {
          v16 = [v14 rangeAtIndex:1];
          v18 = [(ACFULogging *)v9 substringWithRange:v16, v17];
          v20 = ACFUCommon::stringFromCFString(__p, v18, v19);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *__p;
          *(a2 + 16) = v30;
          v21 = ACFULogging::getLogInstance(v20);
          if (*(a2 + 23) >= 0)
          {
            v22 = a2;
          }

          else
          {
            v22 = *a2;
          }

          ACFULogging::handleMessage(v21, 0, "%s::%s: firmware intended for chip revision %s\n", "CentauriFirmware", "getSupportedChipRevision", v22);
        }

        else
        {
          v26 = ACFULogging::getLogInstance(v15);
          v18 = 0;
          ACFULogging::handleMessage(v26, 2, "%s::%s: no chip revision in bver\n", "CentauriFirmware", "getSupportedChipRevision");
        }
      }

      else
      {
        v27 = ACFULogging::getLogInstance(v12);
        if (v13)
        {
          LogInstance = [(ACFULogging *)v13 description];
          v25 = [LogInstance UTF8String];
        }

        else
        {
          v25 = "";
        }

        ACFULogging::handleMessage(v27, 2, "%s::%s: failed to create regex: %s\n", "CentauriFirmware", "getSupportedChipRevision", v25);
        if (v13)
        {
        }

        v14 = 0;
        v18 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v24 = ACFULogging::getLogInstance(0);
      v13 = 0;
      v14 = 0;
      v18 = 0;
      ACFULogging::handleMessage(v24, 2, "%s::%s: failed to create string\n", "CentauriFirmware", "getSupportedChipRevision");
      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v23 = ACFULogging::getLogInstance(v3);
    v13 = 0;
    v14 = 0;
    v18 = 0;
    ACFULogging::handleMessage(v23, 2, "%s::%s: no bver\n", "CentauriFirmware", "getSupportedChipRevision");
    v11 = 0;
    v8 = 0;
  }
}

void sub_2433962C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(a1);
}

void CentauriFirmware::~CentauriFirmware(CentauriFirmware *this)
{
  *this = &unk_28561AC38;
  v1 = *(this + 12);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x245D31710);
}

{
  CentauriFirmware::~CentauriFirmware(this);

  operator delete(v1);
}

void CentauriFirmware::getManifestUniqueId(CentauriFirmware *this@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    CentauriFirmware::getManifestUniqueId();
  }

  if (CentauriFirmware::getManifestUniqueId(void)::once != -1)
  {
    CentauriFirmware::getManifestUniqueId();
  }

  v3 = *(&xmmword_27ED71C88 + 1);
  if (byte_27ED71C9F >= 0)
  {
    v3 = byte_27ED71C9F;
  }

  if (v3)
  {
    if ((byte_27ED71C9F & 0x80) == 0)
    {
LABEL_9:
      *&a2->__r_.__value_.__l.__data_ = xmmword_27ED71C88;
      a2->__r_.__value_.__r.__words[2] = unk_27ED71C98;
      return;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to compute manifest unique id\n", "CentauriFirmware", "getManifestUniqueId");
    if ((byte_27ED71C9F & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = xmmword_27ED71C88;

  std::string::__init_copy_ctor_external(a2, v5, *(&v5 + 1));
}

uint64_t ___ZN16CentauriFirmware19getManifestUniqueIdEv_block_invoke()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  v31 = 0;
  valuePtr = 0;
  TypeID = MGCopyAnswer();
  v1 = TypeID;
  if (!TypeID || (v2 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v2 != TypeID))
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: error getting host chipID\n", "CentauriFirmware", "getManifestUniqueId_block_invoke");
    if (!v1)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    v26 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v26, 2, "%s::%s: error converting host chipID\n", "CentauriFirmware", "getManifestUniqueId_block_invoke");
LABEL_38:
    v5 = 0;
    goto LABEL_29;
  }

  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4 && (v6 = CFGetTypeID(v4), v4 = CFNumberGetTypeID(), v6 == v4))
  {
    v7 = CFNumberGetValue(v5, kCFNumberSInt64Type, &v31);
    if (v7)
    {
      *(&v34 + *(v34 - 24) + 8) |= 0x4000u;
      LOBYTE(__dst) = 48;
      v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v34, &__dst);
      v9 = *v8;
      *(v8 + *(*v8 - 24) + 24) = 8;
      *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
      v10 = MEMORY[0x245D31900]();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "-", 1);
      v30 = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v30);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 16;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      v14 = MEMORY[0x245D31900]();
      if ((v41 & 0x10) != 0)
      {
        v17 = v40;
        if (v40 < v37)
        {
          v40 = v37;
          v17 = v37;
        }

        locale = v36[4].__locale_;
      }

      else
      {
        if ((v41 & 8) == 0)
        {
          v15 = 0;
          HIBYTE(v29) = 0;
          p_dst = &__dst;
          goto LABEL_23;
        }

        locale = v36[1].__locale_;
        v17 = v36[3].__locale_;
      }

      v15 = v17 - locale;
      if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v15 >= 0x17)
      {
        if ((v15 | 7) == 0x17)
        {
          v19 = 25;
        }

        else
        {
          v19 = (v15 | 7) + 1;
        }

        p_dst = operator new(v19);
        *(&__dst + 1) = v15;
        v29 = v19 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v29) = v17 - locale;
        p_dst = &__dst;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      v14 = memmove(p_dst, locale, v15);
LABEL_23:
      *(p_dst + v15) = 0;
      if (byte_27ED71C9F < 0)
      {
        operator delete(xmmword_27ED71C88);
      }

      xmmword_27ED71C88 = __dst;
      unk_27ED71C98 = v29;
      v20 = ACFULogging::getLogInstance(v14);
      if (byte_27ED71C9F >= 0)
      {
        v21 = &xmmword_27ED71C88;
      }

      else
      {
        v21 = xmmword_27ED71C88;
      }

      ACFULogging::handleMessage(v20, 3, "%s::%s: manifest unique id: '%s'\n", "CentauriFirmware", "getManifestUniqueId_block_invoke", v21);
      goto LABEL_29;
    }

    v27 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v27, 2, "%s::%s: error converting host ECID\n");
  }

  else
  {
    v25 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v25, 2, "%s::%s: error getting host ECID\n");
  }

LABEL_29:
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_31:
  v33[0] = *MEMORY[0x277D82818];
  v22 = *(MEMORY[0x277D82818] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v34 = v22;
  v35 = MEMORY[0x277D82878] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D319A0](&v42);
}

void sub_2433969C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x277D82818]);
  MEMORY[0x245D319A0](&a34);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>>(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[72 * v10];
    v16 = &v14[72 * v13];
    *v15 = *a2;
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    v19 = *(a2 + 48);
    *(v15 + 8) = *(a2 + 64);
    *(v15 + 2) = v18;
    *(v15 + 3) = v19;
    *(v15 + 1) = v17;
    v9 = v15 + 72;
    v20 = *(a1 + 8) - *a1;
    v21 = &v15[-v20];
    memcpy(&v15[-v20], *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v9;
    *(a1 + 16) = v16;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = (v4 + 72);
  }

  *(a1 + 8) = v9;
}

uint64_t *std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
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

void sub_243396B9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 3, "");
  return this;
}

void sub_243396BF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::FDRDataClass::~FDRDataClass(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(72 * a2);
}

uint64_t *std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v9 = v9[1];
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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
      v17 = a1 + 1;
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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
      v21 = a1 + 1;
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

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
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

void sub_243397034(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriCommon::getTatsuTagToFileNameMap(uint64_t *__return_ptr a1@<X8>)
{
  v45[4] = *MEMORY[0x277D85DE8];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v3, CentauriTags::Firmware::kRTKitOS, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v4, CentauriTags::Firmware::kRestoreRTKitOS, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v5, CentauriTags::Firmware::kRTKitOSLPEM, "rkol");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v6, CentauriTags::Firmware::kFirmwareDigestArray, "fwda");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v7, CentauriTags::Firmware::kACIWIFI, "aciw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v8, CentauriTags::Firmware::kACIWiFiTxManuf, "awma");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v9, CentauriTags::Firmware::kWiFiTx, "wftp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v10, CentauriTags::Firmware::kWiFiTxManuf, "wftm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v11, CentauriTags::Firmware::kWiFiRx, "wfrp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v12, CentauriTags::Firmware::kWiFiRxManuf, "wfrm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v13, CentauriTags::Firmware::kScanWifi, "scaw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v14, CentauriTags::Firmware::kScanWifiManuf, "swfm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v15, CentauriTags::Firmware::kWifi2GLMAC, "w2lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v16, CentauriTags::Firmware::kWifi2GLMACManuf, "w2lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v17, CentauriTags::Firmware::kWifi5GLMAC, "w5lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v18, CentauriTags::Firmware::kWifi5GLMACManuf, "w5lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v19, CentauriTags::Firmware::kWifi2GLPhy, "w2pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v20, CentauriTags::Firmware::kWifi2GLPhyManuf, "w2pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v21, CentauriTags::Firmware::kWifi5GLPhy, "w5pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v22, CentauriTags::Firmware::kWifi5GLPhyManuf, "w5pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v23, CentauriTags::Firmware::kWifiRegData, "wfrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v24, CentauriTags::Firmware::kACIBT, "acib");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v25, CentauriTags::Firmware::kACIBTLPEM, "lpbt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v26, CentauriTags::Firmware::kACIBTManuf, "acim");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v27, CentauriTags::Firmware::kPhyBlueTooth, "phyb");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v28, CentauriTags::Firmware::kPhyBlueToothManuf, "pbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v29, CentauriTags::Firmware::kScanBluetooth, "scab");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v30, CentauriTags::Firmware::kScanBTLPEM, "sbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v31, CentauriTags::Firmware::kScanBTManuf, "sbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v32, CentauriTags::Firmware::kBTRegData, "btrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v33, CentauriTags::Firmware::kCCPUApplicationFirmware, "ccaf");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v34, CentauriTags::Firmware::kCoexRealTimeArbiter, "crta");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v35, CentauriTags::Firmware::kPhyBlueToothLPM, "pbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v36, CentauriTags::Firmware::kBTOTPDatabase, "bopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v37, CentauriTags::Firmware::kBTSecondary, "btse");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v38, CentauriTags::Firmware::kBTSecondaryManuf, "btsm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v39, CentauriTags::Firmware::kPhyBlueTooth5G, "bt5p");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v40, CentauriTags::Firmware::kPhyBlueTooth5GManuf, "bt5m");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v41, CentauriTags::Firmware::kWiFiOTPDatabase, "wopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v42, CentauriTags::Firmware::kPhyBluetoothTrim, "pbtt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v43, CentauriTags::Firmware::kPhyBluetooth5GTrim, "bt5t");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v44, CentauriTags::Firmware::kWifi2GLPhyTrim, "w2pt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v45, &CentauriTags::Firmware::kWifi5GLPhyTrim, "w5pt");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v3, 43);
  v2 = 172;
  do
  {
    if (SHIBYTE(v3[v2 - 1]) < 0)
    {
      operator delete(v3[v2 - 3]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
}

void sub_2433975EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 1352;
  v13 = -1376;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

CFMutableDataRef CentauriTransport::copySiKCertificateSigningRequest(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "copySiKCertificateSigningRequest");
  v3 = CentauriTransport::openInterfaceDriver(this);
  if ((v3 & 1) == 0)
  {
    v26 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "copySiKCertificateSigningRequest");
    return 0;
  }

  v4 = CentauriTransport::sendCCHICommand(this, 0, 0, 6u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFDataGetLength(v4);
  if (v6 == 4)
  {
    BytePtr = CFDataGetBytePtr(v5);
    v8 = *BytePtr;
    v9 = ACFULogging::getLogInstance(BytePtr);
    v10 = ACFULogging::handleMessage(v9, 0, "%s::%s: total size %u\n", "CentauriTransport", "copySiKCertificateSigningRequest", v8);
    if (v8)
    {
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v8);
      if (Mutable)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = v8 - v13;
          if (v8 - v13 >= 0x3F8)
          {
            v15 = 1016;
          }

          *bytes = v13;
          LODWORD(length) = v15;
          if (v14)
          {
            CFRelease(v14);
          }

          CFRelease(v5);
          v14 = CFDataCreate(v11, bytes, 8);
          v16 = ACFULogging::getLogInstance(v14);
          if (!v14)
          {
            break;
          }

          ACFULogging::handleMessage(v16, 0, "%s::%s: requesting offset %u, size %u\n", "CentauriTransport", "copySiKCertificateSigningRequest", *bytes, length);
          v17 = CentauriTransport::sendCCHICommand(this, v14, 0, 7u);
          if (!v17)
          {
            CFRelease(Mutable);
            v23 = v14;
            goto LABEL_20;
          }

          v5 = v17;
          v18 = CFDataGetLength(v17);
          if (v18 != length)
          {
            v24 = ACFULogging::getLogInstance(v18);
            v25 = CFDataGetLength(v5);
            ACFULogging::handleMessage(v24, 2, "%s::%s: unexpected response size %zu\n", "CentauriTransport", "copySiKCertificateSigningRequest", v25);
            CFRelease(Mutable);
            CFRelease(v14);
            Mutable = 0;
            goto LABEL_16;
          }

          v19 = CFDataGetBytePtr(v5);
          CFDataAppendBytes(Mutable, v19, length);
          v13 += length;
          if (v13 >= v8)
          {
            v21 = ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage(v21, 0, "%s::%s: success\n", "CentauriTransport", "copySiKCertificateSigningRequest");
            CFRelease(v14);
            goto LABEL_16;
          }
        }

        ACFULogging::handleMessage(v16, 2, "%s::%s: failed to create command payload\n", "CentauriTransport", "copySiKCertificateSigningRequest");
        v23 = Mutable;
LABEL_20:
        CFRelease(v23);
        return 0;
      }

      v29 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v29, 2, "%s::%s: failed to create mutable data\n", "CentauriTransport", "copySiKCertificateSigningRequest");
      goto LABEL_16;
    }

    v28 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v28, 2, "%s::%s: CSR unavailable\n");
  }

  else
  {
    v27 = ACFULogging::getLogInstance(v6);
    CFDataGetLength(v5);
    ACFULogging::handleMessage(v27, 2, "%s::%s: unexpected response size %zu for GetSize, expected %zu\n");
  }

  Mutable = 0;
LABEL_16:
  CFRelease(v5);
  return Mutable;
}

uint64_t CentauriTransport::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize base class\n", "CentauriTransport", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize timestamps dictionary\n", "CentauriTransport", "init");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: invalid boot mode %d\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to determine platform\n", "CentauriTransport", "init");
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: payload too large: %lu\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to write: 0x%08x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to read: 0x%08x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: error status %u in response\n", "CentauriTransport", "sendCCHICommand", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create response payload\n", "CentauriTransport", "sendCCHICommand");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: response too small: %u\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate buffer\n", "CentauriTransport", "sendCCHICommand");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: interface driver not opened\n", "CentauriTransport", "sendCCHICommand");
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1, unsigned __int8 *a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: received sequence num %u, expected %u\n", "CentauriTransport", "sendCCHICommand", *a1, *a2);
}

{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: received gid %u, expected %u\n", "CentauriTransport", "sendCCHICommand", *a2, v3);
}

{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: received oid %u, expected %u\n", "CentauriTransport", "sendCCHICommand", *a2, v3);
}

uint64_t CentauriTransport::generateBootNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write doorbell\n", "CentauriTransport", "generateBootNonce");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read doorbell\n", "CentauriTransport", "generateBootNonce");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: timed out: doorbell value 0x%08x\n", v3, v4, v5);
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write boot flags\n", "CentauriTransport", "setBootFlags");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read boot flags\n", "CentauriTransport", "setBootFlags");
}

uint64_t CentauriTransport::setHostPlatformIdentifier(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write host platform identifier\n", "CentauriTransport", "setHostPlatformIdentifier");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read host platform identifier\n", "CentauriTransport", "setHostPlatformIdentifier");
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get firmware data\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get image buffer address\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate image buffer\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad firmware size\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: boot driver not opened\n", "CentauriTransport", "sendImage");
}

uint64_t CentauriTransport::openControlDriver(ACFULogging *a1, uint64_t a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create controller: 0x%08x\n", "CentauriTransport", "openControlDriver", v3);

  return CentauriTransport::closeControlDriver(a2);
}

uint64_t CentauriTransport::destroySecondaryFtab(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to unmap memory: 0x%08x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: control driver not open\n", "CentauriTransport", "destroySecondaryFtab");
}

uint64_t CentauriTransport::reset(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping reset for non-silicon platform\n", "CentauriTransport", "reset");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open control driver\n", "CentauriTransport", "reset");
}

uint64_t CentauriTransport::pingCheck(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping since second boot stage is disabled\n", "CentauriTransport", "pingCheck");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "pingCheck");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: no response payload\n", "CentauriTransport", "pingCheck");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create command payload\n", "CentauriTransport", "pingCheck");
}

void CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to collect logs: 0x%08x\n", v2, v3, v4);
  __ns.__rep_ = 20000000000;
  std::this_thread::sleep_for (&__ns);
}

uint64_t CentauriTransport::sendBootTimestamps(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed: 0x%08x\n", v3, v4, v5);
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

ACFULogging *copyDefaultPersonalizedFirmwarePath(uint64_t a1, const __CFString *a2)
{
  values[2] = *MEMORY[0x277D85DE8];
  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Centauri", a2);
  if (!PersonalizedFirmwarePath)
  {
    return 0;
  }

  v3 = PersonalizedFirmwarePath;
  values[0] = PersonalizedFirmwarePath;
  values[1] = @"ftab.bin";
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, 0);
  v6 = CFStringCreateByCombiningStrings(v4, v5, @"/");
  LogInstance = ACFULogging::getLogInstance(v6);
  v8 = LogInstance;
  if (v6)
  {
    [(ACFULogging *)v6 UTF8String];
    ACFULogging::handleMessage(v8, 0, "%s::%s: result: %s\n");
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to combine strings\n");
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v3);
  return v6;
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned long long>(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 8)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned char>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 1)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

void ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize object\n", "ACFUBootInterface", "create");
  v3 = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::~ACFUBootInterface(a1);
  operator delete(v3);
}

uint64_t isPersonalizedFirmwarePresentInDefaultLocation(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create URL\n", "ACFUBootInterface", "isPersonalizedFirmwarePresentInDefaultLocation");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to copy path\n", "ACFUBootInterface", "isPersonalizedFirmwarePresentInDefaultLocation");
}

uint64_t validateNVRAMOverride(ACFULogging *a1, _BYTE *a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  result = ACFULogging::handleMessage(LogInstance, 2, a1, "ACFUBootInterface", "validateNVRAMOverride");
  *a2 = 0;
  return result;
}

uint64_t validatePath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  result = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: value has wrong type\n", "ACFUBootInterface", "validatePath");
  *a1 = 0;
  return result;
}

uint64_t copyPatchBayData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: %s framework returned null\n", "ACFUBootInterface", "copyPatchBayData", a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = dlerror();
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get %s framework function: %s\n", "ACFUBootInterface", "copyPatchBayData", a1, v3);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = dlerror();
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open %s framework: %s\n", "ACFUBootInterface", "copyPatchBayData", a1, v3);
}

uint64_t ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed creating ROM interface\n", "ACFUBootInterface", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid firmware object\n", "ACFUBootInterface", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid trasport object\n", "ACFUBootInterface", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid diagnostics object\n", "ACFUBootInterface", "init");
}

uint64_t CentauriPlatform::isCentauriBuiltin(CentauriPlatform *this, BOOL *a2)
{
  if (this)
  {
    if (qword_27ED71C70 != -1)
    {
      dispatch_once(&qword_27ED71C70, &__block_literal_global_1);
    }

    if (_MergedGlobals == 1)
    {
      *this = HIBYTE(_MergedGlobals);
      return 1;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriPlatform", "isCentauriBuiltin");
  }

  return 0;
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: device model ID out of range: %lld\n", "CentauriPlatform", "getThunderboltDeviceInfo", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to convert device model ID to an integer\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: device vendor ID out of range: %lld\n", "CentauriPlatform", "getThunderboltDeviceInfo", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to convert device vendor ID to an integer\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get device model ID property\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get device vendor ID property\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find thunderbolt port's parent: 0x%08x\n", "CentauriPlatform", "getThunderboltDeviceInfo", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get thunderbolt port from path\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get thunderbolt path property\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find manager service\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create matching dict\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

uint64_t ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_1(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get manager's parent: 0x%08x\n", "CentauriPlatform", "isCentauriBuiltin_block_invoke", v1);
}

uint64_t CentauriFirmware::copyRFEM(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find service\n", "CentauriFirmware", "copyRFEM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create matching dict\n", "CentauriFirmware", "copyRFEM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriFirmware", "copyRFEM");
}

uint64_t CentauriFirmware::copyWSKU(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unexpected size %zu\n", "CentauriFirmware", "copyWSKU", a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unsupported version %u\n", "CentauriFirmware", "copyWSKU", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create string\n", "CentauriFirmware", "copyWSKU");
}

{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid byte at offset %u\n", "CentauriFirmware", "copyWSKU", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriFirmware", "copyWSKU");
}

void CentauriFirmware::getManifestUniqueId()
{
  if (__cxa_guard_acquire(_MergedGlobals_0))
  {
    __cxa_atexit(MEMORY[0x277D82640], &xmmword_27ED71C88, &dword_243386000);

    __cxa_guard_release(_MergedGlobals_0);
  }
}

{
  dispatch_once(&CentauriFirmware::getManifestUniqueId(void)::once, &__block_literal_global_2);
}

uint64_t RTKitFirmware::init()
{
  return MEMORY[0x28213EBE8]();
}

{
  return MEMORY[0x28213EBF0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}