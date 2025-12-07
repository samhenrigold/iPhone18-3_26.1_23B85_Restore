uint64_t GpsdHardwareConfig::getEarliestBornYear(GpsdHardwareConfig *this)
{
  v1 = *this;
  v2 = 0x100000000;
  v3 = 2017;
  v4 = 2018;
  v5 = 2023;
  v6 = 2026;
  if (*this != 302)
  {
    v6 = 2017;
  }

  if (v1 != 301)
  {
    v5 = v6;
  }

  if (v1 != 202)
  {
    v4 = v5;
  }

  if (v1 == 107)
  {
    v2 = 0x100000000;
    v3 = 2021;
  }

  if (v1 == 106)
  {
    v2 = 0x100000000;
    v3 = 2020;
  }

  if (!v1)
  {
    v2 = 0;
    v3 = 1792;
  }

  v7 = v1 <= 201;
  if (v1 <= 201)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x100000000;
  }

  if (v7)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  return v9 | v8;
}

uint64_t GpsdPlatformInfo::isGpsdSupported(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  if ((v1 - 201) < 2)
  {
    return 1;
  }

  v3 = v1 - 103;
  v4 = (v1 - 301) < 2;
  v5 = v3 >= 4;
  v7 = v3 == 4;
  v6 = (1 << v3) & 0x19;
  v7 = !v7 && v5 || v6 == 0;
  return !v7 || v4;
}

uint64_t GpsdPlatformInfo::isPhone(GpsdPlatformInfo *this)
{
  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  return _MergedGlobals_3;
}

void ___ZN16GpsdPlatformInfo7isPhoneEv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      _MergedGlobals_3 = 1;
    }

    CFRelease(v1);
  }
}

void GpsdPlatformInfo::vendorDylibFullPathName(GpsdPlatformInfo *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if ((v3 - 201) <= 1)
  {
    v4 = "/usr/lib/libolaf.dylib";
LABEL_11:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  if (v3 == 107)
  {
    v4 = "/usr/lib/libfire7.dylib";
    goto LABEL_11;
  }

  if (GpsdPlatformInfo::isLibgll6(this))
  {
    v4 = "/usr/lib/libfire6.dylib";
    goto LABEL_11;
  }

  if (GpsdPlatformInfo::isLibgll3(this))
  {
    v4 = "/usr/lib/libfire3.dylib";
    goto LABEL_11;
  }

  if ((*(this + 2) - 301) <= 1)
  {
    v4 = "/usr/lib/libindus.dylib";
    goto LABEL_11;
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_2454AA000, v6, OS_LOG_TYPE_FAULT, "PlatformInfo,unknown vendorDylibFullPathName", v7, 2u);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

BOOL GpsdPlatformInfo::isLibgll6(GpsdPlatformInfo *this)
{
  if (*(this + 2) == 106)
  {
    return 1;
  }

  v3 = GpsdPreferences::instance(0);
  isRavenExpected = GpsdPreferences::isRavenExpected(v3);
  result = 0;
  if (isRavenExpected)
  {
    return *(this + 2) == 103;
  }

  return result;
}

uint64_t GpsdPlatformInfo::isLibgll3(GpsdPlatformInfo *this)
{
  if (*(this + 2) != 103)
  {
    return 0;
  }

  v1 = GpsdPreferences::instance(0);
  return GpsdPreferences::isRavenExpected(v1) ^ 1;
}

BOOL GpsdPlatformInfo::isEnableReceivingFineTimeAssistance(GpsdPlatformInfo *this)
{
  if (*(this + 2) != 301)
  {
    return 0;
  }

  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  return (_MergedGlobals_3 & 1) != 0;
}

uint64_t GpsdPlatformInfo::expectedToHaveRaven(GpsdPlatformInfo *this)
{
  v2 = *(this + 2);
  if ((v2 - 301) < 2 || (v2 - 201) <= 1)
  {
    if (qword_27EE14DE0 != -1)
    {
      dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
    }

    if (_MergedGlobals_3)
    {
      return 1;
    }

    v2 = *(this + 2);
  }

  v3 = v2 - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    if (qword_27EE14DE0 != -1)
    {
      dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
    }

    if (_MergedGlobals_3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GpsdPlatformInfo::supportsNavic(GpsdPlatformInfo *this)
{
  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  if (_MergedGlobals_3 != 1)
  {
    return 0;
  }

  v2 = *(this + 2);
  result = 1;
  if ((v2 - 301) >= 2 && v2 != 107)
  {
    return 0;
  }

  return result;
}

double GpsdPlatformInfo::groupDelayL1InCAChips(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  result = 0.036;
  if (v1 != 202)
  {
    result = 0.0;
  }

  if (v1 == 201)
  {
    return -7.149;
  }

  return result;
}

double GpsdPlatformInfo::externalToChipL5GroupDelayMeters(GpsdPlatformInfo *this)
{
  result = 0.0;
  if (*(this + 24) == 1)
  {
    return *(this + 2);
  }

  return result;
}

void GpsdPlatformInfo::glonassPerFrequencyGroupDelayMeters(uint64_t *__return_ptr a1@<X8>, GpsdPlatformInfo *this@<X0>)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  if (v3 == 107)
  {
    v4 = 15.0;
    if (*(this + 40) == 1)
    {
      v4 = *(this + 4);
    }

    v5 = vdupq_lane_s64(COERCE__INT64(v4 + -520.569214), 0);
    v14 = vaddq_f64(v5, xmmword_2455860B0);
    v15 = vaddq_f64(v5, xmmword_2455860C0);
    v16 = vaddq_f64(v5, xmmword_2455860D0);
    v17 = vaddq_f64(v5, xmmword_2455860E0);
    v18 = vaddq_f64(v5, xmmword_2455860F0);
    *&v19 = v4 + -520.569214;
    *(&v19 + 1) = v4 + -520.569214 + 0.1;
    *&v20 = *(&v19 + 1);
    *(&v20 + 1) = *(&v19 + 1);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(a1, &v14, v21);
  }

  if ((v3 - 301) > 1)
  {
    goto LABEL_23;
  }

  v6 = *this;
  if (*this <= 31610)
  {
    if (v6 == 21705 || v6 == 21804)
    {
      v9 = &xmmword_245586100;
      goto LABEL_20;
    }

    v7 = 31609;
    goto LABEL_18;
  }

  if (v6 > 31703)
  {
    if (v6 != 31704)
    {
      v7 = 31802;
      goto LABEL_18;
    }

LABEL_19:
    v9 = &xmmword_245586170;
LABEL_20:
    v10 = v9[5];
    v18 = v9[4];
    v19 = v10;
    v20 = v9[6];
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v12 = v9[3];
    v16 = v9[2];
    v17 = v12;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(a1, &v14, v21);
  }

  if (v6 == 31611)
  {
    goto LABEL_19;
  }

  v7 = 31702;
LABEL_18:
  if (v6 == v7)
  {
    goto LABEL_19;
  }

  v13 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v14.f64[0]) = 67240192;
    HIDWORD(v14.f64[0]) = v6;
    _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "glonassPerFrequencyGroupDelayMeters,Unexpected hardware,%{public}d", &v14, 8u);
  }

LABEL_23:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double GpsdPlatformInfo::getNonAsicPowerParameters(GpsdPlatformInfo *this)
{
  v1 = *this;
  result = 0.0;
  if (*this > 31610)
  {
    if (v1 > 31703)
    {
      v3 = v1 == 31704;
      v4 = 31802;
    }

    else
    {
      v3 = v1 == 31611;
      v4 = 31702;
    }

    if (v3 || v1 == v4)
    {
      return 1.9;
    }
  }

  else if (v1 > 21804)
  {
    if (v1 == 21805 || v1 == 31609)
    {
      return 1.9;
    }
  }

  else if (v1 == 21705 || v1 == 21804)
  {
    return 1.9;
  }

  return result;
}

double GpsdPlatformInfo::getGpsCrossCorrelationMinThreshold_dBHz(GpsdPlatformInfo *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  v2 = 24.0;
  if ((_MergedGlobals_3 & 1) == 0)
  {
    v3 = GpsdLogObjectGeneral;
    v2 = -1.0;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5 = *this;
      v6[0] = 67240192;
      v6[1] = v5;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "HalExtensions,Unexpected hardware,%{public}d", v6, 8u);
    }
  }

  return v2;
}

uint64_t GpsdPlatformInfo::usesPcie(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 202;
  return v2 < 2 || v3;
}

uint64_t GpsdPlatformInfo::usesResetGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

uint64_t GpsdPlatformInfo::usesTimeMarkGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

uint64_t GpsdPlatformInfo::usesAsyncCommRead(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 107 || v1 == 202;
  return v2 < 2 || v3;
}

uint64_t GpsdPlatformInfo::usesTimeMarkPciDoorbell(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 107 || v1 == 202;
  return v2 < 2 || v3;
}

uint64_t GpsdPlatformInfo::usesGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

uint64_t GpsdPlatformInfo::getLibindusPlatformCoExConfigDefault(GpsdPlatformInfo *this)
{
  v1 = *this;
  result = 61;
  if (v1 <= 31701)
  {
    v4 = (v1 - 21705) >= 2;
    v3 = v1 - 21804;
    v4 = v4 && v3 >= 2;
    if (!v4)
    {
      return result;
    }

    return 32;
  }

  if (v1 != 31702 && v1 != 31704)
  {
    return 32;
  }

  return result;
}

uint64_t GpsdPlatformInfo::instance(int a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN16GpsdPlatformInfo8instanceEN24GpsdPlatformInfoHardware8HardwareE_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v3 = a1;
  if (GpsdPlatformInfo::instance(GpsdPlatformInfoHardware::Hardware)::pred != -1)
  {
    dispatch_once(&GpsdPlatformInfo::instance(GpsdPlatformInfoHardware::Hardware)::pred, block);
  }

  return GpsdPlatformInfo::fInstance;
}

void ___ZN16GpsdPlatformInfo8instanceEN24GpsdPlatformInfoHardware8HardwareE_block_invoke(GpsdPlatformInfoHardware *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 8))
  {
    v1 = GpsdPlatformInfoHardware::detectHardware(a1);
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67240448;
      v3[1] = v1;
      v4 = 1026;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "PlatformInfo,Product type detected,%{public}d,isInternal,%{public}d", v3, 0xEu);
    }
  }

  operator new();
}

GpsdPlatformInfo *GpsdPlatformInfo::GpsdPlatformInfo(GpsdPlatformInfo *a1, int a2)
{
  *a1 = a2;
  GpsdHardwareConfig::GpsdHardwareConfig(a1 + 8, a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  GpsdPlatformInfo::checkVendorLibs(a1);
  GpsdPlatformInfo::readMlbBornOnYww(a1);
  return a1;
}

void GpsdPlatformInfo::checkVendorLibs(GpsdPlatformInfo *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  v3 = (v1 - 103) <= 4 && ((1 << (v1 - 103)) & 0x19) != 0 || (v1 - 201) < 2;
  if ((v1 - 301) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 >= 2)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,conflicting vendor libs", buf, 2u);
      v8 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdPlatformInfo.mm";
      v14 = 1026;
      v15 = 605;
      v16 = 2082;
      v17 = "checkVendorLibs";
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v11, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v10, "checkVendorLibs");
    std::string::basic_string[abi:ne200100]<0>(&v9, "GpsdPlatformInfo,conflicting vendor libs");
    gpsd::util::triggerDiagnosticReport(&v11, &v10, &v9);
    std::string::~string(&v9);
    std::string::~string(&v10);
    std::string::~string(&v11);
    __assert_rtn("checkVendorLibs", "GpsdPlatformInfo.mm", 605, "false && GpsdPlatformInfo,conflicting vendor libs");
  }

  v6 = GpsdLogObjectGeneral;
  if (!v4 && os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,invoked on platform that does not have a supported vendor lib", buf, 2u);
    v6 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *this;
    *buf = 67240192;
    LODWORD(v13) = v7;
    _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_INFO, "GpsdPlatformInfo,hardware,%{public}d", buf, 8u);
  }
}

