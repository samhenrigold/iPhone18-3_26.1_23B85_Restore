void ULScanService::configureTechnologyProfiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 2) == 1)
  {
    v8 = ULSettings::get<ULSettings::OffScreenScanEnabled>();
  }

  else
  {
    v8 = 0;
  }

  ULScanService::setWifiTechnologyProfile(a1, 1, a3);
  ULScanService::setWifiTechnologyProfile(a1, 0, a4);
  if ((*(a2 + 5) & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
    ULScanService::setBleTechnologyProfile(a1, 0, *(a2 + 40), *(a2 + 48), v8);
    ULScanService::setBleTechnologyProfile(a1, 1, *(a2 + 40), *(a2 + 48), v8);
    ULScanService::setUwbTechnologyProfile(a1, 0);

    ULScanService::setUwbTechnologyProfile(a1, 1);
  }
}

void ULScanService::configureScanningProfiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([*(a2 + 40) count])
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a2 + 48) count] != 0;
  }

  v9 = *(a2 + 2) & v8;
  if (*(a2 + 5) == 1)
  {
    *(a1 + 296) = 2;
    ULScanService::setScanningProfile(a1, 2, (v9 & 1));
    v10 = *(**(a1 + 72) + 16);
LABEL_8:

    v10();
    return;
  }

  if (*(a2 + 4) == 1)
  {
    *(a1 + 300) = 3;
    ULScanService::setScanningProfile(a1, 3, (v9 & 1));
    v10 = *(**(a1 + 72) + 16);
    goto LABEL_8;
  }

  *(a1 + 296) = 0;
  ULScanService::setScanningProfile(a1, 0, (v9 & 1));
  (*(**(a1 + 72) + 16))(*(a1 + 72), a3, 0);
  *(a1 + 300) = 1;
  ULScanService::setScanningProfile(a1, 1, (v9 & 1));
  (*(**(a1 + 72) + 16))(*(a1 + 72), a4, 1);

  ULScanService::setScanningProfile(a1, 4, (v9 & 1));
}

void ULScanService::configureSchedulingProfiles(ULScanService *this, const ULScanParameters *a2)
{
  v2 = this;
  if (*(a2 + 5) == 1)
  {
    v3 = 0;
    v4 = 2;
  }

  else if (*(a2 + 4) == 1)
  {
    if (*(a2 + 2) != 1)
    {
      return;
    }

    v3 = 1;
    v4 = 3;
  }

  else
  {
    ULScanService::setSchedulingProfile(this, 0, 0);
    if (*(a2 + 2) != 1)
    {
      return;
    }

    if (*(a2 + 8) == 1)
    {
      this = v2;
      v3 = 4;
    }

    else if (*(a2 + 6) == 1)
    {
      if (*(a2 + 7) == 1)
      {
        ULScanService::setSchedulingProfile(v2, 3, 1);
      }

      this = v2;
      v3 = 2;
    }

    else
    {
      this = v2;
      v3 = 1;
    }

    v4 = 1;
  }

  ULScanService::setSchedulingProfile(this, v3, v4);
}

void ULScanService::handleBtPowerStateEvent(id *this, ULEvent *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [this[13] queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN13ULScanService23handleBtPowerStateEventEP7ULEvent_block_invoke;
  v9[3] = &unk_2798D4138;
  v10 = v6;
  v11 = this;
  v8 = v6;
  dispatch_async(v7, v9);
}

void *___ZN13ULScanService23handleBtPowerStateEventEP7ULEvent_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) powerOn];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "ScanService handlePowerStateEvent: powerOn: %@", &v7, 0xCu);
  }

  result = [*(a1 + 32) powerOn];
  *(v2 + 305) = result;
  return result;
}

uint64_t ULScanService::applyDisplayStatePolicy(ULScanService *this, int a2)
{
  *(this + 304) = a2;
  v3 = *(this + 22);
  v4 = *(this + 23);
  if (v3 != v4)
  {
    v5 = *(this + 22);
    do
    {
      if (*v5 == 2)
      {
        if (a2)
        {

          return ULScanService::resumeHomeSlamMotionProfile(this);
        }

        else
        {

          return ULScanService::suspendHomeSlamMotionProfile(this);
        }
      }

      ++v5;
    }

    while (v5 != v4);
    if (a2)
    {
      do
      {
        v6 = *v3++;
        (*(**(this + 5) + 80))(*(this + 5), v6);
      }

      while (v3 != v4);
      goto LABEL_11;
    }

    do
    {
      v7 = *v3++;
      (*(**(this + 5) + 72))(*(this + 5), v7);
    }

    while (v3 != v4);
    goto LABEL_14;
  }

  if ((a2 & 1) == 0)
  {
LABEL_14:
    v8 = *(**(this + 12) + 16);

    return v8();
  }

LABEL_11:
  v8 = *(**(this + 12) + 24);

  return v8();
}

void ULScanService::handleSleepWakeStateEvent(ULScanService *this, ULEvent *a2)
{
  v3 = a2;
  for (i = *(this + 22); i != *(this + 23); ++i)
  {
    if (*i == 2)
    {
      objc_opt_class();
      v5 = v3;
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      v8 = [*(this + 13) queue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = ___ZN13ULScanService25handleSleepWakeStateEventEP7ULEvent_block_invoke;
      v10[3] = &unk_2798D4138;
      v11 = v7;
      v12 = this;
      v9 = v7;
      dispatch_async(v8, v10);

      break;
    }
  }
}

uint64_t ___ZN13ULScanService25handleSleepWakeStateEventEP7ULEvent_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) sleepWakeState];
  v3 = v2;
  v5 = v2 == 20 || v2 == 30;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULScanService::setTriggeringConfiguration();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(&_ZZZN13ULScanService25handleSleepWakeStateEventEP7ULEventEUb_E12YesNoStrings + (v3 == 10));
    v8 = *(&_ZZZN13ULScanService25handleSleepWakeStateEventEP7ULEventEUb_E12YesNoStrings + v5);
    v10[0] = 68289538;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ScanService handleSleepWakeStateEvent, is sleep?:%{public, location:escape_only}@, is wake?:%{public, location:escape_only}@}", v10, 0x26u);
  }

  return ULScanService::applySleepWakePolicy(v1, v3 == 10, v5);
}

uint64_t ULScanService::applySleepWakePolicy(uint64_t this, int a2, uint64_t a3)
{
  v3 = this;
  if (a2)
  {
    v4 = *(this + 176);
    v5 = *(this + 184);
    while (v4 != v5)
    {
      v6 = *v4++;
      (*(**(v3 + 40) + 72))(*(v3 + 40), v6, a3);
    }

    v10 = *(**(v3 + 96) + 16);

    return v10();
  }

  if (a3)
  {
    v7 = *(this + 176);
    v8 = *(this + 184);
    while (v7 != v8)
    {
      v9 = *v7++;
      (*(**(v3 + 40) + 80))(*(v3 + 40), v9);
    }

    v10 = *(**(v3 + 96) + 24);

    return v10();
  }

  return this;
}

uint64_t ULScanService::suspendHomeSlamMotionProfile(uint64_t this)
{
  v1 = *(this + 176);
  v2 = *(this + 184);
  if (v1 != v2)
  {
    v3 = 0;
    do
    {
      v4 = *v1++;
      if (v4 == 3)
      {
        ++v3;
      }
    }

    while (v1 != v2);
    if (v3)
    {
      return (*(**(this + 40) + 72))(*(this + 40), 3);
    }
  }

  return this;
}

uint64_t ULScanService::resumeHomeSlamMotionProfile(uint64_t this)
{
  v1 = *(this + 176);
  v2 = *(this + 184);
  if (v1 != v2)
  {
    v3 = 0;
    do
    {
      v4 = *v1++;
      if (v4 == 3)
      {
        ++v3;
      }
    }

    while (v1 != v2);
    if (v3)
    {
      return (*(**(this + 40) + 80))(*(this + 40), 3);
    }
  }

  return this;
}

uint64_t *std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
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

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_88()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_0()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

uint64_t *std::vector<ULScanningServiceAnalyticsDO>::__init_with_size[abi:ne200100]<ULScanningServiceAnalyticsDO const*,ULScanningServiceAnalyticsDO const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25911CAA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::for_each[abi:ne200100]<std::__wrap_iter<ULWiFiChannelHistogram const*>,ULScanParameters::wifiChannelHistogramToString(void)::{lambda(std::__wrap_iter<ULWiFiChannelHistogram const*> const&)#1}>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "channel: ", 9);
      v7 = MEMORY[0x259CA1DC0](v6, *v5);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " count: ", 8);
      v9 = MEMORY[0x259CA1DC0](v8, v5[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      v5 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

id scanProfileToScanType(uint64_t a1, uint64_t a2)
{
  if (a1 < 4)
  {
    return ((0x1000000010000uLL >> (16 * a1)) & 1);
  }

  scanProfileToScanType(a1);
  return _CLLogObjectForCategory_MicroLocation_Default(v3);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_89()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULScanSchedulingSettings::ULScanSchedulingSettings(ULScanSchedulingSettings *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 0;
}

void ULScanSchedulingSettings::ULScanSchedulingSettings(ULScanSchedulingSettings *this, char a2, char a3, char a4, double a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 1) = a5;
}

void ULSchedulingProfile::ULSchedulingProfile(ULSchedulingProfile *this)
{
  *this = -1;
  *(this + 8) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 3) = 0;
}

uint64_t ULSchedulingProfile::ULSchedulingProfile(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  return result;
}

uint64_t ULSchedulingProfile::hasMotionSettingsEnabled(ULSchedulingProfile *this)
{
  if (*(this + 16) & 1) != 0 || (*(this + 17))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 18);
  }

  return v1 & 1;
}

uint64_t ULSchedulingProfileManager::ULSchedulingProfileManager(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *a1 = 0;
  *(a1 + 8) = a2;
  do
  {
    *(a1 + v3 + 16) = 0;
    ULSchedulingProfile::ULSchedulingProfile((a1 + v3 + 24));
    v3 += 40;
  }

  while (v3 != 800);
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  return a1;
}

BOOL ULSchedulingProfileManager::addProfile(ULSchedulingProfileManager *this, const ULSchedulingProfile *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  ULHomeSlamModel::getTrajectoryPointCloud(a2);
  v5 = *v4;
  v6 = *(a2 + 1);
  *v17 = *a2;
  *&v17[16] = v6;
  v7 = ULStaticMap<int,ULSchedulingProfile,20ul>::updateOrInsert(this + 16, v5, v17);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSchedulingProfileManager::addProfile();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ULHomeSlamModel::getTrajectoryPointCloud(a2);
    v10 = *v9;
    *v17 = 68289794;
    *&v17[8] = 2082;
    *&v17[10] = "";
    *&v17[18] = 2082;
    *&v17[20] = "addProfile";
    *&v17[28] = 1026;
    *&v17[30] = v7 != 2;
    v18 = 1026;
    v19 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add scheduling profile, method:%{public, location:escape_only}s, added:%{public}hhd, index:%{public}d}", v17, 0x28u);
  }

  if (v7 != 2)
  {
    if (ULSchedulingProfile::hasMotionSettingsEnabled(a2))
    {
      if (!(*this)++)
      {
        (*(**(this + 1) + 16))(*(this + 1));
      }
    }

    if (ULSchedulingProfile::hasPeriodicTriggerEnabled(a2))
    {
      v12 = *(this + 1);
      ULHomeSlamModel::getTrajectoryPointCloud(a2);
      v14 = v13;
      SchedulingSettings = ULSchedulingProfile::getSchedulingSettings(a2);
      (*(*v12 + 32))(v12, v14, *(SchedulingSettings + 8));
    }
  }

  return v7 != 2;
}

uint64_t ULStaticMap<int,ULSchedulingProfile,20ul>::updateOrInsert(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = *(a1 + 800);
  if (v3)
  {
    v4 = (a1 + 8);
    v5 = *(a1 + 800);
    do
    {
      if (*(v4 - 2) == a2)
      {
        result = 0;
        v10 = a3[1];
        *v4 = *a3;
        v4[1] = v10;
        return result;
      }

      v4 = (v4 + 40);
      --v5;
    }

    while (v5);
    if (v3 <= 0x13)
    {
      goto LABEL_6;
    }

    return 2;
  }

  else
  {
LABEL_6:
    v7 = *a3;
    v6 = a3[1];
    *(a1 + 800) = v3 + 1;
    v8 = a1 + 40 * v3;
    *v8 = a2;
    *(v8 + 8) = v7;
    *(v8 + 24) = v6;
    return 1;
  }
}

BOOL ULSchedulingProfileManager::removeProfile(ULSchedulingProfileManager *this, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v3 = *(this + 102);
  if (!v3)
  {
LABEL_5:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v6 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "removeProfile";
    *&buf[28] = 1026;
    *&buf[30] = a2;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove scheduling profile, but profile hasn't been added, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
    return 0;
  }

  v5 = (this + 24);
  while (*(v5 - 2) != a2)
  {
    v5 = (v5 + 40);
    if (!--v3)
    {
      goto LABEL_5;
    }
  }

  v8 = v5[1];
  *buf = *v5;
  *&buf[16] = v8;
  buf[32] = 1;
  v9 = ULStaticMap<int,ULSchedulingProfile,20ul>::erase(this + 16, &v12);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSchedulingProfileManager::addProfile();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "removeProfile";
    v19 = 1026;
    v20 = v9;
    v21 = 1026;
    v22 = v12;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove scheduling profile, method:%{public, location:escape_only}s, removed:%{public}hhd, index:%{public}d}", v13, 0x28u);
  }

  if (!v9)
  {
    return 0;
  }

  if (ULSchedulingProfile::hasMotionSettingsEnabled(buf))
  {
    if ((*this)-- == 1)
    {
      (*(**(this + 1) + 24))(*(this + 1));
    }
  }

  if (ULSchedulingProfile::hasPeriodicTriggerEnabled(buf))
  {
    (*(**(this + 1) + 40))(*(this + 1));
  }

  return 1;
}

BOOL ULStaticMap<int,ULSchedulingProfile,20ul>::erase(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 800);
  if (!v2)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    v3 = 0;
    v5 = (a1 + 40);
    while (v2 - 1 != v3)
    {
      v6 = *v5;
      v5 += 10;
      ++v3;
      if (v6 == *a2)
      {
        v4 = v3 < v2;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v3 = 0;
  v4 = 1;
LABEL_8:
  v7 = v2 - 1;
  if (v3 < v2 - 1)
  {
    v8 = ~v3 + v2;
    v9 = (a1 + 40 * v3 + 48);
    do
    {
      *(v9 - 12) = *(v9 - 2);
      v10 = v9[1];
      *(v9 - 40) = *v9;
      *(v9 - 24) = v10;
      v9 = (v9 + 40);
      --v8;
    }

    while (v8);
  }

  *(a1 + 800) = v7;
  return v4;
}

uint64_t ULSchedulingProfileManager::suspendProfile(ULSchedulingProfileManager *this, uint64_t a2)
{
  if (a2 >= 0x14)
  {
    ULSchedulingProfileManager::suspendProfile(a2);
    return ULSchedulingProfileManager::resumeProfile(v3, v4);
  }

  else
  {
    *(this + a2 + 824) = 1;
    return 1;
  }
}

ULSchedulingProfile *ULSchedulingProfileManager::resumeProfile(ULSchedulingProfileManager *this, uint64_t a2)
{
  if (a2 >= 0x14)
  {
    ULSchedulingProfileManager::resumeProfile(a2);
    return ULSchedulingProfileManager::getProfilesWithScanOnStartMotion(v3, v4);
  }

  else
  {
    *(this + a2 + 824) = 0;
    return 1;
  }
}

ULSchedulingProfile *ULSchedulingProfileManager::getProfilesWithScanOnStartMotion@<X0>(ULSchedulingProfileManager *this@<X0>, ULSchedulingProfile *a2@<X8>)
{
  v4 = 640;
  result = a2;
  do
  {
    ULSchedulingProfile::ULSchedulingProfile(result);
    result = (v6 + 32);
    v4 -= 32;
  }

  while (v4);
  *(a2 + 80) = 0;
  if (*(this + 102))
  {
    v7 = (this + 24);
    do
    {
      result = ULSchedulingProfile::getSchedulingSettings(v7);
      if (*result == 1)
      {
        v8 = *(a2 + 80);
        if (v8 <= 0x13)
        {
          *(a2 + 80) = v8 + 1;
          v9 = (a2 + 32 * v8);
          v10 = v7[1];
          *v9 = *v7;
          *(v9 + 1) = v10;
        }
      }

      v11 = (v7 + 2);
      v7 = (v7 + 40);
    }

    while (v11 != (this + 40 * *(this + 102) + 16));
  }

  return result;
}

ULSchedulingProfile *ULSchedulingProfileManager::getProfilesWithScanOnInMotion@<X0>(ULSchedulingProfileManager *this@<X0>, ULSchedulingProfile *a2@<X8>)
{
  v4 = 640;
  result = a2;
  do
  {
    ULSchedulingProfile::ULSchedulingProfile(result);
    result = (v6 + 32);
    v4 -= 32;
  }

  while (v4);
  *(a2 + 80) = 0;
  if (*(this + 102))
  {
    v7 = (this + 24);
    do
    {
      result = ULSchedulingProfile::getSchedulingSettings(v7);
      if (*(result + 1) == 1)
      {
        v8 = *(a2 + 80);
        if (v8 <= 0x13)
        {
          *(a2 + 80) = v8 + 1;
          v9 = (a2 + 32 * v8);
          v10 = v7[1];
          *v9 = *v7;
          *(v9 + 1) = v10;
        }
      }

      v11 = (v7 + 2);
      v7 = (v7 + 40);
    }

    while (v11 != (this + 40 * *(this + 102) + 16));
  }

  return result;
}

ULSchedulingProfile *ULSchedulingProfileManager::getProfilesWithScanOnStopMotion@<X0>(ULSchedulingProfileManager *this@<X0>, ULSchedulingProfile *a2@<X8>)
{
  v4 = 640;
  result = a2;
  do
  {
    ULSchedulingProfile::ULSchedulingProfile(result);
    result = (v6 + 32);
    v4 -= 32;
  }

  while (v4);
  *(a2 + 80) = 0;
  if (*(this + 102))
  {
    v7 = (this + 24);
    do
    {
      result = ULSchedulingProfile::getSchedulingSettings(v7);
      if (*(result + 2) == 1)
      {
        v8 = *(a2 + 80);
        if (v8 <= 0x13)
        {
          *(a2 + 80) = v8 + 1;
          v9 = (a2 + 32 * v8);
          v10 = v7[1];
          *v9 = *v7;
          *(v9 + 1) = v10;
        }
      }

      v11 = (v7 + 2);
      v7 = (v7 + 40);
    }

    while (v11 != (this + 40 * *(this + 102) + 16));
  }

  return result;
}

uint64_t ULSchedulingProfileManager::schedulingProfileByIndex@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 816);
  if (v3)
  {
    v4 = (this + 24);
    while (*(v4 - 2) != a2)
    {
      v4 = (v4 + 40);
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v6;
    v5 = 1;
  }

  else
  {
LABEL_5:
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 32) = v5;
  return this;
}

