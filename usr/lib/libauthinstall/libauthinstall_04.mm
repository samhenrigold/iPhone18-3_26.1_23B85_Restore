id MantaMCURestoreInfoCoreCreateRequest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v76 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v71 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v71 = 0;
  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_18;
  }

  v5 = a1;
  v16 = [[MRULogHelper alloc] initWithOptions:v5 logFunction:a2 logContext:a3];
  v7 = [v5 objectForKeyedSubscript:@"DeviceInfo"];
  v71 = v16;
  if (!v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v13 = [v5 objectForKeyedSubscript:@"FirmwareData"];
  if (!v13)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_16:
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  v17 = [v7 objectForKeyedSubscript:@"PersonalizationInfoArray"];
  v10 = v17;
  if (!v17)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  [v17 firstObject];
  v70 = v72 = 0;
  v9 = [[MRUPersonalizationInfo alloc] initWithOptions:v70 error:&v72];
  v18 = v72;
  v14 = v18;
  if (!v9)
  {
    v11 = 0;
    v12 = 0;
    v8 = v70;
    goto LABEL_18;
  }

  v69 = v18;
  v19 = [v7 objectForKeyedSubscript:@"LocalSigningID"];
  if (v19)
  {
    v12 = v19;
  }

  else
  {
    v12 = MEMORY[0x29EDB8EA8];
  }

  if (([v12 BOOLValue] & 1) == 0)
  {
    v11 = [MEMORY[0x29EDB8E00] dictionary];
    v22 = [(MRUPersonalizationInfo *)v9 ticketName];
    v23 = [@"@" stringByAppendingString:v22];
    [v11 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v23];

    v24 = MEMORY[0x29EDBA070];
    v62 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v25 = [v24 numberWithUnsignedInt:{objc_msgSend(v62, "boardID")}];
    v26 = [(MRUPersonalizationInfo *)v9 boardIDPropertyName];
    [v11 setObject:v25 forKeyedSubscript:v26];

    v27 = MEMORY[0x29EDBA070];
    v63 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v28 = [v27 numberWithUnsignedInt:{objc_msgSend(v63, "chipID")}];
    v29 = [(MRUPersonalizationInfo *)v9 chipIDPropertyName];
    [v11 setObject:v28 forKeyedSubscript:v29];

    v30 = MEMORY[0x29EDBA070];
    v64 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v31 = [v30 numberWithUnsignedLongLong:{objc_msgSend(v64, "ecid")}];
    v32 = [(MRUPersonalizationInfo *)v9 ecidPropertyName];
    [v11 setObject:v31 forKeyedSubscript:v32];

    v33 = [(MRUPersonalizationInfo *)v9 nonce];
    v34 = [(MRUPersonalizationInfo *)v9 noncePropertyName];
    [v11 setObject:v33 forKeyedSubscript:v34];

    v65 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    if ([v65 productionStatus])
    {
      v35 = MEMORY[0x29EDB8EB0];
    }

    else
    {
      v35 = MEMORY[0x29EDB8EA8];
    }

    v36 = [(MRUPersonalizationInfo *)v9 productionModePropertyName];
    [v11 setObject:v35 forKeyedSubscript:v36];

    v37 = MEMORY[0x29EDBA070];
    v66 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v38 = [v37 numberWithUnsignedInt:{objc_msgSend(v66, "securityDomain")}];
    v39 = [(MRUPersonalizationInfo *)v9 securityDomainPropertyName];
    [v11 setObject:v38 forKeyedSubscript:v39];

    v67 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    if ([v67 securityMode])
    {
      v40 = MEMORY[0x29EDB8EB0];
    }

    else
    {
      v40 = MEMORY[0x29EDB8EA8];
    }

    v41 = [(MRUPersonalizationInfo *)v9 securityModePropertyName];
    [v11 setObject:v40 forKeyedSubscript:v41];

    v42 = [(MRUPersonalizationInfo *)v9 objectName];
    v68 = v42;
    if ([v42 isEqualToString:@"RestoreRTKitOS"])
    {
      v43 = &kMantaFTABSubfileRRKO;
    }

    else
    {
      if (![v42 isEqualToString:@"RTKitOS"])
      {
        goto LABEL_37;
      }

      v43 = &kMantaFTABSubfileRKOS;
    }

    v44 = *v43;
    if (v44)
    {
      v45 = v44;
      [(MRULogHelper *)v71 verboseLog:@"[%@]: %@ is FTAB subfile with tag '%@', extracting\n", @"MantaMRI", v42, v44];
      v46 = [[MantaFTABFile alloc] initWithData:v13];
      if (v46)
      {
        v47 = v46;
        v61 = v45;
        v48 = [(MantaFTABFile *)v46 subfileWithTag:v45];
        if (v48)
        {
          v49 = v48;
          v50 = [MEMORY[0x29EDB8DA0] dataWithBytes:objc_msgSend(v48 length:{"dataPointer"), objc_msgSend(v48, "dataLength")}];

          [(MRULogHelper *)v71 verboseLog:@"[%@]: Extracted %@ from FTAB", @"MantaMRI", v68];
          v13 = v50;
LABEL_38:
          ccsha384_di();
          [v13 length];
          [v13 bytes];
          ccdigest();
          v73[0] = @"Digest";
          v60 = [MEMORY[0x29EDB8DA0] dataWithBytes:v75 length:48];
          v74[0] = v60;
          v73[1] = @"EPRO";
          v59 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
          v51 = [v59 productionStatus];
          v52 = MEMORY[0x29EDB8EA8];
          v53 = MEMORY[0x29EDB8EB0];
          if (v51)
          {
            v54 = MEMORY[0x29EDB8EB0];
          }

          else
          {
            v54 = MEMORY[0x29EDB8EA8];
          }

          v74[1] = v54;
          v73[2] = @"ESEC";
          v55 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
          if ([v55 securityMode])
          {
            v56 = v53;
          }

          else
          {
            v56 = v52;
          }

          v73[3] = @"Trusted";
          v74[2] = v56;
          v74[3] = v53;
          v57 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
          v58 = [(MRUPersonalizationInfo *)v9 tag];
          [v11 setObject:v57 forKeyedSubscript:v58];

          v11 = v11;
          v20 = v11;
LABEL_20:
          v16 = v71;
          goto LABEL_21;
        }
      }

      v14 = v69;
      v8 = v70;
LABEL_18:
      v69 = v14;
      v70 = v8;
      v20 = 0;
      if (a4)
      {
        *a4 = 0;
      }

      goto LABEL_20;
    }

LABEL_37:
    v61 = 0;
    goto LABEL_38;
  }

  v11 = 0;
  v20 = MEMORY[0x29EDB8EA0];
LABEL_21:

  return v20;
}

uint64_t RoseRestoreHost::create@<X0>(RoseRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: RoseUpdater Version: %s\n", "RoseRestoreHost", "create", "RoseUpdater-115~31852");
  v7 = operator new(0xF8uLL);
  ACFURestoreHost::ACFURestoreHost(v7);
  *v7 = &unk_2A1EE8AD0;
  *(v7 + 29) = 0;
  *(v7 + 30) = 0;
  *a3 = v7;
  result = RoseRestoreHost::init(v7, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v9 = *(*v7 + 24);

    return v9(v7);
  }

  return result;
}

void sub_2984F3454(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

__CFDictionary *RoseRestoreHost::createRequest(ACFULogging *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 17))
  {
    RoseRestoreHost::createRequest(a1);
    return 0;
  }

  else
  {
    v4 = *(a2 + 8);
    v8 = *a2;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = ACFURestoreHost::createRequest(a1, &v8, a3);
    v6 = v9;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v5)
    {
      if (*(a3 + 16) == 1)
      {
        CFDictionaryRemoveValue(v5, @"Rap,RestoreRTKitOS");
      }
    }

    else
    {
      RoseRestoreHost::createRequest(v6);
    }
  }

  return v5;
}

void sub_2984F3538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RoseRestoreHost::~RoseRestoreHost(RoseRestoreHost *this)
{
  *this = &unk_2A1EE8AD0;
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ACFURestoreHost::~ACFURestoreHost(this);
}

{
  RoseRestoreHost::~RoseRestoreHost(this);

  operator delete(v1);
}

uint64_t RoseRestoreHost::init(RoseRestoreHost *this, CFTypeRef cf, const __CFString *a3)
{
  v47[1] = *MEMORY[0x29EDCA608];
  if (!cf || (v5 = this, v6 = CFGetTypeID(cf), this = CFDictionaryGetTypeID(), v6 != this))
  {
    RoseRestoreHost::init(this);
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"DeviceInfo");
  if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v9 != Value))
  {
    RoseRestoreHost::init(Value);
    return 0;
  }

  TypeID = CFDictionaryGetValue(v8, @"Rap,ChipID");
  if (!TypeID || (v11 = TypeID, v12 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v12 != TypeID))
  {
    RoseRestoreHost::init(TypeID);
    return 0;
  }

  Length = CFDataGetLength(v11);
  if (Length != 2)
  {
    RoseRestoreHost::init(Length);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(v11);
  RoseCapabilities::create(&v41, *BytePtr);
  v15 = v41;
  v41 = 0uLL;
  v16 = *(v5 + 30);
  *(v5 + 232) = v15;
  if (!v16)
  {
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v16 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v41 + 1));
  }

  if (!*(v5 + 29))
  {
LABEL_20:
    RoseRestoreHost::init(v16);
    return 0;
  }

LABEL_12:
  v41 = xmmword_29EE9C0B8;
  v42 = *&off_29EE9C0C8;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 5, &v41, &v43, 4uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRtkitosICNF);
  }

  if (RoseCapabilities::requiresSeparateFirmwareTargetForCertification(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRestoreRtkitos);
  }

  v41 = xmmword_29EE9C0E8;
  v42 = *&off_29EE9C0F8;
  v43 = xmmword_29EE9C108;
  v44 = @"Rap,SecurityDomain";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 8, &v41, &v45, 7uLL);
  *&v41 = @"@Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 11, &v41, &v41 + 8, 1uLL);
  *&v41 = @"Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 14, &v41, &v41 + 8, 1uLL);
  v41 = xmmword_29EE9C120;
  v42 = *&off_29EE9C130;
  v43 = xmmword_29EE9C140;
  std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(v5 + 17, &v41, &v44, 3uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    v18 = *(v5 + 18);
    v17 = *(v5 + 19);
    if (v18 >= v17)
    {
      v20 = *(v5 + 17);
      v21 = (v18 - v20) >> 4;
      v22 = v21 + 1;
      if ((v21 + 1) >> 60)
      {
        std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
      }

      v23 = v17 - v20;
      if (v23 >> 3 > v22)
      {
        v22 = v23 >> 3;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        v25 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(v5 + 136, v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[16 * v21];
      v27 = &v25[16 * v24];
      *v26 = @"Rap,RTKitIOConfig";
      v26[8] = 1;
      v19 = v26 + 16;
      v28 = *(v5 + 17);
      v29 = *(v5 + 18) - v28;
      v30 = &v26[-v29];
      memcpy(&v26[-v29], v28, v29);
      v31 = *(v5 + 17);
      *(v5 + 17) = v30;
      *(v5 + 18) = v19;
      *(v5 + 19) = v27;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v18 = @"Rap,RTKitIOConfig";
      *(v18 + 8) = 1;
      v19 = (v18 + 16);
    }

    *(v5 + 18) = v19;
  }

  v32 = CFNumberGetTypeID();
  *&v41 = @"Rap,ChipID";
  *(&v41 + 1) = v32;
  v33 = CFNumberGetTypeID();
  *&v42 = @"Rap,BoardID";
  *(&v42 + 1) = v33;
  v34 = CFNumberGetTypeID();
  *&v43 = @"Rap,SecurityDomain";
  *(&v43 + 1) = v34;
  v35 = CFBooleanGetTypeID();
  v44 = @"Rap,ProductionMode";
  v45 = v35;
  v36 = CFBooleanGetTypeID();
  v46[0] = @"Rap,SecurityMode";
  v46[1] = v36;
  v37 = CFNumberGetTypeID();
  v46[2] = @"Rap,ECID";
  v46[3] = v37;
  v38 = CFDataGetTypeID();
  v46[4] = @"Rap,Nonce";
  v46[5] = v38;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(v5 + 20, &v41, v47);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    *(v5 + 23) = @"Rap,FdrRootCaDigest";
  }

  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    *(v5 + 24) = @"Rap,FDRAllowUnsealed";
  }

  *&v41 = @"Rap,RTKitOS";
  WORD4(v41) = 1;
  *&v42 = @"Rap,RestoreRTKitOS";
  WORD4(v42) = 1;
  *&v43 = @"Rap,SoftwareBinaryDsp1";
  WORD4(v43) = 0;
  v44 = @"Rap,RTKitIOConfig";
  LOWORD(v45) = 0;
  std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(v5 + 25, &v41, v46);
  *(v5 + 28) = @"Rose";
  v39 = ACFURestoreHost::init(v5, cf, a3);
  if ((v39 & 1) == 0)
  {
    RoseRestoreHost::init(v39);
    return 0;
  }

  return 1;
}

void std::vector<__CFString const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
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
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, v10);
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

const void *RoseRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2, int a3)
{
  GetRoseTatsuTagToFileNameMap(&v132);
  v5 = std::map<__CFString const*,std::string>::at(&v132, &kRoseRestoreRtkitos);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v133, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    v133.__r_.__value_.__r.__words[2] = v5[2];
    *&v133.__r_.__value_.__l.__data_ = v6;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v132, v132.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v131);
  v7 = std::map<__CFString const*,std::string>::at(&v131, &kRoseRtkitos);
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v132.__r_.__value_.__r.__words[2] = v7[2];
    *&v132.__r_.__value_.__l.__data_ = v8;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v131, v131.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v130);
  v9 = std::map<__CFString const*,std::string>::at(&v130, &kRoseSwDsp1);
  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v131.__r_.__value_.__r.__words[2] = v9[2];
    *&v131.__r_.__value_.__l.__data_ = v10;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v130, v130.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v128);
  v11 = std::map<__CFString const*,std::string>::at(&v128, &kRoseRtkitosICNF);
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v130.__r_.__value_.__r.__words[2] = v11[2];
    *&v130.__r_.__value_.__l.__data_ = v12;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v128, *(&v128 + 1));
  Value = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  v14 = Value;
  if (!Value || (v15 = CFGetTypeID(Value), v15 != CFDictionaryGetTypeID()))
  {
    std::string::basic_string[abi:ne200100]<0>(v126, "copyFirmwareUpdater: failed to get device info list");
    v72 = ACFUError::addError(a1 + 24, v126, 0xFA1uLL, 0);
    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    LogInstance = ACFULogging::getLogInstance(v72);
    v71 = "%s::%s: failed to get device info list\n";
    goto LABEL_110;
  }

  v16 = CFDictionaryGetValue(v14, @"Rap,RestoreBootNonce");
  if (v16)
  {
    TypeID = CFDataGetTypeID();
    v18 = CFGetTypeID(v16);
    if (TypeID == v18)
    {
      v19 = ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage(v19, 0, "%s::%s: Restore boot nonce present!\n", "RoseRestoreHost", "copyFirmwareUpdater");
      if (CFDataGetLength(v16) != 8)
      {
        std::string::basic_string[abi:ne200100]<0>(v124, "copyFirmwareUpdater: nonce is of unexpected size");
        v93 = ACFUError::addError(a1 + 24, v124, 0x3EDuLL, 0);
        if (v125 < 0)
        {
          operator delete(v124[0]);
        }

        LogInstance = ACFULogging::getLogInstance(v93);
        v71 = "%s::%s: nonce is of unexpected size\n";
        goto LABEL_110;
      }

      v16 = *CFDataGetBytePtr(v16);
    }

    else
    {
      v16 = 0;
    }
  }

  v20 = CFDictionaryGetValue(v14, @"Rap,ChipRev");
  v21 = CFDictionaryGetValue(v14, @"Rap,BoardID");
  if (!v20 || (v22 = v21) == 0 || (v23 = CFDataGetTypeID(), v23 != CFGetTypeID(v20)) || (v24 = CFDataGetTypeID(), v24 != CFGetTypeID(v22)))
  {
    std::string::basic_string[abi:ne200100]<0>(v122, "copyFirmwareUpdater: unexpected device info parameters");
    v69 = ACFUError::addError(a1 + 24, v122, 0x3EDuLL, 0);
    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    LogInstance = ACFULogging::getLogInstance(v69);
    v71 = "%s::%s: unexpected device info parameters\n";
    goto LABEL_110;
  }

  if (CFDataGetLength(v20) != 2 || CFDataGetLength(v22) != 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v120, "copyFirmwareUpdater: bad device info parameters");
    v73 = ACFUError::addError(a1 + 24, v120, 0x3EDuLL, 0);
    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    LogInstance = ACFULogging::getLogInstance(v73);
    v71 = "%s::%s: bad device info parameters\n";