void sub_245575A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void GpsdPlatformInfo::readMlbBornOnYww(GpsdPlatformInfo *this)
{
  GpsdPlatformInfo::readMlbSerialNumber(&__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
LABEL_3:
      if (size < 0x12)
      {
        GpsdPlatformInfo::parseWeekFromYwwMlbSerialNumber(this, &__p);
      }

      else
      {
        GpsdPlatformInfo::parseWeekFromDomMlbSerialNumber(this, &__p);
      }

      goto LABEL_9;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_3;
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "MlbSn,aborted,empty", v4, 2u);
  }

LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_245575B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdPlatformInfo::getNoiseFigure(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67240192;
    v10[1] = a2;
    _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "GpsdPlatformInfo,getNoiseFigure,band,%{public}d", v10, 8u);
  }

  v5 = *(a1 + 8);
  if ((v5 - 201) >= 2)
  {
    v8 = v5 - 103;
    if ((v5 - 103) > 4)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = qword_2455861E0[v8];
      v7 = qword_245586208[v8];
    }
  }

  else
  {
    v6 = 0x100000000;
    v7 = 1078355558;
  }

  return v7 | v6;
}

void GpsdPlatformInfo::readMlbSerialNumber(uint64_t *__return_ptr a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x8000100u);
    MEMORY[0x245D6AB60](a1, CStringPtr);
    CFRelease(v3);
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v8 = 136380675;
      v9 = v6;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_INFO, "MlbSn,%{private}s", &v8, 0xCu);
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "MlbSn,readSN,failed", &v8, 2u);
    }
  }
}

void sub_245575DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void GpsdPlatformInfo::parseWeekFromDomMlbSerialNumber(uint64_t a1, const std::string *a2)
{
  v4 = 0;
  v5 = 0;
  v29 = *MEMORY[0x277D85DE8];
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  v7 = &v6->__r_.__value_.__s.__data_[3];
  do
  {
    v8 = v7[v5];
    v9 = charToIntBase34(v8);
    if (v9 < 0)
    {
      v14 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      LODWORD(v24.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v24.__r_.__value_.__r.__words[0]) = v8;
      v15 = "MlbSn,dom,unexpectedCh,%{public}c";
      v16 = v14;
      v17 = 8;
      goto LABEL_18;
    }

    v4 = v9 + 34 * v4;
    ++v5;
  }

  while (v5 != 3);
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string(&v24, a2, 3uLL, 3uLL, &v23);
    v11 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
    *buf = 136446466;
    v26 = v11;
    v27 = 1026;
    v28 = v4;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,%{public}s,%{public}d", buf, 0x12u);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  EarliestBornYear = GpsdHardwareConfig::getEarliestBornYear((a1 + 8));
  if (!HIDWORD(EarliestBornYear))
  {
    v13 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,EarliestBornYear,unknown", &v24, 2u);
    }

    return;
  }

  v18 = ((EarliestBornYear - 1980) * 365.25 / 7.0);
  v19 = (v4 - 3657) / 7;
  if (v19 < v18)
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LODWORD(v24.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(v24.__r_.__value_.__r.__words[0]) = (v4 - 3657) / 7;
    LOWORD(v24.__r_.__value_.__r.__words[1]) = 1026;
    *(&v24.__r_.__value_.__r.__words[1] + 2) = v18;
    v15 = "MlbSn,dom,weekOutOfRange,mlb,%{public}d,earliest,%{public}d";
    v16 = v20;
    v17 = 14;
LABEL_18:
    _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, v15, &v24, v17);
    return;
  }

  *(a1 + 56) = v19;
  *(a1 + 60) = 1;
  v21 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *(a1 + 56);
    LODWORD(v24.__r_.__value_.__l.__data_) = 67240192;
    HIDWORD(v24.__r_.__value_.__r.__words[0]) = v22;
    _os_log_impl(&dword_2454AA000, v21, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,bornOnGpsWeek,%{public}d", &v24, 8u);
  }
}

void GpsdPlatformInfo::parseWeekFromYwwMlbSerialNumber(uint64_t a1, std::string::size_type a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v29 = *a2;
    if (v4 >= 0)
    {
      v29 = a2;
    }

    LODWORD(v31.__r_.__value_.__l.__data_) = 136380931;
    *(v31.__r_.__value_.__r.__words + 4) = v29;
    WORD2(v31.__r_.__value_.__r.__words[1]) = 2050;
    *(&v31.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_debug_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEBUG, "MlbSn,parse,%{private}s,sz,%{public}zu", &v31, 0x16u);
  }

  if (v5 == 11 || v5 == 13)
  {
    v8 = 2;
  }

  else
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x10)
    {
      v26 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v31.__r_.__value_.__l.__data_) = 134349056;
        *(v31.__r_.__value_.__r.__words + 4) = v5;
        v18 = "MlbSn,unexpectedSize,%{public}zu";
        v19 = v26;
        v20 = 12;
        goto LABEL_35;
      }

      return;
    }

    v8 = 3;
  }

  std::string::basic_string(&v31, a2, v8, 3uLL, &v30);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v31.__r_.__value_.__r.__words[0];
    *(a1 + 48) = atoi(v31.__r_.__value_.__l.__data_);
    v9 = (a1 + 48);
    *(a1 + 52) = 1;
    v10 = (a1 + 52);
    operator delete(v11);
  }

  else
  {
    *(a1 + 48) = atoi(&v31);
    v9 = (a1 + 48);
    *(a1 + 52) = 1;
    v10 = (a1 + 52);
  }

  v12 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ((*v10 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13 = *v9;
    LODWORD(v31.__r_.__value_.__l.__data_) = 134349312;
    *(v31.__r_.__value_.__r.__words + 4) = v5;
    WORD2(v31.__r_.__value_.__r.__words[1]) = 1026;
    *(&v31.__r_.__value_.__r.__words[1] + 6) = v13;
    _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "MlbSn,sz,%{public}zu,yww,%{public}d", &v31, 0x12u);
  }

  if ((*v10 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = *v9;
  v15 = *v9 / 100;
  v16 = v14 - 100 * v15;
  if ((v16 - 54) > 0xFFFFFFCA)
  {
    EarliestBornYear = GpsdHardwareConfig::getEarliestBornYear((a1 + 8));
    if ((EarliestBornYear & 0x100000000) != 0)
    {
      v23 = v15 + 10 * (EarliestBornYear / 10);
      if (v23 >= EarliestBornYear)
      {
        v24 = v15 + 10 * (EarliestBornYear / 10);
      }

      else
      {
        v24 = v23 + 10;
      }

      v25 = v16 + ((v24 - 1980) * 365.25 / 7.0);
      if (v25 <= gpsd::util::getGpsWeekFromBuildDate(EarliestBornYear))
      {
        *(a1 + 56) = v25;
        *(a1 + 60) = 1;
        v27 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(a1 + 60) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v28 = *(a1 + 56);
          LODWORD(v31.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v31.__r_.__value_.__r.__words[0]) = v28;
          _os_log_impl(&dword_2454AA000, v27, OS_LOG_TYPE_DEFAULT, "MlbSn,bornOnGpsWeek,%{public}d", &v31, 8u);
        }
      }

      else
      {
        v17 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v31.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v31.__r_.__value_.__r.__words[0]) = v25;
          v18 = "MlbSn,weekOutOfRange,mlb,%{public}d";
          goto LABEL_23;
        }
      }
    }

    else
    {
      v22 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v31.__r_.__value_.__l.__data_) = 0;
        v18 = "MlbSn,EarliestBornYear,unknown";
        v19 = v22;
        v20 = 2;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v17 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v31.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v31.__r_.__value_.__r.__words[0]) = v16;
      v18 = "MlbSn,invalid,ww,%{public}d";
LABEL_23:
      v19 = v17;
      v20 = 8;
LABEL_35:
      _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, v18, &v31, v20);
    }
  }
}

uint64_t charToIntBase34(int a1)
{
  if ((a1 - 97) >= 0x1A)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 - 32;
  }

  v2 = v1;
  v3 = (v1 - 48);
  if ((v2 - 80) >= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v2 - 57;
  }

  if ((v2 - 74) <= 4)
  {
    v5 = v2 - 56;
  }

  else
  {
    v5 = v4;
  }

  if ((v2 - 65) <= 7u)
  {
    v6 = v2 - 55;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 - 48;
  if (v3 <= 9)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_24557663C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::triggerDiagnosticReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a1, *(a1 + 8));
  }

  else
  {
    v5 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v8 = 0;
  gpsd::util::triggerDiagnosticReport(&v5, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_245576740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::triggerDiagnosticReport(gpsd::util *this, const gpsd::util::DiagnosticReportParameters *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v3 = objc_alloc_init(MEMORY[0x277D6AFC0]);
    if (*(this + 23) >= 0)
    {
      v4 = this;
    }

    else
    {
      v4 = *this;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    if (*(this + 47) >= 0)
    {
      v6 = this + 24;
    }

    else
    {
      v6 = *(this + 3);
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    if (*(this + 71) >= 0)
    {
      v8 = this + 48;
    }

    else
    {
      v8 = *(this + 6);
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v10 = [v3 signatureWithDomain:@"GPSDaemon" type:v5 subType:v7 subtypeContext:v9 detectedProcess:@"com.apple.gpsd" triggerThresholdValues:0];

    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 23) >= 0)
      {
        v12 = this;
      }

      else
      {
        v12 = *this;
      }

      if (*(this + 47) >= 0)
      {
        v13 = this + 24;
      }

      else
      {
        v13 = *(this + 3);
      }

      if (*(this + 71) >= 0)
      {
        v14 = this + 48;
      }

      else
      {
        v14 = *(this + 6);
      }

      LODWORD(buf.__m_.__sig) = 136315650;
      *(&buf.__m_.__sig + 4) = v12;
      *&buf.__m_.__opaque[4] = 2080;
      *&buf.__m_.__opaque[6] = v13;
      *&buf.__m_.__opaque[14] = 2080;
      *&buf.__m_.__opaque[16] = v14;
      _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEFAULT, "#gsdr,type,%s,subtype,%s,context,%s", &buf, 0x20u);
    }

    memset(v34.__cv_.__opaque, 0, sizeof(v34.__cv_.__opaque));
    v34.__cv_.__sig = 1018212795;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3812000000;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = &unk_24559C877;
    v32 = 0;
    if (*(this + 72) == 1)
    {
      operator new();
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZN4gpsd4util23triggerDiagnosticReportERKNS0_26DiagnosticReportParametersE_block_invoke;
    v25[3] = &unk_278E80940;
    v25[4] = &v26;
    if ([v3 snapshotWithSignature:v10 duration:0 events:0 payload:0 actions:v25 reply:0.0])
    {
      if (*(this + 72) == 1)
      {
        memset(buf.__m_.__opaque, 0, sizeof(buf.__m_.__opaque));
        buf.__m_.__sig = 850045863;
        __lk.__m_ = &buf;
        __lk.__owns_ = 1;
        std::mutex::lock(&buf);
        v15 = v27[6];
        v16.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v17.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v17.__d_.__rep_)
        {
          if (v17.__d_.__rep_ < 1)
          {
            if (v17.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v18.__d_.__rep_ = 1000 * v17.__d_.__rep_ + 5000000000;
            }

            else
            {
              v18.__d_.__rep_ = 0x800000012A05F200;
            }
          }

          else if (v17.__d_.__rep_ < 0x20C49BA59708B8)
          {
            v18.__d_.__rep_ = 1000 * v17.__d_.__rep_ + 5000000000;
          }

          else
          {
            v18.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v18.__d_.__rep_ = 5000000000;
        }

        std::condition_variable::__do_timed_wait(v15, &__lk, v18);
        if (std::chrono::steady_clock::now().__d_.__rep_ - v16.__d_.__rep_ > 0x12A05F1FFLL)
        {
          v20 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            _os_log_error_impl(&dword_2454AA000, v20, OS_LOG_TYPE_ERROR, "#gsdr,wait timeout", v23, 2u);
          }
        }

        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        std::mutex::~mutex(&buf);
      }
    }

    else
    {
      v19 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__m_.__sig) = 0;
        _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, "#gsdr,return failure", &buf, 2u);
      }
    }

    v21 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__m_.__sig) = 0;
      _os_log_impl(&dword_2454AA000, v21, OS_LOG_TYPE_DEFAULT, "#gsdr,exit", &buf, 2u);
    }

    _Block_object_dispose(&v26, 8);
    v22 = v32;
    v32 = 0;
    if (v22)
    {
      std::condition_variable::~condition_variable(v22);
      MEMORY[0x245D6AEE0]();
    }

    std::condition_variable::~condition_variable(&v34);
  }
}