uint64_t ULSchedulingProfileManager::activeMotionProfileExists(ULSchedulingProfileManager *this)
{
  if (!*(this + 102))
  {
    return 0;
  }

  v2 = this + 16;
  for (i = (this + 24); ; i = (i + 40))
  {
    SchedulingSettings = ULSchedulingProfile::getSchedulingSettings(i);
    v5 = SchedulingSettings[2];
    v6 = SchedulingSettings[1];
    v7 = *SchedulingSettings;
    ULHomeSlamModel::getTrajectoryPointCloud(i);
    if ((v5 & 1) != 0 || (v6 & 1) != 0 || (v7) && !ULSchedulingProfileManager::isProfileSuspended(this, *v8))
    {
      break;
    }

    v9 = i + 32;
    if (v9 == &v2[40 * *(this + 102)])
    {
      return 0;
    }
  }

  return 1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_90()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_signpost_emit_with_name_impl(a1, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x3Au);
}

void OUTLINED_FUNCTION_2_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_INFO, a4, va, 0x3Au);
}

void OUTLINED_FUNCTION_3_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x3Au);
}

uint64_t ULSensorsDataHandler::ULSensorsDataHandler(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  *a1 = &unk_286A5A718;
  *(a1 + 8) = &unk_286A5A7B0;
  *(a1 + 16) = &unk_286A5A7E8;
  *(a1 + 24) = &unk_286A5A810;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWiFiMeasBufferSize"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 unsignedLongValue];
  }

  else
  {
    v7 = [&unk_286A71EB0 unsignedLongValue];
  }

  v8 = v7;

  std::string::basic_string[abi:ne200100]<0>(&__p, "WiFi ScanBuffer");
  CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::CLEventsBuffer(a1 + 48, v8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbRangeBufferSize"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 unsignedLongValue];
  }

  else
  {
    v13 = [&unk_286A71EB0 unsignedLongValue];
  }

  v14 = v13;

  std::string::basic_string[abi:ne200100]<0>(&__str, "UWB ScanBuffer");
  CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::CLEventsBuffer(a1 + 112, v14, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v15 = +[ULDefaultsSingleton shared];
  v16 = [v15 defaultsDictionary];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleScanBufferSize"];
  v18 = [v16 objectForKey:v17];
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = [v18 unsignedLongValue];
  }

  else
  {
    v19 = [&unk_286A71EF8 unsignedLongValue];
  }

  v20 = v19;

  std::string::basic_string[abi:ne200100]<0>(&v23, "BLE Scan Buffer");
  CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::CLEventsBuffer(a1 + 176, v20, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 308) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 344) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  v21 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = "ULSensorsDataHandler";
    _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sensors Data Handler Initialization, method:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  return a1;
}

void sub_25911DBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::~CLEventsBuffer(v27 + 112);
  CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::~CLEventsBuffer(v27 + 48);
  v32 = *(v27 + 40);
  *(v27 + 40) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSensorsDataHandler::setDependencies(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 40);
  *(a1 + 40) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ULSensorsDataHandler::configureValidChannelsForScanProfile(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v7 = a3;
  std::unordered_set<ULWiFiScanChannel>::unordered_set<std::__wrap_iter<ULWiFiScanChannel const*>>(v6, *a2, a2[1]);
  v8 = &v7;
  v4 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 240), &v7, &std::piecewise_construct, &v8);
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v4 + 3), v6);
  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v6);
}

void sub_25911DDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ULSensorsDataHandler::clearScanBuffers(ULSensorsDataHandler *this)
{
  v1 = this;
  v10 = *MEMORY[0x277D85DE8];
  v2 = (this + 64);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 56, *(this + 8));
  *(v1 + 7) = v2;
  *(v1 + 9) = 0;
  *v2 = 0;
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v1 + 184, *(v1 + 24));
  *(v1 + 23) = v1 + 192;
  *(v1 + 24) = 0;
  v3 = *(v1 + 16);
  v1 = (v1 + 128);
  *(v1 + 9) = 0;
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v1 - 8, v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "clearScanBuffers";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sensors Data Handler cleared all scan buffers, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }
}

uint64_t ULSensorsDataHandler::onBleRssiMeasurement(uint64_t a1, double *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleScanMaximalAgeForValidity"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 doubleValue];
  }

  else
  {
    [&unk_286A71E98 doubleValue];
  }

  v9 = v8;

  v12 = v9;
  result = ULMeasurementFilters::isValidMeasurement(a2, a2, &v12);
  if (result)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "onBleRssiMeasurement";
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Got BLE Measurements, method:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    std::__tree<ULBLEMeasurementDO,CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::EventsComparator,std::allocator<ULBLEMeasurementDO>>::__emplace_multi<ULBLEMeasurementDO const&>(a1 + 184, a2);
  }

  return result;
}

void ULSensorsDataHandler::onUwbRangeMeasurements(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = ULSettings::get<ULSettings::UwbRangeMaximalAgeForValidityFromScanStart>();
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a2[1] - *a2) >> 5;
    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "onUwbRangeMeasurements";
    v22 = 1026;
    LODWORD(v23) = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Got UWB Measurements, method:%{public, location:escape_only}s, count::%{public}d}", buf, 0x22u);
  }

  ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(a2, &v15);
  CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::ingestEvents(a1 + 112, a2);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      if (*(v6 + 12))
      {
        goto LABEL_7;
      }

      v8 = 13;
      do
      {
        if (v8 == 28)
        {
          goto LABEL_12;
        }
      }

      while (!*(v6 + v8++));
      if ((v8 - 14) <= 0xE)
      {
LABEL_7:
        operator new();
      }

LABEL_12:
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      if (onceToken_MicroLocationQE_Default != -1)
      {
        ULSensorsDataHandler::onUwbRangeMeasurements();
      }

      v10 = logObject_MicroLocationQE_Default;
      if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(v6 + 8);
        p_p = &__p;
        if (v14 < 0)
        {
          p_p = __p;
        }

        *buf = 68289539;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2050;
        v21 = *&v11;
        v22 = 2081;
        v23 = p_p;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Ingested UWB range measurement, range:%{public}.3f, device ID:%{private, location:escape_only}s}", buf, 0x26u);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p);
      }

      v6 += 32;
    }

    while (v6 != v7);
  }
}

double ULSettings::get<ULSettings::UwbRangeMaximalAgeForValidityFromScanStart>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbRangeMaximalAgeForValidityFromScanStart"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72DB0 doubleValue];
  }

  v5 = v4;

  return v5;
}

uint64_t *CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::ingestEvents(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5[0] = (a1 + 8);
  v5[1] = (a1 + 16);
  if (v2 != v3)
  {
    std::insert_iterator<std::multiset<ULUWBMeasurementDO,CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::EventsComparator,std::allocator<ULUWBMeasurementDO>>>::operator=[abi:ne200100](v5, v2);
  }

  return CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::truncateBuffer(a1);
}

uint64_t ULSensorsDataHandler::onWiFiRssiMeasurements(uint64_t a1, uint64_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default == -1)
  {
    v2 = a2;
    v3 = a1;
  }

  else
  {
    _CLLogObjectForCategory_MicroLocation_Default();
    v3 = a1;
    v2 = a2;
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v2[1] - *v2) >> 5;
    *buf = 68289538;
    *&buf[4] = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    *v30 = "onWiFiRssiMeasurements";
    *&v30[8] = 1026;
    *&v30[10] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Got WiFi Measurements, method:%{public, location:escape_only}s, count::%{public}d}", buf, 0x22u);
  }

  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  *buf = *(v3 + 304);
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>((v3 + 240), buf);
  if (v6)
  {
    if (v23 != (v6 + 3))
    {
      v24 = *(v6 + 14);
      std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<ULWiFiScanChannel,void *> *>>(v23, v6[5], 0);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
      v3 = a1;
      v2 = a2;
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = *(v3 + 304);
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      *v30 = "onWiFiRssiMeasurements";
      *&v30[8] = 1026;
      *&v30[10] = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Valid channels not initialized for scan profile, method:%{public, location:escape_only}s, index::%{public}d}", buf, 0x22u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
      v3 = a1;
      v2 = a2;
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = *(v3 + 304);
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      *v30 = "onWiFiRssiMeasurements";
      *&v30[8] = 1026;
      *&v30[10] = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Valid channels not initialized for scan profile", "{msg%{public}.0s:Valid channels not initialized for scan profile, method:%{public, location:escape_only}s, index::%{public}d}", buf, 0x22u);
    }
  }

  ULMeasurementFilters::filterInvalidChannelMeasurements(v2, v23);
  *buf = 0x7FEFFFFFFFFFFFFFLL;
  ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(v2, buf);
  *buf = *(v3 + 296);
  ULMeasurementFilters::filterDuplicateAPs(buf, v2, v3 + 48);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v11 = a2[1];
    if (*a2 != v11)
    {
      v12 = *a2 + 16;
      do
      {
        if (onceToken_MicroLocationQE_Default != -1)
        {
          ULSensorsDataHandler::onUwbRangeMeasurements();
        }

        v13 = logObject_MicroLocationQE_Default;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(v12 - 8);
          CLMacAddress::toPrettyStr(v12, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v16 = *(v12 + 8);
          isInvalidRssiFlag = ULMeasurementFilters::isInvalidRssiFlag(*(v12 + 12));
          isRssiOffChannel = ULMeasurementFilters::isRssiOffChannel(*(v12 + 12));
          *buf = 68290307;
          *&buf[4] = 0;
          v27 = 2082;
          v28 = "";
          v29 = 1025;
          *v30 = v14;
          *&v30[4] = 2081;
          *&v30[6] = p_p;
          v31 = 1025;
          v32 = v16;
          v33 = 1025;
          v34 = isInvalidRssiFlag;
          v35 = 1025;
          v36 = isRssiOffChannel;
          _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Wifi AP received, rssi:%{private}d, mac:%{private, location:escape_only}s, channel:%{private}d, isRssiInvalid:%{private}d, isRssiOffChannel:%{private}d}", buf, 0x34u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v19 = v12 + 16;
        v12 += 32;
      }

      while (v19 != v11);
    }
  }

  CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::ingestEvents(a1 + 48, a2);
  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v23);
}

uint64_t *CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::ingestEvents(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5[0] = (a1 + 8);
  v5[1] = (a1 + 16);
  if (v2 != v3)
  {
    std::insert_iterator<std::multiset<ULWiFiMeasurementDO,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::EventsComparator,std::allocator<ULWiFiMeasurementDO>>>::operator=[abi:ne200100](v5, v2);
  }

  return CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::truncateBuffer(a1);
}

void ULSensorsDataHandler::onScanComplete(uint64_t a1, int a2, void ***a3, void *a4)
{
  v67[10] = *MEMORY[0x277D85DE8];
  v33 = a4;
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbRangeLocalizationMinValidSessionTime"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 intValue];
  }

  else
  {
    v10 = [&unk_286A71EC8 intValue];
  }

  v11 = v10;

  v14 = cl::chrono::CFAbsoluteTimeClock::now() - *(a1 + 344) < v11 / 1000.0 || *(a1 + 336) != 0;
  ULPowerLog::logMetrics(@"ScanEvent", v33, v12);
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *a3;
    *buf = 68290050;
    *&buf[4] = 0;
    v52 = 2082;
    *v53 = "";
    *&v53[8] = 2082;
    *&v53[10] = "onScanComplete";
    v54 = 2050;
    v55 = v16;
    v56 = 1026;
    v57 = v14;
    v58 = 1026;
    v59 = a2;
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Scan Complete, method:%{public, location:escape_only}s, timestamp::%{public}.5f, isUWBSuspended::%{public}hhd, ScanResultCode::%{public}d}", buf, 0x32u);
  }

  v32 = a3;
  v18 = *(a1 + 312);
  for (i = *(a1 + 320); v18 != i; v18 = (v18 + 40))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      ULScanningTrigger::description(v18, __p);
      v20 = v50 >= 0 ? __p : __p[0];
      *buf = 68289538;
      *&buf[4] = 0;
      v52 = 2082;
      *v53 = "";
      *&v53[8] = 2082;
      *&v53[10] = "onScanComplete";
      v54 = 2082;
      v55 = v20;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:With Triggers, method:%{public, location:escape_only}s, trigger:%{public, location:escape_only}s}", buf, 0x26u);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ULSensorsDataHandler::fetchWifiMeasurements(a1, v32, v46);
  ULSensorsDataHandler::fetchBleMeasurements(a1, v32, v45);
  ULSensorsDataHandler::fetchUwbMeasurements(a1, v32, v44);
  memset(v43, 0, sizeof(v43));
  v21 = (*(**(a1 + 32) + 56))(*(a1 + 32));
  if (((*(**(a1 + 32) + 48))(*(a1 + 32)) & 1) == 0)
  {
    v21 &= (*(**(a1 + 32) + 64))(*(a1 + 32));
  }

  memset(v42, 0, sizeof(v42));
  v22 = +[ULMagnetometerProvider sharedInstance];
  v23 = v22;
  if (v22)
  {
    objc_msgSend_fetchMagnetometerData(v22);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  {
    v25 = TopPriorityScanningTrigger;
    if ((TopPriorityScanningTrigger & 0x10000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    v25 = 7;
  }

  LOWORD(__p[0]) = scanProfileToScanType(*(a1 + 304), v24);
  *buf = *(a1 + 296);
  ULScanningServiceAnalyticsDO::ULScanningServiceAnalyticsDO(v40, __p, v25, 2, a2, buf);
  v39 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v39);
  *&v48 = boost::uuids::random_generator_pure::operator()(&v39);
  *(&v48 + 1) = v27;
  v28 = [MEMORY[0x277D28868] deviceClass];
  v29 = v28;
  std::string::basic_string[abi:ne200100]<0>(__p, [v28 UTF8String]);
  v38 = scanProfileToScanType(*(a1 + 304), v30);
  v37 = *(a1 + 296);
  v36 = *(a1 + 288);
  v47 = 0uLL;
  (*(**(a1 + 40) + 16))(v35);
  ULScanningEventDO::ULScanningEventDO(buf, &v48, __p, &v38, &v37, a2, v14, v21 ^ 1, 0, &v36, v43, v46, v45, v44, &v47, v35, v42, v41);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  boost::uuids::detail::random_provider_base::destroy(&v39);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  v31 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), buf);
  (*(**(a1 + 32) + 24))(*(a1 + 32), v40);
  *(a1 + 308) = 0;
  *(a1 + 304) = 5;
  *(a1 + 320) = *(a1 + 312);
  __p[0] = v67;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  __p[0] = &v60;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(*&v53[6]);
  }

  *buf = v42;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = v43;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }
}

void sub_25911F434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, void *a54, uint64_t a55, void *a56, void *a57, uint64_t a58, void *a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  ULScanningEventDO::~ULScanningEventDO(&STACK[0x250]);
  STACK[0x250] = &a47;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  STACK[0x250] = &a50;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