LABEL_110:
    v37 = 0;
    v52 = 0;
    v44 = 0;
    ACFULogging::handleMessage(LogInstance, 2, v71, "RoseRestoreHost", "copyFirmwareUpdater");
    v60 = 0;
    goto LABEL_86;
  }

  v25 = *CFDataGetBytePtr(v20);
  BytePtr = CFDataGetBytePtr(v22);
  v27 = *BytePtr;
  v28 = ACFULogging::getLogInstance(BytePtr);
  ACFULogging::handleMessage(v28, 0, "%s::%s: Rose Hardware Info (Board ID: 0x%04x, Chip Revision: 0x%04x)\n", "RoseRestoreHost", "copyFirmwareUpdater", v27, v25);
  v30 = ACFULogging::getLogInstance(v29);
  std::string::basic_string[abi:ne200100]<0>(&v118, "RoseRestoreHost");
  v31 = std::string::append(&v118, "::");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v119.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v119.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v119, "copyFirmwareUpdater");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v129 = v33->__r_.__value_.__r.__words[2];
  v128 = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v30, &v128, 0, "Firmware File Dictionary: ", a2);
  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v35 = ACFURestoreHost::copyDataFromFileDictionary(@"Rap,RTKitOS", a2, a3);
  cf = v35;
  if (v35)
  {
    v36 = CFGetTypeID(v35);
    if (v36 == CFDataGetTypeID())
    {
      ACFUFTABFile::create(cf, 0, v25, &v128);
      v37 = v128;
      if (!v128)
      {
        std::string::basic_string[abi:ne200100]<0>(v114, "copyFirmware: failed to init bundle firmware");
        v84 = ACFUError::addError(a1 + 24, v114, 0xFA0uLL, 0);
        if (v115 < 0)
        {
          operator delete(v114[0]);
        }

        v85 = ACFULogging::getLogInstance(v84);
        v37 = 0;
        v52 = 0;
        v44 = 0;
        ACFULogging::handleMessage(v85, 2, "%s::%s: failed to init bundle firmware\n", "RoseRestoreHost", "copyFirmwareUpdater");
        v59 = 0;
        v42 = 0;
        v50 = 0;
        v60 = 0;
        goto LABEL_80;
      }

      if (!(*(*v128 + 16))(v128, &v131) || ((*(*v37 + 16))(v37, &v132) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v112, "copyFirmware: bundle firmware specified is invalid");
        v76 = ACFUError::addError(a1 + 24, v112, 0x3E8uLL, 0);
        if (v113 < 0)
        {
          operator delete(v112[0]);
        }

        v77 = ACFULogging::getLogInstance(v76);
        v52 = 0;
        v44 = 0;
        ACFULogging::handleMessage(v77, 2, "%s::%s: bundle firmware specified is invalid\n", "RoseRestoreHost", "copyFirmwareUpdater");
        v59 = 0;
        v42 = 0;
        v50 = 0;
        v60 = 0;
        goto LABEL_80;
      }

      if (RoseCapabilities::supportsRTKitIOConfig(*(a1 + 232)))
      {
        v38 = (*(*v37 + 16))(v37, &v130);
        if ((v38 & 1) == 0)
        {
          v39 = ACFULogging::getLogInstance(v38);
          ACFULogging::handleMessage(v39, 3, "%s::%s: copyfirmware: ICNF missing in bundle firmware\n", "RoseRestoreHost", "copyFirmwareUpdater");
        }
      }

      v40 = CFDictionaryContainsKey(a2, *(a1 + 8));
      if (v40)
      {
        v41 = ACFURestoreHost::copyDataFromFileDictionary(*(a1 + 8), a2, a3);
        v42 = v41;
        if (!v41 || (v43 = CFGetTypeID(v41), v43 != CFDataGetTypeID()))
        {
          std::string::basic_string[abi:ne200100]<0>(v110, "copyFirmware: rooted override data unavailable");
          v80 = ACFUError::addError(a1 + 24, v110, 0x3E8uLL, 0);
          if (v111 < 0)
          {
            operator delete(v110[0]);
          }

          v46 = ACFULogging::getLogInstance(v80);
          v47 = "%s::%s: rooted override data unavailable\n";
          goto LABEL_124;
        }

        ACFUFTABFile::create(v42, 0, v25, &v128);
        v44 = v128;
        if (!v128)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: failed to init ftab file object");
          v45 = ACFUError::addError(a1 + 24, __p, 0xFA0uLL, 0);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }

          v46 = ACFULogging::getLogInstance(v45);
          v47 = "%s::%s: failed to init ftab file object\n";
LABEL_124:
          v52 = 0;
          v44 = 0;
          ACFULogging::handleMessage(v46, 2, v47, "RoseRestoreHost", "copyFirmwareUpdater");
          v59 = 0;
          v50 = 0;
          v60 = 0;
LABEL_80:
          CFRelease(cf);
          if (v50)
          {
            CFRelease(v50);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v59)
          {
            CFRelease(v59);
          }

          goto LABEL_86;
        }
      }

      else
      {
        v48 = ACFULogging::getLogInstance(v40);
        v44 = 0;
        ACFULogging::handleMessage(v48, 0, "%s::%s: no firmware override specified\n", "RoseRestoreHost", "copyFirmwareUpdater");
        v42 = 0;
      }

      if (CFDictionaryContainsKey(a2, @"Rap,RestoreRTKitOS"))
      {
        v49 = ACFURestoreHost::copyDataFromFileDictionary(@"Rap,RestoreRTKitOS", a2, a3);
        v50 = v49;
        if (v49 && (v51 = CFGetTypeID(v49), v51 == CFDataGetTypeID()))
        {
          ACFUFTABFile::create(v50, 0, v25, &v128);
          v52 = v128;
          if (v128)
          {
            if (((*(*v128 + 16))(v128, &v133) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(v102, "copyFirmware: bundle cert firmware doesn't have rrko");
              v87 = ACFUError::addError(a1 + 24, v102, 0x3E8uLL, 0);
              if (v103 < 0)
              {
                operator delete(v102[0]);
              }

              v88 = ACFULogging::getLogInstance(v87);
              ACFULogging::handleMessage(v88, 2, "%s::%s: bundle cert firmware doesn't have 'rrko'\n", "RoseRestoreHost", "copyFirmwareUpdater");
              goto LABEL_141;
            }

            if (v44)
            {
              goto LABEL_54;
            }

            goto LABEL_61;
          }

          std::string::basic_string[abi:ne200100]<0>(v104, "copyFirmware: failed to init certification firmware");
          v86 = ACFUError::addError(a1 + 24, v104, 0xFA0uLL, 0);
          if (v105 < 0)
          {
            operator delete(v104[0]);
          }

          v82 = ACFULogging::getLogInstance(v86);
          v83 = "%s::%s: failed to init certification firmware\n";
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v106, "copyFirmware: rrko bundle data unavailable");
          v81 = ACFUError::addError(a1 + 24, v106, 0x3E8uLL, 0);
          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          v82 = ACFULogging::getLogInstance(v81);
          v83 = "%s::%s: rrko bundle data unavailable\n";
        }

        v52 = 0;
        ACFULogging::handleMessage(v82, 2, v83, "RoseRestoreHost", "copyFirmwareUpdater");
        v59 = 0;
        v60 = 0;
        goto LABEL_80;
      }

      v52 = 0;
      v50 = 0;
      if (v44)
      {
LABEL_54:
        v53 = (*v44)[2](v44, &v133);
        v54 = (*v44)[2](v44, &v132);
        if (v53)
        {
          v55 = v44;
        }

        else
        {
          v55 = v52;
        }

        if (v54)
        {
          v56 = v44;
        }

        else
        {
          v56 = v37;
        }

        goto LABEL_62;
      }

LABEL_61:
      v55 = v52;
      v56 = v37;
LABEL_62:
      v57 = (*(*v56 + 16))(v56, &v133);
      if (v55)
      {
        v58 = v57;
      }

      else
      {
        v58 = 1;
      }

      if (v58)
      {
        v59 = 0;
LABEL_69:
        if (v16)
        {
          ACFUFTABFile::setBootNonce(v56, v16);
        }

        v60 = (*(*v56 + 40))(v56);
        if (v60 && (v61 = CFDataGetTypeID(), v62 = CFGetTypeID(v60), v61 == v62))
        {
          v63 = ACFULogging::getLogInstance(v62);
          std::string::basic_string[abi:ne200100]<0>(&v118, "RoseRestoreHost");
          v64 = std::string::append(&v118, "::");
          v65 = *&v64->__r_.__value_.__l.__data_;
          v119.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
          *&v119.__r_.__value_.__l.__data_ = v65;
          v64->__r_.__value_.__l.__size_ = 0;
          v64->__r_.__value_.__r.__words[2] = 0;
          v64->__r_.__value_.__r.__words[0] = 0;
          v66 = std::string::append(&v119, "copyFirmwareUpdater");
          v67 = *&v66->__r_.__value_.__l.__data_;
          v129 = v66->__r_.__value_.__r.__words[2];
          v128 = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v63, &v128, 3, "outData", v60);
          if (SHIBYTE(v129) < 0)
          {
            operator delete(v128);
          }

          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }

          (*(*v56 + 24))(v56);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v96, "copyFirmware: could not create output data");
          v78 = ACFUError::addError(a1 + 24, v96, 0x3E8uLL, 0);
          if (v97 < 0)
          {
            operator delete(v96[0]);
          }

          v79 = ACFULogging::getLogInstance(v78);
          ACFULogging::handleMessage(v79, 2, "%s::%s: could not create output data\n", "RoseRestoreHost", "copyFirmwareUpdater");
        }

        goto LABEL_80;
      }

      v59 = (**v55)(v55, &v133);
      if (v59)
      {
        if (ACFUFTABFile::addNewFileToFTAB(v56, &v133, v59))
        {
          goto LABEL_69;
        }

        std::string::basic_string[abi:ne200100]<0>(v98, "copyFirmware: could not add 'rrko' object to final ftab");
        v91 = ACFUError::addError(a1 + 24, v98, 0x3E8uLL, 0);
        if (v99 < 0)
        {
          operator delete(v98[0]);
        }

        v92 = ACFULogging::getLogInstance(v91);
        ACFULogging::handleMessage(v92, 2, "%s::%s: could not add 'rrko' object to final ftab\n", "RoseRestoreHost", "copyFirmwareUpdater");
LABEL_145:
        v60 = 0;
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(v100, "copyFirmware: could not get 'rrko' object from ftab");
      v89 = ACFUError::addError(a1 + 24, v100, 0x3E8uLL, 0);
      if (v101 < 0)
      {
        operator delete(v100[0]);
      }

      v90 = ACFULogging::getLogInstance(v89);
      ACFULogging::handleMessage(v90, 2, "%s::%s: could not get 'rrko' object from ftab\n", "RoseRestoreHost", "copyFirmwareUpdater");
LABEL_141:
      v59 = 0;
      goto LABEL_145;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v116, "copyFirmware: rkos bundle data unavailable");
  v74 = ACFUError::addError(a1 + 24, v116, 0x3E8uLL, 0);
  if (v117 < 0)
  {
    operator delete(v116[0]);
  }

  v75 = ACFULogging::getLogInstance(v74);
  ACFULogging::handleMessage(v75, 2, "%s::%s: rkos bundle data unavailable\n", "RoseRestoreHost", "copyFirmwareUpdater");
  v59 = 0;
  v42 = 0;
  v50 = 0;
  v60 = 0;
  v44 = 0;
  v52 = 0;
  v37 = 0;
  if (cf)
  {
    goto LABEL_80;
  }

LABEL_86:
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  if (v44)
  {
    ((*v44)[7])(v44);
  }

  if (v52)
  {
    ((*v52)[7])(v52);
  }

  if (v37)
  {
    (*(*v37 + 56))(v37);
  }

  return v60;
}

void sub_2984F4C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (*(v65 - 185) < 0)
  {
    operator delete(*(v65 - 208));
  }

  if (*(v65 - 153) < 0)
  {
    operator delete(*(v65 - 176));
  }

  if (*(v65 - 121) < 0)
  {
    operator delete(*(v65 - 144));
  }

  if (*(v65 - 89) < 0)
  {
    operator delete(*(v65 - 112));
  }

  _Unwind_Resume(a1);
}

void **std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 4)
    {
      v20 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v20 - 7);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15 - 7);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 16;
          *v18++ = v19;
          v17 += 16;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
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

    if (a4 >> 60)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 16;
      *v12 = v13;
      v12 += 16;
    }
  }

  v7[1] = v12;
  return result;
}

void *std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(void *result, unint64_t *a2, unint64_t *a3)
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
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_2984F5230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__node_assign_unique(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (a1 + 8);
LABEL_9:
    *(a3 + 32) = v6;
    *(a3 + 40) = *(a2 + 4);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

void RoseRestoreHost::createRequest(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: security mode demotion disallowed for Rose\n", "RoseRestoreHost", "createRequest");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create output request dictionary\n", "RoseRestoreHost", "createRequest");
}

void RoseRestoreHost::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Bad chip ID size\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize base class\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create capabilities\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No chip ID\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No device info\n", "RoseRestoreHost", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Bad options\n", "RoseRestoreHost", "init");
}

uint64_t RoseUpdaterGetTags(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    RoseUpdaterGetTags_cold_1(inited, a4);
    return 0;
  }

  RoseRestoreHost::create(a1, @"RoseRestoreInfo", &v14);
  v10 = v14;
  if (!v14)
  {
    RoseUpdaterGetTags_cold_2(a4);
    return 0;
  }

  v11 = (**v14)(v14);
  if (!v11)
  {
    v13 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v13, 2, "%s::%s: failed to get tags\n", "RoseRestoreInfo", "RoseUpdaterGetTags");
    *a4 = ACFURestoreHost::getError(v10);
  }

  (*(*v10 + 24))(v10);
  return v11;
}

const __CFData *RoseUpdaterCopyFirmware(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    RoseUpdaterCopyFirmware_cold_1(inited, a4);
    return 0;
  }

  RoseRestoreHost::create(a1, @"RoseRestoreInfo", &v14);
  v10 = v14;
  if (!v14)
  {
    RoseUpdaterCopyFirmware_cold_2(a4);
    return 0;
  }

  v11 = ACFURestoreHost::copyFirmware(v14);
  if (!v11)
  {
    v13 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v13, 2, "%s::%s: failed to copy firmware\n", "RoseRestoreInfo", "RoseUpdaterCopyFirmware");
    *a4 = ACFURestoreHost::getError(v10);
  }

  (*(*v10 + 24))(v10);
  return v11;
}

uint64_t RoseUpdaterCreateRequest(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  ACFUError::ACFUError(v44, @"RoseRestoreInfo");
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v40[0] = @"Rap,ProductionMode";
  v40[1] = @"Rap,SecurityMode";
  LogInstance = ACFULogging::getLogInstance(v8);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v11 = inited;
  if (inited)
  {
    v28 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v28, 2, "%s::%s: failed to init logging\n", "RoseRestoreInfo", "RoseUpdaterCreateRequest");
    v29 = v11;
  }

  else
  {
    ACFUCommon::parseDebugArgs(&v39, a1, "demoteProd");
    v13 = v39;
    if (HIDWORD(v39) != 4006)
    {
      if (HIDWORD(v39))
      {
        v31 = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(v31, 2, "%s::%s: failed to parse debug arguments\n", "RoseRestoreInfo", "RoseUpdaterCreateRequest");
        v29 = v13 >> 32;
        goto LABEL_31;
      }

      LOBYTE(v41) = v39 == 1;
    }

    v14 = RoseRestoreHost::create(a1, @"RoseRestoreInfo", &v39);
    v15 = v39;
    if (v39)
    {
      Value = CFDictionaryGetValue(a1, @"FirmwareData");
      v17 = Value;
      if (Value && (TypeID = CFDataGetTypeID(), Value = CFGetTypeID(v17), TypeID == Value))
      {
        GetRoseTatsuTagToFileNameMap(v38);
        RTKitFirmware::create(v38, v17, 0, &v39);
        std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v42, &v39);
        v19 = v39;
        v39 = 0;
        if (v19)
        {
          (*(*v19 + 56))(v19);
        }

        std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v38, v38[1]);
        if (v42)
        {
          v34 = v42;
          v35 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = (*(*v15 + 8))(v15, &v34, v40);
          v22 = v35;
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v21)
          {
            goto LABEL_23;
          }

          v23 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v23, 2, "%s::%s: failed to create request dict\n", "RoseRestoreInfo", "RoseUpdaterCreateRequest");
          std::string::basic_string[abi:ne200100]<0>(__p, "RoseUpdaterCreateRequest: failed to create request dict");
          ACFUError::addError(v44, __p, 0xFA1uLL, 0);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }

          Error = ACFURestoreHost::getError(v15);
        }

        else
        {
          v25 = ACFULogging::getLogInstance(v20);
          ACFULogging::handleMessage(v25, 2, "%s::%s: Failed to find firmware\n", "RoseRestoreInfo", "RoseUpdaterCreateRequest");
          std::string::basic_string[abi:ne200100]<0>(v36, "RoseUpdaterCreateRequest: failed to open firmware");
          ACFUError::addError(v44, v36, 0x3E8uLL, 0);
          if (v37 < 0)
          {
            operator delete(v36[0]);
          }

          Error = ACFUError::getCFError(v44);
        }

        v21 = 0;
        *a4 = Error;
      }

      else
      {
        v27 = ACFULogging::getLogInstance(Value);
        ACFULogging::handleMessage(v27, 0, "%s::%s: Invalid or no firmware file present in restore options\n", "RoseRestoreInfo", "RoseUpdaterCreateRequest");
        v21 = 0;
      }

LABEL_23:
      (*(*v15 + 24))(v15);
      goto LABEL_24;
    }

    v30 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v30, 2, "%s::%s: failed to create host object\n", "RoseRestoreInfo", "RoseUpdaterCreateRequest");
    v29 = 4000;
  }

LABEL_31:
  v21 = 0;
  *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v29, 0);
LABEL_24:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  ACFUError::~ACFUError(v44);
  return v21;
}

void sub_2984F5B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  (*(*v27 + 24))(v27, a2, a3, a4, a5, a6, a7, a8);
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  ACFUError::~ACFUError((v28 - 48));
  _Unwind_Resume(a1);
}