void sub_245576C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::mutex::~mutex(&a25);
  _Block_object_dispose(&a18, 8);
  std::unique_ptr<std::condition_variable>::reset[abi:ne200100]((v27 + 48), 0);
  std::condition_variable::~condition_variable((v28 - 136));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN4gpsd4util23triggerDiagnosticReportERKNS0_26DiagnosticReportParametersE_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B1A0]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B190]];
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = 136315138;
    v13 = [v6 UTF8String];
    v8 = "#gsdr,accepted,%s";
    v9 = v7;
    v10 = 12;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B170]];
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = 67109120;
    LODWORD(v13) = [v6 intValue];
    v8 = "#gsdr,rejected,reason,%d";
    v9 = v7;
    v10 = 8;
  }

  _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
LABEL_7:

  v11 = *(*(*(a1 + 32) + 8) + 48);
  if (v11)
  {
    std::condition_variable::notify_one(v11);
  }
}

uint64_t gpsd::util::copyFile(gpsd::util *this, const char *a2, const char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v7 = [v6 copyItemAtPath:v4 toPath:v5 error:&v14];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 localizedDescription];
      v12 = v11;
      v13 = [v11 UTF8String];
      *buf = 136446210;
      v16 = v13;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "VendorLogger,copyFile,error:%{public}s", buf, 0xCu);
    }
  }

  return v7;
}

void gpsd::util::enumerateFiles(uint64_t a1, const void **a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v7 = [v33 contentsOfDirectoryAtPath:v6 error:0];

  std::vector<std::string>::clear[abi:ne200100](a3);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v34 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v8);
        }

        v11 = [*(*(&v40 + 1) + 8 * i) UTF8String];
        if (v11)
        {
          std::string::basic_string[abi:ne200100]<0>(buf, v11);
          v12 = v7;
          v13 = *(a2 + 23);
          if (v13 >= 0)
          {
            v14 = *(a2 + 23);
          }

          else
          {
            v14 = a2[1];
          }

          v15 = v39;
          if ((v39 & 0x8000000000000000) != 0)
          {
            if (v14 == -1)
            {
LABEL_52:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v17 = *buf;
            if (v38 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v38;
            }
          }

          else
          {
            if (v14 == -1)
            {
              goto LABEL_52;
            }

            if (v39 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v39;
            }

            v17 = buf;
          }

          if (v13 >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          if (!memcmp(v17, v19, v16) && v16 == v14)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v11);
            v22 = *(a3 + 8);
            v21 = *(a3 + 16);
            if (v22 >= v21)
            {
              v24 = *a3;
              v25 = v22 - *a3;
              v26 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3) + 1;
              if (v26 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x555555555555555)
              {
                v28 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v28 = v26;
              }

              if (v28)
              {
                if (v28 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v29 = 8 * (v25 >> 3);
              *v29 = *__p;
              *(v29 + 16) = v36;
              __p[1] = 0;
              v36 = 0;
              __p[0] = 0;
              v30 = v29 + 24;
              v31 = v29 - v25;
              memcpy((v29 - v25), v24, v25);
              *a3 = v31;
              *(a3 + 8) = v30;
              *(a3 + 16) = 0;
              if (v24)
              {
                operator delete(v24);
                v32 = SHIBYTE(v36);
                *(a3 + 8) = v30;
                if (v32 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                *(a3 + 8) = v30;
              }
            }

            else
            {
              v23 = *__p;
              *(v22 + 16) = v36;
              *v22 = v23;
              *(a3 + 8) = v22 + 24;
            }

            v15 = v39;
          }

          if (v15 < 0)
          {
            operator delete(*buf);
          }

          v7 = v12;
        }

        else
        {
          v18 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2454AA000, v18, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,null filename from reverseEnumerateFiles", buf, 2u);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }
}

void gpsd::util::DispatchSource::~DispatchSource(gpsd::util::DispatchSource *this)
{
  v7 = *MEMORY[0x277D85DE8];
  *this = &unk_285863C00;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 1);
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "DispatchSource,dtor,%{public}p", &v5, 0xCu);
  }

  dispatch_source_cancel(*(this + 1));
  v4 = *(this + 1);
  *(this + 1) = 0;
}

{
  gpsd::util::DispatchSource::~DispatchSource(this);

  JUMPOUT(0x245D6AEE0);
}

void gpsd::util::DispatchSource::setupHandler(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "DispatchSource,setupHandler,nullptr", buf, 2u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtilObjc.mm";
      v16 = 1026;
      v17 = 126;
      v18 = 2082;
      v19 = "setupHandler";
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "assert");
    std::string::basic_string[abi:ne200100]<0>(v10, "setupHandler");
    std::string::basic_string[abi:ne200100]<0>(__p, "DispatchSource,setupHandler,nullptr");
    gpsd::util::triggerDiagnosticReport(v12, v10, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    __assert_rtn("setupHandler", "GpsdUtilObjc.mm", 126, "false && DispatchSource,setupHandler,nullptr");
  }

  dispatch_source_set_event_handler(v4, v3);
  dispatch_resume(*(a1 + 8));
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 134349056;
    v15 = v6;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "DispatchSource,setupHandler,%{public}p", buf, 0xCu);
  }
}

void sub_24557780C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void gpsd::util::GnssTimer::setTimer(gpsd::util::GnssTimer *this, double a2, double a3, int a4)
{
  v5 = (a2 * 1000000000.0);
  v6 = (a3 * 1000000000.0);
  v7 = *(this + 1);
  v8 = dispatch_time(0, v5);
  if (a4)
  {
    v9 = v5;
  }

  else
  {
    v9 = -1;
  }

  dispatch_source_set_timer(v7, v8, v9, v6);
}

gpsd::util::OsTransaction *gpsd::util::OsTransaction::OsTransaction(gpsd::util::OsTransaction *this, const char *a2)
{
  *this = 0;
  v3 = os_transaction_create();
  v4 = *this;
  *this = v3;

  return this;
}

void gpsd::util::OsTransaction::~OsTransaction(id *this)
{
  v2 = *this;
  *this = 0;
}

{
  v2 = *this;
  *this = 0;
}

void gpsd::util::DiagnosticReportParameters::~DiagnosticReportParameters(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::condition_variable *std::unique_ptr<std::condition_variable>::reset[abi:ne200100](std::condition_variable **a1, std::condition_variable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::condition_variable::~condition_variable(result);

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

uint64_t TestCommConfig::castBaudRateToEnum(TestCommConfig *this)
{
  if (this <= 2399999)
  {
    if (this == 9600)
    {
      return 0;
    }

    if (this != 921600)
    {
      if (this == 1000000)
      {
        return 3;
      }

      return 2;
    }

    return 1;
  }

  else if (this > 3199999)
  {
    if (this != 3200000)
    {
      if (this == 4800000)
      {
        return 7;
      }

      return 2;
    }

    return 6;
  }

  else
  {
    if (this != 2400000)
    {
      if (this == 3000000)
      {
        return 5;
      }

      return 2;
    }

    return 4;
  }
}

uint64_t convertToHardwareEnum(char *a1)
{
  v62 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "2");
  v41 = 10401;
  std::string::basic_string[abi:ne200100]<0>(v42, "fire3");
  v43 = 10401;
  std::string::basic_string[abi:ne200100]<0>(v44, "5");
  v45 = 10606;
  std::string::basic_string[abi:ne200100]<0>(v46, "fire6");
  v47 = 10606;
  std::string::basic_string[abi:ne200100]<0>(v48, "6");
  v49 = 10618;
  std::string::basic_string[abi:ne200100]<0>(v50, "fire7");
  v51 = 10618;
  std::string::basic_string[abi:ne200100]<0>(v52, "3");
  v53 = 21102;
  std::string::basic_string[abi:ne200100]<0>(v54, "4");
  v55 = 21203;
  std::string::basic_string[abi:ne200100]<0>(v56, "7");
  v57 = 21705;
  std::string::basic_string[abi:ne200100]<0>(v58, "8");
  __s = a1;
  v59 = 21706;
  std::string::basic_string[abi:ne200100]<0>(v60, "9");
  v2 = 0;
  v3 = 0;
  v61 = 21805;
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v4 = v36;
  while (1)
  {
    v5 = v36;
    if (v4 == v36)
    {
      goto LABEL_8;
    }

    v6 = v2;
    v7 = v36;
    if (v2)
    {
      do
      {
        v5 = v6;
        v6 = *(v6 + 1);
      }

      while (v6);
    }

    else
    {
      do
      {
        v5 = v7[2];
        v8 = *v5 == v7;
        v7 = v5;
      }

      while (v8);
    }

    if (std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](v5 + 4, &__p[v3]))
    {
LABEL_8:
      if (v2)
      {
        v9 = v5;
      }

      else
      {
        v9 = &v35;
      }

      if (!v9[1])
      {
LABEL_19:
        operator new();
      }
    }

    else
    {
      if (!v2)
      {
        goto LABEL_19;
      }

      while (1)
      {
        while (1)
        {
          v10 = v2;
          if (!std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](&__p[v3], v2 + 4))
          {
            break;
          }

          v2 = *v2;
          if (!*v10)
          {
            goto LABEL_19;
          }
        }

        if (!std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](v2 + 4, &__p[v3]))
        {
          break;
        }

        v2 = *(v2 + 1);
        if (!v2)
        {
          goto LABEL_19;
        }
      }
    }

    v3 += 32;
    if (v3 == 352)
    {
      break;
    }

    v4 = v35;
    v2 = v36[0];
  }

  v11 = 44;
  v12 = __s;
  do
  {
    if (SHIBYTE(v36[v11]) < 0)
    {
      operator delete((&__s)[v11]);
    }

    v11 -= 4;
  }

  while (v11 * 8);
  v13 = std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v14 = v36[0];
  if (!v36[0])
  {
    goto LABEL_39;
  }

  v15 = v36;
  do
  {
    v16 = v15;
    v17 = v14 + 32;
    v13 = std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](v14 + 4, __p);
    if (v13)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (!v13)
    {
      v15 = v14;
    }

    v14 = *&v14[v18];
  }

  while (v14);
  if (v15 == v36 || (!v13 ? (v19 = v17) : (v19 = (v16 + 4)), v13 = std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](__p, v19), v13))
  {
LABEL_39:
    v15 = v36;
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(*__p);
  }

  if (v36 == v15)
  {
    v28 = *MEMORY[0x277D85DF8];
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v13);
    fprintf(v28, "[%5.1f][ERROR]Failed to convert hardware type %s to hardware enum\n", ProcessUptimeSec, v12);
    v30 = GpsdLogObjectGeneral;
    v31 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      v33 = gpsd::util::getProcessUptimeSec(v31);
      *__p = 134218242;
      *&__p[4] = v33;
      v38 = 2080;
      v39 = v12;
      _os_log_error_impl(&dword_2454AA000, v30, OS_LOG_TYPE_ERROR, "[%5.1f]Failed to convert hardware type %s to hardware enum", __p, 0x16u);
    }

    v27 = 0;
  }

  else
  {
    v20 = gpsd::util::getProcessUptimeSec(v13);
    v21 = (v15 + 4);
    v22 = (v15 + 4);
    if (*(v15 + 55) < 0)
    {
      v22 = *v21;
    }

    printf("[%5.1f]Converted hardware type %s to hardware enum %d\n", v20, v22, *(v15 + 14));
    v23 = GpsdLogObjectGeneral;
    v24 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      v25 = gpsd::util::getProcessUptimeSec(v24);
      if (*(v15 + 55) < 0)
      {
        v21 = *v21;
      }

      v26 = *(v15 + 14);
      *__p = 134218498;
      *&__p[4] = v25;
      v38 = 2080;
      v39 = v21;
      v40 = 1024;
      v41 = v26;
      _os_log_impl(&dword_2454AA000, v23, OS_LOG_TYPE_DEFAULT, "[%5.1f]Converted hardware type %s to hardware enum %d", __p, 0x1Cu);
    }

    v27 = *(v15 + 14);
  }

  std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(v36[0]);
  return v27;
}