void ULSensorsDataHandler::fetchWifiMeasurements(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = 0;
  v6 = *(a1 + 296);
  v7 = +[ULDefaultsSingleton shared];
  v8 = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumAgeForValidity"];
  v10 = [v8 objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v10 doubleValue];
  }

  else
  {
    [&unk_286A71E98 doubleValue];
  }

  v12 = v11;

  v15 = v6 - v12;
  __p[0] = *a2;
  CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getEvents(a1 + 48, &v15, __p, &v16, a3);
  if (v16 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "WiFi Scan buffer overflow");
    CLMicroLocationErrorHandling::reportError(__p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void ULSensorsDataHandler::fetchBleMeasurements(uint64_t a1@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v28 = cl::chrono::CFAbsoluteTimeClock::now();
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleScanMaximalAgeForValidityFromScanStart"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A71E98 doubleValue];
  }

  v10 = v9;

  *buf = v10;
  EarliestAllowedTime = ULSensorsDataHandler::getEarliestAllowedTime(a1, &v28, buf);
  *buf = *a2;
  CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::getEvents(a1 + 176, &EarliestAllowedTime, buf, &v29, a3);
  ULMeasurementFilters::removeDuplicates<ULBLEMeasurementDO>(a3);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a3;
    v12 = a3[1];
    if (*a3 != v12)
    {
      do
      {
        if (*(v11 + 12))
        {
          goto LABEL_10;
        }

        v13 = 13;
        do
        {
          if (v13 == 28)
          {
            goto LABEL_15;
          }
        }

        while (!*(v11 + v13++));
        if ((v13 - 14) <= 0xE)
        {
LABEL_10:
          operator new();
        }

LABEL_15:
        std::string::basic_string[abi:ne200100]<0>(&v25, "not available");
        if (onceToken_MicroLocationQE_Default != -1)
        {
          ULSensorsDataHandler::onUwbRangeMeasurements();
        }

        v15 = logObject_MicroLocationQE_Default;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          if (v26 >= 0)
          {
            v16 = &v25;
          }

          else
          {
            v16 = v25;
          }

          v17 = *(v11 + 28);
          v18 = "";
          if (v17 <= 3)
          {
            v18 = off_2798D4CE0[v17];
          }

          v19 = *(v11 + 8);
          std::string::basic_string[abi:ne200100]<0>(__p, v18);
          v20 = __p;
          if (v24 < 0)
          {
            v20 = __p[0];
          }

          v21 = *v11;
          *buf = 68290051;
          *&buf[4] = 0;
          v31 = 2082;
          v32 = "";
          v33 = 1025;
          v34 = v19;
          v35 = 2081;
          v36 = v16;
          v37 = 2081;
          v38 = v20;
          v39 = 2050;
          v40 = v21;
          _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:BLE cached scan, rssi:%{private}d, uuid:%{private, location:escape_only}s, model:%{private, location:escape_only}s, time_s:%{public}.09f}", buf, 0x36u);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        v11 += 32;
      }

      while (v11 != v12);
    }
  }

  if (v29 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "BLE spyscan buffer overflow");
    CLMicroLocationErrorHandling::reportError(buf);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(*buf);
    }
  }
}

void ULSensorsDataHandler::fetchUwbMeasurements(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v20 = cl::chrono::CFAbsoluteTimeClock::now();
  *__p = ULSettings::get<ULSettings::UwbRangeMaximalAgeForValidityFromScanStart>();
  EarliestAllowedTime = ULSensorsDataHandler::getEarliestAllowedTime(a1, &v20, __p);
  *__p = *a2;
  CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::getEvents(a1 + 112, &EarliestAllowedTime, __p, &v21, a3);
  if (v21 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "UWB range buffer overflow");
    CLMicroLocationErrorHandling::reportError(__p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(*__p);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v7 = (a3[1] - *a3) >> 5;
    *__p = 134349056;
    *&__p[4] = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEBUG, "uwb cached scan, read %{public}lu measurements", __p, 0xCu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*a3 != v9)
    {
      v10 = 0;
      do
      {
        if (*(v8 + 12))
        {
          goto LABEL_14;
        }

        v11 = 13;
        do
        {
          if (v11 == 28)
          {
            goto LABEL_19;
          }
        }

        while (!*(v8 + v11++));
        if ((v11 - 14) <= 0xE)
        {
LABEL_14:
          operator new();
        }

LABEL_19:
        std::string::basic_string[abi:ne200100]<0>(&v17, "not available");
        if (onceToken_MicroLocationQE_Default != -1)
        {
          ULSensorsDataHandler::onUwbRangeMeasurements();
        }

        v13 = logObject_MicroLocationQE_Default;
        if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEBUG))
        {
          v14 = &v17;
          if (v18 < 0)
          {
            v14 = v17;
          }

          v15 = *(v8 + 8);
          v16 = v20 - *v8;
          *__p = 134218755;
          *&__p[4] = v10;
          v23 = 2081;
          v24 = v14;
          v25 = 2049;
          v26 = v15;
          v27 = 2050;
          v28 = v16;
          _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEBUG, "meas index: %zu, deviceId: %{private}s, range: %{private}f, age: %{public}f", __p, 0x2Au);
          ++v10;
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17);
        }

        v8 += 32;
      }

      while (v8 != v9);
    }
  }
}

void sub_25911FEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::getTopPriorityScanningTrigger(uint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a1 == a1[1])
  {
    return 0;
  }

  v12 = xmmword_25921FB3C;
  v13 = *algn_25921FB4C;
  v14 = xmmword_25921FB5C;
  v15 = unk_25921FB6C;
  std::map<ULTriggerType,int>::map[abi:ne200100](v10, &v12, 8);
  v9 = 7;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v7 = 65543;
  }

  else
  {
    do
    {
      v4 = *v2;
      v5 = *(v2 + 16);
      *&v14 = *(v2 + 32);
      v12 = v4;
      v13 = v5;
      v11 = &v12 + 4;
      v6 = *(std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__emplace_unique_key_args<ULTriggerType,std::piecewise_construct_t const&,std::tuple<ULTriggerType const&>,std::tuple<>>(v10, &v12 + 4, &std::piecewise_construct, &v11) + 8);
      v11 = &v9;
      if (v6 < *(std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__emplace_unique_key_args<ULTriggerType,std::piecewise_construct_t const&,std::tuple<ULTriggerType const&>,std::tuple<>>(v10, &v9, &std::piecewise_construct, &v11) + 8))
      {
        v9 = WORD4(v12);
      }

      v2 += 40;
    }

    while (v2 != v3);
    v7 = v9 | 0x10000u;
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v10, v10[1]);
  return v7;
}

uint64_t ULSensorsDataHandler::onWiFiAssociatedStateChange(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v4 = *(a1 + 32);
  v6 = *a4;
  v7 = *(a4 + 2);
  return (*(*v4 + 40))(v4, a2, a3, &v6);
}

uint64_t non-virtual thunk toULSensorsDataHandler::onWiFiAssociatedStateChange(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v4 = *(a1 + 16);
  v6 = *a4;
  v7 = *(a4 + 2);
  return (*(*v4 + 40))(v4, a2, a3, &v6);
}

uint64_t ULSensorsDataHandler::onMotionEvent(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "onMotionEvent";
    v11 = 1026;
    v12 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Motion event, method:%{public, location:escape_only}s, MotionState::%{public}d}", v6, 0x22u);
  }

  *(a1 + 288) = a2;
  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
}

void ULSensorsDataHandler::appendScanTrigger(ULSensorsDataHandler *this, const ULScanningTrigger *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ULScanningTrigger::description(a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "appendScanTrigger";
    v14 = 2082;
    v15 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:append trigger, method:%{public, location:escape_only}s, description::%{public, location:escape_only}s}", buf, 0x26u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ULSensorsDataHandler::State::addTriggerToScan((this + 280), a2);
}

uint64_t ULSensorsDataHandler::startMotionDetected(ULSensorsDataHandler *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "startMotionDetected";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Start motion detected, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(*this + 56))(this, 1);
}

uint64_t ULSensorsDataHandler::stopMotionDetected(ULSensorsDataHandler *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "stopMotionDetected";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Stop motion detected, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(*this + 56))(this, 3);
}

uint64_t ULSensorsDataHandler::ongoingMotionDetected(ULSensorsDataHandler *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "ongoingMotionDetected";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Ongoing motion detected, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(*this + 56))(this, 2);
}

uint64_t ULSensorsDataHandler::resumedInMotionDetected(ULSensorsDataHandler *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "resumedInMotionDetected";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Resumed InMotion detected, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(*this + 56))(this, 2);
}

double ULSensorsDataHandler::getEarliestAllowedTime(uint64_t a1, double *a2, double *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 296);
  v7 = *a2;
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULScanDurationThreshold"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v11 doubleValue];
  }

  else
  {
    [&unk_286A71EE0 doubleValue];
  }

  v13 = v12;
  v14 = v7 - v6;

  if (v14 >= v13)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v20 = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = v14;
      v26 = 2050;
      v27 = v13;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Scan duration is exceeded threshold, duration:%{public}.5f, threshold:%{public}.5f}", &v20, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
    }

    v17 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v20 = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = v14;
      v26 = 2050;
      v27 = v13;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Scan duration is exceeded threshold", "{msg%{public}.0s:Scan duration is exceeded threshold, duration:%{public}.5f, threshold:%{public}.5f}", &v20, 0x26u);
    }

    v15 = *a2 - v13;
  }

  else
  {
    v15 = *(a1 + 296) - *a3;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  v18 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = v14;
    v26 = 2050;
    v27 = v13;
    v28 = 2050;
    v29 = v15;
    _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:getEarliestAllowedTime, , duration:%{public}.5f, threshold:%{public}.5f, earliestAllowedTime:%{public}.5f}", &v20, 0x30u);
  }

  return v15;
}

void CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getEvents(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*a2 <= *a3)
  {
    *a4 = 0;
    v16 = *(a1 + 8);
    *buf = v25;
    v25[1] = 0;
    if (v16 == (a1 + 16))
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = v16;
      do
      {
        v19 = *(v18 + 1);
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = *(v18 + 2);
            v21 = *v20 == v18;
            v18 = v20;
          }

          while (!v21);
        }

        ++v17;
        v18 = v20;
      }

      while (v20 != (a1 + 16));
    }

    v22 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(v16, a2, v17);
    v23 = *(a1 + 8);
    *buf = v25;
    v24 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getEvents(double const&,double const&,BOOL &)::{lambda(double const&,std::_ClassicAlgPolicy const&)#1},std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity>(v23, (a1 + 16), a3);
    if (*(a1 + 8) == v22 && *(a1 + 56) == 1)
    {
      *a4 = 1;
    }

    std::vector<ULWiFiMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,0>(a5, v22, v24);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      v30 = v9;
      v31 = 1026;
      v32 = v10;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error - events buffer getEvents with invalid timestamps, earliestAllowedTime:%{public}d, latestAllowedTime:%{public}d}", buf, 0x1Eu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v12 = *a2;
      v13 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      v30 = v12;
      v31 = 1026;
      v32 = v13;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error - events buffer getEvents with invalid timestamps", "{msg%{public}.0s:Error - events buffer getEvents with invalid timestamps, earliestAllowedTime:%{public}d, latestAllowedTime:%{public}d}", buf, 0x1Eu);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::getEvents(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*a2 <= *a3)
  {
    *a4 = 0;
    v16 = *(a1 + 8);
    *buf = v25;
    v25[1] = 0;
    if (v16 == (a1 + 16))
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = v16;
      do
      {
        v19 = *(v18 + 1);
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = *(v18 + 2);
            v21 = *v20 == v18;
            v18 = v20;
          }

          while (!v21);
        }

        ++v17;
        v18 = v20;
      }

      while (v20 != (a1 + 16));
    }

    v22 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(v16, a2, v17);
    v23 = *(a1 + 8);
    *buf = v25;
    v24 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getEvents(double const&,double const&,BOOL &)::{lambda(double const&,std::_ClassicAlgPolicy const&)#1},std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity>(v23, (a1 + 16), a3);
    if (*(a1 + 8) == v22 && *(a1 + 56) == 1)
    {
      *a4 = 1;
    }

    std::vector<ULUWBMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULUWBMeasurementDO,std::__tree_node<ULUWBMeasurementDO,void *> *,long>,0>(a5, v22, v24);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      v30 = v9;
      v31 = 1026;
      v32 = v10;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error - events buffer getEvents with invalid timestamps, earliestAllowedTime:%{public}d, latestAllowedTime:%{public}d}", buf, 0x1Eu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v12 = *a2;
      v13 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      v30 = v12;
      v31 = 1026;
      v32 = v13;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error - events buffer getEvents with invalid timestamps", "{msg%{public}.0s:Error - events buffer getEvents with invalid timestamps, earliestAllowedTime:%{public}d, latestAllowedTime:%{public}d}", buf, 0x1Eu);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::getEvents(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*a2 <= *a3)
  {
    *a4 = 0;
    v16 = *(a1 + 8);
    *buf = v25;
    v25[1] = 0;
    if (v16 == (a1 + 16))
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = v16;
      do
      {
        v19 = *(v18 + 1);
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = *(v18 + 2);
            v21 = *v20 == v18;
            v18 = v20;
          }

          while (!v21);
        }

        ++v17;
        v18 = v20;
      }

      while (v20 != (a1 + 16));
    }

    v22 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(v16, a2, v17);
    v23 = *(a1 + 8);
    *buf = v25;
    v24 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getEvents(double const&,double const&,BOOL &)::{lambda(double const&,std::_ClassicAlgPolicy const&)#1},std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity>(v23, (a1 + 16), a3);
    if (*(a1 + 8) == v22 && *(a1 + 56) == 1)
    {
      *a4 = 1;
    }

    std::vector<ULBLEMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULBLEMeasurementDO,std::__tree_node<ULBLEMeasurementDO,void *> *,long>,0>(a5, v22, v24);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      v30 = v9;
      v31 = 1026;
      v32 = v10;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error - events buffer getEvents with invalid timestamps, earliestAllowedTime:%{public}d, latestAllowedTime:%{public}d}", buf, 0x1Eu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsDataHandler::ULSensorsDataHandler();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v12 = *a2;
      v13 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 1026;
      v30 = v12;
      v31 = 1026;
      v32 = v13;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error - events buffer getEvents with invalid timestamps", "{msg%{public}.0s:Error - events buffer getEvents with invalid timestamps, earliestAllowedTime:%{public}d, latestAllowedTime:%{public}d}", buf, 0x1Eu);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void ULMeasurementFilters::removeDuplicates<ULBLEMeasurementDO>(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<ULBLEMeasurementDO *>,std::__wrap_iter<ULBLEMeasurementDO *>,std::__equal_to &>(*a1, v2);
  std::vector<ULBLEMeasurementDO>::erase(a1, v4, a1[1]);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataHandler::ULSensorsDataHandler();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1[1] - *a1) >> 5;
    v7 = 134218240;
    v8 = (v2 - v3) >> 5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Remove duplicates from buffer . read %lu measurements (%lu unique)", &v7, 0x16u);
  }
}

void ULSensorsDataHandler::~ULSensorsDataHandler(ULSensorsDataHandler *this)
{
  ULSensorsDataHandler::~ULSensorsDataHandler(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5A718;
  *(this + 1) = &unk_286A5A7B0;
  *(this + 2) = &unk_286A5A7E8;
  *(this + 3) = &unk_286A5A810;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::~__hash_table(this + 240);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 184, *(this + 24));
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 120, *(this + 16));
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 56, *(this + 8));
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void non-virtual thunk toULSensorsDataHandler::~ULSensorsDataHandler(ULSensorsDataHandler *this)
{
  ULSensorsDataHandler::~ULSensorsDataHandler((this - 8));
}

{
  ULSensorsDataHandler::~ULSensorsDataHandler((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULSensorsDataHandler::~ULSensorsDataHandler((this - 16));
}

{
  ULSensorsDataHandler::~ULSensorsDataHandler((this - 16));

  JUMPOUT(0x259CA1F90);
}

{
  ULSensorsDataHandler::~ULSensorsDataHandler((this - 24));
}

{
  ULSensorsDataHandler::~ULSensorsDataHandler((this - 24));

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_91()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::~CLEventsBuffer(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_1()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULScanningTrigger>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t **std::map<ULTriggerType,int>::map[abi:ne200100](uint64_t **a1, __int16 *a2, uint64_t a3)
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
      std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__emplace_hint_unique_key_args<ULTriggerType,std::pair<ULTriggerType const,int> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__emplace_hint_unique_key_args<ULTriggerType,std::pair<ULTriggerType const,int> const&>(uint64_t **a1, uint64_t *a2, __int16 *a3, void *a4)
{
  v4 = *std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__find_equal<ULTriggerType>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__find_equal<ULTriggerType>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, __int16 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 14), v6 < v7))
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
    if (*(v10 + 14) < v15)
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

  if (a4 != v5 && v6 >= *(a4 + 14))
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

uint64_t *std::__tree<std::__value_type<ULTriggerType,int>,std::__map_value_compare<ULTriggerType,std::__value_type<ULTriggerType,int>,std::less<ULTriggerType>,true>,std::allocator<std::__value_type<ULTriggerType,int>>>::__emplace_unique_key_args<ULTriggerType,std::piecewise_construct_t const&,std::tuple<ULTriggerType const&>,std::tuple<>>(uint64_t a1, __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::CLEventsBuffer(uint64_t a1, uint64_t a2, std::string *__str)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::string::operator=((a1 + 32), __str);
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 55) < 0)
    {
      v4 = *v4;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Initialize EventsBuffer %s", &v7, 0xCu);
  }

  return a1;
}