__CFDictionary *RoseUpdaterGetSharedInfo(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  ACFUError::ACFUError(v107, @"RoseRestoreInfo");
  LogInstance = ACFULogging::getLogInstance(v8);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v11 = inited;
  if (inited)
  {
    v55 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to init logging\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
    v56 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v11, 0);
    v45 = 0;
    Mutable = 0;
    *a4 = v56;
  }

  else
  {
    v12 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v12, 0, "%s::%s: performing Rose pairing operation -- sharing digest dictionary\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
    v13 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      std::string::basic_string[abi:ne200100]<0>(v105, "RoseUpdaterGetSharedInfo: Failed to allocate shared info dict");
      v57 = ACFUError::addError(v107, v105, 0xFA0uLL, 0);
      if (v106 < 0)
      {
        operator delete(v105[0]);
      }

      v58 = ACFULogging::getLogInstance(v57);
      v45 = 0;
      ACFULogging::handleMessage(v58, 2, "%s::%s: Failed to allocate shared info dictionary\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
      Mutable = 0;
      goto LABEL_38;
    }

    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    LOWORD(v82.__r_.__value_.__l.__data_) = 0;
    Value = CFDictionaryGetValue(a1, @"DeviceInfo");
    v16 = Value;
    if (Value && (v17 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v17 == Value))
    {
      TypeID = CFDictionaryGetValue(v16, @"Rap,ChipID");
      v19 = TypeID;
      if (!TypeID || (v20 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v20 != TypeID))
      {
        v64 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v64, 2, "%s::%s: chipID is empty or isn't data type\n");
        goto LABEL_15;
      }

      Length = CFDataGetLength(v19);
      if (Length != 2)
      {
        v79 = ACFULogging::getLogInstance(Length);
        ACFULogging::handleMessage(v79, 2, "%s::%s: chipID is not 2 bytes in length. Assuming Rose-SE pairing is not supported.\n");
        goto LABEL_15;
      }

      BytePtr = CFDataGetBytePtr(v19);
      v23 = CFDataGetLength(v19);
      memcpy(&__dst, BytePtr, v23);
      v24 = CFDictionaryGetValue(v16, @"Rap,BoardID");
      v25 = v24;
      if (!v24 || (v26 = CFGetTypeID(v24), v24 = CFDataGetTypeID(), v26 != v24))
      {
        v65 = ACFULogging::getLogInstance(v24);
        ACFULogging::handleMessage(v65, 2, "%s::%s: boardID is empty or isn't data type\n");
        goto LABEL_15;
      }

      v27 = CFDataGetLength(v25);
      if (v27 != 2)
      {
        v80 = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(v80, 2, "%s::%s: boardID is not 2 bytes in length. Assuming Rose-SE pairing is not supported.\n");
        goto LABEL_15;
      }

      v28 = CFDataGetBytePtr(v25);
      v29 = CFDataGetLength(v25);
      memcpy(&v82, v28, v29);
      RoseCapabilities::create(__p, LOWORD(__dst.__r_.__value_.__l.__data_));
      v30 = __p[1];
      if (!__p[0])
      {
        v81 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v81, 2, "%s::%s: failed to create capabilities\n", "RoseRestoreInfo", "supportsRoseSEPairing");
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        goto LABEL_15;
      }

      v31 = RoseCapabilities::supportsRoseSEPairing(__p[0], LOWORD(v82.__r_.__value_.__l.__data_));
      v32 = v31;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if ((v32 & 1) == 0)
      {
LABEL_15:
        v33 = ACFULogging::getLogInstance(v31);
        ACFULogging::handleMessage(v33, 0, "%s::%s: Returning empty sharing digest dictionary -- Rose-SE pairing not supported for this device.\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
        goto LABEL_43;
      }
    }

    else
    {
      v34 = ACFULogging::getLogInstance(Value);
      ACFULogging::handleMessage(v34, 0, "%s::%s: Could not obtain deviceInfo dictionary. Sharing all digest information.\n", "RoseRestoreInfo", "supportsRoseSEPairing");
    }

    v35 = ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage(v35, 0, "%s::%s: Rose-SE pairing is supported for this device\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
    ACFUCommon::parseDebugArgs(__p, a1, "buildIDRoseSEPair");
    v37 = __p[0];
    if (__p[0] >> 32 || !LODWORD(__p[0]))
    {
      v46 = CFDictionaryGetValue(a1, @"FirmwareData");
      if (v46 && (v47 = CFDataGetTypeID(), v47 == CFGetTypeID(v46)))
      {
        GetRoseTatsuTagToFileNameMap(v90);
        RTKitFirmware::create(v90, v46, 0, __p);
        v45 = __p[0];
        __p[0] = 0;
        std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v90, v90[1]);
        if (v45)
        {
          MeasureDataWithTag = ACFUFirmware::getMeasureDataWithTag(v45, @"Rap,RTKitOS");
          ValueForKeyPathInDict = ACFUFirmware::getMeasureDataWithTag(v45, @"Rap,SoftwareBinaryDsp1");
          goto LABEL_30;
        }

        std::string::basic_string[abi:ne200100]<0>(v88, "RoseUpdaterGetSharedInfo: Failed to open firmware");
        v70 = ACFUError::addError(v107, v88, 0x3E8uLL, 0);
        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        v60 = ACFULogging::getLogInstance(v70);
        v61 = "%s::%s: Failed to open firmware\n";
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v91, "RoseUpdaterGetSharedInfo: Invalid or no firmware file present in restore options");
        v59 = ACFUError::addError(v107, v91, 0x3E8uLL, 0);
        if (v92 < 0)
        {
          operator delete(v91[0]);
        }

        v60 = ACFULogging::getLogInstance(v59);
        v61 = "%s::%s: Invalid or no firmware file present in restore options\n";
      }

      v45 = 0;
      ACFULogging::handleMessage(v60, 2, v61, "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
    }

    else
    {
      v38 = ACFULogging::getLogInstance(v36);
      ACFULogging::handleMessage(v38, 0, "%s::%s: forcing pairing with build ID: %u\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo", v37);
      v39 = CFStringCreateWithFormat(v13, 0, @"%@.%@.%@", @"BuildIdentity", @"Rap,RTKitOS", @"Digest", v82.__r_.__value_.__r.__words[0]);
      if (v39)
      {
        MeasureDataWithTag = AMSupportGetValueForKeyPathInDict();
        CFRelease(v39);
        if (MeasureDataWithTag)
        {
          v41 = CFDataGetTypeID();
          if (v41 == CFGetTypeID(MeasureDataWithTag))
          {
            v42 = CFStringCreateWithFormat(v13, 0, @"%@.%@.%@", @"BuildIdentity", @"Rap,SoftwareBinaryDsp1", @"Digest");
            if (v42)
            {
              ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
              CFRelease(v42);
              if (ValueForKeyPathInDict)
              {
                v44 = CFDataGetTypeID();
                if (v44 == CFGetTypeID(ValueForKeyPathInDict))
                {
                  v45 = 0;
LABEL_30:
                  if (MeasureDataWithTag && ValueForKeyPathInDict)
                  {
                    CFDictionarySetValue(Mutable, @"SE,RapSwBinDsp", ValueForKeyPathInDict);
                    CFDictionarySetValue(Mutable, @"SE,RapRTKitOS", MeasureDataWithTag);
                    v49 = ACFULogging::getLogInstance(v48);
                    std::string::basic_string[abi:ne200100]<0>(&v82, "RoseRestoreInfo");
                    v50 = std::string::append(&v82, "::");
                    v51 = *&v50->__r_.__value_.__l.__data_;
                    __dst.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
                    *&__dst.__r_.__value_.__l.__data_ = v51;
                    v50->__r_.__value_.__l.__size_ = 0;
                    v50->__r_.__value_.__r.__words[2] = 0;
                    v50->__r_.__value_.__r.__words[0] = 0;
                    v52 = std::string::append(&__dst, "RoseUpdaterGetSharedInfo");
                    v53 = *&v52->__r_.__value_.__l.__data_;
                    v85 = v52->__r_.__value_.__r.__words[2];
                    *__p = v53;
                    v52->__r_.__value_.__l.__size_ = 0;
                    v52->__r_.__value_.__r.__words[2] = 0;
                    v52->__r_.__value_.__r.__words[0] = 0;
                    ACFULogging::handleMessageCFType(v49, __p, 0, "Rose-SE Shared Info: ", Mutable);
                    if (SHIBYTE(v85) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v82.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    std::string::basic_string[abi:ne200100]<0>(v86, "RoseUpdaterGetSharedInfo: Missing required firmware measurements");
                    v62 = ACFUError::addError(v107, v86, 0xFA1uLL, 0);
                    if (v87 < 0)
                    {
                      operator delete(v86[0]);
                    }

                    v63 = ACFULogging::getLogInstance(v62);
                    ACFULogging::handleMessage(v63, 2, "%s::%s: Missing required firmware measurements\n", "RoseRestoreInfo", "RoseUpdaterGetSharedInfo");
                  }

                  goto LABEL_38;
                }

                std::string::basic_string[abi:ne200100]<0>(v93, "RoseUpdaterGetSharedInfo: sbd1 digest is of an unexpected type");
                v77 = ACFUError::addError(v107, v93, 0x3EDuLL, 0);
                if (v94 < 0)
                {
                  operator delete(v93[0]);
                }

                v78 = ACFULogging::getLogInstance(v77);
                ACFULogging::handleMessage(v78, 2, "%s::%s: sbd1 digest is of an unexpected type\n");
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(v95, "RoseUpdaterGetSharedInfo: failed to get dict entry for sbd1 digest");
                v75 = ACFUError::addError(v107, v95, 0x3EDuLL, 0);
                if (v96 < 0)
                {
                  operator delete(v95[0]);
                }

                v76 = ACFULogging::getLogInstance(v75);
                ACFULogging::handleMessage(v76, 2, "%s::%s: failed to get dict entry for sbd1 digest\n");
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v97, "RoseUpdaterGetSharedInfo: failed to create build ID key path for sdb1");
              v73 = ACFUError::addError(v107, v97, 0x3EDuLL, 0);
              if (v98 < 0)
              {
                operator delete(v97[0]);
              }

              v74 = ACFULogging::getLogInstance(v73);
              ACFULogging::handleMessage(v74, 2, "%s::%s: failed to create build ID key path for sdb1\n");
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v99, "RoseUpdaterGetSharedInfo: rkos digest is of an unexpected type");
            v71 = ACFUError::addError(v107, v99, 0x3EDuLL, 0);
            if (v100 < 0)
            {
              operator delete(v99[0]);
            }

            v72 = ACFULogging::getLogInstance(v71);
            ACFULogging::handleMessage(v72, 2, "%s::%s: rkos digest is of an unexpected type\n");
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v101, "RoseUpdaterGetSharedInfo: failed to get dict entry rkos digest");
          v68 = ACFUError::addError(v107, v101, 0xFA0uLL, 0);
          if (v102 < 0)
          {
            operator delete(v101[0]);
          }

          v69 = ACFULogging::getLogInstance(v68);
          ACFULogging::handleMessage(v69, 2, "%s::%s: failed to get dict entry rkos digest\n");
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v103, "RoseUpdaterGetSharedInfo: failed to create build ID key path for rkos");
        v66 = ACFUError::addError(v107, v103, 0x3EDuLL, 0);
        if (v104 < 0)
        {
          operator delete(v103[0]);
        }

        v67 = ACFULogging::getLogInstance(v66);
        ACFULogging::handleMessage(v67, 2, "%s::%s: failed to create build ID key path for rkos\n");
      }

      v45 = 0;
    }
  }

LABEL_38:
  if (ACFUError::hasError(v107))
  {
    *a4 = ACFUError::getCFError(v107);
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (v45)
  {
    (*(*v45 + 7))(v45);
  }

LABEL_43:
  ACFUError::~ACFUError(v107);
  return Mutable;
}

void sub_2984F65D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  ACFUError::~ACFUError((v40 - 104));
  _Unwind_Resume(a1);
}

CFErrorRef RoseUpdaterGetTags_cold_1(ACFULogging *a1, CFErrorRef *a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init logging\n", "RoseRestoreInfo", "RoseUpdaterGetTags");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v3, 0);
  *a2 = result;
  return result;
}

CFErrorRef RoseUpdaterGetTags_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create host object\n", "RoseRestoreInfo", "RoseUpdaterGetTags");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", 4000, 0);
  *a1 = result;
  return result;
}

CFErrorRef RoseUpdaterCopyFirmware_cold_1(ACFULogging *a1, CFErrorRef *a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init logging\n", "RoseRestoreInfo", "RoseUpdaterCopyFirmware");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v3, 0);
  *a2 = result;
  return result;
}

CFErrorRef RoseUpdaterCopyFirmware_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create host object\n", "RoseRestoreInfo", "RoseUpdaterCopyFirmware");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", 4000, 0);
  *a1 = result;
  return result;
}

void RoseCapabilities::create(RoseCapabilities **__return_ptr a1@<X8>, RoseCapabilities *this@<X0>)
{
  v2 = this;
  v4 = operator new(4uLL);
  std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(a1, v4);
  if (*a1)
  {
    v5 = RoseCapabilities::init(*a1, v2);
    if ((v5 & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize object\n", "RoseCapabilities", "create");
      v8 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v8)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  else
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to create capabilities object\n", "RoseCapabilities", "create");
  }
}

void sub_2984F6A10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseCapabilities::init(RoseCapabilities *this, int a2)
{
  if (a2 == 8228)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Identified chip as R2\n", "RoseCapabilities", "init");
    result = 1;
    *this = 1;
  }

  else if (a2 == 8198)
  {
    v4 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v4, 0, "%s::%s: Identified chip as R1\n", "RoseCapabilities", "init");
    *this = 0;
    return 1;
  }

  else
  {
    v7 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v7, 2, "%s::%s: Unrecognized chipID 0x%x\n", "RoseCapabilities", "init", a2);
    return 0;
  }

  return result;
}

uint64_t RoseCapabilities::supportsRoseSEPairing(RoseCapabilities *this, int a2)
{
  v2 = *this;
  HIDWORD(v4) = a2 - 8;
  LODWORD(v4) = a2 - 8;
  v3 = v4 >> 1;
  v5 = v3 > 0x10;
  v6 = 0x1F141u >> v3;
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  LOBYTE(v7) = (a2 & 0xFC) == 8;
  if (v2)
  {
    v7 = *this;
  }

  if (v2 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return v8 & 1;
}

void *std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EE8B28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2984F6BC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void GetRoseTatsuTagToFileNameMap(uint64_t ***a1@<X8>)
{
  v6[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v3, &kRoseSwDsp1, "sbd1");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v4, &kRoseRtkitos, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v5, &kRoseRestoreRtkitos, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v6, &kRoseRtkitosICNF, "icnf");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v3, 4);
  for (i = 0; i != -16; i -= 4)
  {
    if (SHIBYTE(v6[i + 3]) < 0)
    {
      operator delete(v6[i + 1]);
    }
  }
}

void sub_2984F6D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 104;
  v13 = -128;
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

SERestoreInfo::SN300V2DeviceInfo *SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8BA0;
  if (*(v3 + 14) != 54)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *this = &unk_2A1EE8CD0;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A1EE8CD0;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A1EE8CD0;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  operator delete(this);
}

SERestoreInfo::SN300V2DeviceInfo *SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8BA0;
  if (*(v3 + 14) != 54)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN300V2DeviceInfo::~SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this)
{
  *this = &unk_2A1EE8CD0;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  operator delete(this);
}

void *SERestoreInfo::P73BaseDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::P73BaseDeviceInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 14), *(this + 15), *(this + 15) - *(this + 14));
}

SERestoreInfo::SEWrongDeviceInfo *SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(SERestoreInfo::SEWrongDeviceInfo *this)
{
  v4 = 16;
  strcpy(__p, "Wrong DeviceInfo");
  SERestoreInfo::SEException::SEException(this, __p, 2, @"SEUpdaterErrorDomain");
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1EE8C08;
  return this;
}

void SERestoreInfo::SEWrongDeviceInfo::~SEWrongDeviceInfo(std::exception *this)
{
  SERestoreInfo::SEException::~SEException(this);

  operator delete(v1);
}

uint64_t SERestoreInfo::SEException::what(SERestoreInfo::SEException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
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

void sub_2984F71DC(_Unwind_Exception *exception_object)
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
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

SERestoreInfo::SN210VDeviceInfo *SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo(SERestoreInfo::SN210VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C30;
  if (*(v3 + 14) != 210)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN210VDeviceInfo *SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo(SERestoreInfo::SN210VDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C30;
  if (*(v3 + 14) != 210)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SE310SDeviceInfo *SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C80;
  if (*(v3 + 14) != 55)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SE310SDeviceInfo *SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C80;
  if (*(v3 + 14) != 55)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void *RootCA::getRootKeyId@<X0>(int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 > 199)
  {
    if (a2 != 210 && a2 != 200)
    {
LABEL_14:
      if (a1 == 1)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::prodCA;
      }

      else
      {
        if (a1)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          std::to_string(&v29, a1);
          v19 = std::string::insert(&v29, 0, "Unknown RootCAId: ");
          v20 = *&v19->__r_.__value_.__l.__data_;
          v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
          *&v30.__r_.__value_.__l.__data_ = v20;
          v19->__r_.__value_.__l.__size_ = 0;
          v19->__r_.__value_.__r.__words[2] = 0;
          v19->__r_.__value_.__r.__words[0] = 0;
          v21 = std::string::append(&v30, " for SEChipType ");
          v22 = *&v21->__r_.__value_.__l.__data_;
          v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
          *&v31.__r_.__value_.__l.__data_ = v22;
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v28, a2);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v28;
          }

          else
          {
            v23 = v28.__r_.__value_.__r.__words[0];
          }

          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v28.__r_.__value_.__l.__size_;
          }

          v25 = std::string::append(&v31, v23, size);
          v26 = *&v25->__r_.__value_.__l.__data_;
          v33 = v25->__r_.__value_.__r.__words[2];
          v32 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          v27 = SERestoreInfo::SEException::SEException(exception, &v32, 16, @"SEUpdaterErrorDomain");
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::localCA;
      }

      goto LABEL_11;
    }
  }

  else if (a2 != 100 && a2 != 115)
  {
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::prodCA;
  }

  else
  {
    if (a1)
    {
      v7 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v29, a1);
      v8 = std::string::insert(&v29, 0, "Unknown RootCAId: ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v30, " for SEChipType ");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v28.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v31, v12, v13);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33 = v14->__r_.__value_.__r.__words[2];
      v32 = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = SERestoreInfo::SEException::SEException(v7, &v32, 16, @"SEUpdaterErrorDomain");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::localCA;
  }

LABEL_11:

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v4, v4 + 32, 0x20uLL);
}