void GpsFactoryTest::GpsFactoryTest(GpsFactoryTest *this, const Options *a2)
{
  v3 = GpsFactoryTest::Options::Options(this, a2);
  *&v3[9].__r_.__value_.__r.__words[1] = xmmword_2455862A0;
  *&v3[10].__r_.__value_.__l.__data_ = 0u;
  *&v3[10].__r_.__value_.__r.__words[2] = 0u;
  v3[11].__r_.__value_.__l.__size_ = 0;
  v3[11].__r_.__value_.__r.__words[2] = 850045863;
  v3[14].__r_.__value_.__r.__words[2] = 0;
  *&v3[12].__r_.__value_.__l.__data_ = 0u;
  *&v3[12].__r_.__value_.__r.__words[2] = 0u;
  *&v3[13].__r_.__value_.__r.__words[1] = 0u;
  *(&v3[13].__r_.__value_.__r.__words[2] + 1) = 0u;
  LODWORD(v3[15].__r_.__value_.__l.__data_) = 0;
  v3[15].__r_.__value_.__s.__data_[4] = 0;
  LODWORD(v3[15].__r_.__value_.__r.__words[1]) = 0;
  *&v3[15].__r_.__value_.__r.__words[2] = xmmword_2455862B0;
  *&v3[16].__r_.__value_.__r.__words[1] = 0u;
  *&v3[17].__r_.__value_.__l.__data_ = 0u;
  v3[17].__r_.__value_.__r.__words[2] = 0;
  v3[18].__r_.__value_.__r.__words[0] = 850045863;
  v3[33].__r_.__value_.__l.__size_ = 0;
  v3[22].__r_.__value_.__l.__size_ = 0;
  *&v3[21].__r_.__value_.__l.__data_ = 0u;
  *&v3[21].__r_.__value_.__r.__words[2] = 0u;
  *&v3[19].__r_.__value_.__r.__words[2] = 0u;
  *&v3[20].__r_.__value_.__r.__words[1] = 0u;
  *&v3[18].__r_.__value_.__r.__words[1] = 0u;
  *&v3[19].__r_.__value_.__l.__data_ = 0u;
  v4 = GpsdPreferences::instance(0);
  v5 = GpsdPreferences::maxSchedulerQos(v4);
  v6 = dispatch_queue_attr_make_with_qos_class(0, v5, 0);
  if (!v6)
  {
    v7 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "#spi,queue,nullattr", v8, 2u);
    }
  }

  *(this + 100) = dispatch_queue_create("com.apple.gpsfactorytest", v6);
}

void sub_245578394(_Unwind_Exception *a1)
{
  v3 = *(v1 + 536);
  *(v1 + 536) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 528);
  *(v1 + 528) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  if (*(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  std::mutex::~mutex((v1 + 432));
  std::condition_variable::~condition_variable((v1 + 384));
  std::mutex::~mutex((v1 + 280));
  std::condition_variable::~condition_variable((v1 + 232));
  GpsFactoryTest::Options::~Options(v1);
  _Unwind_Resume(a1);
}

void GpsFactoryTest::stop(GpsFactoryTest *this)
{
  v2 = *(this + 67);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  atomic_store(0, this + 364);

  GpsFactoryTest::BasicTimer::wakeNow((this + 224));
}

uint64_t GpsFactoryTest::flushLogs(GpsFactoryTest *this)
{
  result = *(this + 67);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void GpsFactoryTest::BasicTimer::wakeNow(GpsFactoryTest::BasicTimer *this)
{
  std::mutex::lock((this + 56));
  *(this + 120) = 1;
  std::condition_variable::notify_all((this + 8));

  std::mutex::unlock((this + 56));
}

void GpsFactoryTest::deviceInterfaceCallback(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5 = atomic_load((a1 + 376));
    if ((v5 & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    GpsFactoryTest::stringify(v5, v12);
    v6 = v13;
    v7 = v12[0];
    GpsFactoryTest::stringify(a2, __p);
    v8 = v12;
    if (v6 < 0)
    {
      v8 = v7;
    }

    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v15 = v8;
    v16 = 2082;
    v17 = v9;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "deviceInterfaceCallback,results,current:%{public}s,new:%{public}s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  atomic_store(a2 | 0x100000000, (a1 + 376));
  std::mutex::lock((a1 + 432));
  atomic_store(0, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
}

void sub_245578684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *GpsFactoryTest::stringify@<X0>(unsigned int a1@<W1>, void *a2@<X8>)
{
  if (a1 > 8)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_278E80980[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void GpsFactoryTest::mutateState(uint64_t a1, unsigned int a2)
{
  std::mutex::lock((a1 + 432));
  atomic_store(a2, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));

  std::mutex::unlock((a1 + 432));
}

void GpsFactoryTest::waitForIdle(GpsFactoryTest *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(this + 90);
  if (v2)
  {
    if (v2 < -1500)
    {
      return;
    }

    v3 = (v2 + 2500) / 0x3E8u;
  }

  else
  {
    v3 = 60;
  }

  v4 = 0;
  v25 = (this + 496);
  v5 = 0.0;
  do
  {
    __lk.__m_ = (this + 432);
    __lk.__owns_ = 1;
    std::mutex::lock((this + 432));
    v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (atomic_load(this + 92))
    {
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
      {
        goto LABEL_23;
      }

      v8.__d_.__rep_ = v6.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v8.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v9.__d_.__rep_)
        {
          if (v9.__d_.__rep_ < 1)
          {
            if (v9.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_17;
            }

            v10 = 0x8000000000000000;
          }

          else
          {
            if (v9.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v10 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }

LABEL_17:
            v10 = 1000 * v9.__d_.__rep_;
LABEL_18:
            if (v10 > (v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v11.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
              std::condition_variable::__do_timed_wait(this + 8, &__lk, v11);
              std::chrono::steady_clock::now();
              goto LABEL_22;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v11.__d_.__rep_ = v10 + v8.__d_.__rep_;
        goto LABEL_21;
      }

LABEL_22:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
      {
LABEL_23:
        if (atomic_load(this + 92))
        {
          v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          v14 = *(this + 44);
          if (v5 >= v14)
          {
            v14 = v5;
          }

          if ((v13.__d_.__rep_ - *(this + 28)) / 1000000000.0 > v14 + 60.0)
          {
            ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v13.__d_.__rep_);
            v16 = v25;
            if (*(this + 519) < 0)
            {
              v16 = *v25;
            }

            v17 = atomic_load(this + 92);
            printf("[%5.1f][TOOL  ] Running: %s,%d/%d,state,%d,lastHeartbeat,%.1f\n", ProcessUptimeSec, v16, v4 + 1, v3, v17, *(this + 44));
            v18 = GpsdLogObjectGeneral;
            v19 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              v20 = gpsd::util::getProcessUptimeSec(v19);
              v21 = v25;
              if (*(this + 519) < 0)
              {
                v21 = *v25;
              }

              v22 = atomic_load(this + 92);
              v23 = *(this + 44);
              *buf = 134219266;
              v28 = v20;
              v29 = 2080;
              v30 = v21;
              v31 = 1024;
              v32 = v4 + 1;
              v33 = 1024;
              v34 = v3;
              v35 = 1024;
              v36 = v22;
              v37 = 2048;
              v38 = v23;
              _os_log_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] Running: %s,%d/%d,state,%d,lastHeartbeat,%.1f", buf, 0x32u);
            }

            v5 = (std::chrono::steady_clock::now().__d_.__rep_ - *(this + 28)) / 1000000000.0;
          }

          if (v4 >= (v3 - 1))
          {
            atomic_store(0x100000006uLL, this + 47);
          }

          goto LABEL_38;
        }

        break;
      }
    }

    v24 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v24, OS_LOG_TYPE_INFO, "waitForIdle,done", buf, 2u);
    }

LABEL_38:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    ++v4;
  }

  while (v4 != v3);
}

void sub_245578A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::mutex *a19, char a20)
{
  if (a20 == 1)
  {
    std::mutex::unlock(a19);
  }

  _Unwind_Resume(exception_object);
}

void GpsFactoryTest::waitForInit(GpsFactoryTest *this)
{
  v3.__m_ = (this + 432);
  v3.__owns_ = 1;
  std::mutex::lock((this + 432));
  while (1)
  {
    v2 = atomic_load(this + 92);
    if (v2 == 2)
    {
      break;
    }

    std::condition_variable::wait(this + 8, &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

void GpsFactoryTest::printResult(GpsFactoryTest *this, const char *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 47);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7;
  }

  v5 = atomic_load(this + 47);
  if ((v5 & 0x100000000) == 0)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(this);
    if (!a2)
    {
      a2 = "unknown";
    }

    printf("[%5.1f][TOOL  ] %s\n", ProcessUptimeSec, a2);
    v7 = GpsdLogObjectGeneral;
    v8 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 134218242;
      *&buf[4] = gpsd::util::getProcessUptimeSec(v8);
      v26 = 2080;
      v27 = a2;
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] %s", buf, 0x16u);
    }

    return;
  }

  if (v4 == 1)
  {
    v9 = gpsd::util::getProcessUptimeSec(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Success");
    if (v28 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    if (!a2)
    {
      a2 = "unknown";
    }

    printf("[%5.1f][TOOL  ] %s, %s\n", v9, v10, a2);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }

    v11 = GpsdLogObjectGeneral;
    v12 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      v13 = gpsd::util::getProcessUptimeSec(v12);
      std::string::basic_string[abi:ne200100]<0>(__p, "Success");
      if (v24 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 134218498;
      *&buf[4] = v13;
      v26 = 2080;
      v27 = v14;
      v28 = 2080;
      v29 = a2;
      _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] %s, %s", buf, 0x20u);
      goto LABEL_22;
    }
  }

  else
  {
    v15 = *MEMORY[0x277D85DF8];
    v16 = gpsd::util::getProcessUptimeSec(this);
    GpsFactoryTest::stringify(v4, buf);
    if (v28 >= 0)
    {
      v17 = buf;
    }

    else
    {
      v17 = *buf;
    }

    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = "unknown";
    }

    fprintf(v15, "[%5.1f][ERROR][TOOL  ] %s, %s\n", v16, v17, v18);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }

    v19 = GpsdLogObjectGeneral;
    v20 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      v21 = gpsd::util::getProcessUptimeSec(v20);
      GpsFactoryTest::stringify(v4, __p);
      if (v24 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 134218498;
      *&buf[4] = v21;
      v26 = 2080;
      v27 = v22;
      v28 = 2080;
      v29 = v18;
      _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, "[%5.1f][TOOL  ] %s, %s", buf, 0x20u);