uint64_t CLEventsBuffer<ULUWBMeasurementDO,double,MeasDataObjectGetTime<ULUWBMeasurementDO>>::CLEventsBuffer(uint64_t a1, uint64_t a2, std::string *__str)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::string::operator=((a1 + 32), __str);
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 55) < 0)
    {
      v4 = *v4;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Initialize EventsBuffer %s", &v7, 0xCu);
  }

  return a1;
}

uint64_t CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::CLEventsBuffer(uint64_t a1, uint64_t a2, std::string *__str)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::string::operator=((a1 + 32), __str);
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 55) < 0)
    {
      v4 = *v4;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Initialize EventsBuffer %s", &v7, 0xCu);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2591221DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unordered_set<ULWiFiScanChannel>::unordered_set<std::__wrap_iter<ULWiFiScanChannel const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__emplace_unique_key_args<ULWiFiScanChannel,ULWiFiScanChannel const&>(a1, v5, v5);
      v5 += 8;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__emplace_unique_key_args<ULWiFiScanChannel,ULWiFiScanChannel const&>(void *a1, unsigned __int8 *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = v3 ^ (2 * v4);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ (2 * v4);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (*(v10 + 16) != v3 || *(v10 + 5) != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_set<ULWiFiScanChannel>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t *CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::truncateBuffer(uint64_t *result)
{
  v3 = result[3];
  v4 = v3 - *result;
  if (v3 > *result)
  {
    v6[3] = v1;
    v6[4] = v2;
    *(result + 56) = 1;
    v5 = (result + 1);
    v6[0] = result[1];
    std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(v6, v4);
    return std::__tree<ULBLEMeasurementDO,CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::EventsComparator,std::allocator<ULBLEMeasurementDO>>::erase(v5, *v5, v6[0]);
  }

  return result;
}

uint64_t *std::__tree<ULBLEMeasurementDO,CLEventsBuffer<ULBLEMeasurementDO,double,MeasDataObjectGetTime<ULBLEMeasurementDO>>::EventsComparator,std::allocator<ULBLEMeasurementDO>>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<ULWiFiScanChannel,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__emplace_multi<ULWiFiScanChannel const&>(a1, a2 + 2);
  }
}

void sub_259122870(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 16) ^ (2 * *(a2 + 20));
  *(a2 + 8) = v5;
  inserted = std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = *(v16 + 16) == *a3 && *(v16 + 20) == *(a3 + 1);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

double *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getEvents(double const&,double const&,BOOL &)::{lambda(double const&,std::_ClassicAlgPolicy const&)#1},std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity>(double *a1, double *a2, double *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = *(v6 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != a2);
    do
    {
      v10 = v5 >> 1;
      v14 = v3;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v14, v5 >> 1);
      v11 = v14;
      if (*a3 >= v14[4])
      {
        v12 = *(v14 + 1);
        if (v12)
        {
          do
          {
            v3 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v3 = *(v11 + 2);
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  return v3;
}

uint64_t *std::vector<ULUWBMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULUWBMeasurementDO,std::__tree_node<ULUWBMeasurementDO,void *> *,long>,0>(uint64_t *a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<ULUWBMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULUWBMeasurementDO,std::__tree_node<ULUWBMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULUWBMeasurementDO,std::__tree_node<ULUWBMeasurementDO,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t *std::vector<ULUWBMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULUWBMeasurementDO,std::__tree_node<ULUWBMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULUWBMeasurementDO,std::__tree_node<ULUWBMeasurementDO,void *> *,long>>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULBLEMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259123058(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ULBLEMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULBLEMeasurementDO,std::__tree_node<ULBLEMeasurementDO,void *> *,long>,0>(uint64_t *a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<ULBLEMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULBLEMeasurementDO,std::__tree_node<ULBLEMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULBLEMeasurementDO,std::__tree_node<ULBLEMeasurementDO,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t *std::vector<ULBLEMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULBLEMeasurementDO,std::__tree_node<ULBLEMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULBLEMeasurementDO,std::__tree_node<ULBLEMeasurementDO,void *> *,long>>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULBLEMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259123188(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<ULBLEMeasurementDO *>,std::__wrap_iter<ULBLEMeasurementDO *>,std::__equal_to &>(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v4 = a1 + 32;
      if (a1 + 32 == a2)
      {
        break;
      }

      v5 = ULBLEMeasurementDO::operator==(a1, a1 + 32);
      a1 = v4;
      if (v5)
      {
        v6 = v4 - 32;
        goto LABEL_6;
      }
    }

    v6 = a2;
LABEL_6:
    v3 = a2;
    if (v6 != a2)
    {
      for (i = v6 + 64; i != a2; i += 32)
      {
        if (!ULBLEMeasurementDO::operator==(v6, i))
        {
          v6 += 32;
          ULBLEMeasurementDO::operator=(v6, i);
        }
      }

      return v6 + 32;
    }
  }

  return v3;
}

void *ULSensorsDataProvider::ULSensorsDataProvider(void *result, uint64_t *a2, void *a3)
{
  *result = &unk_286A5A928;
  result[1] = &unk_286A5A9A8;
  result[2] = &unk_286A5A9D0;
  result[3] = &unk_286A5AA00;
  v4 = *a2;
  v3 = a2[1];
  result[4] = &unk_286A5AA28;
  result[5] = v4;
  result[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[7] = *a3;
  result[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ULSensorsDataProvider::onBleRssiMeasurement(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Got BLE Measurement}", v6, 0x12u);
  }

  return (*(**(a1 + 56) + 16))(*(a1 + 56), a2);
}

uint64_t ULSensorsDataProvider::onWiFiRssiMeasurements(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a2[1] - *a2) >> 5;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onWiFiRssiMeasurements";
    v12 = 1026;
    v13 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Got WiFi Measurements, method:%{public, location:escape_only}s, count::%{public}d}", v7, 0x22u);
  }

  return (*(**(a1 + 56) + 32))(*(a1 + 56), a2);
}

void ULSensorsDataProvider::onWiFiRssiScanCompletion(ULSensorsDataProvider *this, double a2, NSError *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onWiFiRssiScanCompletion";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WiFi scan complete, method:%{public, location:escape_only}s, error::%{public, location:escape_only}@}", v7, 0x26u);
  }

  (*(**(this + 5) + 96))(*(this + 5), v5, a2);
}

uint64_t ULSensorsDataProvider::appendScanTrigger(ULSensorsDataProvider *this, const ULScanningTrigger *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    ULScanningTrigger::description(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "appendScanTrigger";
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:append trigger, method:%{public, location:escape_only}s, description::%{public, location:escape_only}s}", buf, 0x26u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (*(**(this + 7) + 64))(*(this + 7), a2);
}

void ULSensorsDataProvider::onScanComplete(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "onScanComplete";
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Scan Complete, method:%{public, location:escape_only}s}", v9, 0x1Cu);
  }

  (*(**(a1 + 56) + 48))(*(a1 + 56), a2, a3, v7);
}

void ULSensorsDataProvider::onInterfaceInvalidation(ULSensorsDataProvider *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v3 = 68289282;
    v4 = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "onInterfaceInvalidation";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error: Unexpected WiFi Interface invalidation, method:%{public, location:escape_only}s}", &v3, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onInterfaceInvalidation();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v3 = 68289282;
    v4 = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "onInterfaceInvalidation";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error: Unexpected WiFi Interface invalidation", "{msg%{public}.0s:Error: Unexpected WiFi Interface invalidation, method:%{public, location:escape_only}s}", &v3, 0x1Cu);
  }
}

void ULSensorsDataProvider::onHomeNearbySessionCreated(ULSensorsDataProvider *this)
{
  v7 = *MEMORY[0x277D85DE8];
  ULSensorsDataHandler::onHomeNearbyUpdate(*(this + 7), 0);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289282;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    v5 = 2082;
    v6 = "onHomeNearbySessionCreated";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby session created, method:%{public, location:escape_only}s}", v2, 0x1Cu);
  }
}

void ULSensorsDataProvider::onHomeNearbySessionStopped(ULSensorsDataProvider *this)
{
  v7 = *MEMORY[0x277D85DE8];
  ULSensorsDataHandler::onHomeNearbyUpdate(*(this + 7), 2);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289282;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    v5 = 2082;
    v6 = "onHomeNearbySessionStopped";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby session stopped, method:%{public, location:escape_only}s}", v2, 0x1Cu);
  }
}

void ULSensorsDataProvider::onHomeNearbySessionSuspended(ULSensorsDataProvider *this)
{
  v7 = *MEMORY[0x277D85DE8];
  ULSensorsDataHandler::onHomeNearbyUpdate(*(this + 7), 1);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289282;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    v5 = 2082;
    v6 = "onHomeNearbySessionSuspended";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby session suspended, method:%{public, location:escape_only}s}", v2, 0x1Cu);
  }
}

void ULSensorsDataProvider::onHomeNearbySessionResumed(ULSensorsDataProvider *this)
{
  v7 = *MEMORY[0x277D85DE8];
  ULSensorsDataHandler::onHomeNearbyUpdate(*(this + 7), 0);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289282;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    v5 = 2082;
    v6 = "onHomeNearbySessionResumed";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby session resumed, method:%{public, location:escape_only}s}", v2, 0x1Cu);
  }
}

uint64_t ULSensorsDataProvider::onUwbRangeMeasurements(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsDataProvider::onBleRssiMeasurement();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "onUwbRangeMeasurements";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Got UWB Measurement, method:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  return (*(**(a1 + 56) + 24))(*(a1 + 56), a2);
}

void ULSensorsDataProvider::~ULSensorsDataProvider(ULSensorsDataProvider *this)
{
  *this = &unk_286A5A928;
  *(this + 1) = &unk_286A5A9A8;
  *(this + 2) = &unk_286A5A9D0;
  *(this + 3) = &unk_286A5AA00;
  *(this + 4) = &unk_286A5AA28;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_286A5A928;
  *(this + 1) = &unk_286A5A9A8;
  *(this + 2) = &unk_286A5A9D0;
  *(this + 3) = &unk_286A5AA00;
  *(this + 4) = &unk_286A5AA28;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toULSensorsDataProvider::~ULSensorsDataProvider(ULSensorsDataProvider *this)
{
  *(this - 1) = &unk_286A5A928;
  *this = &unk_286A5A9A8;
  *(this + 1) = &unk_286A5A9D0;
  *(this + 2) = &unk_286A5AA00;
  *(this + 3) = &unk_286A5AA28;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *(this - 1) = &unk_286A5A928;
  *this = &unk_286A5A9A8;
  *(this + 1) = &unk_286A5A9D0;
  *(this + 2) = &unk_286A5AA00;
  *(this + 3) = &unk_286A5AA28;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 2) = &unk_286A5A928;
  *(this - 1) = &unk_286A5A9A8;
  *this = &unk_286A5A9D0;
  *(this + 1) = &unk_286A5AA00;
  *(this + 2) = &unk_286A5AA28;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *(this - 2) = &unk_286A5A928;
  *(this - 1) = &unk_286A5A9A8;
  *this = &unk_286A5A9D0;
  *(this + 1) = &unk_286A5AA00;
  *(this + 2) = &unk_286A5AA28;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 3) = &unk_286A5A928;
  *(this - 2) = &unk_286A5A9A8;
  *(this - 1) = &unk_286A5A9D0;
  *this = &unk_286A5AA00;
  *(this + 1) = &unk_286A5AA28;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *(this - 3) = &unk_286A5A928;
  *(this - 2) = &unk_286A5A9A8;
  *(this - 1) = &unk_286A5A9D0;
  *this = &unk_286A5AA00;
  *(this + 1) = &unk_286A5AA28;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 4) = &unk_286A5A928;
  *(this - 3) = &unk_286A5A9A8;
  *(this - 2) = &unk_286A5A9D0;
  *(this - 1) = &unk_286A5AA00;
  *this = &unk_286A5AA28;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *(this - 4) = &unk_286A5A928;
  *(this - 3) = &unk_286A5A9A8;
  *(this - 2) = &unk_286A5A9D0;
  *(this - 1) = &unk_286A5AA00;
  *this = &unk_286A5AA28;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_92()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULSensorsManager::ULSensorsManager(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_286A5AB48;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v3 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0uLL;
  *(a1 + 56) = 0uLL;
  do
  {
    *(a1 + v4 + 96) = 0;
    ULScanningProfile::ULScanningProfile((a1 + v4 + 104));
    v4 += 88;
  }

  while (v4 != 1760);
  *(a1 + 1856) = 0;
  ULScanningTrigger::ULScanningTrigger((a1 + 1872));
  *(a1 + 1943) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1976) = 0;
  *(a1 + 2016) = 0u;
  *(a1 + 2032) = 0;
  *(a1 + 2056) = 0;
  *(a1 + 2040) = 0u;
  *(a1 + 1984) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 2008) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "ULSensorsManager";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sensors Manager Initialization, method:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  return a1;
}

void ULSensorsManager::setDependencies(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  *a2 = 0;
  v10 = *(a1 + 72);
  *(a1 + 72) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = *(a1 + 80);
  *(a1 + 80) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *a4;
  *a4 = 0;
  v14 = *(a1 + 88);
  *(a1 + 88) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v16 = *a5;
  v15 = a5[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 64);
  *(a1 + 56) = v16;
  *(a1 + 64) = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(a1 + 1864) = 0;
}

BOOL ULSensorsManager::addScanningProfile(ULSensorsManager *this, const ULScanningProfile *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  Index = ULScanningProfile::getIndex(a2);
  v5 = *(a2 + 3);
  *&v14[32] = *(a2 + 2);
  v15 = v5;
  v16 = *(a2 + 4);
  v6 = *(a2 + 1);
  *v14 = *a2;
  *&v14[16] = v6;
  v7 = ULStaticMap<int,ULScanningProfile,20ul>::updateOrInsert(this + 96, Index, v14);
  if (v7 == 2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::addScanningProfile();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = ULScanningProfile::getIndex(a2);
      *v14 = 68289538;
      *&v14[8] = 2082;
      *&v14[10] = "";
      *&v14[18] = 2082;
      *&v14[20] = "addScanningProfile";
      *&v14[28] = 1026;
      *&v14[30] = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add scanning profile failed, method:%{public, location:escape_only}s, profile index:%{public}d}", v14, 0x22u);
    }
  }

  else
  {
    v8 = ULScanningProfile::getIndex(a2);
    if (v8 >= 0x14)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
    }

    *(this + 248) &= ~(1 << v8);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::addScanningProfile();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = ULScanningProfile::getIndex(a2);
      *v14 = 68289538;
      *&v14[8] = 2082;
      *&v14[10] = "";
      *&v14[18] = 2082;
      *&v14[20] = "addScanningProfile";
      *&v14[28] = 1026;
      *&v14[30] = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add scanning profile, method:%{public, location:escape_only}s, profile index:%{public}d}", v14, 0x22u);
    }

    if (ULScanningProfile::getIndex(a2) == 4)
    {
      ULScanningProfile::getTechnologyConfig(a2, 1uLL, v14);
      *(this + 1945) = v14[13];
      ULScanningProfile::getTechnologyConfig(a2, 2uLL, v14);
      *(this + 1946) = v14[13];
      ULScanningProfile::getTechnologyConfig(a2, 1uLL, v14);
      *(this + 487) = *&v14[8];
      ULScanningProfile::getTechnologyConfig(a2, 2uLL, v14);
      *(this + 488) = *&v14[8];
      ULSensorsManager::requestBackgroundScanIfNeeded(this);
    }
  }

  return v7 != 2;
}

uint64_t ULStaticMap<int,ULScanningProfile,20ul>::updateOrInsert(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = *(a1 + 1760);
  if (v3)
  {
    v4 = (a1 + 8);
    v5 = *(a1 + 1760);
    do
    {
      if (*(v4 - 2) == a2)
      {
        result = 0;
        *v4 = *a3;
        v13 = a3[1];
        v14 = a3[2];
        v15 = a3[4];
        v4[3] = a3[3];
        v4[4] = v15;
        v4[1] = v13;
        v4[2] = v14;
        return result;
      }

      v4 = (v4 + 88);
      --v5;
    }

    while (v5);
    if (v3 <= 0x13)
    {
      goto LABEL_6;
    }

    return 2;
  }

  else
  {
LABEL_6:
    v7 = a3[3];
    v6 = a3[4];
    v9 = a3[1];
    v8 = a3[2];
    v10 = *a3;
    *(a1 + 1760) = v3 + 1;
    v11 = a1 + 88 * v3;
    *v11 = a2;
    *(v11 + 24) = v9;
    *(v11 + 40) = v8;
    *(v11 + 56) = v7;
    *(v11 + 72) = v6;
    *(v11 + 8) = v10;
    return 1;
  }
}

unsigned __int8 *ULSensorsManager::requestBackgroundScanIfNeeded(unsigned __int8 *this)
{
  v1 = this;
  v18 = *MEMORY[0x277D85DE8];
  v2 = this[1945];
  if ((v2 & 1) != 0 || this[1946] == 1)
  {
    v3 = this[2032];
    if ((v3 == 4 || v3 == 1) && v2 != 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::ULSensorsManager();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "requestBackgroundScanIfNeeded";
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Initiate BLE backgound scans, method:%{public, location:escape_only}s}", &v12, 0x1Cu);
      }

      this = (*(**(v1 + 9) + 16))(*(v1 + 9), *(v1 + 487));
      if (this)
      {
        v7 = 5;
      }

      else
      {
        v7 = 6;
      }

      v1[2032] = v7;
    }

    v8 = v1[2056];
    v9 = v8 == 4 || v8 == 1;
    if (v9 && v1[1946] == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::addScanningProfile();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "requestBackgroundScanIfNeeded";
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Initiate UWB backgound scans, method:%{public, location:escape_only}s}", &v12, 0x1Cu);
      }

      this = (*(**(v1 + 10) + 16))(*(v1 + 10), *(v1 + 488));
      if (this)
      {
        v11 = 5;
      }

      else
      {
        v11 = 6;
      }

      v1[2056] = v11;
    }
  }

  return this;
}