void sub_2984F77CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
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

void sub_2984F7958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseDeviceInfo::parseManifest(SERestoreInfo::P73BaseDeviceInfo *this@<X0>, unsigned __int8 **a2@<X8>)
{
  v3 = *(this + 2);
  v28[0] = *(this + 1);
  v28[1] = v3;
  v4 = DERDecodeItem(v28, &v29);
  std::string::basic_string[abi:ne200100]<0>(&v26, "Fail to parse MQR: cannot decode top level tag");
  SERestoreInfo::CallAndThrow<DERReturn>(v4, &v26);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v29 != P73BaseManifestQueryResponseDerSpec::ManifestResponseSequenceTag)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v24, "Fail to parse MQR: wrong top level tag");
    v10 = SERestoreInfo::SEException::SEException(exception, &v24, 2, @"SEUpdaterErrorDomain");
  }

  v23[0] = 0;
  v23[1] = 0;
  v5 = DERParseSequenceContent(&v30, 1u, &P73BaseManifestQueryResponseDerSpec::ManifestResponseItemSpec, v23, 0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, "Fail to parse MQR");
  SERestoreInfo::CallAndThrow<DERReturn>(v5, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v6 = DERParseSequenceContent(v23, 0xFu, &P73BaseManifestQueryResponseDerSpec::ManifestResponseDataItemSpec, a2, 0xF0uLL);
  std::string::basic_string[abi:ne200100]<0>(v19, "Fail to parse MQR.data");
  SERestoreInfo::CallAndThrow<DERReturn>(v6, v19);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (a2[1] != 1 || a2[3] > 2 || a2[5] > 2 || a2[7] > 2 || a2[9] > 2 || a2[15] != 1 || a2[25] > 2 || a2[13] != 24 || a2[17] != 20 || a2[19] != 32 || a2[21] != 32 || a2[11] != 2 || a2[23] != 1)
  {
    v7 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v24, "size of MQRD doesn't match");
    v8 = SERestoreInfo::SEException::SEException(v7, &v24, 2, @"SEUpdaterErrorDomain");
  }

  if (**a2 == 1)
  {
    if (a2[27] != 3 || a2[29] != 32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (**a2)
    {
      v13 = **a2;
      v14 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v18, v13);
      v15 = std::string::insert(&v18, 0, "Unsupported manifest query version: ");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v25 = v15->__r_.__value_.__r.__words[2];
      v24 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = SERestoreInfo::SEException::SEException(v14, &v24, 7, @"SEUpdaterErrorDomain");
    }

    if (a2[27] | a2[29])
    {
LABEL_30:
      v11 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v24, "size of factoryPostflightState or cometRootKeyId doesn't match");
      v12 = SERestoreInfo::SEException::SEException(v11, &v24, 2, @"SEUpdaterErrorDomain");
    }
  }
}

void sub_2984F7D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SERestoreInfo::CallAndThrow<DERReturn>(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x48uLL);
    v5 = SERestoreInfo::SEException::SEException(exception, a2, v2, @"libDERErrorDomain");
  }

  return result;
}

double SERestoreInfo::P73BaseDeviceInfo::init(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *(this + 14) = 0;
  *(this + 2) = 1;
  v7 = 0;
  std::vector<unsigned char>::assign(this + 4, 0x18uLL, &v7);
  v6 = 0;
  std::vector<unsigned char>::assign(this + 8, 0x14uLL, &v6);
  v5 = 0;
  std::vector<unsigned char>::assign(this + 11, 0x20uLL, &v5);
  v4 = 0;
  std::vector<unsigned char>::assign(this + 14, 0x20uLL, &v4);
  *(this + 17) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 7) = 23195;
  *(this + 36) = 0;
  v3 = 0;
  std::vector<unsigned char>::assign(this + 19, 0x20uLL, &v3);
  result = 0.0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  return result;
}

SERestoreInfo::P73BaseDeviceInfo *SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1EE8CD0;
  *(this + 4) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  SERestoreInfo::P73BaseDeviceInfo::init(this);
  memset(v5, 0, sizeof(v5));
  SERestoreInfo::P73BaseDeviceInfo::parseManifest(a2, v5);
  SERestoreInfo::P73BaseDeviceInfo::updateDeviceInfo(this, v5);
  return this;
}

void sub_2984F7FCC(_Unwind_Exception *exception_object)
{
  v6 = v1[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  v8 = v1[14];
  if (v8)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = v1[11];
  if (v9)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void **SERestoreInfo::P73BaseDeviceInfo::updateDeviceInfo(void **a1, unsigned __int8 **a2)
{
  v77[3] = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = *v6++;
      v5 = v7 | (v5 << 8);
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 2) = v5;
  v8 = a2[3];
  if (v8)
  {
    v9 = 0;
    v10 = a2[2];
    do
    {
      v11 = *v10++;
      v9 = v11 | (v9 << 8);
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 3) = v9;
  v12 = a2[5];
  if (v12)
  {
    v13 = 0;
    v14 = a2[4];
    do
    {
      v15 = *v14++;
      v13 = v15 | (v13 << 8);
      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 4) = v13;
  v16 = a2[7];
  if (v16)
  {
    v17 = 0;
    v18 = a2[6];
    do
    {
      v19 = *v18++;
      v17 = v19 | (v17 << 8);
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 5) = v17;
  v20 = a2[9];
  if (v20)
  {
    v21 = 0;
    v22 = a2[8];
    do
    {
      v23 = *v22++;
      v21 = v23 | (v21 << 8);
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 6) = v21;
  v24 = a2[15];
  if (!v24)
  {
    *(a1 + 14) = 0;
    goto LABEL_83;
  }

  v25 = 0;
  v26 = a2[14];
  do
  {
    v27 = *v26++;
    v25 = v27 | (v25 << 8);
    --v24;
  }

  while (v24);
  *(a1 + 14) = v25;
  if (v25 > 99)
  {
    if (v25 > 199)
    {
      if (v25 != 210 && v25 != 200)
      {
        goto LABEL_83;
      }
    }

    else if (v25 != 100)
    {
      if (v25 == 115)
      {
        v28 = 2;
        goto LABEL_43;
      }

LABEL_83:
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(v71, "Unsupported chip ID");
      v56 = SERestoreInfo::SEException::SEException(exception, v71, 2, @"SEUpdaterErrorDomain");
    }

    v28 = 3;
    goto LABEL_43;
  }

  if ((v25 - 54) < 2)
  {
    v28 = 5;
    goto LABEL_43;
  }

  if (v25 == 44)
  {
    v28 = 4;
    goto LABEL_43;
  }

  if (v25 != 56)
  {
    goto LABEL_83;
  }

  v28 = 6;
LABEL_43:
  *(a1 + 45) = v28;
  v66 = v28;
  {
    v70 = xmmword_298561C10;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v64, &v70, 2);
    LODWORD(v71[0]) = 3;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v71 + 1, v64);
    v69 = xmmword_298561C20;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v62, &v69, 2);
    v72 = 4;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](&v73, v62);
    v68 = xmmword_298561C30;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v60, &v68, 2);
    v74 = 5;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](&v75, v60);
    v67 = xmmword_298561C40;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v58, &v67, 2);
    v76 = 6;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v77, v58);
    std::map<unsigned int,std::map<unsigned int,unsigned int>>::map[abi:ne200100](&SERestoreInfo::getJCOPTrain(unsigned int,unsigned int)::JCOP_TRAIN, v71, 4);
    for (i = 0; i != -16; i -= 4)
    {
      std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&v77[i], v77[i + 1]);
    }

    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v58, v59);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v60, v61);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v62, v63);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v64, v65);
  }

  v29 = qword_2A13BA240;
  if (!qword_2A13BA240)
  {
LABEL_49:
    v31 = -1;
    goto LABEL_60;
  }

  while (1)
  {
    v30 = *(v29 + 32);
    if (v66 >= v30)
    {
      break;
    }

LABEL_48:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_49;
    }
  }

  if (v30 < v66)
  {
    v29 += 8;
    goto LABEL_48;
  }

  v32 = std::map<unsigned int,std::map<unsigned int,unsigned int>>::at(&SERestoreInfo::getJCOPTrain(unsigned int,unsigned int)::JCOP_TRAIN, &v66);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](v71, v32);
  v33 = *&v71[0];
  v31 = -1;
  if (*&v71[0] != (v71 + 8))
  {
    do
    {
      if (*(v33 + 7) <= v9)
      {
        v31 = *(v33 + 8);
      }

      v34 = *(v33 + 1);
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = *(v33 + 2);
          v36 = *v35 == v33;
          v33 = v35;
        }

        while (!v36);
      }

      v33 = v35;
    }

    while (v35 != (v71 + 8));
  }

  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v71, *(&v71[0] + 1));
LABEL_60:
  *(a1 + 46) = v31;
  v37 = a2[25];
  if (v37)
  {
    v38 = 0;
    v39 = a2[24];
    do
    {
      v40 = *v39++;
      v38 = v40 | (v38 << 8);
      --v37;
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  *(a1 + 35) = v38;
  v41 = a2[23];
  if (v41)
  {
    v42 = 0;
    v43 = a2[22];
    do
    {
      v44 = *v43++;
      v42 = v44 | (v42 << 8);
      --v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0;
  }

  *(a1 + 34) = v42;
  v45 = a2[27];
  if (v45)
  {
    v46 = 0;
    v47 = a2[26];
    do
    {
      v48 = *v47++;
      v46 = v48 | (v46 << 8);
      --v45;
    }

    while (v45);
    *(a1 + 36) = v46;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 4, a2[12], &a2[13][a2[12]], a2[13]);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 8, a2[16], &a2[17][a2[16]], a2[17]);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 11, a2[18], &a2[19][a2[18]], a2[19]);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 14, a2[20], &a2[21][a2[20]], a2[21]);
  v50 = a2[29];
  if (v50)
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 19, a2[28], &a2[28][v50], v50);
  }

  v51 = a2[11];
  if (v51)
  {
    v52 = 0;
    v53 = a2[10];
    do
    {
      v54 = *v53++;
      v52 = v54 | (v52 << 8);
      --v51;
    }

    while (v51);
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 7) = v52;
  return result;
}

void sub_2984F85C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  v26 = v24 + 104;
  v27 = -128;
  do
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v26, *(v26 + 8));
    v26 -= 32;
    v27 += 32;
  }

  while (v27);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a11, a12);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a15, a16);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

SERestoreInfo::P73BaseDeviceInfo *SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this, SERestoreInfo **a2)
{
  v28 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1EE8CD0;
  *(this + 4) = 0;
  v4 = this + 32;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0u;
  v5 = this + 64;
  *(this + 7) = 0u;
  v6 = this + 112;
  *(this + 19) = 0;
  v7 = this + 88;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 16) = 0;
  v10[0] = @"SE,ChipID";
  v10[1] = CFNumberGetTypeID();
  v10[2] = this + 56;
  v11 = 4;
  v12 = @"SE,ID";
  TypeID = CFDataGetTypeID();
  v14 = v4;
  v15 = 24;
  v16 = @"SE,Nonce";
  v17 = CFDataGetTypeID();
  v18 = v5;
  v19 = 20;
  v20 = @"SE,RootKeyIdentifier";
  v21 = CFDataGetTypeID();
  v22 = v7;
  v23 = 32;
  v24 = @"SE,OSUPubKeyID";
  v25 = CFDataGetTypeID();
  v26 = v6;
  v27 = 32;
  SERestoreInfo::P73BaseDeviceInfo::init(this);
  for (i = 0; i != 20; i += 4)
  {
    SERestoreInfo::getValueFromCFDict(*a2, v10[i], v10[i + 1], v10[i + 2], LODWORD(v10[i + 3]));
  }

  return this;
}

void sub_2984F8894(_Unwind_Exception *exception_object)
{
  v8 = v1[25];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *v6;
  if (*v6)
  {
    v1[20] = v9;
    operator delete(v9);
  }

  v10 = *v5;
  if (*v5)
  {
    v1[15] = v10;
    operator delete(v10);
  }

  v11 = *v4;
  if (*v4)
  {
    v1[12] = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    v1[9] = v12;
    operator delete(v12);
  }

  v13 = *v2;
  if (*v2)
  {
    v1[5] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseDeviceInfo::updateDict(SERestoreInfo::P73BaseDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 14);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 4), *(this + 5) - *(this + 4));
  if (!v8)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 8), *(this + 9) - *(this + 8));
  if (!v10)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v11 = v10;
  CFDictionarySetValue(a2, @"SE,Nonce", v10);
  CFRelease(v11);
  v12 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11));
  if (!v12)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if ((a3 & 1) == 0)
  {
    v14 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
    if (!v14)
    {
      SERestoreInfo::P73BaseDeviceInfo::updateDict();
    }

    v15 = v14;
    CFDictionarySetValue(a2, @"SE,OSUPubKeyID", v14);
    CFRelease(v15);
  }
}

void SERestoreInfo::P73BaseDeviceInfo::getStateName(int a1@<W0>, std::string *a2@<X8>)
{
  v27[3] = *MEMORY[0x29EDCA608];
  v11 = a1;
  v12 = 23195;
  std::string::basic_string[abi:ne200100]<0>(v13, "EXPORT_REQUIRED");
  v14 = 47411;
  std::string::basic_string[abi:ne200100]<0>(v15, "IMPORT_REQUIRED");
  v16 = 47361;
  std::string::basic_string[abi:ne200100]<0>(v17, "UOS1");
  v18 = 47362;
  std::string::basic_string[abi:ne200100]<0>(v19, "UOS2");
  v20 = 42241;
  std::string::basic_string[abi:ne200100]<0>(v21, "UOS1_ERROR");
  v22 = 42242;
  std::string::basic_string[abi:ne200100]<0>(v23, "UOS2_ERROR");
  v24 = 47545;
  std::string::basic_string[abi:ne200100]<0>(v25, "EXPORT_FINISHED");
  v26 = 47377;
  std::string::basic_string[abi:ne200100]<0>(v27, "UOS1_KTP");
  std::map<SERestoreInfo::AMS_UOS_ID,std::string>::map[abi:ne200100](&v9, &v12, 8);
  for (i = 0; i != -32; i -= 4)
  {
    if (SHIBYTE(v27[i + 2]) < 0)
    {
      operator delete(v27[i]);
    }
  }

  v5 = v10;
  if (!v10)
  {
LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(a2, "UNK_STATE");
    goto LABEL_12;
  }

  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a1)
    {
      break;
    }

LABEL_10:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v6 < a1)
  {
    v5 += 8;
    goto LABEL_10;
  }

  v7 = std::map<SERestoreInfo::AMS_UOS_ID,std::string>::at(&v9, &v11);
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

LABEL_12:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10);
}

void sub_2984F8C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 232;
  v17 = -256;
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

uint64_t *std::map<SERestoreInfo::AMS_UOS_ID,std::string>::at(uint64_t a1, int *a2)
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

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_2984F8EA8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C28BCE0](v1);
  _Unwind_Resume(a1);
}

BOOL SERestoreInfo::P73BaseDeviceInfo::isDevIM4(SERestoreInfo::P73BaseDeviceInfo *this)
{
  v2 = (*(*this + 32))(this);
  v3 = 1;
  RootCA::getRootKeyId(1, v2, &v8);
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  v6 = v8;
  if (v5 == v9 - v8)
  {
    v3 = memcmp(v4, v8, v5) != 0;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }

  return v3;
}

_BYTE *std::vector<unsigned char>::assign(void **a1, size_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result >= a2)
  {
    v12 = a1[1];
    v13 = v12 - result;
    if (v12 - result >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = v12 - result;
    }

    if (v14)
    {
      result = memset(result, *a3, v14);
    }

    v15 = a2 >= v13;
    v16 = a2 - v13;
    if (v16 != 0 && v15)
    {
      v17 = a1[1];
      result = memset(v17, *a3, v16);
      v11 = &v17[v16];
    }

    else
    {
      v11 = *a1 + a2;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = 2 * v6;
    if (2 * v6 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v9);
    v10 = a1[1];
    result = memset(v10, *a3, a2);
    v11 = &v10[a2];
  }

  a1[1] = v11;
  return result;
}

uint64_t *std::map<unsigned int,std::map<unsigned int,unsigned int>>::at(uint64_t a1, unsigned int *a2)
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

uint64_t **std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
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
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = *a4;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

uint64_t **std::map<unsigned int,std::map<unsigned int,unsigned int>>::map[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
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
      std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v6 = std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__find_equal<unsigned int>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__construct_node<std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__find_equal<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

uint64_t **std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__construct_node<std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  result = std::map<unsigned int,unsigned int>::map[abi:ne200100](v6 + 5, (a2 + 2));
  *(a3 + 16) = 1;
  return result;
}