LABEL_22:
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void GpsFactoryTest::waitForIdleAndPrintResult(GpsFactoryTest *this, const char *a2)
{
  GpsFactoryTest::waitForIdle(this);

  GpsFactoryTest::printResult(this, a2);
}

void GpsFactoryTest::constructDevice(GpsFactoryTest *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    buf[0] = 136315394;
    *&buf[1] = "constructDevice";
    v9 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  if (!*(this + 66))
  {
    gnss::deviceVersionCheck(1);
    operator new();
  }

  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v3);
  printf("[%5.1f]%s, already constructed\n", ProcessUptimeSec, "constructDevice");
  v5 = GpsdLogObjectGeneral;
  v6 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = gpsd::util::getProcessUptimeSec(v6);
    buf[0] = 134218242;
    *&buf[1] = v7;
    v9 = 2080;
    MachContinuousTimeNs = "constructDevice";
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "[%5.1f]%s, already constructed", buf, 0x16u);
  }
}

void sub_24557A0C8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *__p, int a46, __int16 a47, char a48, char a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  MEMORY[0x245D6AEE0](v66, 0x10B3C408487180ALL, a3, a4, a5, a6, a7, a8);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  (*(*v63 + 8))(v63);
  (*(*v62 + 8))(v62);
  JUMPOUT(0x24557A59CLL);
}

void sub_24557A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](v47 - 152);
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](va);
  MEMORY[0x245D6AEE0](v46, 0x10A1C404BF63068);
  JUMPOUT(0x24557A40CLL);
}

void sub_24557A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](va);
  JUMPOUT(0x24557A250);
}

void sub_24557A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](va);
  JUMPOUT(0x24557A290);
}

void sub_24557A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](va);
  MEMORY[0x245D6AEE0](v46, 0x10A1C40B5258EBFLL);
  JUMPOUT(0x24557A544);
}

void sub_24557A2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(a1);
}

void sub_24557A374(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_24557A384()
{
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x24557A4C4);
}

void sub_24557A3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (a46 < 0)
    {
      operator delete(__p);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_24557A420(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_24557A430(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  JUMPOUT(0x24557A4C4);
}

void GpsFactoryTest::destructDevice(GpsFactoryTest *this)
{
  v2 = *(this + 67);
  if (v2)
  {
    VendorLogger::prepareForTermination(v2);
  }

  std::mutex::lock((this + 432));
  atomic_store(0, this + 92);
  std::condition_variable::notify_all(this + 8);
  std::mutex::unlock((this + 432));
  atomic_store(0x100000001uLL, this + 47);
}

void GpsFactoryTest::fixCallback(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  v6 = ProcessUptimeSec;
  if (v4)
  {
    GpsFactoryTest::stringify(a1, *a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    printf("[%5.1f][FIX   ] %s\n", v6, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = gpsd::util::getProcessUptimeSec(v9);
      GpsFactoryTest::stringify(a1, *a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 134218242;
      v15 = v10;
      v16 = 2080;
      v17 = v11;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][FIX   ] %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    GpsFactoryTest::BasicTimer::heartbeat((a1 + 224));
  }

  else
  {
    printf("[%5.1f][WARN  ] null gnss::Fix\n", ProcessUptimeSec);
    v12 = GpsdLogObjectGeneral;
    v13 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = gpsd::util::getProcessUptimeSec(v13);
      _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "[%5.1f][WARN  ] null gnss::Fix", &__p, 0xCu);
    }
  }
}

void GpsFactoryTest::stringify(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  GpsFactoryTest::stringify(a1, a2, &v21);
  v6 = std::string::append(&v21, ", ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify(a1, (a2 + 48), v19);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v22, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v23, ", ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify(a1, (a2 + 136), __p);
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v24, v14, v15);
  *a3 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_24557A978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void GpsFactoryTest::BasicTimer::heartbeat(GpsFactoryTest::BasicTimer *this)
{
  std::mutex::lock((this + 56));
  *(this + 16) = (std::chrono::steady_clock::now().__d_.__rep_ - *this) / 1000000000.0;

  std::mutex::unlock((this + 56));
}

void GpsFactoryTest::rfMeasurementCallback(_BOOL8 a1, unsigned __int8 **a2)
{
  v13 = a1;
  v27 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
      GpsFactoryTest::stringify(*v2, __p);
      if (v19 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      printf("[%5.1f][RFMEAS] %s.%d, %.2f dB-Hz, %.2f dBm, %.2f Hz offset\n", ProcessUptimeSec, v5, *(v2 + 1), *(v2 + 1), *(v2 + 2), *(v2 + 3));
      if (SHIBYTE(v19) < 0)
      {
        operator delete(*__p);
      }

      v6 = GpsdLogObjectGeneral;
      a1 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v7 = gpsd::util::getProcessUptimeSec(a1);
        GpsFactoryTest::stringify(*v2, v14);
        v8 = v14;
        if (v15 < 0)
        {
          v8 = v14[0];
        }

        v9 = *(v2 + 1);
        v10 = *(v2 + 1);
        v11 = *(v2 + 2);
        v12 = *(v2 + 3);
        *__p = 134219266;
        *&__p[4] = v7;
        v17 = 2080;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        v21 = 2048;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        v25 = 2048;
        v26 = v12;
        _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEFAULT, "[%5.1f][RFMEAS] %s.%d, %.2f dB-Hz, %.2f dBm, %.2f Hz offset", __p, 0x3Au);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      v2 += 40;
    }

    while (v2 != v3);
  }

  GpsFactoryTest::BasicTimer::heartbeat((v13 + 224));
}

void *GpsFactoryTest::stringify@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if ((a1 - 1) > 9)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_278E809C8[(a1 - 1)];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void GpsFactoryTest::loobackResultCallback(gpsd::util *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  printf("[%5.1f]%s\n", ProcessUptimeSec, "loobackResultCallback");
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 134218242;
    v5 = gpsd::util::getProcessUptimeSec(v3);
    v6 = 2080;
    v7 = "loobackResultCallback";
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "[%5.1f]%s", buf, 0x16u);
  }
}

void GpsFactoryTest::EventNotificationCb()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "EventNotificationCb";
    _os_log_impl(&dword_2454AA000, v0, OS_LOG_TYPE_DEFAULT, "%s", &v1, 0xCu);
  }
}

void GpsFactoryTest::commPingCallback(gpsd::util *a1, const char *a2, const char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (a3[23] >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  printf("[%5.1f][EVENT ] commPing result: version %s, serial %s\n", ProcessUptimeSec, v6, v7);
  v8 = GpsdLogObjectGeneral;
  v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = gpsd::util::getProcessUptimeSec(v9);
    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (a3[23] >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    *buf = 134218498;
    v14 = v10;
    v15 = 2080;
    v16 = v11;
    v17 = 2080;
    v18 = v12;
    _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] commPing result: version %s, serial %s", buf, 0x20u);
  }
}

uint64_t GpsFactoryTest::run(GpsFactoryTest *this)
{
  v2 = *(this + 100);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN14GpsFactoryTest3runEv_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = this;
  dispatch_sync(v2, block);
  v3 = this + 496;
  if (*(this + 519) < 0)
  {
    v3 = *v3;
  }

  GpsFactoryTest::waitForIdle(this);
  GpsFactoryTest::printResult(this, v3);
  sleep(1u);
  v4 = atomic_load(this + 47);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7;
  }

  GpsFactoryTest::destructDevice(this);
  return v5;
}

uint64_t GpsFactoryTest::runInternal(GpsFactoryTest *this)
{
  v144[4] = *MEMORY[0x277D85DE8];
  atomic_store(1u, this + 364);
  *(this + 28) = std::chrono::steady_clock::now();
  *(this + 44) = 0;
  GpsFactoryTest::constructDevice(this);
  v144[0] = &unk_285863DD0;
  v144[1] = this;
  v144[3] = v144;
  if (*(this + 74) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 74) = 0;
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v2);
    printf("[%5.1f][EVENT ] starting test: commPing\n", ProcessUptimeSec);
    v4 = GpsdLogObjectGeneral;
    v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *buf = 134217984;
      v124 = gpsd::util::getProcessUptimeSec(v5);
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: commPing", buf, 0xCu);
    }

    v6 = *(this + 66);
    v7 = *(this + 33);
    v143[0] = &unk_285863E50;
    v143[1] = this;
    v143[3] = v143;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v142, v144);
    (*(*v6 + 88))(v6, v7, v143, v142);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v142);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v143);
    *(this + 90) = *(this + 33);
    MEMORY[0x245D6AB60](this + 496, "commPing");
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v144);
  }

  if (*(this + 65) == 1)
  {
    v8 = GpsdPreferences::instance(0);
    if (!GpsdPreferences::nmeaMaskOverride(v8))
    {
      v21 = *(GpsdPlatformInfo::instance(0) + 8);
      if ((v21 - 201) >= 2 && (v21 - 301) >= 2)
      {
        GpsdPlatformInfo::instance(0);
      }
    }

    v9 = *(this + 66);
    v141[0] = &unk_285863EE0;
    v141[3] = v141;
    v140[0] = &unk_285863F70;
    v140[3] = v140;
    (*(*v9 + 96))(v9);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v140);
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v141);
    GpsFactoryTest::waitForIdle(this);
  }

  v10 = GpsdPlatformInfo::instance(0);
  v11 = *(v10 + 8) - 103;
  v12 = v11 > 4;
  v13 = (1 << v11) & 0x19;
  if (!v12 && v13 != 0)
  {
    if (*(this + 80) == 1)
    {
      v15 = *(this + 19);
      if (v15 == 13)
      {
        v16 = 1;
        goto LABEL_30;
      }

      if (v15 == 14)
      {
        v16 = 2;
        goto LABEL_30;
      }

      v22 = gpsd::util::getProcessUptimeSec(v10);
      if ((*(this + 80) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      printf("[%5.1f][EVENT ] Unknown LTE filter band %d\n", v22, *(this + 19));
      v23 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v24 = gpsd::util::getProcessUptimeSec(v10);
        if ((*(this + 80) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v25 = *(this + 19);
        *buf = 134218240;
        v124 = v24;
        *v125 = 1024;
        *&v125[2] = v25;
        _os_log_impl(&dword_2454AA000, v23, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] Unknown LTE filter band %d", buf, 0x12u);
      }
    }

    v16 = 0;
LABEL_30:
    if (*(this + 87) == 1)
    {
      v20 = *(this + 86);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_33;
  }

  if ((*(this + 80) & 1) != 0 || *(this + 87) == 1)
  {
    v17 = *MEMORY[0x277D85DF8];
    v18 = gpsd::util::getProcessUptimeSec(v10);
    fprintf(v17, "[%5.1f][ERROR][EVENT ] LTE filter / blanking only supported in FIRE\n", v18);
    v19 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      *buf = 134217984;
      v124 = gpsd::util::getProcessUptimeSec(v10);
      _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, "[%5.1f][EVENT ] LTE filter / blanking only supported in FIRE", buf, 0xCu);
    }
  }

  v20 = 0;
  v16 = 0;
LABEL_33:
  if (v16 | (v20 << 8))
  {
    v26 = gpsd::util::getProcessUptimeSec(v10);
    printf("[%5.1f][TOOL  ] coexConfig,val,0x%llx,lte,%d,blanking,%d,bitmask,0x%x\n", v26, v16 | (v20 << 8), v16, v20, 0);
    v27 = GpsdLogObjectGeneral;
    v28 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      v29 = gpsd::util::getProcessUptimeSec(v28);
      *buf = 134219008;
      v124 = v29;
      *v125 = 2048;
      *&v125[2] = v16 | (v20 << 8);
      *&v125[10] = 1024;
      *v126 = v16;
      *&v126[4] = 1024;
      *v127 = v20;
      *&v127[4] = 1024;
      v128[0] = 0;
      _os_log_impl(&dword_2454AA000, v27, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] coexConfig,val,0x%llx,lte,%d,blanking,%d,bitmask,0x%x", buf, 0x28u);
    }

    v30 = *(this + 66);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v139, v144);
    (*(*v30 + 104))(v30, v16 | (v20 << 8), v139);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v139);
    GpsFactoryTest::waitForIdle(this);
  }

  if ((*(this + 68) & 1) != 0 || *(this + 69) == 1)
  {
    v31 = GpsdPlatformInfo::instance(0);
    NoiseFigure = GpsdPlatformInfo::getNoiseFigure(v31, *(this + 104));
    v33 = gpsd::util::getProcessUptimeSec(NoiseFigure);
    printf("[%5.1f][INFO  ] C/N0 measured at correlator; RSSI referred to antenna port: C/N0 - 174 + NF\n", v33);
    v34 = GpsdLogObjectGeneral;
    v35 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      v36 = gpsd::util::getProcessUptimeSec(v35);
      *buf = 134217984;
      v124 = v36;
      _os_log_impl(&dword_2454AA000, v34, OS_LOG_TYPE_DEFAULT, "[%5.1f][INFO  ] C/N0 measured at correlator; RSSI referred to antenna port: C/N0 - 174 + NF", buf, 0xCu);
    }

    if ((NoiseFigure & 0x100000000) != 0)
    {
      v43 = gpsd::util::getProcessUptimeSec(v35);
      v44 = *&NoiseFigure;
      printf("[%5.1f][INFO  ] Noise Figure: %.1f dB\n", v43, *&NoiseFigure);
      v45 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        goto LABEL_47;
      }

      v46 = gpsd::util::getProcessUptimeSec(v10);
      *buf = 134218240;
      v124 = v46;
      *v125 = 2048;
      *&v125[2] = v44;
      v40 = "[%5.1f][INFO  ] Noise Figure: %.1f dB";
      v41 = v45;
      v42 = 22;
    }

    else
    {
      v37 = gpsd::util::getProcessUptimeSec(v35);
      printf("[%5.1f][INFO  ] Noise Figure: unknown\n", v37);
      v38 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        goto LABEL_47;
      }

      v39 = gpsd::util::getProcessUptimeSec(v10);
      *buf = 134217984;
      v124 = v39;
      v40 = "[%5.1f][INFO  ] Noise Figure: unknown";
      v41 = v38;
      v42 = 12;
    }

    _os_log_impl(&dword_2454AA000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
  }