void ULSensorsManager::addTechnologyProfile(uint64_t a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(**(a1 + 88) + 40))(*(a1 + 88));
  if (*a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  v4 = 1 << *a2;
  *(a1 + 1992) |= v4;
  *(a1 + 2000) &= ~v4;
  if (!*(a1 + 2008))
  {
    *(a1 + 2008) = 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "addTechnologyProfile";
    v12 = 1026;
    v13 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Add WiFi Profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }
}

{
  v14 = *MEMORY[0x277D85DE8];
  (*(**(a1 + 80) + 40))(*(a1 + 80));
  if (*a2 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  v4 = 1 << *a2;
  *(a1 + 2040) |= v4;
  *(a1 + 2048) &= ~v4;
  if (!*(a1 + 2056))
  {
    *(a1 + 2056) = 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "addTechnologyProfile";
    v12 = 1026;
    v13 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Add UWB Profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }
}

void ULSensorsManager::addTechnologyProfile(ULSensorsManager *this, const ULBleTechnologyProfile *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 40))(*(this + 9));
  v4 = *a2;
  if (*a2)
  {
    if (v4 >= 0x20)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    *(this + 466) = *(a2 + 1);
  }

  v5 = 1 << v4;
  *(this + 252) |= v5;
  *(this + 253) &= ~v5;
  if (!*(this + 2032))
  {
    *(this + 2032) = 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "addTechnologyProfile";
    v13 = 1026;
    v14 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Add BLE Profile, method:%{public, location:escape_only}s, index:%{public}d}", v8, 0x22u);
  }
}

uint64_t ULSensorsManager::removeScanningProfile(ULSensorsManager *this, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v3 = *(this + 232);
  if (v3)
  {
    v5 = 96;
    while (*(this + v5) != a2)
    {
      v5 += 88;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    if (!ULSensorsManager::isExecutionSchemeCompleted(this))
    {
      goto LABEL_17;
    }

    v9 = 0;
    do
    {
      v10 = *(this + v9 + 8);
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9 == 16;
      }

      v9 += 8;
    }

    while (!v11);
    if (!v10)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::ULSensorsManager();
      }

      v13 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2082;
        v21 = "removeScanningProfile";
        v22 = 1026;
        v23 = a2;
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove Scanning profile, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
      }

      ULStaticMap<int,ULScanningProfile,20ul>::erase(this + 96, &v15);
      v14 = v15;
      if (v15 >= 0x14)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
      }

      *(this + 248) &= ~(1 << v15);
      if (v14 == 4)
      {
        *(this + 1945) = 0;
      }

      else
      {
        *(this + 466) = 0;
      }
    }

    else
    {
LABEL_17:
      if (a2 >= 0x14)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
      }

      *(this + 248) |= 1 << a2;
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::ULSensorsManager();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2082;
        v21 = "removeScanningProfile";
        v22 = 1026;
        v23 = a2;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Scan profile is pending for removal , method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
      }
    }

    return 1;
  }

  else
  {
LABEL_5:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::ULSensorsManager();
    }

    v6 = logObject_MicroLocation_Default;
    v7 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "removeScanningProfile";
      v22 = 1026;
      v23 = a2;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove Scanning profile request failed, method:%{public, location:escape_only}s, index:%{public}d}", buf, 0x22u);
      return 0;
    }
  }

  return result;
}

BOOL ULStaticMap<int,ULScanningProfile,20ul>::erase(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 1760);
  if (!v2)
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    v3 = 0;
    v5 = (a1 + 88);
    while (v2 - 1 != v3)
    {
      v6 = *v5;
      v5 += 22;
      ++v3;
      if (v6 == *a2)
      {
        v4 = v3 < v2;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v3 = 0;
  v4 = 1;
LABEL_8:
  v7 = v2 - 1;
  if (v3 < v2 - 1)
  {
    v8 = ~v3 + v2;
    v9 = (a1 + 88 * v3 + 96);
    do
    {
      *(v9 - 24) = *(v9 - 2);
      v10 = *v9;
      *(v9 - 72) = v9[1];
      v11 = v9[3];
      *(v9 - 56) = v9[2];
      *(v9 - 40) = v11;
      *(v9 - 24) = v9[4];
      *(v9 - 88) = v10;
      v9 = (v9 + 88);
      --v8;
    }

    while (v8);
  }

  *(a1 + 1760) = v7;
  return v4;
}

void ULSensorsManager::removeTechnologyProfile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    if ((*(a1 + 2056) & 0xFE) == 2)
    {
      if (a3 < 0x20)
      {
        *(a1 + 2048) |= 1 << a3;
        if (onceToken_MicroLocation_Default != -1)
        {
          ULSensorsManager::ULSensorsManager();
        }

        v5 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 68289538;
          v9 = 0;
          v10 = 2082;
          v11 = "";
          v12 = 2082;
          v13 = "removeTechnologyProfile";
          v14 = 1026;
          v15 = a3;
          v6 = "{msg%{public}.0s:UWB profile pending for removal , method:%{public, location:escape_only}s, index:%{public}d}";
          goto LABEL_39;
        }

        return;
      }

      goto LABEL_41;
    }

    (*(**(a1 + 80) + 32))(*(a1 + 80), a3);
    if (a3 < 0x20)
    {
      *(a1 + 2040) &= ~(1 << a3);
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::ULSensorsManager();
      }

      v5 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289538;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "removeTechnologyProfile";
        v14 = 1026;
        v15 = a3;
        v6 = "{msg%{public}.0s:UWB profile Removed, method:%{public, location:escape_only}s, index:%{public}d}";
        goto LABEL_39;
      }

      return;
    }

LABEL_42:
    std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    if ((*(a1 + 2008) & 0xFE) == 2)
    {
      if (a3 < 0x20)
      {
        *(a1 + 2000) |= 1 << a3;
        if (onceToken_MicroLocation_Default != -1)
        {
          ULSensorsManager::ULSensorsManager();
        }

        v5 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 68289538;
          v9 = 0;
          v10 = 2082;
          v11 = "";
          v12 = 2082;
          v13 = "removeTechnologyProfile";
          v14 = 1026;
          v15 = a3;
          v6 = "{msg%{public}.0s:WiFi profile pending for removal , method:%{public, location:escape_only}s, index:%{public}d}";
LABEL_39:
          _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x22u);
          return;
        }

        return;
      }

LABEL_41:
      std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
    }

    (*(**(a1 + 88) + 32))(*(a1 + 88), a3);
    if (a3 < 0x20)
    {
      *(a1 + 1992) &= ~(1 << a3);
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::ULSensorsManager();
      }

      v5 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289538;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "removeTechnologyProfile";
        v14 = 1026;
        v15 = a3;
        v6 = "{msg%{public}.0s:WiFi profile Removed, method:%{public, location:escape_only}s, index:%{public}d}";
        goto LABEL_39;
      }

      return;
    }

    goto LABEL_42;
  }

  v7 = *(a1 + 2032);
  if ((v7 - 2) >= 2)
  {
    if (v7 == 5)
    {
      (*(**(a1 + 72) + 24))(*(a1 + 72));
      *(a1 + 2032) = 1;
    }

    (*(**(a1 + 72) + 32))(*(a1 + 72), a3);
    if (a3 < 0x20)
    {
      *(a1 + 2016) &= ~(1 << a3);
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::ULSensorsManager();
      }

      v5 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289538;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "removeTechnologyProfile";
        v14 = 1026;
        v15 = a3;
        v6 = "{msg%{public}.0s:BLE profile Removed, method:%{public, location:escape_only}s, index:%{public}d}";
        goto LABEL_39;
      }

      return;
    }

    goto LABEL_42;
  }

  if (a3 >= 0x20)
  {
    goto LABEL_41;
  }

  *(a1 + 2024) |= 1 << a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "removeTechnologyProfile";
    v14 = 1026;
    v15 = a3;
    v6 = "{msg%{public}.0s:BLE profile pending for removal , method:%{public, location:escape_only}s, index:%{public}d}";
    goto LABEL_39;
  }
}

void ULSensorsManager::resetAllTechnologyProfiles(ULSensorsManager *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 68289282;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "resetAllTechnologyProfiles";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rest All Profiles request, method:%{public, location:escape_only}s}", v15, 0x1Cu);
  }

  v3 = *(this + 249);
  if (v3)
  {
    v4 = *(this + 11);
    v5 = *(this + 2008) & 0xFE;
    do
    {
      v6 = __clz(__rbit32(v3));
      if (v5 == 2)
      {
        if (v6 >= 0x20)
        {
LABEL_27:
          std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
        }

        *(this + 250) |= 1 << v6;
      }

      else
      {
        (*(*v4 + 32))(v4, v6);
        v3 = *(this + 249);
      }

      v3 = v3 & (v3 - 1) & 0xFFFFFFFE;
      *(this + 249) = v3;
    }

    while (v3);
  }

  v7 = *(this + 252);
  if (v7)
  {
    v8 = *(this + 9);
    v9 = *(this + 2032) & 0xFE;
    do
    {
      v10 = __clz(__rbit32(v7));
      if (v9 == 2)
      {
        if (v10 >= 0x20)
        {
          goto LABEL_27;
        }

        *(this + 253) |= 1 << v10;
      }

      else
      {
        (*(*v8 + 32))(v8, v10);
        v7 = *(this + 252);
      }

      v7 = v7 & (v7 - 1) & 0xFFFFFFFE;
      *(this + 252) = v7;
    }

    while (v7);
  }

  v11 = *(this + 255);
  if (v11)
  {
    v12 = *(this + 10);
    v13 = *(this + 2056) & 0xFE;
    do
    {
      v14 = __clz(__rbit32(v11));
      if (v13 == 2)
      {
        if (v14 >= 0x20)
        {
          goto LABEL_27;
        }

        *(this + 256) |= 1 << v14;
      }

      else
      {
        (*(*v12 + 32))(v12, v14);
        v11 = *(this + 255);
      }

      v11 = v11 & (v11 - 1) & 0xFFFFFFFE;
      *(this + 255) = v11;
    }

    while (v11);
  }
}

void ULSensorsManager::handleScanComplete(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289538;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "handleScanComplete";
    v11 = 1026;
    v12 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Handle Scan Complete, method:%{public, location:escape_only}s, ScanResultCode:%{public}d}", &v6, 0x22u);
  }

  v5 = ULSensorsManager::buildPowerLogDict(a1);
  *(a1 + 1976) = 0;
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 1960), a2);
  (*(**(a1 + 56) + 24))(*(a1 + 56), a2, &v6, v5);
  if ((*(a1 + 1945) & 1) == 0)
  {
    *(a1 + 2032) = 1;
  }

  if ((*(a1 + 1946) & 1) == 0)
  {
    *(a1 + 2056) = 1;
  }

  *(a1 + 2008) = 1;
  ULSensorsManager::removeScanProfilesIfNecessary(a1);
  *(a1 + 1968) = 0;
}

void ULSensorsManager::requestScanAbort(ULSensorsManager *this, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(this + 490) != a2)
  {
    v9 = _CLLogObjectForCategory_MicroLocation_Default(this);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(this + 490);
      *buf = 68290051;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      v21 = a2;
      v22 = 2050;
      *v23 = v10;
      *&v23[8] = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "scanRequestId == fRunningScanRequestId";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid scan request id, requested scanRequestId:%{public}lu, current scanRequestId:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v12 = _CLLogObjectForCategory_MicroLocation_Default(v11);
    if (os_signpost_enabled(v12))
    {
      v13 = *(this + 490);
      *buf = 68290051;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      v21 = a2;
      v22 = 2050;
      *v23 = v13;
      *&v23[8] = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "scanRequestId == fRunningScanRequestId";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid scan request id", "{msg%{public}.0s:Invalid scan request id, requested scanRequestId:%{public}lu, current scanRequestId:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(this + 490);
      *buf = 68290051;
      *&buf[4] = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      v21 = a2;
      v22 = 2050;
      *v23 = v16;
      *&v23[8] = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "scanRequestId == fRunningScanRequestId";
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid scan request id, requested scanRequestId:%{public}lu, current scanRequestId:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULSensorsManager.mm", 264, "requestScanAbort");
    __break(1u);
    goto LABEL_22;
  }

  v4 = 8;
  do
  {
    v5 = *(this + v4);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 24;
    }

    v4 += 8;
  }

  while (!v6);
  if (v5)
  {
    *(this + 1976) = 1;
  }

  else
  {
    ULSensorsManager::completeCurrentExecutionStep(this, 4);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
LABEL_22:
    ULSensorsManager::ULSensorsManager();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 1976);
    *buf = 68289794;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "requestScanAbort";
    v22 = 1026;
    *v23 = v8;
    *&v23[4] = 1026;
    *&v23[6] = a2;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Abort scan request, method:%{public, location:escape_only}s, is pending abort:%{public}hhd, scanRequestIndex:%{public}d}", buf, 0x28u);
  }
}

void ULSensorsManager::completeCurrentExecutionStep(ULSensorsManager *this, uint64_t a2)
{
  v2 = a2;
  if (a2 == 4 || a2 == 2)
  {
    ULSensorsManager::stopAllActiveScans(this);
    *(this + 1944) = 0;
    *(this + 1912) = 0u;
    *(this + 1928) = 0u;
  }

  ULSensorsManager::requestBackgroundScanIfNeeded(this);
  if (ULSensorsManager::isExecutionSchemeCompleted(this))
  {
    v4 = 0;
    do
    {
      v5 = *(this + v4 + 8);
      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = v4 == 16;
      }

      v4 += 8;
    }

    while (!v6);
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = 8;
    do
    {
      v8 = *(this + v7);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 == 24;
      }

      v7 += 8;
    }

    while (!v9);
    if ((!v8 || ULSensorsManager::isConcurrentScanRunning(this)) && !ULSensorsManager::executeNextScanIteration(this))
    {
      ULSensorsManager::stopAllActiveScans(this);
      v2 = 1;
LABEL_24:

      ULSensorsManager::handleScanComplete(this, v2);
    }
  }
}

uint64_t ULSensorsManager::appendScanTrigger(ULSensorsManager *this, const ULScanningTrigger *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ULScanningTrigger::description(a2, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = *(this + 490);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "appendScanTrigger";
    v16 = 2082;
    v17 = v5;
    v18 = 1026;
    v19 = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Append scan trigger to current scan, method:%{public, location:escape_only}s, trigger:%{public, location:escape_only}s, scanRequestIndex:%{public}d}", buf, 0x2Cu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (*(**(this + 7) + 16))(*(this + 7), a2);
}

void ULSensorsManager::onWiFiScanCompletion(ULSensorsManager *this, double a2, NSError *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 490);
    *buf = 68289795;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v14 = 2082;
    v15 = "onWiFiScanCompletion";
    v16 = 2113;
    v17 = v5;
    v18 = 1026;
    v19 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WiFi Scan Complete, method:%{public, location:escape_only}s, with error:%{private, location:escape_only}@, scanRequestIndex:%{public}d}", buf, 0x2Cu);
  }

  if (ULSensorsManager::issueNextWiFiScanIteration(this))
  {
    *(this + 246) = *(this + 246) + a2;
  }

  else
  {
    *(this + 246) = a2;
    *(this + 2008) = 4;
    if (!v5)
    {
      v9 = 0;
      goto LABEL_13;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "wifi-provider, WiFi scan failed with error: %@", buf, 0xCu);
      }

      v9 = 3;
LABEL_13:
      ULSensorsManager::stopAllActiveScans(this);
      ULSensorsManager::completeCurrentExecutionStep(this, v9);
      v10 = 0;
      do
      {
        v11 = *(this + v10 + 8);
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = v10 == 16;
        }

        v10 += 8;
      }

      while (!v12);
      if (!v11)
      {
        break;
      }

      ULSensorsManager::onWiFiScanCompletion(buf);

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ScanService/ULSensorsManager.mm", 309, "onWiFiScanCompletion");
      __break(1u);
LABEL_22:
      ULSensorsManager::addScanningProfile();
    }
  }
}