void sub_2984F97C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t **std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(uint64_t **result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v5, v5 + 1, v4 + 7, (v4 + 7));
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

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = v7[1];
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
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

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(v7[1], __src, v13);
    }

    v14 = &v12[v13];
  }

  v7[1] = v14;
  return result;
}

uint64_t **std::map<SERestoreInfo::AMS_UOS_ID,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
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
      std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__emplace_hint_unique_key_args<SERestoreInfo::AMS_UOS_ID,std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__emplace_hint_unique_key_args<SERestoreInfo::AMS_UOS_ID,std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__find_equal<SERestoreInfo::AMS_UOS_ID>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__construct_node<std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__find_equal<SERestoreInfo::AMS_UOS_ID>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

void std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__construct_node<std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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

void sub_2984F9DE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void SERestoreInfo::P73BaseDeviceInfo::updateDict()
{
  __assert_rtn("_CFDictionarySetData", "SERestoreInfoHelpers.hpp", 59, "tmpData");
}

{
  __assert_rtn("_CFDictionarySetInteger32", "SERestoreInfoHelpers.hpp", 42, "num != nullptr");
}

SERestoreInfo::IcefallDeviceInfo *SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this, SERestoreInfo **a2)
{
  v43 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0u;
  v4 = this + 16;
  *this = &unk_2A1EE8D30;
  v5 = this + 40;
  *(this + 4) = 0u;
  v6 = this + 64;
  v7 = this + 88;
  *(this + 7) = 0u;
  v8 = this + 112;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 16) = 0;
  v13[0] = @"SE,ChipID";
  v9 = (this + 144);
  v13[1] = CFNumberGetTypeID();
  v13[2] = v9;
  v14 = 4;
  v15 = @"SE,FactoryMode";
  TypeID = CFBooleanGetTypeID();
  v17 = this + 153;
  v18 = 1;
  v19 = @"SE,ID";
  v20 = CFDataGetTypeID();
  v21 = v4;
  v22 = 24;
  v23 = @"SE,Nonce";
  v24 = CFDataGetTypeID();
  v25 = v5;
  v26 = 20;
  v27 = @"SE,RootKeyIdentifier";
  v28 = CFDataGetTypeID();
  v29 = v6;
  v30 = 32;
  v31 = @"SE,OsKeysIdentifier";
  v32 = CFDataGetTypeID();
  v33 = v7;
  v34 = 32;
  v35 = @"SE,BLFWKeysIdentifier";
  v36 = CFDataGetTypeID();
  v37 = v8;
  v38 = 32;
  v39 = @"SE,IsDev";
  v10 = 0;
  v40 = CFBooleanGetTypeID();
  v41 = this + 10;
  v42 = 1;
  *(this + 37) = 6;
  *(this + 76) = 7;
  do
  {
    SERestoreInfo::getValueFromCFDict(*a2, v13[v10], v13[v10 + 1], v13[v10 + 2], LODWORD(v13[v10 + 3]));
    v10 += 4;
  }

  while (v10 != 32);
  if (*v9 != 131601)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void sub_2984FA0A8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v9 = *v7;
  if (*v7)
  {
    v1[15] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[12] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[9] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[6] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v1[3] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

SERestoreInfo::IcefallDeviceInfo *SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *(this + 1) = 0u;
  *this = &unk_2A1EE8D30;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 37) = 6;
  *(this + 76) = 7;
  SERestoreInfo::IcefallDeviceInfo::updateFromMQ(this, a2);
  if (*(this + 36) != 131601)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void sub_2984FA1DC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v5 = v1[14];
  if (v5)
  {
    v1[15] = v5;
    operator delete(v5);
  }

  v6 = v1[11];
  if (v6)
  {
    v1[12] = v6;
    operator delete(v6);
  }

  v7 = v1[8];
  if (v7)
  {
    v1[9] = v7;
    operator delete(v7);
  }

  v8 = v1[5];
  if (v8)
  {
    v1[6] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[3] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::IcefallDeviceInfo::updateFromMQ(SERestoreInfo::IcefallDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v2 = *(a2 + 1);
  if (!v2 || (*(a2 + 2) & 0xFFFFFFFFFFFFFFFDLL) != 0x9D || *v2 != 257)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
    SERestoreInfo::IcefallDeviceInfo::updateFromMQ(exception);
  }

  *(this + 10) = *(v2 + 3) == 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 2, (v2 + 4), (v2 + 28), 0x18uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 5, (v2 + 28), (v2 + 48), 0x14uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 8, (v2 + 48), (v2 + 80), 0x20uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 11, (v2 + 112), (v2 + 144), 0x20uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 14, (v2 + 80), (v2 + 112), 0x20uLL);
  *(this + 17) = *(v2 + 144);
  v4 = *(v2 + 2);
  *(this + 36) = *(v2 + 153);
  *(this + 37) = v4;
  return 1;
}

void SERestoreInfo::IcefallDeviceInfo::updateDict(SERestoreInfo::IcefallDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 36);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 2), *(this + 3) - *(this + 2));
  if (!v8)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 5), *(this + 6) - *(this + 5));
  if (!v10)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v11 = v10;
  CFDictionarySetValue(a2, @"SE,Nonce", v10);
  CFRelease(v11);
  if (*(this + 153) == 1)
  {
    CFDictionarySetValue(a2, @"SE,FactoryMode", *MEMORY[0x29EDB8F00]);
  }

  v12 = CFDataCreate(0, *(this + 8), *(this + 9) - *(this + 8));
  if (!v12)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if ((a3 & 1) == 0)
  {
    v14 = MEMORY[0x29EDB8F00];
    if (!*(this + 10))
    {
      v14 = MEMORY[0x29EDB8EF8];
    }

    CFDictionarySetValue(a2, @"SE,IsDev", *v14);
    v15 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
    if (!v15)
    {
      SERestoreInfo::P73BaseDeviceInfo::updateDict();
    }

    v16 = v15;
    CFDictionarySetValue(a2, @"SE,BLFWKeysIdentifier", v15);
    CFRelease(v16);
    v17 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11));
    if (!v17)
    {
      SERestoreInfo::P73BaseDeviceInfo::updateDict();
    }

    v18 = v17;
    CFDictionarySetValue(a2, @"SE,OsKeysIdentifier", v17);
    CFRelease(v18);
  }
}

void SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this)
{
  SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EE8D30;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void *SERestoreInfo::IcefallDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::IcefallDeviceInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 11), *(this + 12), *(this + 12) - *(this + 11));
}

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
          ++v17;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
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

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12++ = v13;
    }
  }

  v7[1] = v12;
  return result;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = v4 + a2;
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_2984FA7D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

SERestoreInfo::UpdateTable *SERestoreInfo::UpdateTable::UpdateTable(SERestoreInfo::UpdateTable *this, DERItem *a2)
{
  v2 = this;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v63 = (this + 8);
  *(this + 3) = 0;
  v3 = DERParseSequenceContent(a2, 3u, &P73BaseFirmwareDERSpec::UpdateTableItemSpec, v71, 0x30uLL);
  if (v3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Cannot parse UpdateTable.");
    v55 = SERestoreInfo::SEException::SEException(exception, &v64, v3, @"libDERErrorDomain");
  }

  v4 = DERParseInteger(&v72, v2);
  if (v4)
  {
    v56 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Cannot parse UpdateTable.bsn.");
    v57 = SERestoreInfo::SEException::SEException(v56, &v64, v4, @"libDERErrorDomain");
  }

  v5 = DERDecodeSeqContentInit(&v73, v70);
  if (v5)
  {
    v58 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Cannot parse UpdateTable entries");
    v59 = SERestoreInfo::SEException::SEException(v58, &v64, v5, @"libDERErrorDomain");
  }

  v62 = v2;
  while (1)
  {
    v6 = DERDecodeSeqNext(v70, &v67);
    v7 = v6;
    if (v6)
    {
      break;
    }

    v8 = v68;
    if (v68)
    {
      v9 = v69 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v42 = __cxa_allocate_exception(0x10uLL);
      v43 = std::string::basic_string[abi:ne200100]<0>(v74, "Assertion: ");
      v44 = std::string::append(v43, "entry.data && entry.length");
      v45 = *&v44->__r_.__value_.__l.__data_;
      v76 = v44->__r_.__value_.__r.__words[2];
      v75 = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v42, &v75);
      __cxa_throw(v42, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v10 = 0;
    *__p = 0u;
    v66 = 0u;
    v64 = 0u;
    do
    {
      if (v8 >= &v68[v69])
      {
        break;
      }

      v11 = *v8;
      if (*v8)
      {
        v12 = (v11 & 1) == 0;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        v46 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v75, "Wrong length for updateTableEnry");
        v47 = SERestoreInfo::SEException::SEException(v46, &v75, 2, @"SEUpdaterErrorDomain");
      }

      v13 = 0;
      v14 = (v8 + 1);
      v75 = 0uLL;
      v76 = 0;
      do
      {
        v8 = (v14 + 1);
        v15 = bswap32(*v14) >> 16;
        if (v13 >= v76)
        {
          v16 = v75;
          v17 = &v13[-v75];
          v18 = &v13[-v75] >> 1;
          if (v18 <= -2)
          {
            std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
          }

          if (&v76[-v75] <= v18 + 1)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = &v76[-v75];
          }

          if (&v76[-v75] >= 0x7FFFFFFFFFFFFFFELL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            v21 = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&v75, v20);
            v20 = v22;
            v16 = v75;
            v17 = *(&v75 + 1) - v75;
            v23 = (*(&v75 + 1) - v75) >> 1;
          }

          else
          {
            v21 = 0;
            v23 = &v13[-v75] >> 1;
          }

          v24 = &v21[2 * v18];
          v25 = &v21[2 * v20];
          v26 = &v24[-2 * v23];
          *v24 = v15;
          v13 = v24 + 2;
          memcpy(v26, v16, v17);
          v27 = v75;
          *&v75 = v26;
          *(&v75 + 1) = v13;
          v76 = v25;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v13 = v15;
          v13 += 2;
        }

        *(&v75 + 1) = v13;
        v11 -= 2;
        ++v14;
      }

      while (v11);
      v28 = *(&v64 + 1);
      if (*(&v64 + 1) >= __p[0])
      {
        v29 = std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(&v64, &v75);
      }

      else
      {
        **(&v64 + 1) = 0;
        v28[1] = 0;
        v28[2] = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v28, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 1);
        v29 = v28 + 3;
      }

      *(&v64 + 1) = v29;
      if (v75)
      {
        *(&v75 + 1) = v75;
        operator delete(v75);
      }

      ++v10;
    }

    while (v10 != 4);
    v31 = v8 + 1;
    v30 = *v8;
    if (*v8)
    {
      v32 = 0;
      v33 = *v8;
      do
      {
        --v33;
        v34 = *v31++;
        v32 = v34 | (v32 << 8);
      }

      while (v33);
      v35 = &v8[(v30 - 1)];
      v8 += v30;
      v31 = v35 + 2;
    }

    else
    {
      v32 = 0;
    }

    v75 = 0uLL;
    v76 = 0;
    v36 = operator new(2uLL);
    *v36 = v32;
    *(&v75 + 1) = v36 + 1;
    v76 = (v36 + 1);
    v37 = *(&v64 + 1);
    *&v75 = v36;
    if (*(&v64 + 1) >= __p[0])
    {
      v38 = std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(&v64, &v75);
    }

    else
    {
      **(&v64 + 1) = 0;
      v37[1] = 0;
      v37[2] = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v37, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 1);
      v38 = v37 + 3;
    }

    *(&v64 + 1) = v38;
    if (v75)
    {
      *(&v75 + 1) = v75;
      operator delete(v75);
    }

    if (*v31 != 32)
    {
      v52 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v75, "wrong updateTableEnry with wrong hash size");
      v53 = SERestoreInfo::SEException::SEException(v52, &v75, 15, @"SEUpdaterErrorDomain");
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p[1], v8 + 2, v8 + 34, 0x20uLL);
    v2 = v62;
    if (*(&v64 + 1) - v64 != 120)
    {
      v50 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v75, "Missing element in updateTableEnry");
      v51 = SERestoreInfo::SEException::SEException(v50, &v75, 15, @"SEUpdaterErrorDomain");
    }

    v39 = *(v62 + 2);
    if (v39 >= *(v62 + 3))
    {
      updated = std::vector<SERestoreInfo::UpdateTableEntry>::__emplace_back_slow_path<SERestoreInfo::UpdateTableEntry&>(v63, &v64);
    }

    else
    {
      std::vector<SERestoreInfo::UpdateTableEntry>::__construct_one_at_end[abi:ne200100]<SERestoreInfo::UpdateTableEntry&>(v63, &v64);
      updated = v39 + 48;
    }

    *(v62 + 2) = updated;
    if (__p[1])
    {
      *&v66 = __p[1];
      operator delete(__p[1]);
    }

    *&v75 = &v64;
    std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v75);
  }

  if (v6 != 1)
  {
    v48 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Wrong UpdateTable entries");
    v49 = SERestoreInfo::SEException::SEException(v48, &v64, v7, @"libDERErrorDomain");
  }

  if (*(v2 + 1) == *(v2 + 2))
  {
    v60 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Size of UpdateTable.entries is zero");
    v61 = SERestoreInfo::SEException::SEException(v60, &v64, 15, @"SEUpdaterErrorDomain");
  }

  return v2;
}

void sub_2984FAEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a25 = a10;
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void SERestoreInfo::UpdateTableEntry::~UpdateTableEntry(SERestoreInfo::UpdateTableEntry *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t SERestoreInfo::ImageBinary::print(int *a1, uint64_t **a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v4 = *(a2 + 23);
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
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[", 1);
  v9 = MEMORY[0x29C28BBF0](v8, a1[10]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "{", 1);
  v12 = strlen(off_29EE9C180[*a1]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, off_29EE9C180[*a1], v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "}: ", 3);
  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, *(a1 + 2), (*(a1 + 2) + *(a1 + 3)), *(a1 + 3));
  if ((v21 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v16 = v21;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v27, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v27);
  std::ostream::put();
  std::ostream::flush();
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v23 = MEMORY[0x29EDC9570] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v26);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C28BCE0](a1 + 112);
  return a1;
}

uint64_t SERestoreInfo::UpdateTableEntry::print(unsigned __int16 ***a1, uint64_t **a2)
{
  v44[4] = *MEMORY[0x29EDCA608];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v35);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v4, v5);
  if (a1[1] == *a1)
  {
    std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = ***a1;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "|", 1);
  SERestoreInfo::P73BaseDeviceInfo::getStateName(v6, &v40);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v40;
  }

  else
  {
    v8 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "| ", 2);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  *&v40.__r_.__value_.__l.__data_ = xmmword_298561E40;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<SERestoreInfo::UT>::__init_with_size[abi:ne200100]<SERestoreInfo::UT const*,SERestoreInfo::UT const*>(&v32, &v40, &v40.__r_.__value_.__r.__words[2], 4uLL);
  std::string::basic_string[abi:ne200100]<0>(&v40, "AMS");
  std::string::basic_string[abi:ne200100]<0>(v41, "RSN");
  std::string::basic_string[abi:ne200100]<0>(v42, "CSN");
  std::string::basic_string[abi:ne200100]<0>(v43, "FSN");
  std::string::basic_string[abi:ne200100]<0>(v44, "ACTION");
  v11 = v32;
  v27 = v33;
  if (v32 != v33)
  {
    do
    {
      v12 = &v40 + *v11;
      v13 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
      if (v13 >= 0)
      {
        v14 = &v40 + *v11;
      }

      else
      {
        v14 = v12->__r_.__value_.__r.__words[0];
      }

      if (v13 >= 0)
      {
        v15 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v12->__r_.__value_.__l.__size_;
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v14, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " { ", 3);
      v17 = *v11;
      if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v17)
      {
        std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = &(*a1)[3 * v17];
      __p = 0;
      v30 = 0;
      v31 = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, *v18, v18[1], v18[1] - *v18);
      v19 = __p;
      v20 = v30;
      if (__p != v30)
      {
        v21 = 0;
        do
        {
          if (v21)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, ",", 1);
          }

          *(&v37[-1].__locale_ + *(v35 - 24)) = *(&v37[-1].__locale_ + *(v35 - 24)) & 0xFFFFFFB5 | 8;
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "0x", 2);
          v23 = MEMORY[0x29C28BC00](v22, *v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 1);
          ++v19;
          --v21;
        }

        while (v19 != v20);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "} ", 2);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      ++v11;
    }

    while (v11 != v27);
  }

  std::ios_base::getloc((&v35 + *(v35 - 24)));
  v24 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v44[i + 2]) < 0)
    {
      operator delete(v44[i]);
    }
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v35 = *MEMORY[0x29EDC9538];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v36 = MEMORY[0x29EDC9570] + 16;
  if (v38 < 0)
  {
    operator delete(v37[7].__locale_);
  }

  v36 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v37);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v39);
}

void sub_2984FB978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::UpdateTable::print(unsigned int *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v4 = *(a2 + 23);
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
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "BSN: ", 5);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "0x", 2);
  v10 = MEMORY[0x29C28BBF0](v9, *a1);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v18, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  v13 = *(a1 + 1);
  for (i = *(a1 + 2); v13 != i; v13 += 6)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    SERestoreInfo::UpdateTableEntry::print(v13, &__p);
    if ((v20 & 0x80u) == 0)
    {
      locale = &v18;
    }

    else
    {
      locale = v18.__locale_;
    }

    if ((v20 & 0x80u) == 0)
    {
      v15 = v20;
    }

    else
    {
      v15 = v19;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, locale, v15);
    if (v20 < 0)
    {
      operator delete(v18.__locale_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  v21 = *MEMORY[0x29EDC9538];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v22 = MEMORY[0x29EDC9570] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v25);
}