LABEL_47:
  if (*(this + 67) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 67) = 0;
    v48 = gpsd::util::getProcessUptimeSec(v47);
    printf("[%5.1f][EVENT ] starting test: PERIODIC\n", v48);
    v49 = GpsdLogObjectGeneral;
    v50 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      v51 = gpsd::util::getProcessUptimeSec(v50);
      *buf = 134217984;
      v124 = v51;
      _os_log_impl(&dword_2454AA000, v49, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: PERIODIC", buf, 0xCu);
    }

    v52 = *(this + 66);
    v53 = *(this + 22);
    v138[0] = &unk_285863FF0;
    v138[1] = this;
    v138[3] = v138;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v137, v144);
    (*(*v52 + 24))(v52, v53, v138, v137);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v137);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v138);
    v54 = *(this + 22);
    if (v54 < 1)
    {
      if (v54 == -1)
      {
        std::mutex::lock((this + 432));
        atomic_store(1u, this + 92);
        std::condition_variable::notify_all(this + 8);
        std::mutex::unlock((this + 432));
      }
    }

    else
    {
      v55 = *(GpsdPlatformInfo::instance(0) + 8);
      if ((v55 - 301) < 2 || (v55 - 201) <= 1)
      {
        sleep(*(this + 22) + 1);
      }
    }

    *(this + 90) = 1000 * *(this + 22);
    v73 = "periodic";
    goto LABEL_72;
  }

  if (*(this + 68) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 68) = 0;
    v57 = gpsd::util::getProcessUptimeSec(v56);
    printf("[%5.1f][EVENT ] starting test: CW\n", v57);
    v58 = GpsdLogObjectGeneral;
    v59 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v59)
    {
      v60 = gpsd::util::getProcessUptimeSec(v59);
      *buf = 134217984;
      v124 = v60;
      _os_log_impl(&dword_2454AA000, v58, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: CW", buf, 0xCu);
    }

    v61 = *(this + 104);
    if (v61 == 4)
    {
      v62 = *(this + 27);
    }

    else
    {
      v62 = 0;
      *(this + 27) = 0;
    }

    v83 = *(this + 66);
    v84 = *(this + 23);
    v85 = *(this + 24);
    v86 = *(this + 25);
    v136[0] = &unk_285864080;
    v136[1] = this;
    v136[3] = v136;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v135, v144);
    (*(*v83 + 32))(v83, v84, v61, v62, v86, v136, v135, v85);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v135);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v136);
    *(this + 90) = 1000 * *(this + 23);
    v73 = "cw";
    goto LABEL_72;
  }

  if (*(this + 69) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 69) = 0;
    v64 = gpsd::util::getProcessUptimeSec(v63);
    printf("[%5.1f][EVENT ] *** starting test: modulated\n", v64);
    v65 = GpsdLogObjectGeneral;
    v66 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v66)
    {
      v67 = gpsd::util::getProcessUptimeSec(v66);
      *buf = 134217984;
      v124 = v67;
      _os_log_impl(&dword_2454AA000, v65, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] *** starting test: modulated", buf, 0xCu);
    }

    v68 = *(this + 66);
    v69 = *(this + 104);
    v70 = *(this + 27);
    v71 = *(this + 28);
    v72 = *(this + 25);
    v134[0] = &unk_285864110;
    v134[1] = this;
    v134[3] = v134;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v133, v144);
    (*(*v68 + 40))(v68, v71, v69, v70, v72, v134, v133);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v133);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v134);
    *(this + 90) = 1000 * *(this + 28);
    v73 = "modulated";
    goto LABEL_72;
  }

  if (*(this + 70) == 1)
  {
    *(this + 70) = 0;
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    v75 = gpsd::util::getProcessUptimeSec(v74);
    printf("[%5.1f][EVENT ] *** starting test: record IQ\n", v75);
    v76 = GpsdLogObjectGeneral;
    v77 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v77)
    {
      v78 = gpsd::util::getProcessUptimeSec(v77);
      *buf = 134217984;
      v124 = v78;
      _os_log_impl(&dword_2454AA000, v76, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] *** starting test: record IQ", buf, 0xCu);
    }

    v79 = *(this + 66);
    v80 = *(this + 29);
    v81 = *(this + 104);
    v82 = *(this + 27);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v132, v144);
    (*(*v79 + 48))(v79, v80, v81, v82, v132);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v132);
    *(this + 90) = 1000 * *(this + 29);
    v73 = "recordIQ";
    goto LABEL_72;
  }

  if (*(this + 71) == 1)
  {
    *(this + 71) = 0;
    v88 = *(this + 66);
    v89 = *(this + 30);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v131, v144);
    (*(*v88 + 64))(v88, v89, v131);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v131);
    v73 = "powerMode";
LABEL_72:
    MEMORY[0x245D6AB60](this + 496, v73);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v144);
  }

  if (*(this + 72) == 1)
  {
    GpsFactoryTest::mutateState(this, 1u);
    *(this + 72) = 0;
    v90 = *(this + 66);
    v91 = *(this + 31);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v130, v144);
    (*(*v90 + 72))(v90, v91, v130);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v130);
    v73 = "HostWakeGpio";
    goto LABEL_72;
  }

  if (*(this + 73) == 1)
  {
    v92 = gpsd::util::getProcessUptimeSec(v10);
    printf("[%5.1f][EVENT ] starting test: TimeMark\n", v92);
    v93 = GpsdLogObjectGeneral;
    v94 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v94)
    {
      v95 = gpsd::util::getProcessUptimeSec(v94);
      *buf = 134217984;
      v124 = v95;
      _os_log_impl(&dword_2454AA000, v93, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: TimeMark", buf, 0xCu);
    }

    GpsFactoryTest::mutateState(this, 1u);
    *(this + 73) = 0;
    v96 = *(this + 66);
    v97 = *(this + 32);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v129, v144);
    (*(*v96 + 80))(v96, v97, v129);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v129);
    *(this + 90) = *(this + 32);
    v73 = "TimeMarkGpio";
    goto LABEL_72;
  }

  if (*(this + 75) == 1)
  {
    GpsFactoryTest::mutateState(this, 1u);
    *(this + 75) = 0;
    v99 = gpsd::util::getProcessUptimeSec(v98);
    printf("[%5.1f][EVENT ] starting test: commLoopback\n", v99);
    v100 = GpsdLogObjectGeneral;
    v101 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v101)
    {
      v102 = gpsd::util::getProcessUptimeSec(v101);
      *buf = 134217984;
      v124 = v102;
      _os_log_impl(&dword_2454AA000, v100, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: commLoopback", buf, 0xCu);
    }

    v103 = *(this + 34);
    v119 = 1;
    v120 = 8;
    v117 = 9;
    v118 = 1;
    v104 = *(this + 167);
    if (v104 < 0)
    {
      v104 = *(this + 19);
    }

    if (v104)
    {
      std::istringstream::basic_istringstream[abi:ne200100](buf, this + 6);
      v105 = MEMORY[0x245D6ACA0](buf, &v119);
      v106 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v105, &v116);
      v107 = MEMORY[0x245D6ACA0](v106, &v118);
      v108 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v107, &v116);
      v109 = MEMORY[0x245D6ACA0](v108, &v120);
      v110 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v109, &v116);
      MEMORY[0x245D6ACA0](v110, &v117);
      v101 = std::istringstream::~istringstream(buf);
    }

    v111 = gpsd::util::getProcessUptimeSec(v101);
    printf("[%5.1f][INFO  ] Options: duration,%d,sec,min,%d,step,%d,max,%d,kB,loops,%d\n", v111, v103, v119, v118, v120, v117);
    v112 = GpsdLogObjectGeneral;
    v113 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v113)
    {
      v114 = gpsd::util::getProcessUptimeSec(v113);
      *buf = 134219264;
      v124 = v114;
      *v125 = 1024;
      *&v125[2] = v103;
      *&v125[6] = 1024;
      *&v125[8] = v119;
      *v126 = 1024;
      *&v126[2] = v118;
      *v127 = 1024;
      *&v127[2] = v120;
      LOWORD(v128[0]) = 1024;
      *(v128 + 2) = v117;
      _os_log_impl(&dword_2454AA000, v112, OS_LOG_TYPE_DEFAULT, "[%5.1f][INFO  ] Options: duration,%d,sec,min,%d,step,%d,max,%d,kB,loops,%d", buf, 0x2Au);
    }

    *buf = v119 << 10;
    LODWORD(v124) = v120 << 10;
    HIDWORD(v124) = v118 << 10;
    *v125 = v117;
    v115 = *(this + 66);
    v122[0] = &unk_285864190;
    v122[1] = this;
    v122[3] = v122;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v121, v144);
    (*(*v115 + 56))(v115, v103, buf, v122, v121);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v121);
    std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](v122);
    *(this + 90) = 1000 * v103;
    MEMORY[0x245D6AB60](this + 496, "CommLoopback");
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v144);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep GpsFactoryTest::BasicTimer::reset(GpsFactoryTest::BasicTimer *this)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *this = result;
  *(this + 16) = 0;
  return result;
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v5 = *(MEMORY[0x277D82820] + 16);
  v6 = *(MEMORY[0x277D82820] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 16));
  v8 = MEMORY[0x277D82898] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D6AE20](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  *(a1 + 104) = 0;
  v9 = *(a1 + 103);
  if (v9 < 0)
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
  }

  else
  {
    v10 = a1 + 80;
    v11 = *(a1 + 103);
  }

  v12 = *(a1 + 112);
  if ((v12 & 8) != 0)
  {
    *(a1 + 104) = v10 + v11;
    *(a1 + 32) = v10;
    *(a1 + 40) = v10;
    *(a1 + 48) = v10 + v11;
  }

  if ((v12 & 0x10) != 0)
  {
    *(a1 + 104) = v10 + v11;
    if ((v9 & 0x80000000) != 0)
    {
      v13 = (*(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v13 = 22;
    }

    std::string::resize((a1 + 80), v13, 0);
    v14 = *(a1 + 103);
    if (v14 < 0)
    {
      v14 = *(a1 + 88);
    }

    *(a1 + 56) = v10;
    *(a1 + 64) = v10;
    *(a1 + 72) = v10 + v14;
    if ((*(a1 + 112) & 3) != 0)
    {
      if (v11 >> 31)
      {
        v15 = ((v11 - 0x80000000) * 0x200000005uLL) >> 64;
        v16 = 0x7FFFFFFF * ((v15 + ((v11 - 0x80000000 - v15) >> 1)) >> 30);
        v10 += v16 + 0x7FFFFFFF;
        v11 = v11 - v16 - 0x7FFFFFFF;
        *(a1 + 64) = v10;
      }

      if (v11)
      {
        *(a1 + 64) = v10 + v11;
      }
    }
  }

  return a1;
}

void *std::operator>>[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2)
{
  MEMORY[0x245D6AC80](&v8, a1, 0);
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    v5 = v4[3];
    if (v5 == v4[4])
    {
      LODWORD(v4) = (*(*v4 + 80))(v4);
      if (v4 == -1)
      {
        v6 = 6;
        goto LABEL_6;
      }
    }

    else
    {
      v4[3] = v5 + 1;
      LOBYTE(v4) = *v5;
    }

    v6 = 0;
    *a2 = v4;
LABEL_6:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v6);
  }

  return a1;
}