BOOL ULSensorsManager::issueNextWiFiScanIteration(ULSensorsManager *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingDelayBetweenScanIterations"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 floatValue];
  }

  else
  {
    [&unk_286A72DC0 floatValue];
  }

  v7 = v6;

  v8 = *(this + 1964);
  v9 = v8 - 1;
  *(this + 1964) = v8 - 1;
  if (v8 != 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::ULSensorsManager();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "issueNextWiFiScanIteration";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WiFi Scan - issuing next scan iteration, method:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v11 = *(this + 232);
    if (v11)
    {
      v12 = (this + 104);
      while (*(v12 - 2) != *(this + 475))
      {
        v12 = (v12 + 88);
        if (!--v11)
        {
          goto LABEL_14;
        }
      }

      v14 = v12[3];
      v29 = v12[2];
      v30 = v14;
      v31 = v12[4];
      v15 = v12[1];
      *buf = *v12;
      *&buf[16] = v15;
      v13 = 1;
    }

    else
    {
LABEL_14:
      v13 = 0;
      buf[0] = 0;
    }

    v32 = v13;
    ULScanningProfile::getTechnologyConfig(buf, 0, &v26);
    if ((BYTE8(v27) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v16 = DWORD2(v26);
    (*(*this + 112))(this, 0);
    LODWORD(v17) = v7;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v23 = v26;
    v22[2] = ___ZN16ULSensorsManager26issueNextWiFiScanIterationEv_block_invoke;
    v22[3] = &__block_descriptor_76_e5_v8__0l;
    v22[4] = this;
    v24 = v27;
    v25 = v16;
    v19 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v18 repeats:MEMORY[0x277CBEC28] block:v22];
    v20 = *(this + 4);
    *(this + 4) = v19;
  }

  return v9 != 0;
}

void ULSensorsManager::stopAllActiveScans(ULSensorsManager *this)
{
  for (i = 1; i != 4; ++i)
  {
    if (*(this + i))
    {
      ULSensorsManager::stopScan(this, i - 1);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(this + 4);
    *(this + 4) = 0;
  }
}

uint64_t ___ZN16ULSensorsManager26issueNextWiFiScanIterationEv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "issueNextWiFiScanIteration_block_invoke";
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi delay timeout - issuing next wifi scan iteration, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  ((*v2)[13])(v2, 0, *(a1 + 56));
  return (*(*v2[11] + 16))(v2[11], *(a1 + 72));
}

id ULSensorsManager::buildPowerLogDict(ULSensorsManager *this)
{
  v1 = *(this + 232);
  if (v1)
  {
    v3 = (this + 104);
    while (*(v3 - 2) != *(this + 475))
    {
      v3 = (v3 + 88);
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    v6 = v3[3];
    v14 = v3[2];
    v15 = v6;
    v16 = v3[4];
    v7 = v3[1];
    *buf = *v3;
    v13 = v7;
    v17 = 1;
    ULScanningProfile::getTechnologyConfig(buf, 1uLL, v11);
    v9 = scanProfileToScanType(*(this + 475), v8);
    v5 = ULPowerLog::buildPowerLogMetrics(*(this + 940), v9, *(this + 466), v11[2], *(this + 246));
  }

  else
  {
LABEL_5:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSensorsManager::ULSensorsManager();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "Error: request to build power log dictionary while scanning profile is not initiated", buf, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

_DWORD *ULSensorsManager::removeScanProfilesIfNecessary(_DWORD *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((this[496] & 0xFFFFF) != 0)
  {
    v1 = this;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::addScanningProfile();
      }

      v2 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "removeScanProfilesIfNecessary";
        _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handle pending scan profile removal, method:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      v3 = v1[496];
      v4 = __clz(__rbit32(v3));
      if (v3)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      this = (*(*v1 + 48))(v1, v5);
      v6 = v1[496] & (v1[496] - 1) & 0xFFFFE;
      *(v1 + 248) = v6;
    }

    while (v6);
  }

  return this;
}

uint64_t ULSensorsManager::removeTechnologyProfileIfNecessary(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a3 + 8))
  {
    v5 = result;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULSensorsManager::addScanningProfile();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2082;
        v16 = "removeTechnologyProfileIfNecessary";
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handle pending profile removal, method:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      v7 = *(a3 + 8);
      v8 = __clz(__rbit32(v7));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      result = (*(*v5 + 56))(v5, a2, v9);
      v10 = *(a3 + 8) & (*(a3 + 8) - 1) & 0xFFFFFFFE;
      *(a3 + 8) = v10;
    }

    while (v10);
  }

  return result;
}

void ULSensorsManager::onScanTimeout(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2 > 2 ? "Unknown" : off_2798D4D40[a2];
    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    v6 = v14 >= 0 ? __p : __p[0];
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "onScanTimeout";
    *&buf[28] = 2082;
    *&buf[30] = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Scan Duration Timeout, method:%{public, location:escape_only}s, Technology::%{public, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  ULSensorsManager::stopScan(a1, a2);
  if (*(a1 + 1976))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (!a2)
  {
    *(a1 + 2008) = 6;
    v8 = *(a1 + 1856);
    if (v8)
    {
      v9 = (a1 + 104);
      while (*(v9 - 2) != *(a1 + 1900))
      {
        v9 = (v9 + 88);
        if (!--v8)
        {
          goto LABEL_20;
        }
      }

      v11 = v9[3];
      *&buf[32] = v9[2];
      v16 = v11;
      v17 = v9[4];
      v12 = v9[1];
      *buf = *v9;
      *&buf[16] = v12;
      v10 = 1;
    }

    else
    {
LABEL_20:
      v10 = 0;
      buf[0] = 0;
    }

    v18 = v10;
    ULScanningProfile::getTechnologyConfig(buf, 0, __p);
    *(a1 + 1968) = v14;
    v7 = 2;
  }

  ULSensorsManager::completeCurrentExecutionStep(a1, v7);
}

uint64_t ULSensorsManager::stopScan(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2 > 2 ? "Unknown" : off_2798D4D40[a2];
    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "stopScan";
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Stop Scan, method:%{public, location:escape_only}s, Technology::%{public, location:escape_only}s}", buf, 0x26u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = (*(*a1 + 112))(a1, a2);
  if (a2)
  {
    if (a2 == 2)
    {
      *(a1 + 2056) = 4;
      return ULSensorsManager::removeTechnologyProfileIfNecessary(a1, 2, a1 + 2040);
    }

    else if (a2 == 1)
    {
      (*(**(a1 + 72) + 24))(*(a1 + 72));
      *(a1 + 2032) = 4;
      return ULSensorsManager::removeTechnologyProfileIfNecessary(a1, 1, a1 + 2016);
    }
  }

  else
  {
    (*(**(a1 + 88) + 24))(*(a1 + 88));
    return ULSensorsManager::removeTechnologyProfileIfNecessary(a1, 0, a1 + 1992);
  }

  return result;
}

void ULSensorsManager::stopScanTimer(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSensorsManager::ULSensorsManager();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_2798D4D40[a2];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULSensorsManager, stopScanTimer, Technology::%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = a1 + 8 * a2;
  v8 = *(v7 + 8);
  v7 += 8;
  [v8 invalidate];
  v9 = *v7;
  *v7 = 0;
}

uint64_t ULSensorsManager::isConcurrentScanRunning(ULSensorsManager *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 232);
  if (v2)
  {
    v3 = (this + 105);
    while (*(v3 - 9) != *(this + 475))
    {
      v3 = (v3 + 88);
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    LOBYTE(v2) = *(v3 - 1);
    v5 = v3[3];
    v22 = v3[2];
    v23[0] = v5;
    *(v23 + 15) = *(v3 + 63);
    v7 = *v3;
    v6 = v3[1];
    v4 = 1;
    v20 = v7;
    v21 = v6;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  if ((*(this + 1976) & 1) == 0)
  {
    v15 = v21;
    v16 = v22;
    *v17 = v23[0];
    *&v17[15] = *(v23 + 15);
    v12 = 0;
    v13 = v2;
    v14 = v20;
    v9 = 8;
    v18 = v4;
    while (1)
    {
      v10 = *(this + v9);
      v11 = v12++;
      ULScanningProfile::getTechnologyConfig(&v13, v11, v19);
      if (v10)
      {
        if ((v19[24] & 1) == 0 || v19[12] != 1)
        {
          break;
        }
      }

      v9 += 8;
      if (v9 == 32)
      {
        return 1;
      }
    }
  }

  return 0;
}

void ULSensorsManager::~ULSensorsManager(ULSensorsManager *this)
{
  ULSensorsManager::~ULSensorsManager(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5AB48;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = 24;
  do
  {

    v7 -= 8;
  }

  while (v7);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_93()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULSystemTriggerGenerator::ULSystemTriggerGenerator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A5AC18;
  *(a1 + 8) = &unk_286A5AC60;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  v3 = ULSettings::get<ULSettings::RecordingThrottleDuration>();
  ULThrottle::ULThrottle(a1 + 32, v3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t ULSettings::get<ULSettings::RecordingThrottleDuration>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingThrottleDuration"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A71F40 intValue];
  }

  v5 = v4;

  return v5;
}

void ULSystemTriggerGenerator::configure(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  *(a1 + 24) = *a2;
  v4 = (a1 + 24);
  *(a1 + 28) = v3;
  v5 = ULSystemTriggerGenerator::recordingThrottleDuration(a1);
  ULScanningTriggerBuilder::setTimestamp(a1 + 32, v5);
  if (*(a1 + 27) == 1 && *v4 == 1)
  {

    ULSystemTriggerGenerator::startPeriodicTriggerTimer(a1);
  }

  else if (*(a1 + 64))
  {

    ULSystemTriggerGenerator::stopPeriodicTriggerTimer(a1);
  }
}

double ULSystemTriggerGenerator::recordingThrottleDuration(ULSystemTriggerGenerator *this)
{
  if (*(this + 26) != 1)
  {
    return ULSettings::get<ULSettings::RecordingThrottleDuration>();
  }

  v1 = +[ULDefaultsSingleton shared];
  v2 = [v1 defaultsDictionary];

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingThrottleDurationAcceleratedTriggering"];
  v4 = [v2 objectForKey:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = [&unk_286A71F28 intValue];
  }

  v7 = v5;

  return v7;
}

void ULSystemTriggerGenerator::startPeriodicTriggerTimer(ULSystemTriggerGenerator *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSystemTriggerGenerator::startPeriodicTriggerTimer();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULSystemTriggerGenerator, startPeriodicTriggerTimer}", buf, 0x12u);
  }

  v3 = [MEMORY[0x277CCABB0] numberWithDouble:ULSystemTriggerGenerator::periodicTriggerDelay(this)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN24ULSystemTriggerGenerator25startPeriodicTriggerTimerEv_block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = this;
  v4 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v3 repeats:MEMORY[0x277CBEC38] block:v6];
  v5 = *(this + 8);
  *(this + 8) = v4;
}

void ULSystemTriggerGenerator::stopPeriodicTriggerTimer(id *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSystemTriggerGenerator::startPeriodicTriggerTimer();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULSystemTriggerGenerator, stopPeriodicTriggerTimer}", v4, 0x12u);
  }

  [this[8] invalidate];
  v3 = this[8];
  this[8] = 0;
}

void ULSystemTriggerGenerator::onDisplayStateChange(ULSystemTriggerGenerator *this, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSystemTriggerGenerator::startPeriodicTriggerTimer();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Off";
    if (a2)
    {
      v5 = @"On";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "onDisplayStateChange: display: %@", &v6, 0xCu);
  }

  *(this + 56) = a2;
  if ([MEMORY[0x277D28868] isMac])
  {
    if (*(this + 56) == 1)
    {
      ULSystemTriggerGenerator::requestRecordingIfPossible(this, 0, 0);
    }
  }
}

void ULSystemTriggerGenerator::resetPeriodicTriggerTimer(id *this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSystemTriggerGenerator::startPeriodicTriggerTimer();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULSystemTriggerGenerator, resetPeriodicTriggerTimer}", v3, 0x12u);
  }

  ULSystemTriggerGenerator::stopPeriodicTriggerTimer(this);
  ULSystemTriggerGenerator::startPeriodicTriggerTimer(this);
}

double ULSystemTriggerGenerator::periodicTriggerDelay(ULSystemTriggerGenerator *this)
{
  v1 = *(this + 26);
  v2 = +[ULDefaultsSingleton shared];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = [v2 defaultsDictionary];

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPeriodicTriggerDelayAcceleratedTriggering"];
    v6 = [v4 objectForKey:v5];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [&unk_286A72DE0 doubleValue];
      goto LABEL_10;
    }
  }

  else
  {
    v4 = [v2 defaultsDictionary];

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPeriodicTriggerDelay"];
    v6 = [v4 objectForKey:v5];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [&unk_286A72DD0 doubleValue];
      goto LABEL_10;
    }
  }

  [v6 doubleValue];
LABEL_10:
  v8 = v7;

  return v8;
}

void ___ZN24ULSystemTriggerGenerator25startPeriodicTriggerTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 1)
  {
    ULSystemTriggerGenerator::requestRecordingIfPossible(v1, 0, 1);
  }
}

void ULSystemTriggerGenerator::~ULSystemTriggerGenerator(id *this)
{
}

{

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toULSystemTriggerGenerator::~ULSystemTriggerGenerator(id *this)
{
}

{

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_94()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULTriggerQueue::~ULTriggerQueue(ULTriggerQueue *this)
{
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](this + 976);
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](this + 944);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 912);
}

void ULTriggerEngine::ULTriggerEngine(ULTriggerEngine *this)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = this + 16;
  v3 = this + 24;
  *this = &unk_286A5AD20;
  *(this + 1) = &unk_286A5AE78;
  *(this + 2) = &unk_286A5AF08;
  *(this + 3) = &unk_286A5AF40;
  *(this + 4) = &unk_286A5AFA8;
  *(this + 5) = &unk_286A5AFE8;
  *(this + 6) = &unk_286A5B010;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  ULSchedulingProfileManager::ULSchedulingProfileManager(this + 96, this + 48);
  v7[0] = &unk_286A5B378;
  v7[1] = this;
  v7[3] = v7;
  v6[0] = &unk_286A5B408;
  v6[1] = this;
  v6[3] = v6;
  v5[0] = &unk_286A5B488;
  v5[1] = ULTriggerQueue::defaultTimeProvider;
  v5[3] = v5;
  ULTriggerQueue::ULTriggerQueue(this + 944, v7, v6, v5);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](v7);
  v4[0] = &unk_286A5B488;
  v4[1] = ULTriggerEngineFSM::defaultTimeProvider;
  v4[3] = v4;
  ULTriggerEngineFSM::ULTriggerEngineFSM(this + 1952, v2, v3, v4);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](v4);
  *(this + 363) = 0;
  *(this + 2872) = 0u;
  *(this + 2888) = 0u;
  *(this + 2840) = 0u;
  *(this + 2856) = 0u;
  *(this + 728) = -1;
  *(this + 365) = 0;
}

void sub_259128AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](va);
  ULTriggerQueue::~ULTriggerQueue((v3 + 944));
  _Unwind_Resume(a1);
}

void ULTriggerEngine::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[355] = v10;
  v11 = a1[356];
  a1[356] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  a1[357] = v13;
  v14 = a1[358];
  a1[358] = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v16 = *a4;
  v15 = a4[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  a1[359] = v16;
  v17 = a1[360];
  a1[360] = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v19 = *a5;
  v18 = a5[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  a1[361] = v19;
  v20 = a1[362];
  a1[362] = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v21 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 68289282;
    v22[1] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2082;
    v26 = "setDependencies";
    _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULTriggerEngine initialized, method:%{public, location:escape_only}s}", v22, 0x1Cu);
  }
}

uint64_t ULTriggerEngine::addWiFiProfile(uint64_t a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "addWiFiProfile";
    v12 = 1026;
    v13 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add Wifi profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }

  result = (*(**(a1 + 2888) + 24))(*(a1 + 2888), a2);
  if (*a2 >= 0x1E)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(a1 + 64) |= 1 << *a2;
  return result;
}

uint64_t ULTriggerEngine::addBLEProfile(ULTriggerEngine *this, const ULBleTechnologyProfile *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "addBLEProfile";
    v12 = 1026;
    v13 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add Ble profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }

  result = (*(**(this + 361) + 32))(*(this + 361), a2);
  if (*a2 >= 0x1Eu)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(this + 9) |= 1 << *a2;
  return result;
}

uint64_t ULTriggerEngine::addUWBProfile(uint64_t a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "addUWBProfile";
    v12 = 1026;
    v13 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add Uwb profile, method:%{public, location:escape_only}s, index:%{public}d}", v7, 0x22u);
  }

  result = (*(**(a1 + 2888) + 40))(*(a1 + 2888), a2);
  if (*a2 >= 0x1E)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
  }

  *(a1 + 80) |= 1 << *a2;
  return result;
}

BOOL ULTriggerEngine::removeWiFiProfile(ULTriggerEngine *this, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x1E)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  v4 = 1 << a2;
  v5 = *(this + 8) & (1 << a2);
  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeWiFiProfile";
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove Wifi profile, method:%{public, location:escape_only}s, index:%{public}d}", &v9, 0x22u);
    }

    (*(**(this + 361) + 56))(*(this + 361), 0, a2);
    *(this + 8) &= ~v4;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeWiFiProfile";
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:removeWiFiProfile, not added yet, method:%{public, location:escape_only}s, wifi profile index:%{public}d}", &v9, 0x22u);
    }
  }

  return v5 != 0;
}

BOOL ULTriggerEngine::removeBLEProfile(ULTriggerEngine *this, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x1E)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  v4 = 1 << a2;
  v5 = *(this + 9) & (1 << a2);
  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeBLEProfile";
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove Ble profile, method:%{public, location:escape_only}s, index:%{public}d}", &v9, 0x22u);
    }

    (*(**(this + 361) + 56))(*(this + 361), 1, a2);
    *(this + 9) &= ~v4;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeBLEProfile";
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:removeBleProfile, not added yet, method:%{public, location:escape_only}s, profile index:%{public}d}", &v9, 0x22u);
    }
  }

  return v5 != 0;
}