void sub_2984FBD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::updateMeasurement(SERestoreInfo::P73BaseDeliveryObject *this, CFDictionaryRef theDict, __CFError **a3)
{
  if (!theDict || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&value, "Assertion: ");
    v19 = std::string::append(&value, "outError && outMeasurementDict");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, __p);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  value.__r_.__value_.__r.__words[0] = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"SE,UpdatePayload", &value.__r_.__value_.__l.__data_))
  {
    v6 = value.__r_.__value_.__r.__words[0] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = CFGetTypeID(value.__r_.__value_.__l.__data_);
    if (v7 == CFDictionaryGetTypeID())
    {
      if (value.__r_.__value_.__r.__words[0])
      {
        v8 = CFRetain(value.__r_.__value_.__l.__data_);
      }

      else
      {
        v8 = 0;
      }

LABEL_12:
      v10 = ccsha256_di();
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
      v11 = *v10;
      v28 = 0;
      if (v11)
      {
        std::vector<unsigned char>::__append(__p, v11, &v28);
      }

      ccdigest();
      v12 = CFDataCreate(0, __p[0], __p[1] - __p[0]);
      if (v12)
      {
        isDev = SERestoreInfo::P73BaseDeliveryObject::isDev(this);
        v14 = kSETagMeasurementDevHash;
        if (!isDev)
        {
          v14 = kSETagMeasurementProdHash;
        }

        CFDictionarySetValue(v8, *v14, v12);
        v15 = 0;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "Fail to allocate tmpData");
        *a3 = SERestoreInfo::CreateCFError(v21, 3, 0, @"SEUpdaterErrorDomain");
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        v15 = 6;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v15 == 6)
      {
        v16 = 0;
        if (!v8)
        {
LABEL_23:
          if (v12)
          {
            CFRelease(v12);
          }

          return v16 & 1;
        }
      }

      else
      {
        v16 = 1;
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      CFRelease(v8);
      goto LABEL_23;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(theDict, @"SE,UpdatePayload", Mutable);
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "Fail to allocate imageProps");
  *a3 = SERestoreInfo::CreateCFError(v23, 3, 0, @"SEUpdaterErrorDomain");
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v16 = 0;
  return v16 & 1;
}

void sub_2984FC050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SERestoreInfo::P73BaseDeliveryObject::isDev(SERestoreInfo::P73BaseDeliveryObject *this)
{
  v1 = *(this + 8);
  if (*(this + 9) - v1 != 32)
  {
    return 0;
  }

  if (*v1 == 0x7B77E47DEC309FF8 && v1[1] == 0x8BF8D2A44AE3A97CLL && v1[2] == 0xAD34DB13A59CC364 && v1[3] == 0xAC0A2E6B4C223984)
  {
    return 1;
  }

  v5 = *v1 == 0x74975A216330E276 && v1[1] == 0x1F7F7DD3B6FB8D34;
  v6 = v5 && v1[2] == 0x3FA240FAC488FFFLL;
  if (v6 && v1[3] == 0x21EC7881080683DALL)
  {
    return 1;
  }

  v8 = *v1 == 0xD314CD88B2A173ABLL && v1[1] == 0xD0014B39DB0B4552;
  v9 = v8 && v1[2] == 0xC3B3802C47832D1BLL;
  if (v9 && v1[3] == 0x102CA645D536B9F3)
  {
    return 1;
  }

  v11 = *v1 == 0x43028028D9EE140FLL && v1[1] == 0x764EF91F0B455B82;
  v12 = v11 && v1[2] == 0x74D2E6CF8CD1659BLL;
  if (v12 && v1[3] == 0xBD4FC5BCF7FB4792)
  {
    return 1;
  }

  v14 = *v1 == 0x19016EC184635976 && v1[1] == 0xD25BD62A9019D9A3;
  v15 = v14 && v1[2] == 0xFD6855BA8DAED7D1;
  if (v15 && v1[3] == 0x3E6F156DACCAB98)
  {
    return 1;
  }

  v17 = *v1 == 0x4B4B6EEF8151F8B0 && v1[1] == 0x80D0BF7EE34277A5;
  v18 = v17 && v1[2] == 0xA6421FFAFBC6C2D3;
  if (v18 && v1[3] == 0x11CF79E52F051694)
  {
    return 1;
  }

  v20 = *v1 == 0x3B369AD4F6E8946ALL && v1[1] == 0x3A6B9A9BB3089AACLL;
  v21 = v20 && v1[2] == 0x8FA19016C1B6DB7CLL;
  if (v21 && v1[3] == 0x40ACEFB5D4F4787)
  {
    return 1;
  }

  v23 = *v1 == 0xFC41962122793EF7 && v1[1] == 0xB912209BBCCC0208;
  v24 = v23 && v1[2] == 0xA845838AEC9D85B0;
  if (v24 && v1[3] == 0x1DAD2E5A3D9AD8A8)
  {
    return 1;
  }

  v26 = *v1;
  v27 = v1[1];
  v29 = v1[2];
  v28 = v1[3];
  return v26 == 0xCBD1BDB61BAAD564 && v27 == 0x957F8100699D3DAALL && v29 == 0xB07184D6337E1DBCLL && v28 == 0x710CE2BFF2A6DF1CLL;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::updateVersionDict(SERestoreInfo::P73BaseDeliveryObject *this, __CFDictionary *a2, __CFError **a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v10 = std::string::append(&v12, "outError && outDict");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v13);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = CFStringCreateWithBytes(0, *(this + 12), *(this + 13), 0x8000100u, 0);
  isDev = SERestoreInfo::P73BaseDeliveryObject::isDev(this);
  v7 = kSETagVersionDev;
  if (!isDev)
  {
    v7 = kSETagVersionProd;
  }

  CFDictionarySetValue(a2, *v7, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

void sub_2984FC570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

BOOL SERestoreInfo::P73BaseDeliveryObject::matchID(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v2;
  v7 = v2[1];
  v9 = v3[2];
  v8 = v3[3];
  v11 = v2[2];
  v10 = v2[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::print(SERestoreInfo::P73BaseDeliveryObject *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Details: ", 9);
  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, *(this + 12), (*(this + 12) + *(this + 13)), *(this + 13));
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

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, p_p, size);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "FactoryPostflight revision: ", 28);
  std::to_string(&__p, *(this + 152));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "UpdateTable: ", 13);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::string::basic_string[abi:ne200100]<0>(v29, "\t");
  SERestoreInfo::UpdateTable::print(this + 30, v29);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Binaries: ", 10);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v20 = *(this + 1);
  if (v20 != (this + 16))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "\t");
      SERestoreInfo::ImageBinary::print(v20 + 10, v27);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v21, v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      v23 = *(v20 + 1);
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = *(v20 + 2);
          v25 = *v24 == v20;
          v20 = v24;
        }

        while (!v25);
      }

      v20 = v24;
    }

    while (v24 != (this + 16));
  }

  std::stringbuf::str();
  v32 = *MEMORY[0x29EDC9538];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v33 = MEMORY[0x29EDC9570] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v36);
}

void sub_2984FCBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::parseFPRev(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (v2 = *(a1 + 16)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v10 = std::string::append(&v12, "data.data && data.length");
    v11 = *&v10->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &__str);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__str, v1, &v1[v2], v2);
  v3 = std::string::rfind(&__str, 45, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
    goto LABEL_16;
  }

  std::string::basic_string(&v12, &__str, v3 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v12;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_16;
    }

    p_str = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_16;
    }

    p_str = &__str;
  }

  v5 = 0;
  while (1)
  {
    v6 = p_str->__r_.__value_.__s.__data_[v5];
    if (v6 < 0 || (*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x400) == 0)
    {
      break;
    }

    if (++v5 == 2)
    {
      v7 = std::stoul(&__str, 0, 10);
      goto LABEL_17;
    }
  }

LABEL_16:
  v7 = -18;
LABEL_17:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_2984FCE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseFirmware::updateMeasurementDict(__CFError *a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v39 = 0;
  if (!*a3)
  {
    goto LABEL_24;
  }

  (*(**a3 + 16))(&v42);
  v6 = operator new(0x18uLL);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6, v42, *(&v42 + 1), *(&v42 + 1) - v42);
  *&v37 = 0;
  v7 = v39;
  v39 = v6;
  if (v7)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&v39, v7);
    *&v37 = 0;
  }

  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }

  if ((*(**a3 + 32))() == 54)
  {
    v42 = xmmword_298561E98;
    v43 = unk_298561EA8;
    v38 = 0;
    v37 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v37, &v42, v44, 0x20uLL);
    v42 = xmmword_298561EB8;
    v43 = unk_298561EC8;
    v36 = 0;
    __p = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v42, v44, 0x20uLL);
    v8 = *v39;
    v9 = *(v39 + 1) - *v39;
    if (v9 == *(&v37 + 1) - v37)
    {
      v8 = memcmp(v8, v37, v9);
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    v14 = SERestoreInfo::SERestoreInfoLog::get(v8);
    SERestoreInfo::SERestoreInfoLog::printLog(v14, 2, "updateMeasurementDict", "KeyID 0x%X, overwriting with dev %d", bswap32(**v39), v10);
    if (!v10)
    {
      goto LABEL_20;
    }

    v15 = v39;
    if (v39 == &__p)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((*(**a3 + 32))() != 56)
  {
    goto LABEL_24;
  }

  v42 = xmmword_298561ED8;
  v43 = unk_298561EE8;
  v38 = 0;
  v37 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v37, &v42, v44, 0x20uLL);
  v42 = xmmword_298561EF8;
  v43 = unk_298561F08;
  v36 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v42, v44, 0x20uLL);
  v11 = *v39;
  v12 = *(v39 + 1) - *v39;
  if (v12 == *(&v37 + 1) - v37)
  {
    v11 = memcmp(v11, v37, v12);
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v16 = SERestoreInfo::SERestoreInfoLog::get(v11);
  SERestoreInfo::SERestoreInfoLog::printLog(v16, 2, "updateMeasurementDict", "KeyID 0x%X, overwriting with dev %d", bswap32(**v39), v13);
  if (v13)
  {
    v15 = v39;
    if (v39 != &__p)
    {
LABEL_19:
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v15, __p.n128_u64[0], __p.n128_u64[1], __p.n128_u64[1] - __p.n128_u64[0]);
    }
  }

LABEL_20:
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v37)
  {
    *(&v37 + 1) = v37;
    operator delete(v37);
  }

LABEL_24:
  *(&v42 + 1) = 0;
  *&v43 = 0;
  *&v42 = &v42 + 8;
  *&v37 = 0;
  *(&v37 + 1) = a1;
  v17 = (*(a1 + 3) - *(a1 + 2)) >> 5;
  if (!v17)
  {
    goto LABEL_53;
  }

  do
  {
    SERestoreInfo::SEFirmwareIter::operator*(&v37);
    v18 = __p.n128_u64[0];
    v34 = __p;
    if (__p.n128_u64[1])
    {
      atomic_fetch_add_explicit((__p.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    if (!v39 || (v19 = *(v18 + 64), v20 = *(v18 + 72) - v19, v20 == *(v39 + 1) - *v39) && !memcmp(v19, *v39, v20))
    {
      v21 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::find<std::vector<unsigned char>>(&v42, (v18 + 64));
      if ((&v42 + 8) == v21)
      {
        std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>(&v42, v34.n128_u64[0] + 64, v34.n128_u64[0] + 64, &v34);
      }

      else if (*(v34.n128_u64[0] + 160) > *(*(v21 + 56) + 160))
      {
        v41 = v34.n128_u64[0] + 64;
        v22 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>(&v42, v34.n128_u64[0] + 64, &std::piecewise_construct, &v41, &v40);
        v23 = v34;
        v34 = 0uLL;
        v24 = v22[8];
        *(v22 + 7) = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }
    }

    if (v34.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34.n128_u64[1]);
    }

    if (__p.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.n128_u64[1]);
    }

    LODWORD(v37) = v37 + 1;
  }

  while (v37 != v17);
  if (!v43)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v37, "No matching delivery object found.");
    v33 = SERestoreInfo::SEException::SEException(exception, &v37, 24, @"SEUpdaterErrorDomain");
  }

  v25 = v42;
  if (v42 != (&v42 + 8))
  {
    do
    {
      *&v37 = 0;
      (*(**(v25 + 7) + 16))(*(v25 + 7), a2, &v37);
      if (v37)
      {
        v30 = __cxa_allocate_exception(0x48uLL);
        v31 = SERestoreInfo::SEException::SEException(v30, v37);
      }

      v26 = *(v25 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v25 + 2);
          v28 = *v27 == v25;
          v25 = v27;
        }

        while (!v28);
      }

      v25 = v27;
    }

    while (v27 != (&v42 + 8));
  }

  std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(&v42, *(&v42 + 1));
  v29 = v39;
  v39 = 0;
  if (v29)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&v39, v29);
  }
}

void sub_2984FD434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = a23;
  a23 = 0;
  if (v24)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&a23, v24);
  }

  _Unwind_Resume(exception_object);
}