void sub_24557C5E4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x24557C5A4);
  }

  __cxa_rethrow();
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x245D6AE70](a1 + 120);
  return a1;
}

uint64_t GpsFactoryTest::testInitialize(GpsFactoryTest *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "testInitialize";
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "+%s", &v5, 0xCu);
  }

  atomic_store(1u, this + 364);
  *(this + 28) = std::chrono::steady_clock::now();
  *(this + 44) = 0;
  GpsFactoryTest::constructDevice(this);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "testInitialize";
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "-%s", &v5, 0xCu);
  }

  usleep(0x4E20u);
  return 1;
}

unint64_t GpsFactoryTest::testPeriodicFix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "testPeriodicFix";
    _os_log_debug_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEBUG, "+%s", buf, 0xCu);
  }

  v6 = atomic_load((a1 + 364));
  if ((v6 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((a1 + 432));
  atomic_store(1u, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
  v7 = *(a1 + 528);
  v11[0] = &unk_285864220;
  v11[1] = a1;
  v11[3] = v11;
  v10[0] = &unk_2858642A0;
  v10[1] = a1;
  v10[3] = v10;
  (*(*v7 + 24))(v7, a3, v11, v10);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v11);
  v8 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v8 - 301) < 2 || (v8 - 201) <= 1)
  {
    sleep(a3 + 1);
  }

  GpsFactoryTest::waitForIdle(a1);
  GpsFactoryTest::printResult(a1, "testPeriodicFix");
  result = atomic_load((a1 + 376));
  if ((result & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return result;
}

void sub_24557CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testCw(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v13 = GpsdLogObjectGeneral;
  v14 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    *buf = 136315394;
    v22 = "testCw";
    v23 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v14);
    _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v15 = atomic_load((a1 + 364));
  if ((v15 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((a1 + 432));
  atomic_store(1u, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
  v16 = *(a1 + 528);
  v20[0] = &unk_285864320;
  v20[1] = a1;
  v20[3] = v20;
  v19[0] = &unk_2858643A0;
  v19[1] = a1;
  v19[3] = v19;
  (*(*v16 + 32))(v16, a4, a5, a6, a7, v20, v19, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v20);
  v17 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v17 - 301) < 2 || (v17 - 201) <= 1)
  {
    sleep(a4 + 1);
  }

  GpsFactoryTest::waitForIdle(a1);
  GpsFactoryTest::printResult(a1, "testCw");
  result = atomic_load((a1 + 376));
  if ((result & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return result;
}

void sub_24557CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testModulated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = GpsdLogObjectGeneral;
  v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *buf = 136315394;
    v18 = "testModulated";
    v19 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v10);
    _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v11 = atomic_load((a1 + 364));
  if ((v11 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((a1 + 432));
  atomic_store(1u, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
  v12 = *(a1 + 528);
  v16[0] = &unk_285864420;
  v16[1] = a1;
  v16[3] = v16;
  v15[0] = &unk_2858644A0;
  v15[1] = a1;
  v15[3] = v15;
  (*(*v12 + 40))(v12, a3, a4, a5, 0xFFFFFFFFLL, v16, v15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v16);
  v13 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v13 - 301) < 2 || (v13 - 201) <= 1)
  {
    sleep(a3 + 1);
  }

  GpsFactoryTest::waitForIdle(a1);
  GpsFactoryTest::printResult(a1, "testModulated");
  result = atomic_load((a1 + 376));
  if ((result & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return result;
}

void sub_24557CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testApSignal(GpsFactoryTest *this)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v18 = 136315394;
    v19 = "testApSignal";
    v20 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", &v18, 0x16u);
  }

  v4 = atomic_load(this + 364);
  if ((v4 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((this + 432));
  atomic_store(1u, this + 92);
  std::condition_variable::notify_all(this + 8);
  std::mutex::unlock((this + 432));
  v6 = GnssHal::GpioEmbedded::GpioBackend::instance(v5);
  std::mutex::lock(&GnssHal::sMutex);
  *(v6 + 20) = 0;
  *(v6 + 24) = 0;
  std::mutex::unlock(&GnssHal::sMutex);
  v7 = *(this + 66);
  v24[0] = &unk_285864520;
  v24[1] = this;
  v24[3] = v24;
  (*(*v7 + 72))(v7, 1500, v24);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
  GpsFactoryTest::waitForIdle(this);
  GpsFactoryTest::printResult(this, "testApSignal");
  v8 = sleep(1u);
  v9 = GnssHal::GpioEmbedded::GpioBackend::instance(v8);
  std::mutex::lock(&GnssHal::sMutex);
  v10 = *(v9 + 20);
  std::mutex::unlock(&GnssHal::sMutex);
  v12 = GnssHal::GpioEmbedded::GpioBackend::instance(v11);
  std::mutex::lock(&GnssHal::sMutex);
  v13 = *(v12 + 24);
  std::mutex::unlock(&GnssHal::sMutex);
  v14 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "testApSignal";
    v20 = 2048;
    MachContinuousTimeNs = v10;
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "%s,zero transitions, %llu, one transitions, %llu,", &v18, 0x20u);
  }

  v15 = atomic_load(this + 47);
  if ((v15 & 0x1FFFFFFFFLL) == 0x100000001)
  {
    if (v13)
    {
      v16 = v10 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 8;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    result = atomic_load(this + 47);
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  return result;
}

void sub_24557D190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testTimeMark(GpsFactoryTest *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 136315394;
    v9 = "testTimeMark";
    v10 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v4 = atomic_load(this + 364);
  if ((v4 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((this + 432));
  atomic_store(1u, this + 92);
  std::condition_variable::notify_all(this + 8);
  std::mutex::unlock((this + 432));
  v5 = *(this + 66);
  v7[0] = &unk_2858645A0;
  v7[1] = this;
  v7[3] = v7;
  (*(*v5 + 80))(v5, 1500, v7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  GpsFactoryTest::waitForIdle(this);
  GpsFactoryTest::printResult(this, "testTimeMark");
  sleep(1u);
  result = atomic_load(this + 47);
  if ((result & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return result;
}

unint64_t GpsFactoryTest::testCommPing(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 136315394;
    v10 = "testCommPing";
    v11 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v4 = atomic_load((a1 + 364));
  if ((v4 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((a1 + 432));
  atomic_store(1u, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
  v5 = *(a1 + 528);
  v8[0] = &unk_285864620;
  v8[1] = a1;
  v8[3] = v8;
  v7[0] = &unk_2858646A0;
  v7[1] = a1;
  v7[3] = v7;
  (*(*v5 + 88))(v5, 1500, v8, v7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v8);
  GpsFactoryTest::waitForIdle(a1);
  GpsFactoryTest::printResult(a1, "testCommPing");
  sleep(1u);
  result = atomic_load((a1 + 376));
  if ((result & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return result;
}

void sub_24557D4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testPowerMode(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 136315394;
    v11 = "testPowerMode";
    v12 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v5);
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v6 = atomic_load((a1 + 364));
  if ((v6 & 1) == 0)
  {
    return 7;
  }

  std::mutex::lock((a1 + 432));
  atomic_store(1u, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
  v7 = *(a1 + 528);
  v9[0] = &unk_285864720;
  v9[1] = a1;
  v9[3] = v9;
  (*(*v7 + 64))(v7, a2, v9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  GpsFactoryTest::waitForIdle(a1);
  GpsFactoryTest::printResult(a1, "testPowerMode");
  sleep(1u);
  result = atomic_load((a1 + 376));
  if ((result & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return result;
}

void *GpsFactoryTest::stringify@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  snprintf((a1 + 544), 0x100uLL, "rxTimeNs=%12llu, gpsTimeNs=%12llu(%4.1f)", *(a2 + 24), *a2, *(a2 + 8));

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

void *GpsFactoryTest::stringify@<X0>(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  GpsFactoryTest::stringify(a2 + 17, __p);
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  snprintf((a1 + 544), 0x100uLL, "%s, ll=%6.3f,%6.3f, hUnc=%6.3f, alt=%6.3f(%6.3f), undul=%6.3f", v6, *a2, a2[1], a2[5], a2[2], a2[4], a2[3]);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

{
  snprintf((a1 + 544), 0x100uLL, "hSpeed=%4.2f(%5.2f), vVel=%4.2f(%5.2f)", *a2, a2[1], a2[2], a2[3]);

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

void GpsFactoryTest::stringify_json(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  GpsFactoryTest::stringify_json(a1, a2, &v25);
  v6 = std::string::insert(&v25, 0, "{fix: {");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v26, ", ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify_json(a1, (a2 + 48), v23);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v27, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ", ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify_json(a1, (a2 + 136), __p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v29, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v30, "}}");
  *a3 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
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

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_24557DA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *GpsFactoryTest::stringify_json@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  snprintf((a1 + 544), 0x100uLL, "time:{mClockNanoSeconds:%12llu,mGpsNanoSeconds:%12llu, mGpsTimeUncertaintyNanoSeconds:%4.1f}", *(a2 + 24), *a2, *(a2 + 8));

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

void *GpsFactoryTest::stringify_json@<X0>(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  GpsFactoryTest::stringify(a2 + 17, __p);
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  snprintf((a1 + 544), 0x100uLL, "position:{mReliability:%s,mLatitude:%6.3f, mLongitude:%6.3f,mSemiMajorHorizontalUncertainty:%6.3f,mAltWgs84:%6.3f,mVerticalUncertainty:%6.3f,mUndulation:%6.3f}", v6, *a2, a2[1], a2[5], a2[2], a2[4], a2[3]);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

{
  snprintf((a1 + 544), 0x100uLL, "velocity:{mHorizSpeed:%4.2f,mHorizSpeedUnc:%5.2f, mVertVelocity:%4.2f,mVertVelocityUnc:%5.2f}", *a2, a2[1], a2[2], a2[3]);

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

uint64_t GpsFactoryTest::stringify@<X0>(int *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  if (*a1 <= 24)
  {
    if (!v3)
    {
      v4 = "NotSet";
      return MEMORY[0x245D6AB60](a2, v4);
    }

    if (v3 == 10)
    {
      v4 = "VeryLow";
      return MEMORY[0x245D6AB60](a2, v4);
    }

LABEL_12:
    v4 = "Error";
    return MEMORY[0x245D6AB60](a2, v4);
  }

  if (v3 == 25)
  {
    v4 = "Low";
    return MEMORY[0x245D6AB60](a2, v4);
  }

  if (v3 == 50)
  {
    v4 = "Medium";
    return MEMORY[0x245D6AB60](a2, v4);
  }

  if (v3 != 75)
  {
    goto LABEL_12;
  }

  v4 = "High";
  return MEMORY[0x245D6AB60](a2, v4);
}

void sub_24557DD2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void GpsFactoryTest::BasicTimer::waitUntil(GpsFactoryTest::BasicTimer *this, double a2)
{
  v3 = (this + 8);
  v4 = (a2 * 1000000000.0 + *this) / 1000000000.0;
  v12.__m_ = (this + 56);
  v12.__owns_ = 1;
  std::mutex::lock((this + 56));
  v5 = v4 * 1000000000.0;
  v6 = -9.22337204e18;
  if (v4 * 1000000000.0 > -9.22337204e18)
  {
    v6 = v4 * 1000000000.0;
  }

  if (v5 < 9.22337204e18)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while ((*(this + 120) & 1) == 0 && v5 > std::chrono::steady_clock::now().__d_.__rep_)
  {
    v8.__d_.__rep_ = v7 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v8.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_)
      {
        if (v9.__d_.__rep_ < 1)
        {
          if (v9.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_16;
          }

          v10 = 0x8000000000000000;
        }

        else
        {
          if (v9.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v10 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_17;
          }

LABEL_16:
          v10 = 1000 * v9.__d_.__rep_;
LABEL_17:
          if (v10 > (v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v11.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
            std::condition_variable::__do_timed_wait(v3, &v12, v11);
            std::chrono::steady_clock::now();
            goto LABEL_21;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v11.__d_.__rep_ = v10 + v8.__d_.__rep_;
      goto LABEL_20;
    }

LABEL_21:
    if (v5 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }
  }

  if (v12.__owns_)
  {
    std::mutex::unlock(v12.__m_);
  }
}

void GpsFactoryTest::Options::~Options(void **this)
{
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_1,std::allocator<GpsFactoryTest::constructDevice(void)::$_1>,std::string ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863C30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::constructDevice(void)::$_1,std::allocator<GpsFactoryTest::constructDevice(void)::$_1>,std::string ()(void)>::operator()(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_1,std::allocator<GpsFactoryTest::constructDevice(void)::$_1>,std::string ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_2,std::allocator<GpsFactoryTest::constructDevice(void)::$_2>,std::string ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863CC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::constructDevice(void)::$_2,std::allocator<GpsFactoryTest::constructDevice(void)::$_2>,std::string ()(void)>::operator()(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (*(v2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 200), *(v2 + 208));
  }

  else
  {
    v3 = *(v2 + 200);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 216);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_2,std::allocator<GpsFactoryTest::constructDevice(void)::$_2>,std::string ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_0,std::allocator<GpsFactoryTest::constructDevice(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863D40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_0,std::allocator<GpsFactoryTest::constructDevice(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_0,std::allocator<GpsFactoryTest::runInternal(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863DD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_0,std::allocator<GpsFactoryTest::runInternal(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_1,std::allocator<GpsFactoryTest::runInternal(void)::$_1>,void ()(std::string const&,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863E50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_1,std::allocator<GpsFactoryTest::runInternal(void)::$_1>,void ()(std::string const&,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_2,std::allocator<GpsFactoryTest::runInternal(void)::$_2>,void ()(std::vector<std::string> &&)>::operator()(uint64_t a1, std::string **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
      v5 = v2;
      size = v4;
      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        v5 = v2->__r_.__value_.__r.__words[0];
        size = v2->__r_.__value_.__l.__size_;
      }

      v7 = v5 + size;
      v8 = memchr(v5, 13, size);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      v10 = v9 + 1;
      if (v9 != v7 && v10 != v7)
      {
        do
        {
          v12 = *v10;
          if (v12 != 13)
          {
            *v9++ = v12;
          }

          ++v10;
        }

        while (v10 != v7);
        v4 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
      }

      if ((v4 & 0x80) != 0)
      {
        v14 = v2->__r_.__value_.__r.__words[0];
        v13 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
      }

      else
      {
        v13 = v2 + v4;
        v14 = v2;
      }

      v15 = std::string::erase(v2, v9 - v14, v13 - v9);
      ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v15);
      v17 = v2;
      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = v2->__r_.__value_.__r.__words[0];
      }

      printf("[%5.1f][NMEA  ] %s\n", ProcessUptimeSec, v17);
      v18 = GpsdLogObjectGeneral;
      v19 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v20 = gpsd::util::getProcessUptimeSec(v19);
        v21 = v2;
        if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v2->__r_.__value_.__r.__words[0];
        }

        *buf = 134218242;
        v23 = v20;
        v24 = 2080;
        v25 = v21;
        _os_log_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEFAULT, "[%5.1f][NMEA  ] %s", buf, 0x16u);
      }

      ++v2;
    }

    while (v2 != v3);
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_2,std::allocator<GpsFactoryTest::runInternal(void)::$_2>,void ()(std::vector<std::string> &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_3,std::allocator<GpsFactoryTest::runInternal(void)::$_3>,void ()(gnss::Result)>::operator()(gpsd::util *a1, int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  if (v2 == 1)
  {
    printf("[%5.1f][EVENT ] Succeed to set NMEA handler\n", ProcessUptimeSec);
    v4 = GpsdLogObjectGeneral;
    v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      return;
    }

    *buf = 134217984;
    v12 = gpsd::util::getProcessUptimeSec(v5);
    v6 = "[%5.1f][EVENT ] Succeed to set NMEA handler";
    v7 = v4;
    v8 = 12;
  }

  else
  {
    printf("[%5.1f][EVENT ] Failed to set NMEA handler %d\n", ProcessUptimeSec, v2);
    v9 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (!v10)
    {
      return;
    }

    *buf = 134218240;
    v12 = gpsd::util::getProcessUptimeSec(v10);
    v13 = 1024;
    v14 = v2;
    v6 = "[%5.1f][EVENT ] Failed to set NMEA handler %d";
    v7 = v9;
    v8 = 18;
  }

  _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_3,std::allocator<GpsFactoryTest::runInternal(void)::$_3>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_4,std::allocator<GpsFactoryTest::runInternal(void)::$_4>,void ()(std::unique_ptr<gnss::Fix>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863FF0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_4,std::allocator<GpsFactoryTest::runInternal(void)::$_4>,void ()(std::unique_ptr<gnss::Fix>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = v2;
  GpsFactoryTest::fixCallback(v3, &v4);
  if (v2)
  {

    JUMPOUT(0x245D6AEE0);
  }
}

void sub_24557EBAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x245D6AEE0](v1, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_4,std::allocator<GpsFactoryTest::runInternal(void)::$_4>,void ()(std::unique_ptr<gnss::Fix>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_5,std::allocator<GpsFactoryTest::runInternal(void)::$_5>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864080;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_5,std::allocator<GpsFactoryTest::runInternal(void)::$_5>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  memset(__p, 0, sizeof(__p));
  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(__p, v3, v2, 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3));
  GpsFactoryTest::rfMeasurementCallback(v4, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v3)
  {

    operator delete(v3);
  }
}

void sub_24557EDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_5,std::allocator<GpsFactoryTest::runInternal(void)::$_5>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24557EEFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_6,std::allocator<GpsFactoryTest::runInternal(void)::$_6>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864110;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_6,std::allocator<GpsFactoryTest::runInternal(void)::$_6>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  memset(__p, 0, sizeof(__p));
  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(__p, v3, v2, 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3));
  GpsFactoryTest::rfMeasurementCallback(v4, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v3)
  {

    operator delete(v3);
  }
}

void sub_24557F0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_6,std::allocator<GpsFactoryTest::runInternal(void)::$_6>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_7,std::allocator<GpsFactoryTest::runInternal(void)::$_7>,void ()(gnssTest::CommLoopbackResult const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864190;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_7,std::allocator<GpsFactoryTest::runInternal(void)::$_7>,void ()(gnssTest::CommLoopbackResult const&)>::operator()(gpsd::util *a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = *(a1 + 1);
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  v8 = v2 >> 10;
  v9 = v4 >> 10;
  printf("[%5.1f][EVENT ] loopback results: Tx %lld kB, Rx %lld kB, Tx %d KB/s, Rx %d KB/s\n", ProcessUptimeSec, v2 >> 10, v3 >> 10, v9, v5 >> 10);
  v10 = GpsdLogObjectGeneral;
  v11 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 134219008;
    v13 = gpsd::util::getProcessUptimeSec(v11);
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v3 >> 10;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v5 >> 10;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] loopback results: Tx %lld kB, Rx %lld kB, Tx %d KB/s, Rx %d KB/s", buf, 0x2Cu);
  }

  GpsFactoryTest::BasicTimer::heartbeat((v6 + 224));
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_7,std::allocator<GpsFactoryTest::runInternal(void)::$_7>,void ()(gnssTest::CommLoopbackResult const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864220;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = v2;
  GpsFactoryTest::fixCallback(v3, &v4);
  if (v2)
  {

    JUMPOUT(0x245D6AEE0);
  }
}

void sub_24557F4E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x245D6AEE0](v1, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858642A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864320;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v3;
  v7 = v2;
  GpsFactoryTest::rfMeasurementCallback(v4, &v6);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_24557F75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858643A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864420;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v3;
  v7 = v2;
  GpsFactoryTest::rfMeasurementCallback(v4, &v6);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_24557F9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858644A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testApSignal(void)::$_0,std::allocator<GpsFactoryTest::testApSignal(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864520;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testApSignal(void)::$_0,std::allocator<GpsFactoryTest::testApSignal(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testTimeMark(void)::$_0,std::allocator<GpsFactoryTest::testTimeMark(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858645A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testTimeMark(void)::$_0,std::allocator<GpsFactoryTest::testTimeMark(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_0,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_0>,void ()(std::string const&,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_0,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_0>,void ()(std::string const&,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_1,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858646A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_1,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0,std::allocator<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864720;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0,std::allocator<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void executeCommand(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *MEMORY[0x277D85DE8];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  popen(a1, "r");
  operator new();
}

void sub_245580100(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    pclose(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_245580118(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_245580124(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x245580128);
  }

  __clang_call_terminate(a1);
}

void sub_245580134()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }

  JUMPOUT(0x24558015CLL);
}

void isProcessRunning(char *a1)
{
  std::operator+<char>();
  v1 = std::string::append(&v4, "'");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v6 = v1->__r_.__value_.__r.__words[2];
  *__p = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  executeCommand(v3, &v4);
}

void sub_2455802D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<__sFILE *,int (*)(__sFILE *),std::allocator<__sFILE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D6AEE0);
}

uint64_t std::__shared_ptr_pointer<__sFILE *,int (*)(__sFILE *),std::allocator<__sFILE>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}