BOOL ULTriggerEngine::removeUWBProfile(ULTriggerEngine *this, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x1E)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  v4 = 1 << a2;
  v5 = *(this + 10) & (1 << a2);
  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeUWBProfile";
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove Uwb profile, method:%{public, location:escape_only}s, index:%{public}d}", &v9, 0x22u);
    }

    (*(**(this + 361) + 56))(*(this + 361), 2, a2);
    *(this + 10) &= ~v4;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeUWBProfile";
      v15 = 1026;
      v16 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:removeUwbProfile, not added yet, method:%{public, location:escape_only}s, profile index:%{public}d}", &v9, 0x22u);
    }
  }

  return v5 != 0;
}

uint64_t ULTriggerEngine::addScanningProfile(ULTriggerEngine *this, const ULScanningProfile *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = ULScanningProfile::getScanConfigs(a2) + 8;
  v5 = 72;
  while ((ULTriggerEngine::isTechnologyProfileAvailable(this, *(v4 - 8), *v4) & 1) != 0 || *(v4 + 5) != 1)
  {
    v4 += 24;
    v5 -= 24;
    if (!v5)
    {
      v6 = (*(**(this + 361) + 16))(*(this + 361), a2);
      if (v6)
      {
        Index = ULScanningProfile::getIndex(a2);
        if (Index >= 0x14)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
        }

        *(this + 11) |= 1 << Index;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngine::setDependencies();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 68289794;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        v14 = 2082;
        v15 = "addScanningProfile";
        v16 = 1026;
        v17 = v6;
        v18 = 1026;
        v19 = ULScanningProfile::getIndex(a2);
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add scanning profile, method:%{public, location:escape_only}s, added:%{public}hhd, profile index:%{public}d}", &v10, 0x28u);
      }

      goto LABEL_17;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "addScanningProfile";
    v16 = 1026;
    v17 = ULScanningProfile::getIndex(a2);
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add scanning profile, dependencies not met, method:%{public, location:escape_only}s, profile index:%{public}d}", &v10, 0x22u);
  }

  v6 = 0;
LABEL_17:

  return v6;
}

uint64_t ULTriggerEngine::isTechnologyProfileAvailable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  switch(a2)
  {
    case 2:
      if (a3 < 0x1E)
      {
        v3 = 80;
        return (*(a1 + v3) >> a3) & 1;
      }

      goto LABEL_13;
    case 1:
      if (a3 < 0x1E)
      {
        v3 = 72;
        return (*(a1 + v3) >> a3) & 1;
      }

LABEL_13:
      std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
    case 0:
      if (a3 < 0x1E)
      {
        v3 = 64;
        return (*(a1 + v3) >> a3) & 1;
      }

      goto LABEL_13;
  }

  return 0;
}

uint64_t ULTriggerEngine::removeScanningProfile(ULTriggerEngine *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x14)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  v2 = a2;
  v4 = 1 << a2;
  if ((*(this + 11) & (1 << a2)) != 0)
  {
    v5 = (*(**(this + 361) + 48))(*(this + 361), a2);
    if (v5)
    {
      *(this + 11) &= ~v4;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289794;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeScanningProfile";
      v15 = 1026;
      v16 = v5;
      v17 = 1026;
      v18 = v2;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove scanning profile, method:%{public, location:escape_only}s, removed:%{public}hhd, profile index:%{public}d}", &v9, 0x28u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v7 = logObject_MicroLocation_Default;
    v5 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "removeScanningProfile";
      v15 = 1026;
      v16 = v2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:remove scanning profile, but not added yet, method:%{public, location:escape_only}s, profile index:%{public}d}", &v9, 0x22u);
      return 0;
    }
  }

  return v5;
}

BOOL ULTriggerEngine::addSchedulingProfile(ULTriggerEngine *this, const ULSchedulingProfile *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  ULHomeSlamModel::getTrajectoryPointCloud(a2);
  v5 = *(v4 + 4);
  if (v5 >= 0x14)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if ((*(this + 11) >> v5))
  {

    return ULSchedulingProfileManager::addProfile((this + 96), a2);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      ULHomeSlamModel::getTrajectoryPointCloud(a2);
      v9 = *v8;
      v10[0] = 68289538;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "addSchedulingProfile";
      v15 = 1026;
      v16 = v9;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:add scheduling profile, dependencies not met, method:%{public, location:escape_only}s, profile index:%{public}d}", v10, 0x22u);
    }

    return 0;
  }
}

uint64_t ULTriggerEngine::suspendSchedulingProfile(ULTriggerEngine *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "suspendSchedulingProfile";
    v14 = 1026;
    v15 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:suspending a scheduling profile, method:%{public, location:escape_only}s, profile index:%{public}d}", &v8, 0x22u);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (onceToken_MicroLocationQE_Default != -1)
      {
        ULTriggerEngine::suspendSchedulingProfile();
      }

      v5 = logObject_MicroLocationQE_Default;
      if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289026;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v6 = "{msg%{public}.0s:Localizing profile suspended}";
LABEL_15:
        _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x12u);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocationQE_Default != -1)
    {
      ULTriggerEngine::suspendSchedulingProfile();
    }

    v5 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v6 = "{msg%{public}.0s:Recording profile suspended}";
      goto LABEL_15;
    }
  }

  return ULSchedulingProfileManager::suspendProfile((this + 96), a2);
}

uint64_t ULTriggerEngine::handleScanAborted(ULTriggerEngine *this)
{
  v2 = 3;
  v3 = 0;
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(this + 1952, &v2);
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25912A014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ULTriggerEngine::handleScanAborted();
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULTriggerEngine::requestAbortScan(ULTriggerEngine *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 728);
    v5[0] = 68289538;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "requestAbortScan";
    v10 = 1026;
    v11 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:request abort scan, method:%{public, location:escape_only}s, scan request id:%{public}d}", v5, 0x22u);
  }

  return (*(**(this + 361) + 80))(*(this + 361), *(this + 728));
}

void ULTriggerEngine::scheduleMinScanIntervalTimer(uint64_t a1, double *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "scheduleMinScanIntervalTimer";
    v16 = 1026;
    v17 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:schedule throttle timer between scans, method:%{public, location:escape_only}s, duration:%{public}d}", buf, 0x22u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*a2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN15ULTriggerEngine28scheduleMinScanIntervalTimerERKNSt3__16chrono8durationIeNS0_5ratioILl1ELl1EEEEE_block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a1;
  v7 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v6 repeats:MEMORY[0x277CBEC28] block:v9];
  v8 = *(a1 + 2904);
  *(a1 + 2904) = v7;
}

uint64_t ___ZN15ULTriggerEngine28scheduleMinScanIntervalTimerERKNSt3__16chrono8durationIeNS0_5ratioILl1ELl1EEEEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289282;
    *v5 = 2082;
    *&v5[2] = "";
    v6 = 2082;
    v7 = "scheduleMinScanIntervalTimer_block_invoke";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Throttle Timer CB, method:%{public, location:escape_only}s}", &v4, 0x1Cu);
  }

  v4 = 5;
  *v5 = 0;
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(v1 + 1952, &v4);
  result = *v5;
  *v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_25912A41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ULTriggerEngine::handleScanAborted();
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULTriggerEngine::appendScanTrigger(ULTriggerEngine *this, const ULScanningTrigger *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ULScanningTrigger::description(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "appendScanTrigger";
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:appending scan trigger, method:%{public, location:escape_only}s, trigger:%{public, location:escape_only}s}", buf, 0x26u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (*(**(this + 361) + 88))(*(this + 361), a2);
}

void ULTriggerEngine::resetMotionFenceIfNeeded(ULTriggerEngine *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (ULSchedulingProfileManager::activeMotionProfileExists((this + 96)))
  {
    v2 = *(**(this + 355) + 40);

    v2();
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "resetMotionFenceIfNeeded";
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:no active motion profile, will not reset motion fence, method:%{public, location:escape_only}s}", v4, 0x1Cu);
    }
  }
}

ULSchedulingProfile *ULTriggerEngine::resumeSchedulingProfile(ULTriggerEngine *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "resumeSchedulingProfile";
    v20 = 1026;
    v21 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:resume a scheduling profile, method:%{public, location:escape_only}s, profile index:%{public}d}", buf, 0x22u);
  }

  ULSchedulingProfileManager::schedulingProfileByIndex(this + 96, a2, buf);
  if (ULSchedulingProfile::hasPeriodicTriggerEnabled(buf))
  {
    ULHomeSlamModel::getTrajectoryPointCloud(buf);
    v6 = v5;
    SchedulingSettings = ULSchedulingProfile::getSchedulingSettings(buf);
    (*(*this + 272))(this, v6, *(SchedulingSettings + 8));
  }

  active = ULSchedulingProfileManager::activeMotionProfileExists((this + 96));
  v9 = ULSchedulingProfileManager::resumeProfile((this + 96), a2);
  if ((active & 1) == 0 && ULSchedulingProfileManager::activeMotionProfileExists((this + 96)))
  {
    (*(**(this + 355) + 32))(*(this + 355));
  }

  v12 = 1;
  v13 = 0;
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::handleEvent(this + 1952, &v12);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return v9;
}

void sub_25912A900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ULTriggerEngine::handleScanAborted();
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULTriggerEngine::isScanningProfileAvailable(ULTriggerEngine *this, unsigned int a2)
{
  if (a2 >= 0x14)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*(this + 11) >> a2) & 1;
}

void ULTriggerEngine::fetchAndDequeueTopPriorityActiveTriggers(ULTriggerEngine *this@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  ULTriggerQueue::removeExpiredTriggers((this + 944), a3);

  ULTriggerQueue::dequeueTopPriorityProfilesBatch((this + 944), a2);
}

uint64_t ULTriggerEngine::hasTopPriorityActiveTriggers(ULTriggerEngine *this, uint64_t a2)
{
  ULTriggerQueue::removeExpiredTriggers((this + 944), a2);

  return ULTriggerQueue::hasTopPriorityActiveTriggers((this + 944));
}

ULSchedulingProfile *ULTriggerEngine::startMotionDetected(ULTriggerEngine *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "startMotionDetected";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start motion detected, method:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  result = ULSchedulingProfileManager::getProfilesWithScanOnStartMotion((this + 96), buf);
  if (v26)
  {
    v4 = 32 * v26;
    v5 = buf;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngine::requestTrigger();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        ULHomeSlamModel::getTrajectoryPointCloud(v5);
        ULScanTriggerSettings::description(__p, v7);
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *v12 = 68289538;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "startMotionDetected";
        v18 = 2082;
        v19 = v8;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start motion signal generating a trigger, method:%{public, location:escape_only}s, trigger scheduling settings:%{public, location:escape_only}s}", v12, 0x26u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ULHomeSlamModel::getTrajectoryPointCloud(v5);
      result = (*(*this + 168))(this, 0, v9);
      v5 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  return result;
}

ULSchedulingProfile *ULTriggerEngine::handleInMotionDetection(ULTriggerEngine *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "handleInMotionDetection";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:in motion detected, method:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  result = ULSchedulingProfileManager::getProfilesWithScanOnInMotion((this + 96), buf);
  if (v26)
  {
    v4 = 32 * v26;
    v5 = buf;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngine::requestTrigger();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        ULHomeSlamModel::getTrajectoryPointCloud(v5);
        ULScanTriggerSettings::description(__p, v7);
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *v12 = 68289538;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "handleInMotionDetection";
        v18 = 2082;
        v19 = v8;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:in motion signal generating a trigger, method:%{public, location:escape_only}s, trigger scheduling settings:%{public, location:escape_only}s}", v12, 0x26u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ULHomeSlamModel::getTrajectoryPointCloud(v5);
      result = (*(*this + 168))(this, 1, v9);
      v5 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  return result;
}

ULSchedulingProfile *ULTriggerEngine::stopMotionDetected(ULTriggerEngine *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "stopMotionDetected";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop motion detected, method:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  result = ULSchedulingProfileManager::getProfilesWithScanOnStopMotion((this + 96), buf);
  if (v26)
  {
    v4 = 32 * v26;
    v5 = buf;
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngine::requestTrigger();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        ULHomeSlamModel::getTrajectoryPointCloud(v5);
        ULScanTriggerSettings::description(__p, v7);
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *v12 = 68289538;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = "stopMotionDetected";
        v18 = 2082;
        v19 = v8;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop motion signal generating a trigger, method:%{public, location:escape_only}s, trigger scheduling settings:%{public, location:escape_only}s}", v12, 0x26u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ULHomeSlamModel::getTrajectoryPointCloud(v5);
      result = (*(*this + 168))(this, 2, v9);
      v5 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  return result;
}

void ULTriggerEngine::onScanComplete(_DWORD *a1, int a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  ULTriggerEngineFSM::scanSessionContext(&v11, (a1 + 488));
  if ((v18 & 1) == 0)
  {
    ULTriggerEngine::onScanComplete(v6);
  }

  if (a3 != 4)
  {
    ULTriggerEngine::handleScanCompleted(a1, a3 == 0);
  }

  ULTriggerEngine::handleScanAborted(a1);
  if (a1[728] != a2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::requestTrigger();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[728];
      v11 = 68289538;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v8;
      v16 = 1026;
      v17 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onScanComplete, scan request id doesn't match, requested scan id:%{public}d, returned scan id:%{public}d}", &v11, 0x1Eu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::requestTrigger();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = a1[728];
      v11 = 68289538;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v10;
      v16 = 1026;
      v17 = a2;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onScanComplete, scan request id doesn't match", "{msg%{public}.0s:onScanComplete, scan request id doesn't match, requested scan id:%{public}d, returned scan id:%{public}d}", &v11, 0x1Eu);
    }
  }

  a1[728] = -1;
}

void sub_25912B3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ULTriggerEngine::handleScanAborted();
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULTriggerEngine::startMotionBasedTriggers(ULTriggerEngine *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "startMotionBasedTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start motion based triggers, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(this + 355) + 16))(*(this + 355));
}

uint64_t ULTriggerEngine::stopMotionBasedTriggers(ULTriggerEngine *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "stopMotionBasedTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop motion based triggers, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**(this + 355) + 24))(*(this + 355));
}

void ULTriggerEngine::startPeriodicTriggers(ULTriggerEngine *this, const ULScanTriggerSettings *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 365))
  {
    ULTriggerEngine::startPeriodicTriggers(this);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *v12 = 2082;
    *&v12[2] = "";
    *&v12[10] = 2082;
    *&v12[12] = "startPeriodicTriggers";
    *&v12[20] = 1026;
    *&v12[22] = a3;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Start Periodic based triggers, method:%{public, location:escape_only}s, Interval:%{public}d}", buf, 0x22u);
  }

  (*(*this + 168))(this, 5, a2);
  *buf = 0;
  *v12 = buf;
  *&v12[8] = 0x4012000000;
  *&v12[16] = __Block_byref_object_copy__31;
  *&v12[24] = __Block_byref_object_dispose__31;
  v13 = &unk_25929B3B7;
  v14 = *a2;
  v15 = *(a2 + 2);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN15ULTriggerEngine21startPeriodicTriggersERK21ULScanTriggerSettingsd_block_invoke;
  v10[3] = &unk_2798D4650;
  v10[4] = buf;
  v10[5] = this;
  v8 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v7 repeats:MEMORY[0x277CBEC38] block:v10];
  v9 = *(this + 365);
  *(this + 365) = v8;

  _Block_object_dispose(buf, 8);
}

void sub_25912B82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

uint64_t ___ZN15ULTriggerEngine21startPeriodicTriggersERK21ULScanTriggerSettingsd_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "startPeriodicTriggers_block_invoke";
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Periodic trigger scheduling Timer CB, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  (*(*v2 + 168))(v2, 5, *(*(a1 + 32) + 8) + 48);
  result = ULSchedulingProfileManager::isProfileSuspended((v2 + 96), *(*(*(a1 + 32) + 8) + 48));
  if (result)
  {
    return (*(*v2 + 280))(v2);
  }

  return result;
}

void ULTriggerEngine::stopPeriodicTriggers(id *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngine::setDependencies();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "stopPeriodicTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Stop Periodic based triggers, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  [this[365] invalidate];
  v3 = this[365];
  this[365] = 0;
}

void ULTriggerEngine::~ULTriggerEngine(ULTriggerEngine *this)
{
}

{

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toULTriggerEngine::~ULTriggerEngine(ULTriggerEngine *this)
{
}

{

  JUMPOUT(0x259CA1F90);
}

{
}

{

  JUMPOUT(0x259CA1F90);
}

{
}

{

  JUMPOUT(0x259CA1F90);
}

{
}

{

  JUMPOUT(0x259CA1F90);
}

{
}

{

  JUMPOUT(0x259CA1F90);
}

{
}

{

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_95()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_2()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void ULTriggerEngine::~ULTriggerEngine(ULTriggerEngine *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = a2[5];
  *(this + *(v3 - 24)) = a2[6];
  *(this + 2) = a2[7];
  *(this + 3) = &unk_286A5AF40;
  *(this + 4) = &unk_286A5AFA8;
  *(this + 5) = &unk_286A5AFE8;
  *(this + 6) = &unk_286A5B010;

  v4 = *(this + 362);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 360);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 358);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 356);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(this + 244) = &unk_286A5B5F8;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 2808);
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(this + 244);
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](this + 1920);
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](this + 1888);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 1856);
}