double SERestoreInfo::P73BaseFirmware::makeDeliveryObject@<D0>(DERItem *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1->data)
  {
    v3 = a1->length == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Assertion: ");
    v40 = std::string::append(&v106, "input.data && input.length");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v94 = v40->__r_.__value_.__r.__words[2];
    v93 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v93);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = DERParseSequenceContent(a1, 5u, &P73BaseFirmwareDERSpec::DeliveryObjectItemSpec, &v93, 0x50uLL);
  if (v4)
  {
    v66 = v4;
    v67 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Failed to parse as per DeliveryObjectItemSpec");
    v68 = SERestoreInfo::SEException::SEException(v67, &v106, v66, @"libDERErrorDomain");
  }

  LODWORD(v106.__r_.__value_.__l.__data_) = 0;
  if (DERParseInteger(&v93, &v106) || LODWORD(v106.__r_.__value_.__l.__data_) || v95 != 32)
  {
    v69 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Failed to validate delivery object");
    v70 = SERestoreInfo::SEException::SEException(v69, &v106, 15, @"SEUpdaterErrorDomain");
  }

  _ZNSt3__115allocate_sharedB8ne200100IN13SERestoreInfo21P73BaseDeliveryObjectENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v84);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((v84 + 64), v94, &v94[v95], v95);
  v106.__r_.__value_.__r.__words[0] = &unk_2A1EE8E30;
  *&v106.__r_.__value_.__r.__words[1] = v96;
  v107 = 0;
  SERestoreInfo::BLOB::operator=((v84 + 88), &v106);
  SERestoreInfo::BLOB::~BLOB(&v106);
  v81 = &unk_2A1EE8E30;
  v82 = *(v84 + 96);
  v83 = *(v84 + 112);
  v5 = SERestoreInfo::P73BaseDeliveryObject::parseFPRev(&v81);
  *(v84 + 152) = v5;
  SERestoreInfo::BLOB::~BLOB(&v81);
  v6 = DERParseSequence(&v97, 3u, &P73BaseFirmwareDERSpec::UpdatePayloadItemSpec, v91, 0x30uLL);
  if (v6)
  {
    v71 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Failed to parse updatePayload as per UpdatePayloadItemSpec");
    v72 = SERestoreInfo::SEException::SEException(v71, &v106, v6, @"libDERErrorDomain");
  }

  v7 = DERParseSequenceContent(v92, 2u, &P73BaseFirmwareDERSpec::SignedSectionItemSpec, &v89, 0x20uLL);
  if (v7)
  {
    v73 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Failed to parse signedSection as per SignedSectionItemSpec");
    v74 = SERestoreInfo::SEException::SEException(v73, &v106, v7, @"libDERErrorDomain");
  }

  SERestoreInfo::UpdateTable::UpdateTable(&v106, &v89);
  v8 = v84;
  *(v84 + 120) = v106.__r_.__value_.__l.__data_;
  std::vector<SERestoreInfo::UpdateTableEntry>::__vdeallocate((v8 + 128));
  *(v8 + 128) = *&v106.__r_.__value_.__r.__words[1];
  *(v8 + 144) = v107;
  v107 = 0;
  *&v106.__r_.__value_.__r.__words[1] = 0uLL;
  *&v113 = &v106.__r_.__value_.__l.__size_;
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v113);
  if (!v98[0] || !v98[1])
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    v43 = std::string::basic_string[abi:ne200100]<0>(&v113, "Assertion: ");
    v44 = std::string::append(v43, "binaryItem.data && binaryItem.length");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v106.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v106.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v42, &v106);
    __cxa_throw(v42, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = v84;
  v10 = DERDecodeSeqContentInit(v98, v120);
  if (v10)
  {
    v75 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Cannot init sequence for DeliveryObject.binaries");
    v76 = SERestoreInfo::SEException::SEException(v75, &v106, v10, @"libDERErrorDomain");
  }

  while (1)
  {
    v11 = DERDecodeSeqNext(v120, &v118);
    if (v11)
    {
      break;
    }

    LODWORD(v106.__r_.__value_.__l.__data_) = 0;
    v106.__r_.__value_.__l.__size_ = &unk_2A1EE8E30;
    v108 = 0;
    v109 = 0;
    v111 = 0;
    v112 = 0;
    v110 = 0;
    v105 = 0;
    v12 = DERParseSequenceContent(&v119, 4u, &P73BaseFirmwareDERSpec::ImageBinaryItemSpec, &v113, 0x40uLL);
    if (v12)
    {
      v51 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v121, "Cannot parse ImageBinary.");
      v52 = SERestoreInfo::SEException::SEException(v51, &v121, v12, @"libDERErrorDomain");
    }

    v13 = DERParseInteger(&v113, &v105);
    if (v13 || v105 >= 5)
    {
      v46 = v13;
      v47 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v121, "ImageBinary.type is out of range.");
      v48 = SERestoreInfo::SEException::SEException(v47, &v121, v46, @"libDERErrorDomain");
    }

    LODWORD(v106.__r_.__value_.__l.__data_) = v105;
    *&v121 = &unk_2A1EE8E30;
    *(&v121 + 1) = v114;
    v122 = v115;
    v123 = 0;
    SERestoreInfo::BLOB::operator=(&v106.__r_.__value_.__l.__size_, &v121);
    SERestoreInfo::BLOB::~BLOB(&v121);
    v14 = DERParseInteger(&v116, &v109);
    if (v14)
    {
      v49 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v121, "Cannot parse ImageBinary.index.");
      v50 = SERestoreInfo::SEException::SEException(v49, &v121, v14, @"libDERErrorDomain");
    }

    v15 = DERDecodeSeqContentInit(&v117, v104);
    if (v15)
    {
      v53 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v121, "Cannot init sequence for ImageBinary.apdus");
      v54 = SERestoreInfo::SEException::SEException(v53, &v121, v15, @"libDERErrorDomain");
    }

    while (1)
    {
      v16 = DERDecodeSeqNext(v104, &v102);
      v17 = v16;
      if (v16)
      {
        break;
      }

      v99 = &unk_2A1EE8E30;
      v100 = v103;
      v101 = 0;
      v18 = v111;
      if (v111 >= v112)
      {
        v21 = (v111 - v110) >> 5;
        v22 = v21 + 1;
        if ((v21 + 1) >> 59)
        {
          std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
        }

        v23 = v112 - v110;
        if ((v112 - v110) >> 4 > v22)
        {
          v22 = v23 >> 4;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFE0)
        {
          v24 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v124 = &v110;
        if (v24)
        {
          v25 = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(&v110, v24);
        }

        else
        {
          v25 = 0;
        }

        v26 = &v25[32 * v21];
        *&v121 = v25;
        *(&v121 + 1) = v26;
        v123 = &v25[32 * v24];
        *v26 = &unk_2A1EE8E30;
        v27 = v100;
        *(v26 + 3) = v101;
        *(v26 + 8) = v27;
        v122 = v26 + 32;
        std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(&v110, &v121);
        v20 = v111;
        std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(&v121);
      }

      else
      {
        *v111 = &unk_2A1EE8E30;
        v19 = v100;
        *(v18 + 3) = v101;
        *(v18 + 8) = v19;
        v20 = v18 + 32;
      }

      v111 = v20;
      SERestoreInfo::BLOB::~BLOB(&v99);
    }

    if (v16 != 1)
    {
      v37 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v121, "Cannot parse ImageBinary.apdus");
      v38 = SERestoreInfo::SEException::SEException(v37, &v121, v17, @"libDERErrorDomain");
    }

    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__emplace_unique_impl<unsigned int &,SERestoreInfo::ImageBinary&>(v9 + 8, &v109, &v106);
    *&v121 = &v110;
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v121);
    SERestoreInfo::BLOB::~BLOB(&v106.__r_.__value_.__r.__words[1]);
  }

  if (v11 != 1)
  {
    v55 = v11;
    v56 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v106, "Cannot parse DeliveryObject.binaries");
    v57 = SERestoreInfo::SEException::SEException(v56, &v106, v55, @"libDERErrorDomain");
  }

  v106.__r_.__value_.__r.__words[0] = &unk_2A1EE8E30;
  *&v106.__r_.__value_.__r.__words[1] = v97;
  v107 = 0;
  SERestoreInfo::BLOB::operator=((v84 + 32), &v106);
  SERestoreInfo::BLOB::~BLOB(&v106);
  v28 = v84;
  *(v84 + 156) = 0;
  *(v28 + 160) = 0;
  v29 = DERParseSequenceContent(&v90, 2u, &P73BaseFirmwareDERSpec::UpdatePropertiesItemSpec, v87, 0x20uLL);
  v30 = v29;
  if (v29)
  {
    if (v29 != 5)
    {
      v77 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v106, "Failed to parse updateProperties as per UpdatePropertiesItemSpec.");
      v78 = SERestoreInfo::SEException::SEException(v77, &v106, v30, @"libDERErrorDomain");
    }
  }

  else
  {
    v99 = 0;
    v32 = DERDecodeSeqInit(&v88, &v99, &v121);
    if (v32)
    {
      v79 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v106, "Cannot parse properties entries");
      v80 = SERestoreInfo::SEException::SEException(v79, &v106, v32, @"libDERErrorDomain");
    }

    while (!DERDecodeSeqNext(&v121, &v106))
    {
      v33 = DERDecodeItem(&v106.__r_.__value_.__l.__size_, &v106);
      if (v33)
      {
        v58 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v113, "Cannot parse property");
        v59 = SERestoreInfo::SEException::SEException(v58, &v113, v33, @"libDERErrorDomain");
      }

      v34 = DERParseSequenceContent(&v106.__r_.__value_.__l.__size_, 2u, &P73BaseFirmwareDERSpec::PropertyItemSpec, v85, 0x20uLL);
      if (v34)
      {
        v60 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v113, "Failed to parse as per PropertyItemSpec");
        v61 = SERestoreInfo::SEException::SEException(v60, &v113, v34, @"libDERErrorDomain");
      }

      if (v85[1] == 4)
      {
        if (*v85[0] == 1768121715)
        {
          LODWORD(v118) = 0;
          v36 = DERParseInteger(v86, &v118);
          if (v36)
          {
            v62 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(&v113, "Failed to parse 'seci' value");
            v63 = SERestoreInfo::SEException::SEException(v62, &v113, v36, @"libDERErrorDomain");
          }

          *(v84 + 156) = v118;
        }

        else if (*v85[0] == 1986553203)
        {
          LODWORD(v118) = 0;
          v35 = DERParseInteger(v86, &v118);
          if (v35)
          {
            v64 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(&v113, "Failed to parse 'sehv' value");
            v65 = SERestoreInfo::SEException::SEException(v64, &v113, v35, @"libDERErrorDomain");
          }

          *(v84 + 160) = v118;
        }
      }
    }
  }

  result = *&v84;
  *a2 = v84;
  return result;
}

void sub_2984FE20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void *SERestoreInfo::BLOB::operator=(void *a1, void *a2)
{
  if (a2 != a1)
  {
    v4 = a2[2];
    a1[1] = a2[1];
    a1[2] = v4;
    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
      a1[3] = 0;
    }

    v6 = a2[3];
    if (v6)
    {
      a1[3] = CFRetain(v6);
    }
  }

  return a1;
}

void SERestoreInfo::P73BaseFirmware::~P73BaseFirmware(SERestoreInfo::P73BaseFirmware *this)
{
  SERestoreInfo::SEFirmwareBase::~SEFirmwareBase(this);

  operator delete(v1);
}

void SERestoreInfo::P73BaseDeliveryObject::~P73BaseDeliveryObject(SERestoreInfo::P73BaseDeliveryObject *this)
{
  *this = &unk_2A1EE8DC8;
  v3 = (this + 128);
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  SERestoreInfo::BLOB::~BLOB((this + 88));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SERestoreInfo::BLOB::~BLOB((this + 32));
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_2A1EE8DC8;
  v3 = (this + 128);
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  SERestoreInfo::BLOB::~BLOB((this + 88));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SERestoreInfo::BLOB::~BLOB((this + 32));
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(this + 8, *(this + 2));
  operator delete(this);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(2 * a2);
}

void *std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  v17 = v8;
  v18 = &v7[24 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  v9 = v17 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(&v15);
  return v9;
}

void sub_2984FE724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned short>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned short>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned short>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned short>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t __len, unsigned __int8 *a3)
{
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  if (v7 - v6 >= __len)
  {
    if (__len)
    {
      v15 = &v6[__len];
      memset(v6, *a3, __len);
      v6 = v15;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v9 = *a1;
    v10 = &v6[-*a1];
    v11 = v10 + __len;
    if ((v10 + __len) < 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    memset(&v14[v10], *a3, __len);
    memcpy(v14, v9, v10);
    *a1 = v14;
    *(a1 + 8) = &v14[v10 + __len];
    *(a1 + 16) = &v14[v13];
    if (v9)
    {

      operator delete(v9);
    }
  }
}

void SERestoreInfo::BLOB::~BLOB(SERestoreInfo::BLOB *this)
{
  SERestoreInfo::BLOB::~BLOB(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EE8E30;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }
}

void std::vector<SERestoreInfo::UpdateTableEntry>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = a2;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void SERestoreInfo::ImageBinary::~ImageBinary(SERestoreInfo::ImageBinary *this)
{
  v2 = (this + 48);
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v2);
  SERestoreInfo::BLOB::~BLOB((this + 8));
}

void (***std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 32 * ((v6 - result) >> 5);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_2A1EE8E30;
      v12 = *(v10 + 1);
      v11[3] = v10[3];
      *(v11 + 1) = v12;
      v10 += 4;
      v11 += 4;
      v9 += 32;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 4;
      (*v15)();
      v13 += 4;
      result = v14;
    }

    while (v14 != v6);
  }

  a2[1] = v8;
  v16 = *a1;
  *a1 = v8;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(32 * a2);
}

uint64_t std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__emplace_unique_impl<unsigned int &,SERestoreInfo::ImageBinary&>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__construct_node<unsigned int &,SERestoreInfo::ImageBinary&>(a1, a2, a3, &__p);
  v4 = __p;
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(__p + 16);
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 16);
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v5 = v8 + 1;
        goto LABEL_10;
      }
    }

    __p = 0;
    if (v4)
    {
      std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,void *>>>::operator()[abi:ne200100](&v12, v4);
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v5, __p);
    return __p;
  }

  return v8;
}

char *std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__construct_node<unsigned int &,SERestoreInfo::ImageBinary&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x70uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *(v8 + 16) = *a2;
  *(v8 + 10) = *a3;
  *(v8 + 6) = &unk_2A1EE8E30;
  *(v8 + 56) = *(a3 + 16);
  *(v8 + 9) = *(a3 + 32);
  *(v8 + 20) = *(a3 + 40);
  *(v8 + 12) = 0;
  *(v8 + 13) = 0;
  *(v8 + 11) = 0;
  result = std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(v8 + 88, *(a3 + 48), *(a3 + 56), (*(a3 + 56) - *(a3 + 48)) >> 5);
  *(a4 + 16) = 1;
  return result;
}

void sub_2984FEE38(_Unwind_Exception *a1)
{
  SERestoreInfo::BLOB::~BLOB(v4);
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

char *std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<SERestoreInfo::BLOB>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    if (a2 != a3)
    {
      v8 = *(v6 + 1);
      do
      {
        *v7 = &unk_2A1EE8E30;
        v9 = *(a2 + 8);
        *(v7 + 24) = *(a2 + 24);
        *(v7 + 8) = v9;
        a2 += 32;
        v7 += 32;
        v8 += 32;
      }

      while (a2 != a3);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

char *std::vector<SERestoreInfo::BLOB>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[32 * v4];
  return result;
}

void std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 11;
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v3);
    SERestoreInfo::BLOB::~BLOB((__p + 6));
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void SERestoreInfo::SEFirmwareBase::~SEFirmwareBase(SERestoreInfo::SEFirmwareBase *this)
{
  *this = &unk_2A1EE9120;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  v3 = (this + 16);
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 88);
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v4);
    SERestoreInfo::BLOB::~BLOB((a2 + 48));
    operator delete(a2);
  }
}

void std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<SERestoreInfo::UpdateTableEntry>::__construct_one_at_end[abi:ne200100]<SERestoreInfo::UpdateTableEntry&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4 + 3, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  *(a1 + 8) = v4 + 6;
  return result;
}

void sub_2984FF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<SERestoreInfo::UpdateTableEntry>::__emplace_back_slow_path<SERestoreInfo::UpdateTableEntry&>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    updated = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>>(a1, v6);
  }

  else
  {
    updated = 0;
  }

  v8 = &updated[48 * v2];
  v15 = updated;
  v16 = v8;
  *&v17 = v8;
  *(&v17 + 1) = &updated[48 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(v8, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8 + 3, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_2984FF3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100]((v6 - 40));
  std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::vector<unsigned short>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*,std::vector<unsigned short>*,std::vector<unsigned short>*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2984FF448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::vector<unsigned short>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*,std::vector<unsigned short>*,std::vector<unsigned short>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 1);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(void **a1)
{
  std::__split_buffer<SERestoreInfo::UpdateTableEntry>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SERestoreInfo::UpdateTableEntry>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v4, i - 48);
  }
}

void *std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    result = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = result;
    v7 = result;
  }

  else
  {
    *(result + 23) = a4;
  }

  while (a2 != a3)
  {
    v9 = *a2++;
    *v7 = v9;
    v7 = (v7 + 1);
  }

  *v7 = 0;
  return result;
}

uint64_t *std::vector<SERestoreInfo::UT>::__init_with_size[abi:ne200100]<SERestoreInfo::UT const*,SERestoreInfo::UT const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<SERestoreInfo::UT>::__vallocate[abi:ne200100](result, a4);
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

void sub_2984FF92C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<SERestoreInfo::UT>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UT>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 4 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UT>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(4 * a2);
}

void *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
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

void sub_2984FFA1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned short>::__vallocate[abi:ne200100](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * v4];
  return result;
}

void std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::find<std::vector<unsigned char>>(uint64_t a1, const void **a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__lower_bound<std::vector<unsigned char>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *a2;
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = a2[1] - *a2;
  v10 = v8 - v7;
  v11 = v8 - v7 >= v9 ? v9 : v8 - v7;
  v12 = memcmp(v6, v7, v11);
  v13 = v9 < v10;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__lower_bound<std::vector<unsigned char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    v7 = *(a2 + 8) - *a2;
    do
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      v10 = v9 - v8;
      if (v7 >= v9 - v8)
      {
        v11 = v9 - v8;
      }

      else
      {
        v11 = v7;
      }

      v12 = memcmp(v8, v6, v11);
      v13 = v10 < v7;
      if (v12)
      {
        v13 = v12 < 0;
      }

      v14 = !v13;
      if (v13)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        a4 = v5;
      }

      v5 = *(v5 + v15);
    }

    while (v5);
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(a1, &v12, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>(a1, a4, v11);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v12, v9, v11[0]);
    v8 = v11[0];
    v11[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](v11);
  }

  return v8;
}

void *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8) - *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v10 = v4[4];
        v9 = v4[5];
        v11 = v9 - v10;
        if (v9 - v10 >= v7)
        {
          v12 = v7;
        }

        else
        {
          v12 = v9 - v10;
        }

        v13 = memcmp(v6, v10, v12);
        v14 = v7 < v11;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v15 = memcmp(v10, v6, v12);
      v16 = v11 < v7;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

void *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  v6[5] = 0;
  v6[6] = 0;
  v6[4] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6 + 4, *v7, *(v7 + 8), *(v7 + 8) - *v7);
  v6[7] = 0;
  v6[8] = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>(uint64_t ***a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v7 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(a1, &v12, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>(a1, a3, a4, v11);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v12, v9, v11[0]);
    v8 = v11[0];
    v11[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](v11);
  }

  return v8;
}

__n128 std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8 + 4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  result = *a3;
  *(v8 + 56) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  *(a4 + 16) = 1;
  return result;
}