void *ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(void *a1)
{
  *a1 = &unk_286A5B328;
  for (i = 91; i != 71; i -= 2)
  {
    v3 = a1[i];
    a1[i] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(void *a1)
{
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::printState(uint64_t a1)
{
  v1 = *(a1 + 560);
  v2 = *(a1 + 568);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

{
  return (*(*a1 + 40))();
}

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_0,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_0>,BOOL ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5B378;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_0,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_0>,BOOL ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_1,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_1>,BOOL ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5B408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ULTriggerEngine::ULTriggerEngine(void)::$_1,std::allocator<ULTriggerEngine::ULTriggerEngine(void)::$_1>,BOOL ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void),std::allocator<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void)>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5B488;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void),std::allocator<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> (*)(void)>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ULFSMEventQueue<ULTriggerEngineEvent,10ul>::operator[](uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 176) <= a2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::setDependencies();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "operator[]";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Index out of boundst, method:%{public, location:escape_only}s}", &v11, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngine::requestTrigger();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "operator[]";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Index out of boundst", "{msg%{public}.0s:Index out of boundst, method:%{public, location:escape_only}s}", &v11, 0x1Cu);
    }

    v8 = 0;
    *a3 = 0;
  }

  else
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 16 * ((v4 + a2) % 0xAuLL));
    v6 = a1 + 16 * v4;
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
    *a3 = v5;
    *(a3 + 8) = v7;
    v8 = 1;
  }

  *(a3 + 16) = v8;
}

BOOL OUTLINED_FUNCTION_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

double ULTriggerEngineFSM::getTransitionTable(ULTriggerEngineFSM *this)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    ULTriggerEngineFSM::getTransitionTable();
  }

  qword_281456590 = 0;
  unk_281456598 = 0;
  qword_281456580 = 0;
  *algn_281456588 = ULTriggerEngineFSM::handleNewTriggerInIdle;
  qword_2814565A0 = ULTriggerEngineFSM::handlePendingTriggersUnsuspended;
  unk_2814565A8 = 0u;
  unk_2814565B8 = 0u;
  unk_2814565C8 = 0u;
  qword_2814565D8 = 0;
  unk_2814565E0 = 1;
  unk_2814565E8 = 0u;
  unk_2814565F8 = 0u;
  qword_281456608 = 0;
  unk_281456610 = 1;
  qword_281456618 = ULTriggerEngineFSM::handleNewTriggerInScan;
  xmmword_281456620 = xmmword_25921A970;
  qword_281456630 = 0;
  unk_281456638 = 0;
  qword_281456640 = 2;
  unk_281456648 = ULTriggerEngineFSM::handleScanComplete;
  result = 0.0;
  xmmword_281456650 = xmmword_2592201A0;
  qword_281456660 = 0;
  unk_281456668 = 0;
  qword_281456670 = 1;
  unk_281456678 = 0;
  qword_281456680 = 0;
  unk_281456688 = 1;
  qword_281456690 = 0;
  unk_281456698 = 0;
  qword_2814566A0 = 2;
  unk_2814566A8 = ULTriggerEngineFSM::handleNewTriggerInThrottle;
  xmmword_2814566B0 = xmmword_2592201A0;
  qword_2814566C0 = 0;
  unk_2814566C8 = 0;
  qword_2814566D0 = 2;
  unk_2814566D8 = 0;
  qword_2814566E0 = 0;
  unk_2814566E8 = 2;
  qword_2814566F0 = 0;
  unk_2814566F8 = 0;
  qword_281456700 = 2;
  unk_281456708 = 0;
  qword_281456710 = 0;
  unk_281456718 = 0;
  qword_281456720 = ULTriggerEngineFSM::handleThrottleCompleted;
  unk_281456728 = 0;
  return result;
}

void ULTriggerEngineFSM::handlePendingTriggersUnsuspended(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = (*(**(a1 + 768) + 32))(*(a1 + 768));
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289538;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "handlePendingTriggersUnsuspended";
    v9 = 1026;
    v10 = v2;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pendingTriggersUnsuspended, method:%{public, location:escape_only}s, hasValidTriggers:%{public}hhd}", v4, 0x22u);
  }

  if (v2)
  {
    (*(**(a1 + 776) + 80))(*(a1 + 776));
  }
}

void ULTriggerEngineFSM::handleNewTriggerInScan(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 && (v5 = (*(*v4 + 16))(v4), v5 == 675588685))
  {
    v6 = *(a2 + 8);
    v7 = *(v6 + 36);
    if (v7 < 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "handleNewTriggerInScan";
        v29 = 1026;
        LODWORD(v30) = v7;
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInScan, invalid scanning profile, method:%{public, location:escape_only}s, arriving scanning profile:%{public}d}", buf, 0x22u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "handleNewTriggerInScan";
        v29 = 1026;
        LODWORD(v30) = v7;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInScan, invalid scanning profile", "{msg%{public}.0s:handleNewTriggerInScan, invalid scanning profile, method:%{public, location:escape_only}s, arriving scanning profile:%{public}d}", buf, 0x22u);
      }
    }

    else
    {
      if ((*(a1 + 840) & 1) == 0)
      {
        ULTriggerEngineFSM::handleNewTriggerInScan(v5);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        ULScanningTrigger::description((v6 + 8), v21);
        v9 = v22;
        v10 = v21[0];
        ULScanningTrigger::description((a1 + 784), __p);
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

        *buf = 68289794;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = "handleNewTriggerInScan";
        v29 = 2082;
        v30 = v11;
        v31 = 2082;
        v32 = v12;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleNewTriggerInScan, method:%{public, location:escape_only}s, arriving trigger:%{public, location:escape_only}s, ongoing scan initiating trigger:%{public, location:escape_only}s}", buf, 0x30u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }

      if (*(a1 + 812) == v7)
      {
        (*(**(a1 + 776) + 56))(*(a1 + 776), v6 + 8);
      }

      else
      {
        if (*(v6 + 40) > *(a1 + 816))
        {
          (*(**(a1 + 776) + 40))(*(a1 + 776));
        }

        (*(**(a1 + 776) + 16))(*(a1 + 776), v6 + 8);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "handleNewTriggerInScan";
      v29 = 2050;
      v30 = v14;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInScan, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "handleNewTriggerInScan";
      v29 = 2050;
      v30 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInScan, unexpected event data", "{msg%{public}.0s:handleNewTriggerInScan, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }
  }
}

void sub_25912CEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULTriggerEngineFSM::handleScanComplete(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 && (*(*v4 + 16))(v4) == -980164530)
  {
    v5 = *(a2 + 8);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v5 + 8);
      v14 = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "handleScanComplete";
      v20 = 1026;
      LODWORD(v21) = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scan completed, method:%{public, location:escape_only}s, scan succeeded?:%{public}hhd}", &v14, 0x22u);
    }

    *(a1 + 824) = *(v5 + 8) ^ 1;
    if (scanProfileToScanType(*(a1 + 812), v7) == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2082;
        v19 = "handleScanComplete";
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:localization scan completed, reset Motion fence if needed, method:%{public, location:escape_only}s}", &v14, 0x1Cu);
      }

      (*(**(a1 + 776) + 72))(*(a1 + 776));
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v14 = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "handleScanComplete";
      v20 = 2050;
      v21 = v11;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleScanComplete, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", &v14, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      v13 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v14 = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "handleScanComplete";
      v20 = 2050;
      v21 = v13;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleScanComplete, unexpected event data", "{msg%{public}.0s:handleScanComplete, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", &v14, 0x26u);
    }
  }
}

void ULTriggerEngineFSM::handleNewTriggerInThrottle(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 && (*(*v4 + 16))(v4) == 675588685)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
    }

    else
    {
      v6 = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      ULScanningTrigger::description((v6 + 8), __p);
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "handleNewTriggerInThrottle";
      v21 = 2082;
      v22 = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleNewTriggerInThrottle, method:%{public, location:escape_only}s, arriving trigger:%{public, location:escape_only}s}", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**(a1 + 776) + 16))(*(a1 + 776), v6 + 8);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "handleNewTriggerInThrottle";
      v21 = 2050;
      v22 = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:handleNewTriggerInThrottle, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v9))
    {
      v10 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "handleNewTriggerInThrottle";
      v21 = 2050;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleNewTriggerInThrottle, unexpected event data", "{msg%{public}.0s:handleNewTriggerInThrottle, unexpected event data, method:%{public, location:escape_only}s, data type:%{public}lu}", buf, 0x26u);
    }
  }
}

uint64_t ULTriggerEngineFSM::handleThrottleCompleted(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(**(a1 + 768) + 32))(*(a1 + 768));
    v5[0] = 68289538;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "handleThrottleCompleted";
    v10 = 1026;
    v11 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:throttle completed, method:%{public, location:escape_only}s, has more triggers to process ?:%{public}hhd}", v5, 0x22u);
  }

  result = (*(**(a1 + 768) + 32))(*(a1 + 768));
  if (result)
  {
    return (*(**(a1 + 776) + 80))(*(a1 + 776));
  }

  return result;
}

uint64_t ULTriggerEngineFSM::enterThrottleState(ULTriggerEngineFSM *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 840))
  {
    v1 = this;
    if (onceToken_MicroLocation_Default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ULTriggerEngineFSM::enterThrottleState(this);
  }

  ULTriggerEngineFSM::handleNewTriggerInIdle();
LABEL_3:
  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1[824];
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "enterThrottleState";
    v11 = 1026;
    v12 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:enter throttle state, method:%{public, location:escape_only}s, should generate retry trigger?:%{public}hhd}", v6, 0x22u);
  }

  ULTriggerEngineFSM::retryScanIfNeeded(v1);
  result = ULTriggerEngineFSM::scheduleThrottleTimer(v1, v4);
  if (v1[840] == 1)
  {
    v1[840] = 0;
  }

  return result;
}

uint64_t ULTriggerEngineFSM::ULTriggerEngineFSM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  ULTriggerEngineFSM::getTransitionTable(a1);
  memcpy(__dst, &qword_281456580, sizeof(__dst));
  *a1 = &unk_286A5B328;
  *(a1 + 8) = 0;
  memcpy((a1 + 16), __dst, 0x1B0uLL);
  v8 = *&off_286A5B5C8;
  *(a1 + 448) = ULTriggerEngineFSM::getEnterActions(void)::enterActions;
  *(a1 + 464) = v8;
  *(a1 + 480) = xmmword_286A5B5D8;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = ULTriggerEngineFSM::printEvent;
  *(a1 + 552) = 0;
  *(a1 + 560) = ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::printState;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0;
  *a1 = &unk_286A5B5F8;
  *(a1 + 768) = a2;
  *(a1 + 776) = a3;
  *(a1 + 784) = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__value_func[abi:ne200100](a1 + 856, a4);
  return a1;
}

void ULTriggerEngineFSM::retryScanIfNeeded(ULTriggerEngineFSM *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 824) == 1)
  {
    if (*(this + 848) > 4u)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 68289538;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "retryScanIfNeeded";
        v13 = 1026;
        v14 = 5;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:max number of retry attempt reached, method:%{public, location:escape_only}s, max retry count:%{public}d}", &v7, 0x22u);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULTriggerEngineFSM::handleNewTriggerInIdle();
      }

      v2 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(this + 848);
        v7 = 68289794;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "retryScanIfNeeded";
        v13 = 1026;
        v14 = v3;
        v15 = 1026;
        v16 = 5;
        _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:create and handle retry trigger, method:%{public, location:escape_only}s, retry count:%{public}d, max retry count:%{public}d}", &v7, 0x28u);
      }

      v4 = *(this + 97);
      ULScanTriggerSettings::ULScanTriggerSettings(&v7, -1, *(this + 203), 1);
      (*(*v4 + 24))(v4, 4, &v7);
      ++*(this + 848);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerEngineFSM::handleNewTriggerInIdle();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "retryScanIfNeeded";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reset retry count, method:%{public, location:escape_only}s}", &v7, 0x1Cu);
    }

    *(this + 848) = 0;
  }
}

uint64_t ULTriggerEngineFSM::scheduleThrottleTimer(ULTriggerEngineFSM *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (*(this + 104) != -1.79769313e308)
  {
    std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::operator()[abi:ne200100](this + 856, a2);
    v3 = v4 - *(this + 104);
  }

  if (v3 >= 5.0)
  {
    v5 = 0.1;
  }

  else
  {
    v5 = 5.0 - v3;
  }

  v8 = v5;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULTriggerEngineFSM::handleNewTriggerInIdle();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "scheduleThrottleTimer";
    v15 = 1026;
    v16 = v5;
    v17 = 1026;
    v18 = v3;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting throttle timer, method:%{public, location:escape_only}s, Throttle duration:%{public}d, Scan duration:%{public}d}", buf, 0x28u);
  }

  return (*(**(this + 97) + 48))(*(this + 97), &v8);
}

__n128 ULTriggerEngineFSM::scanSessionContext@<Q0>(uint64_t *__return_ptr a1@<X8>, ULTriggerEngineFSM *this@<X0>)
{
  v2 = *(this + 50);
  *a1 = *(this + 49);
  *(a1 + 1) = v2;
  result = *(this + 51);
  v4 = *(this + 52);
  *(a1 + 2) = result;
  *(a1 + 3) = v4;
  return result;
}

void ULTriggerEngineFSM::~ULTriggerEngineFSM(ULTriggerEngineFSM *this)
{
  *this = &unk_286A5B5F8;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 856);

  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(this);
}

{
  *this = &unk_286A5B5F8;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](this + 856);
  ULStateMachine<ULTriggerEngineState,ULTriggerEngineEvent,ULTriggerEngineFSM>::~ULStateMachine(this);

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_96()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ULTriggerQueue::ULTriggerQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 440; i += 40)
  {
    ULScanningTrigger::ULScanningTrigger((a1 + i));
  }

  do
  {
    ULScanningTrigger::ULScanningTrigger((a1 + i));
    i += 40;
  }

  while (i != 880);
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::__value_func[abi:ne200100](a1 + 912, a4);
  std::__function::__value_func<BOOL ()(int)>::__value_func[abi:ne200100](a1 + 944, a2);
  std::__function::__value_func<BOOL ()(int)>::__value_func[abi:ne200100](a1 + 976, a3);
  return a1;
}

void sub_25912E144(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(int)>::~__value_func[abi:ne200100](v1 + 944);
  std::__function::__value_func<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> ()(void)>::~__value_func[abi:ne200100](v1 + 912);
  _Unwind_Resume(a1);
}

void ULTriggerQueue::logQueueFullError(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:ULTriggerQueue, high priority queue is full}", &v7, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v4 = "ULTriggerQueue, high priority queue is full";
      v5 = "{msg%{public}.0s:ULTriggerQueue, high priority queue is full}";
LABEL_18:
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v4, v5, &v7, 0x12u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:ULTriggerQueue, low priority queue is full}", &v7, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULTriggerQueue::logQueueFullError();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v4 = "ULTriggerQueue, low priority queue is full";
      v5 = "{msg%{public}.0s:ULTriggerQueue, low priority queue is full}";
      goto LABEL_18;
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_97()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<BOOL ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_25912E524(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25912E7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);

  objc_destroyWeak((v12 + 32));
  objc_destroyWeak((v13 - 56));
  _Unwind_Resume(a1);
}

void sub_25912E894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25912EA24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25912EF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

BOOL ULBleIdentityItem::PredicateItem::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3 || *(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v5 = *(a3 + 40);
  v6 = *(a2 + 40);
  result = v6 == v5;
  if (v6 == v5 && v6 != 0)
  {
    v8 = *(a2 + 39);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 24);
    }

    v10 = *(a3 + 39);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 24);
    }

    if (v8 != v10)
    {
      return 0;
    }

    if (v9 >= 0)
    {
      v12 = (a2 + 16);
    }

    else
    {
      v12 = *(a2 + 16);
    }

    if (v11 >= 0)
    {
      v13 = (a3 + 16);
    }

    else
    {
      v13 = *(a3 + 16);
    }

    return memcmp(v12, v13, v8) == 0;
  }

  return result;
}

unint64_t ULBleIdentityItem::HashItem::operator()(uint64_t a1, uint64_t a2)
{
  result = 0;
  for (i = 0; i != 16; ++i)
  {
    result ^= (result << 6) + (result >> 2) + 2654435769u + *(a2 + i);
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_98()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_3()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

uint64_t ULBleIdentityItem::ULBleIdentityItem(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, __int128 *a5, void *a6)
{
  *a1 = *a2;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 16), a3);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 48), a4);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 80), a5);
  *(a1 + 112) = *a6;
  return a1;
}

void sub_25912F324(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1 && *(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void ULBleIdentityItem::~ULBleIdentityItem(void **this)
{
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void sub_25912F6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25912FBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __p = &a15;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_259130A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a29 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  ULBleIdentityItem::~ULBleIdentityItem(&a35);
  _Unwind_Resume(a1);
}

std::string *__copy_helper_block_ea8_40c23_ZTS17ULBleIdentityItem(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 56), (a2 + 56));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 88), (a2 + 88));
  result = std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 120), (a2 + 120));
  *(a1 + 152) = *(a2 + 152);
  return result;
}

void sub_259130BEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 112) == 1 && *(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}