double _ZNSt3__115allocate_sharedB8ne200100IN13SERestoreInfo21P73BaseDeliveryObjectENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_@<D0>(void *a1@<X8>)
{
  v2 = operator new(0xC0uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1EE8E60;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 7) = 0u;
  v2[5] = 0;
  v2[3] = &unk_2A1EE8DC8;
  v2[4] = v2 + 5;
  v2[6] = 0;
  v2[7] = &unk_2A1EE8E30;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  v2[14] = &unk_2A1EE8E30;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<SERestoreInfo::P73BaseDeliveryObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE8E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *SERestoreInfo::P73BaseRestoreInfo::getImageTag@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  if ((atomic_load_explicit(byte_2A13BA260, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::P73BaseRestoreInfo::getImageTag();
    v2 = a1;
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v2, &_MergedGlobals_0, byte_2A13BA260, 1uLL);
}

uint64_t *SERestoreInfo::P73BaseRestoreInfo::getTagsInBI@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  if ((atomic_load_explicit(byte_2A13BA268, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::P73BaseRestoreInfo::getTagsInBI();
    v2 = a1;
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v2, &qword_2A13BA270, _MergedGlobals_1, 2uLL);
}

void SERestoreInfo::P73BaseRestoreInfo::~P73BaseRestoreInfo(SERestoreInfo::P73BaseRestoreInfo *this)
{
  SERestoreInfo::SERestoreInfoBase::~SERestoreInfoBase(this);

  operator delete(v1);
}

__CFString *SERestoreInfo::P73BaseRestoreInfo::getImagePropertyTag(SERestoreInfo::P73BaseRestoreInfo *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isDevIM4 = SERestoreInfo::P73BaseDeviceInfo::isDevIM4(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (isDevIM4)
  {
    return @"DevelopmentUpdatePayloadHash";
  }

  else
  {
    return @"ProductionUpdatePayloadHash";
  }
}

void sub_2985002C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
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

void sub_298500338(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseRestoreInfo::getImageTag()
{
  if (__cxa_guard_acquire(byte_2A13BA260))
  {
    _MergedGlobals_0 = @"SE,UpdatePayload";

    __cxa_guard_release(byte_2A13BA260);
  }
}

void SERestoreInfo::P73BaseRestoreInfo::getTagsInBI()
{
  if (__cxa_guard_acquire(byte_2A13BA268))
  {
    qword_2A13BA270 = @"SE,ChipID";
    unk_2A13BA278 = @"SE,UpdatePayload";

    __cxa_guard_release(byte_2A13BA268);
  }
}

uint64_t *SERestoreInfo::IcefallRestoreInfo::getImageTag@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  if ((atomic_load_explicit(_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::IcefallRestoreInfo::getImageTag();
    v2 = a1;
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v2, &qword_2A13BA290, &qword_2A13BA2B0, 4uLL);
}

uint64_t *SERestoreInfo::IcefallRestoreInfo::getTagsInBI@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  if ((atomic_load_explicit(byte_2A13BA288, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::IcefallRestoreInfo::getTagsInBI();
    v2 = a1;
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v2, &qword_2A13BA2B0, &SERestoreInfo::SERestoreInfoLog::get(void)::onceToken, 5uLL);
}

__CFString *SERestoreInfo::IcefallRestoreInfo::getImagePropertyTag(SERestoreInfo::IcefallRestoreInfo *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v2 + 10))
    {
      v3 = kSETagMeasurementDevCMAC;
    }

    else
    {
      v3 = kSETagMeasurementProdCMAC;
    }

    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    if (*(v2 + 10))
    {
      v5 = kSETagMeasurementDevCMAC;
    }

    else
    {
      v5 = kSETagMeasurementProdCMAC;
    }

    return *v5;
  }

  return v4;
}

void SERestoreInfo::IcefallRestoreInfo::getImageTag()
{
  if (__cxa_guard_acquire(_MergedGlobals_1))
  {
    qword_2A13BA290 = @"SE,Bootloader";
    unk_2A13BA298 = @"SE,Firmware";
    qword_2A13BA2A0 = @"SE,MigrationOS";
    unk_2A13BA2A8 = @"SE,OS";

    __cxa_guard_release(_MergedGlobals_1);
  }
}

void SERestoreInfo::IcefallRestoreInfo::getTagsInBI()
{
  if (__cxa_guard_acquire(byte_2A13BA288))
  {
    qword_2A13BA2B0 = @"SE,ChipID";
    unk_2A13BA2B8 = @"SE,Bootloader";
    qword_2A13BA2C0 = @"SE,Firmware";
    unk_2A13BA2C8 = @"SE,MigrationOS";
    qword_2A13BA2D0 = @"SE,OS";

    __cxa_guard_release(byte_2A13BA288);
  }
}

void **SERestoreInfo::P73DeviceInfo::P73DeviceInfo(void **this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8F50;
  if (*(v3 + 14) != 115)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  if (SERestoreInfo::isDummyRootCaKeyId((this + 11)))
  {
    SERestoreInfo::fixRootCaKeyId(this + 11, (this + 14));
  }

  return this;
}

void sub_298500724(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(v1);
  _Unwind_Resume(a1);
}

BOOL SERestoreInfo::isDummyRootCaKeyId(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v7, SERestoreInfo::isDummyRootCaKeyId(std::vector<unsigned char> const&)::dummyRootCaKeyIdArray, SERestoreInfo::isProdCometIm4KeyId(std::vector<unsigned char> const&)::prodCometIm4KeyIdArray, 0x20uLL);
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = v7;
  if (v3 == v8 - v7)
  {
    v5 = memcmp(v2, v7, v3) == 0;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (v7)
  {
LABEL_5:
    v8 = v4;
    operator delete(v4);
  }

  return v5;
}

void SERestoreInfo::fixRootCaKeyId(void **a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v10, SERestoreInfo::isProdCometIm4KeyId(std::vector<unsigned char> const&)::prodCometIm4KeyIdArray, "N13SERestoreInfo11SEExceptionE", 0x20uLL);
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  v6 = v10;
  if (v5 != v11 - v10)
  {
    v7 = 0;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = memcmp(v4, v10, v5) == 0;
  if (v6)
  {
LABEL_5:
    v11 = v6;
    operator delete(v6);
  }

LABEL_6:
  RootCA::getRootKeyId(v7, 115, &__p);
  if (&__p != a1)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, __p, v9, v9 - __p);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_2985008AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **SERestoreInfo::P73DeviceInfo::P73DeviceInfo(void **this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8F50;
  if (*(v3 + 14) != 115)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  if (SERestoreInfo::isDummyRootCaKeyId((this + 11)))
  {
    SERestoreInfo::fixRootCaKeyId(this + 11, (this + 14));
  }

  return this;
}

void sub_298500970(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(v1);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::SEException::SEException(uint64_t a1, __int128 *a2, int a3, CFTypeRef cf)
{
  v26[2] = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1EE8FA0;
  *(a1 + 8) = 0;
  v7 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v8 = (a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *v8 = v9;
  }

  *(a1 + 64) = a3;
  if (cf)
  {
    v10 = CFRetain(cf);
    a3 = *(a1 + 64);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 56) = v10;
  std::to_string(&v23, a3);
  v11 = std::string::insert(&v23, 0, "(");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v24, ") ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a1 + 55);
  if (v15 >= 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(a1 + 32);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 55);
  }

  else
  {
    v17 = *(a1 + 40);
  }

  v18 = std::string::append(&v25, v16, v17);
  v19 = v18->__r_.__value_.__r.__words[0];
  v26[0] = v18->__r_.__value_.__l.__size_;
  *(v26 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
  v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*v7);
  }

  v21 = v26[0];
  *(a1 + 8) = v19;
  *(a1 + 16) = v21;
  *(a1 + 23) = *(v26 + 7);
  *(a1 + 31) = v20;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_298500B70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

SERestoreInfo::SEException *SERestoreInfo::SEException::SEException(SERestoreInfo::SEException *this, CFErrorRef err)
{
  v25[2] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1EE8FA0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = CFErrorCopyDescription(err);
  v6 = v5;
  if (v5)
  {
    Length = CFStringGetLength(v5);
    usedBufLen.__r_.__value_.__r.__words[0] = 0;
    v26.location = 0;
    v26.length = Length;
    Bytes = CFStringGetBytes(v6, v26, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (usedBufLen.__r_.__value_.__r.__words[0] && Bytes)
    {
      std::vector<unsigned char>::vector[abi:ne200100](&__p, usedBufLen.__r_.__value_.__r.__words[0]);
      v27.location = 0;
      v27.length = Length;
      if (CFStringGetBytes(v6, v27, 0x8000100u, 0, 0, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0], 0))
      {
        std::string::__assign_trivial[abi:ne200100]<unsigned char *,unsigned char *>((this + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CFRelease(v6);
  }

  *(this + 16) = CFErrorGetCode(err);
  Domain = CFErrorGetDomain(err);
  if (Domain)
  {
    Domain = CFRetain(Domain);
  }

  *(this + 7) = Domain;
  std::to_string(&v22, *(this + 16));
  v10 = std::string::insert(&v22, 0, "CF=(");
  v11 = *&v10->__r_.__value_.__l.__data_;
  usedBufLen.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&usedBufLen.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&usedBufLen, ") ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = *(this + 55);
  if (v14 >= 0)
  {
    v15 = this + 32;
  }

  else
  {
    v15 = *(this + 4);
  }

  if (v14 >= 0)
  {
    v16 = *(this + 55);
  }

  else
  {
    v16 = *(this + 5);
  }

  v17 = std::string::append(&__p, v15, v16);
  v18 = v17->__r_.__value_.__r.__words[0];
  v25[0] = v17->__r_.__value_.__l.__size_;
  *(v25 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*v4);
  }

  v20 = v25[0];
  *(this + 1) = v18;
  *(this + 2) = v20;
  *(this + 23) = *(v25 + 7);
  *(this + 31) = v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(usedBufLen.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(usedBufLen.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_298500DEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::SEException::~SEException(std::exception *this)
{
  this->__vftable = &unk_2A1EE8FA0;
  v2 = this[7].__vftable;
  if (v2)
  {
    CFRelease(v2);
    this[7].__vftable = 0;
  }

  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  SERestoreInfo::SEException::~SEException(this);

  operator delete(v1);
}

CFErrorRef SERestoreInfo::SEException::CreateCFError(SERestoreInfo::SEException *this)
{
  v2 = this + 32;
  if (*(this + 55) < 0)
  {
    v2 = *v2;
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v10 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_11;
  }

  HIBYTE(v10) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_11:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  CFError = SERestoreInfo::CreateCFError(__dst, *(this + 16), 0, *(this + 7));
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  return CFError;
}

void std::string::__assign_trivial[abi:ne200100]<unsigned char *,unsigned char *>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

SERestoreInfo::SN300VDeviceInfo *SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8FE0;
  if (*(v3 + 14) != 44)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN300VDeviceInfo *SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8FE0;
  if (*(v3 + 14) != 44)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::IcefallDeliveryObject::addApdu(uint64_t a1, int a2, unint64_t *a3)
{
  v34 = a2;
  v4 = DERDecodeSeqContentInit(a3, v33);
  if (v4)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Cannot decode APDUs.");
    v22 = SERestoreInfo::SEException::SEException(exception, &v23, v4, @"libDERErrorDomain");
  }

  while (!v4)
  {
    v4 = DERDecodeSeqNext(v33, &v31);
    if (!v4)
    {
      v5 = DERParseSequenceContent(&v32, 2u, &IcefallFirmwareDERSpec::ApduItemSpec, &v29, 0x20uLL);
      if (v5)
      {
        v14 = v5;
        v15 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v23, "Cannot parse per ApduItemSpec");
        v16 = SERestoreInfo::SEException::SEException(v15, &v23, v14, @"libDERErrorDomain");
      }

      if (*(&v29 + 1) != 5)
      {
        v19 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v23, "wrong apdu header size");
        v20 = SERestoreInfo::SEException::SEException(v19, &v23, 15, @"SEUpdaterErrorDomain");
      }

      if ((*(&v30 + 1) - 8242) <= 0xFFFFFFFFFFFFDFC8)
      {
        v17 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v23, "wrong apdu size");
        v18 = SERestoreInfo::SEException::SEException(v17, &v23, 15, @"SEUpdaterErrorDomain");
      }

      v23 = &v34;
      v6 = std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::__emplace_unique_key_args<SERestoreInfo::ApduType_t,std::piecewise_construct_t const&,std::tuple<SERestoreInfo::ApduType_t const&>,std::tuple<>>(a1 + 8, &v34, &std::piecewise_construct, &v23);
      v7 = v6;
      v23 = &unk_2A1EE8E30;
      v24 = v29;
      v25 = 0;
      v26 = &unk_2A1EE8E30;
      v27 = v30;
      v28 = 0;
      v8 = v6[6];
      if (v8 >= v6[7])
      {
        v11 = std::vector<SERestoreInfo::ApduBLOB>::__emplace_back_slow_path<SERestoreInfo::ApduBLOB>(v6 + 5, &v23);
      }

      else
      {
        *v8 = &unk_2A1EE8E30;
        v9 = v25;
        *(v8 + 8) = v24;
        *(v8 + 24) = v9;
        *(v8 + 32) = &unk_2A1EE8E30;
        v10 = v27;
        *(v8 + 56) = v28;
        *(v8 + 40) = v10;
        v11 = v8 + 64;
      }

      v7[6] = v11;
      SERestoreInfo::BLOB::~BLOB(&v26);
      SERestoreInfo::BLOB::~BLOB(&v23);
    }
  }

  if (v4 != 1)
  {
    v12 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Fail to parse Apdu]");
    v13 = SERestoreInfo::SEException::SEException(v12, &v23, v4, @"libDERErrorDomain");
  }
}

void sub_298501564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::IcefallDeliveryObject::addMac(uint64_t a1, int a2, uint64_t *a3)
{
  v13 = a2;
  for (i = *(a1 + 40); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v10, "Fail to addMac");
        v9 = SERestoreInfo::SEException::SEException(exception, &v10, 15, @"SEUpdaterErrorDomain");
      }

      ++i;
    }
  }

  v5 = *a3;
  v6 = a3[1];
  *&v10 = &unk_2A1EE8E30;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = 0;
  v14 = &v13;
  v7 = std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::__emplace_unique_key_args<ImageType_t,std::piecewise_construct_t const&,std::tuple<ImageType_t const&>,std::tuple<>>(a1 + 32, &v13, &std::piecewise_construct, &v14);
  SERestoreInfo::BLOB::operator=(v7 + 5, &v10);
  SERestoreInfo::BLOB::~BLOB(&v10);
}

uint64_t SERestoreInfo::IcefallDeliveryObject::updateMeasurement(SERestoreInfo::IcefallDeliveryObject *this, CFDictionaryRef theDict, __CFError **a3)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v31 = std::string::basic_string[abi:ne200100]<0>(&v49, "Assertion: ");
    v32 = std::string::append(v31, "outMeasurementDict");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v45 = v32->__r_.__value_.__r.__words[2];
    v44 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v44);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!a3)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    v35 = std::string::basic_string[abi:ne200100]<0>(&v49, "Assertion: ");
    v36 = std::string::append(v35, "outError");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v45 = v36->__r_.__value_.__r.__words[2];
    v44 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v34, &v44);
    __cxa_throw(v34, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *&v44 = @"SE,Bootloader";
  *(&v44 + 1) = @"SE,Bootloader";
  v45 = @"SE,OS";
  v46 = @"SE,MigrationOS";
  v47 = @"SE,Firmware";
  v5 = *(this + 4);
  v6 = this + 40;
  if (v5 == this + 40)
  {
    return 1;
  }

  while (1)
  {
    v8 = *(v5 + 8);
    if (v8 >= 5)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "cmac.first is out of range");
      *a3 = SERestoreInfo::CreateCFError(v42, 2, 0, @"SEUpdaterErrorDomain");
      if ((v43 & 0x80000000) == 0)
      {
        return 0;
      }

      v23 = *v42;
      goto LABEL_37;
    }

    v9 = *(&v44 + v8);
    if (CFDictionaryContainsKey(theDict, v9))
    {
      break;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "imageProps is nullptr");
      *a3 = SERestoreInfo::CreateCFError(__p, 3, 0, @"SEUpdaterErrorDomain");
      if ((v39 & 0x80000000) == 0)
      {
        return 0;
      }

      v23 = __p[0];
      goto LABEL_37;
    }

LABEL_9:
    v12 = Mutable;
    v13 = *(v5 + 6);
    if (!v13)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v48, "Assertion: ");
      v25 = std::string::append(&v48, "cmac");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v50 = v25->__r_.__value_.__r.__words[2];
      v49 = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v24, &v49);
      __cxa_throw(v24, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (*(v5 + 7) != 16)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v48, "Assertion: ");
      v28 = std::string::append(&v48, "cmac_len == CMAC_SIZE");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v50 = v28->__r_.__value_.__r.__words[2];
      v49 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v27, &v49);
      __cxa_throw(v27, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v14 = *(this + 80);
    v15 = CFDataCreate(0, v13, 16);
    if (v15)
    {
      v16 = v15;
      if (v14)
      {
        CFDictionarySetValue(v12, @"DevelopmentCMAC", v15);
      }

      else
      {
        CFDictionaryAddValue(v12, @"ProductionCMAC", v15);
      }

      CFRelease(v16);
      goto LABEL_16;
    }

    v21 = std::string::basic_string[abi:ne200100]<0>(&v49, "Cannot allocate for tmpData");
    CFError = SERestoreInfo::CreateCFError(v21, 3, 0, @"SEUpdaterErrorDomain");
    *a3 = CFError;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
LABEL_16:
      CFError = *a3;
    }

    if (CFError)
    {
      CFRelease(v12);
      return 0;
    }

    CFDictionarySetValue(theDict, v9, v12);
    CFRelease(v12);
    v18 = *(v5 + 1);
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = *(v5 + 2);
        v20 = *v19 == v5;
        v5 = v19;
      }

      while (!v20);
    }

    v5 = v19;
    if (v19 == v6)
    {
      return 1;
    }
  }

  Value = CFDictionaryGetValue(theDict, v9);
  Mutable = CFRetain(Value);
  if (Mutable)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(v40, "imageProps is nullptr");
  *a3 = SERestoreInfo::CreateCFError(v40, 2, 0, @"SEUpdaterErrorDomain");
  if (v41 < 0)
  {
    v23 = *v40;
LABEL_37:
    operator delete(v23);
  }

  return 0;
}

void sub_298501BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SERestoreInfo::IcefallDeliveryObject::updateVersionDict(SERestoreInfo::IcefallDeliveryObject *this, __CFDictionary *a2, __CFError **a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Assertion: ");
    v12 = std::string::append(&v19, "outError && outDict");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v21 = v12->__r_.__value_.__r.__words[2];
    v20 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v20);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v18 = 0;
  *__str = 0;
  LODWORD(v20) = 2;
  v5 = *(std::map<ImageType_t,unsigned short>::at(this + 56, &v20) + 1);
  LODWORD(v20) = 2;
  v6 = std::map<ImageType_t,unsigned short>::at(this + 56, &v20);
  v7 = snprintf(__str, 6uLL, "%d.%d", *v6, v5);
  if (v7 - 6 <= 0xFFFFFFFA)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Assertion: ");
    v15 = std::string::append(&v19, "nchar>0 && nchar<sizeof(buffer)");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    v20 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v14, &v20);
    __cxa_throw(v14, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v8 = CFStringCreateWithBytes(0, __str, v7, 0x8000100u, 0);
  v9 = kSETagVersionDev;
  if (!*(this + 80))
  {
    v9 = kSETagVersionProd;
  }

  CFDictionarySetValue(a2, *v9, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return 1;
}

void sub_298501EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}