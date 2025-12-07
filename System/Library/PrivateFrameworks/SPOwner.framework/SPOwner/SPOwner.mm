void sub_2643D3928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id LogCategory_BeaconManager()
{
  if (LogCategory_BeaconManager_onceToken != -1)
  {
    LogCategory_BeaconManager_cold_1();
  }

  v1 = LogCategory_BeaconManager_log;

  return v1;
}

id LogCategory_OwnerSession(uint64_t a1)
{
  if (LogCategory_OwnerSession_onceToken != -1)
  {
    LogCategory_OwnerSession_cold_1();
  }

  v2 = LogCategory_OwnerSession_log;

  return v2;
}

void sub_2643D4FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LogCategory_BeaconSharing()
{
  if (LogCategory_BeaconSharing_onceToken != -1)
  {
    LogCategory_BeaconSharing_cold_1();
  }

  v1 = LogCategory_BeaconSharing_log;

  return v1;
}

BOOL sp_key_index_map_contains_key_prefix(uint64_t a1, unsigned __int16 *__s1, size_t __n, _DWORD *a4)
{
  if (__n > 0x1C)
  {
    return 0;
  }

  v5 = *a1 + 16 * *__s1;
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = *(*a1 + 4);
  v9 = ((v6 - 4128) / v8);
  v10 = v7 + v9;
  if (v9 >= v7 + v9)
  {
    return 0;
  }

  v13 = *a1 + 4128;
  v14 = 1;
  while (v8 != 32)
  {
    if (v8 != 10)
    {
      return 0;
    }

    v15 = v13 + 10 * v9;
    if (*__s1 == *v15 && __s1[2] == *(v15 + 4))
    {
      v18 = (v15 + 6);
      goto LABEL_18;
    }

LABEL_13:
    v14 = ++v9 < v10;
    if (v9 == v10)
    {
      return v14;
    }
  }

  if (memcmp(__s1, (v13 + 32 * v9), __n))
  {
    goto LABEL_13;
  }

  v18 = (v13 + 32 * v9 + 28);
LABEL_18:
  *a4 = *v18;
  return v14;
}

BOOL sp_key_index_map_contains_key(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v3 = *a1 + 16 * *a2;
  v4 = *(v3 + 40);
  v5 = ((*(v3 + 32) - 4128) / *(*a1 + 4));
  v6 = v4 + v5;
  if (v5 >= v4 + v5)
  {
    return 0;
  }

  v7 = *a1 + 4128;
  v8 = v7 + 32 * v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (*a2 != v9 || *(a2 + 1) != v10 || *(a2 + 2) != v11 || *(a2 + 6) != v12)
  {
    while (++v5 != v6)
    {
      v16 = v7 + 32 * v5;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (*a2 == v17 && *(a2 + 1) == v18 && *(a2 + 2) == v19 && *(a2 + 6) == v20)
      {
        result = v5 < v6;
        goto LABEL_27;
      }
    }

    return 0;
  }

  result = 1;
LABEL_27:
  *a3 = *(v7 + 32 * v5 + 28);
  return result;
}

uint64_t sub_2643D53E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264446F8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_264446F7C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 8) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2643D5504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_264446F8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264446F7C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 28));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2643D561C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2643D5660()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2643D6424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2643D67CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void *sp_key_index_map_create_handle_from_file(const char *a1)
{
  v2 = open(a1, 0);
  if (v2 == -1)
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to open file: %s\n", a1);
    return 0;
  }

  else
  {

    return sp_key_index_map_create_handle_from_file_descriptor(v2);
  }
}

void *sp_key_index_map_create_handle_from_file_descriptor(int a1)
{
  v2 = _sp_mmap_file_descriptor(a1);
  if (!v2)
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to mmap index map for fd %d\n", a1);
    return 0;
  }

  v4 = v2;
  v5 = v3;
  if (*v2 != 18763 || *(v2 + 2) != 77)
  {
    fprintf(*MEMORY[0x277D85DF8], "unrecognized magic %3s for fd %d (expected KIM)\n", v2, a1);
    _sp_munmap_region_handle(v4, v5);
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  *result = v4;
  result[1] = v5;
  return result;
}

void *_sp_mmap_file_descriptor(int a1)
{
  memset(&v3, 0, sizeof(v3));
  if (fstat(a1, &v3))
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to stat fd %d\n");
    return 0;
  }

  result = mmap(0, v3.st_size, 1, 2, a1, 0);
  if (result == -1)
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to mmap fd %d\n");
    return 0;
  }

  return result;
}

size_t _sp_munmap_region_handle(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result)
  {
    v3 = *MEMORY[0x277D85DF8];

    return fwrite("failed to munmap handle\n", 0x18uLL, 1uLL, v3);
  }

  return result;
}

void sp_key_index_map_destroy(uint64_t a1)
{
  munmap(*a1, *(a1 + 8));

  free(a1);
}

uint64_t sp_key_file_header_print_description(unsigned __int8 *a1)
{
  v2 = MEMORY[0x277D85E08];
  fprintf(*MEMORY[0x277D85E08], "        magic: %02x%02x%02x (%c%c%c)\n", *a1, a1[1], a1[2], *a1, a1[1], a1[2]);
  fprintf(*v2, "      version: %02x\n", a1[3]);
  fprintf(*v2, "record length: %d\n", *(a1 + 1));
  fprintf(*v2, "  first index: %d\n", *(a1 + 2));
  return fprintf(*v2, "   last index: %d\n", *(a1 + 3));
}

uint64_t sp_key_index_map_print_toc(void *a1)
{
  v1 = 0;
  v2 = (*a1 + 40);
  v3 = MEMORY[0x277D85E08];
  do
  {
    result = fprintf(*v3, "[%ld] offset: %llu, count: %llu\n", v1++, *(v2 - 1), *v2);
    v2 += 2;
  }

  while (v1 != 256);
  return result;
}

void *sp_key_subsequence_create_from_file(const char *a1)
{
  v2 = open(a1, 0);
  if (v2 == -1)
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to open file: %s\n", a1);
    return 0;
  }

  else
  {

    return sp_key_subsequence_create_from_file_descriptor(v2);
  }
}

void *sp_key_subsequence_create_from_file_descriptor(int a1)
{
  v2 = _sp_mmap_file_descriptor(a1);
  if (!v2)
  {
    fprintf(*MEMORY[0x277D85DF8], "failed to mmap index map for fd %d\n", a1);
    return 0;
  }

  v4 = v2;
  v5 = v3;
  if (*v2 != 17739 || *(v2 + 2) != 89)
  {
    fprintf(*MEMORY[0x277D85DF8], "unrecognized magic %3s for fd %d (expected KEY)\n", v2, a1);
    _sp_munmap_region_handle(v4, v5);
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  *result = v4;
  result[1] = v5;
  return result;
}

void sp_key_subsequence_destroy(uint64_t a1)
{
  munmap(*a1, *(a1 + 8));

  free(a1);
}

uint64_t sp_key_subsequence_print_records_description(uint64_t result)
{
  v1 = *(*result + 8);
  v2 = *(*result + 12) + 1;
  if (v2 != v1)
  {
    v3 = v2 - v1;
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = (*result + 64);
    v6 = MEMORY[0x277D85E08];
    do
    {
      v8 = *v5;
      v5 += 207;
      v7 = v8;
      if (v8 <= 2uLL)
      {
        result = fprintf(*v6, off_279B58A00[v7], v1);
      }

      ++v1;
      --v4;
    }

    while (v4);
  }

  return result;
}

id sp_key_record_copy_intermediate_key(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a1 length:32];

  return v1;
}

id sp_key_record_copy_public_key(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a1 + 33 length:57];

  return v1;
}

id sp_key_record_copy_private_key(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a1 + 33 length:85];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sp_key_record_copy_private_encrypted_key(uint64_t a1)
{
  if (*(a1 + 32) == 2)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a1 + 33 length:174];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2643DB3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2643DB9D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2643DBF30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2643DC490(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2643DC9F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2643DF4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LogCategory_AccessoryDiscovery(uint64_t a1)
{
  if (LogCategory_AccessoryDiscovery_onceToken != -1)
  {
    LogCategory_AccessoryDiscovery_cold_1();
  }

  v2 = LogCategory_AccessoryDiscovery_log;

  return v2;
}

id LogCategory_LocalFindableConnectionMaterialMonitoring(uint64_t a1)
{
  if (LogCategory_LocalFindableConnectionMaterialMonitoring_onceToken != -1)
  {
    LogCategory_LocalFindableConnectionMaterialMonitoring_cold_1();
  }

  v2 = LogCategory_LocalFindableConnectionMaterialMonitoring_log;

  return v2;
}

id LogCategory_BTFinding(uint64_t a1)
{
  if (LogCategory_BTFinding_onceToken != -1)
  {
    LogCategory_BTFinding_cold_1();
  }

  v2 = LogCategory_BTFinding_log;

  return v2;
}

id LogCategory_SimpleBeaconUpdateInterface(uint64_t a1)
{
  if (LogCategory_SimpleBeaconUpdateInterface_onceToken != -1)
  {
    LogCategory_SimpleBeaconUpdateInterface_cold_1();
  }

  v2 = LogCategory_SimpleBeaconUpdateInterface_log;

  return v2;
}

id LogCategory_BeaconScanning(uint64_t a1)
{
  if (LogCategory_BeaconScanning_onceToken != -1)
  {
    LogCategory_BeaconScanning_cold_1();
  }

  v2 = LogCategory_BeaconScanning_log;

  return v2;
}

id LogCategory_CBPeripheralManagement(uint64_t a1)
{
  if (LogCategory_CBPeripheralManagement_onceToken != -1)
  {
    LogCategory_CBPeripheralManagement_cold_1();
  }

  v2 = LogCategory_CBPeripheralManagement_log;

  return v2;
}

id LogCategory_Crypto(uint64_t a1)
{
  if (LogCategory_Crypto_onceToken != -1)
  {
    LogCategory_Crypto_cold_1();
  }

  v2 = LogCategory_Crypto_log;

  return v2;
}

id LogCategory_FirmwareUpdate(uint64_t a1)
{
  if (LogCategory_FirmwareUpdate_onceToken != -1)
  {
    LogCategory_FirmwareUpdate_cold_1();
  }

  v2 = LogCategory_FirmwareUpdate_log;

  return v2;
}

id LogCategory_LocationFetch(uint64_t a1)
{
  if (LogCategory_LocationFetch_onceToken != -1)
  {
    LogCategory_LocationFetch_cold_1();
  }

  v2 = LogCategory_LocationFetch_log;

  return v2;
}

id LogCategory_MaintenanceConnection(uint64_t a1)
{
  if (LogCategory_MaintenanceConnection_onceToken != -1)
  {
    LogCategory_MaintenanceConnection_cold_1();
  }

  v2 = LogCategory_MaintenanceConnection_log;

  return v2;
}

id LogCategory_NVRAM(uint64_t a1)
{
  if (LogCategory_NVRAM_onceToken != -1)
  {
    LogCategory_NVRAM_cold_1();
  }

  v2 = LogCategory_NVRAM_log;

  return v2;
}

id LogCategory_OfflineAdvertising(uint64_t a1)
{
  if (LogCategory_OfflineAdvertising_onceToken != -1)
  {
    LogCategory_OfflineAdvertising_cold_1();
  }

  v2 = LogCategory_OfflineAdvertising_log;

  return v2;
}

id LogCategory_PowerManagement(uint64_t a1)
{
  if (LogCategory_PowerManagement_onceToken != -1)
  {
    LogCategory_PowerManagement_cold_1();
  }

  v2 = LogCategory_PowerManagement_log;

  return v2;
}

id LogCategory_SecureLocations(uint64_t a1)
{
  if (LogCategory_SecureLocations_onceToken != -1)
  {
    LogCategory_SecureLocations_cold_1();
  }

  v2 = LogCategory_SecureLocations_log;

  return v2;
}

id LogCategory_ServiceState(uint64_t a1)
{
  if (LogCategory_ServiceState_onceToken != -1)
  {
    LogCategory_ServiceState_cold_1();
  }

  v2 = LogCategory_ServiceState_log;

  return v2;
}

id LogCategory_SystemHealth(uint64_t a1)
{
  if (LogCategory_SystemHealth_onceToken != -1)
  {
    LogCategory_SystemHealth_cold_1();
  }

  v2 = LogCategory_SystemHealth_log;

  return v2;
}

id LogCategory_UnknownDiscovery(uint64_t a1)
{
  if (LogCategory_UnknownDiscovery_onceToken != -1)
  {
    LogCategory_UnknownDiscovery_cold_1();
  }

  v2 = LogCategory_UnknownDiscovery_log;

  return v2;
}

id LogCategory_Unspecified(uint64_t a1)
{
  if (LogCategory_Unspecified_onceToken != -1)
  {
    LogCategory_Unspecified_cold_1();
  }

  v2 = LogCategory_Unspecified_log;

  return v2;
}

void sub_2643E6508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2643E69C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void interfaceReconnectTrampoline()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:SPSimpleBeaconUpdateInterfaceReconnect object:0];
}

void sub_2643E6FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2643E8DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_2643EAB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void beaconsChangedTrampoline()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SPBeaconsChanged" object:0];
}

void beaconingStateChangedTrampoline()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SPBeaconingStateChanged" object:0];
}

void localActivationLockInfoChangedTrampoline(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPLocalBeaconManager: Observed com.apple.icloud.findmydeviced.localActivationLockInfoChanged", v4, 2u);
  }

  [v2 localActivationLockInfoChanged];
}

void sub_2643F353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2643F38B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2643F4824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2643F57C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_2643F5FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2643FBC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_1_3(id a1)
{

  return a1;
}

void sub_2643FCB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264404F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t bluetoothContextStartup(void *a1)
{
  v1 = a1;
  [_TtC7SPOwner15ObjCSwiftBridge bootstrapWithContext:@"bluetoothd" completionHandler:&__block_literal_global_11];
  v2 = [[SPOfflineAdvertisingKeysDelegate alloc] initWithBeaconManager:v1];

  v3 = __offlineAdvertisingKeysDelegate;
  __offlineAdvertisingKeysDelegate = v2;

  result = _os_feature_enabled_impl();
  if (result)
  {
    __SBCBLeechScanner = objc_alloc_init(SPCBLeechScanner);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void __bluetoothContextStartup_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = LogCategory_Unspecified(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __bluetoothContextStartup_block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_264411C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2644123C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2644127EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264416D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_264417328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264419680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void sub_26441E510(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = LogCategory_PowerManagement(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_2643D0000, v12, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to take power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x26441E4D8);
  }

  _Unwind_Resume(a1);
}

void sub_264420354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264420890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264426268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26442700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t inPostEraseSetupAssistant()
{
  result = SetupAssistantLibraryCore(0);
  if (result)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v1 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
    v8 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
    if (!getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr)
    {
      v2 = SetupAssistantLibrary();
      v6[3] = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
      getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = v6[3];
      v1 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v1)
    {
      inPostEraseSetupAssistant_cold_2();
    }

    if (v1())
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v3 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
      v8 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
      if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
      {
        v4 = SetupAssistantLibrary();
        v6[3] = dlsym(v4, "BYSetupAssistantNeedsToRun");
        getBYSetupAssistantNeedsToRunSymbolLoc_ptr = v6[3];
        v3 = v6[3];
      }

      _Block_object_dispose(&v5, 8);
      if (!v3)
      {
        inPostEraseSetupAssistant_cold_1();
      }

      return v3();
    }
  }

  return result;
}

void sub_264429FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SetupAssistantLibraryCore(uint64_t a1)
{
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SetupAssistantLibraryCore_frameworkLibrary;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v3 = 0;
  v0 = SetupAssistantLibraryCore(&v3);
  if (!v0)
  {
    SetupAssistantLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id allBeaconTypes(uint64_t a1)
{
  if (allBeaconTypes_onceToken != -1)
  {
    allBeaconTypes_cold_1();
  }

  v2 = allBeaconTypes__allBeaconTypes;

  return v2;
}

void __allBeaconTypes_block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v4[0] = @"accessory";
  v4[1] = @"selfBeaconing";
  v4[2] = @"durian";
  v4[3] = @"hele";
  v4[4] = @"localFindable";
  v4[5] = @"virtualMeDevice";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 initWithArray:v1];
  v3 = allBeaconTypes__allBeaconTypes;
  allBeaconTypes__allBeaconTypes = v2;
}

void sub_2644396E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void serviceSettingsChangedTrampoline(uint64_t a1)
{
  if (settingsChangedNotificationQueue_onceToken != -1)
  {
    serviceSettingsChangedTrampoline_cold_1();
  }

  v2 = settingsChangedNotificationQueue_settingsChangedNotificationQ;

  dispatch_async(v2, &__block_literal_global_21);
}

void __serviceSettingsChangedTrampoline_block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:SPServiceSettingsChangedLocalNotification object:0];
}

uint64_t __settingsChangedNotificationQueue_block_invoke()
{
  settingsChangedNotificationQueue_settingsChangedNotificationQ = dispatch_queue_create("com.apple.icloud.searchpartyd.settingsChangedNotificationQ", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t LocalBeaconKeyInfo.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264446F8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LocalBeaconKeyInfo.beaconIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocalBeaconKeyInfo(0) + 20);
  v4 = sub_264446F8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LocalBeaconKeyInfo(uint64_t a1)
{
  result = qword_280B5A530;
  if (!qword_280B5A530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocalBeaconKeyInfo.pairDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocalBeaconKeyInfo(0) + 24);
  v4 = sub_264446F7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LocalBeaconKeyInfo.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for LocalBeaconKeyInfo(0) + 28);
  v2 = *v1;
  sub_26444113C(*v1, *(v1 + 8));
  return v2;
}

void sub_26444113C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t LocalBeaconKeyInfo.sharedSecretKey.getter()
{
  v1 = v0 + *(type metadata accessor for LocalBeaconKeyInfo(0) + 32);
  v2 = *v1;
  sub_26444113C(*v1, *(v1 + 8));
  return v2;
}

uint64_t LocalBeaconKeyInfo.init(userIdentifier:beaconIdentifier:pairDate:publicKey:sharedSecretKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_264446F8C();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  v17 = type metadata accessor for LocalBeaconKeyInfo(0);
  v16(a8 + v17[5], a2, v15);
  v18 = v17[6];
  v19 = sub_264446F7C();
  result = (*(*(v19 - 8) + 32))(a8 + v18, a3, v19);
  v21 = (a8 + v17[7]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a8 + v17[8]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t LocalBeaconKeyInfo.description.getter()
{
  sub_26444706C();

  type metadata accessor for LocalBeaconKeyInfo(0);
  sub_264446F7C();
  sub_264442198(&qword_27FF6DAE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v0 = sub_2644470CC();
  MEMORY[0x266737530](v0);

  MEMORY[0x266737530](0x4B63696C62757020, 0xEC000000203A7965);
  v1 = sub_264446F6C();
  MEMORY[0x266737530](v1);

  MEMORY[0x266737530](0xD000000000000012, 0x8000000264459120);
  v2 = sub_264446F6C();
  MEMORY[0x266737530](v2);

  MEMORY[0x266737530](62, 0xE100000000000000);
  return 0x203A726961703CLL;
}

uint64_t sub_264441488()
{
  v1 = *v0;
  sub_2644470FC();
  MEMORY[0x266737640](v1);
  return sub_26444711C();
}

uint64_t sub_2644414FC(uint64_t a1)
{
  v2 = *v1;
  sub_2644470FC();
  MEMORY[0x266737640](v2);
  return sub_26444711C();
}

unint64_t sub_264441540()
{
  v1 = *v0;
  v2 = 0x6E65644972657375;
  v3 = 0x6574614472696170;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x6553646572616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2644415FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264442660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26444163C(uint64_t a1)
{
  v2 = sub_264441A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264441678(uint64_t a1)
{
  v2 = sub_264441A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalBeaconKeyInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DAF0, &qword_264459440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264441A2C();
  sub_26444713C();
  LOBYTE(v15) = 0;
  sub_264446F8C();
  sub_264442198(&qword_27FF6DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2644470BC();
  if (!v2)
  {
    v9 = type metadata accessor for LocalBeaconKeyInfo(0);
    LOBYTE(v15) = 1;
    sub_2644470BC();
    LOBYTE(v15) = 2;
    sub_264446F7C();
    sub_264442198(&qword_27FF6DB08, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2644470BC();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v17 = 3;
    sub_26444113C(v15, v11);
    sub_264441A80();
    sub_2644470BC();
    sub_264441AD4(v15, v16);
    v12 = (v3 + *(v9 + 32));
    v13 = v12[1];
    v15 = *v12;
    v16 = v13;
    v17 = 4;
    sub_26444113C(v15, v13);
    sub_2644470BC();
    sub_264441AD4(v15, v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_264441A2C()
{
  result = qword_27FF6DAF8;
  if (!qword_27FF6DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6DAF8);
  }

  return result;
}

unint64_t sub_264441A80()
{
  result = qword_27FF6DB10;
  if (!qword_27FF6DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6DB10);
  }

  return result;
}

uint64_t sub_264441AD4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t LocalBeaconKeyInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_264446F7C();
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264446F8C();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v23 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB18, &qword_264459448);
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v23 - v10;
  v12 = type metadata accessor for LocalBeaconKeyInfo(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264441A2C();
  v31 = v11;
  v15 = v34;
  sub_26444712C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v4;
  v24 = v12;
  v34 = v14;
  v16 = v30;
  LOBYTE(v35) = 0;
  sub_264442198(&qword_27FF6DB20, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v17 = v28;
  sub_2644470AC();
  v18 = v33;
  v33 = *(v27 + 32);
  (v33)(v34, v18, v17);
  LOBYTE(v35) = 1;
  sub_2644470AC();
  (v33)(&v34[v24[5]], v8, v17);
  LOBYTE(v35) = 2;
  sub_264442198(&qword_27FF6DB28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v23;
  sub_2644470AC();
  v20 = v34;
  (*(v26 + 32))(&v34[v24[6]], v19, v16);
  v36 = 3;
  sub_2644421E0();
  sub_2644470AC();
  *(v20 + v24[7]) = v35;
  v36 = 4;
  sub_2644470AC();
  (*(v29 + 8))(v31, v32);
  v21 = v25;
  *(v20 + v24[8]) = v35;
  sub_264442234(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_264442298(v20);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_264442198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2644421E0()
{
  result = qword_27FF6DB30;
  if (!qword_27FF6DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6DB30);
  }

  return result;
}

uint64_t sub_264442234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalBeaconKeyInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264442298(uint64_t a1)
{
  v2 = type metadata accessor for LocalBeaconKeyInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264442350(uint64_t a1)
{
  result = sub_264446F8C();
  if (v2 <= 0x3F)
  {
    result = sub_264446F7C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalBeaconKeyInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalBeaconKeyInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26444255C()
{
  result = qword_27FF6DB38;
  if (!qword_27FF6DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6DB38);
  }

  return result;
}

unint64_t sub_2644425B4()
{
  result = qword_27FF6DB40;
  if (!qword_27FF6DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6DB40);
  }

  return result;
}

unint64_t sub_26444260C()
{
  result = qword_27FF6DB48;
  if (!qword_27FF6DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6DB48);
  }

  return result;
}

uint64_t sub_264442660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v4 || (sub_2644470DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264459140 == a2 || (sub_2644470DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574614472696170 && a2 == 0xE800000000000000 || (sub_2644470DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (sub_2644470DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEF79654B74657263)
  {

    return 4;
  }

  else
  {
    v6 = sub_2644470DC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_264442850()
{
  swift_beginAccess();

  v2 = sub_2644434F4(v1);

  if (v2)
  {
    sub_26444706C();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x266737530](0x20747865746E6F43, 0xE90000000000005BLL);
    sub_26444707C();
    MEMORY[0x266737530](0xD000000000000011, 0x8000000264459250);
    return sub_26444708C();
  }

  else
  {
    swift_beginAccess();
    sub_264442DE0();
    swift_endAccess();
    if (qword_280B5A3C0 != -1)
    {
      swift_once();
    }

    v4 = sub_264446FBC();
    __swift_project_value_buffer(v4, qword_280B5A8B0);
    v5 = sub_264446F9C();
    v6 = sub_26444703C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2643D0000, v5, v6, "Booted SPOwner bluetoothd Swift context", v7, 2u);
      MEMORY[0x266738060](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_264442A88()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for SwiftBootstrapManager.Context(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SwiftBootstrapManager.Context(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_264442BE0()
{
  sub_2644470FC();
  sub_264446FEC();
  return sub_26444711C();
}

uint64_t sub_264442C54(uint64_t a1)
{
  sub_2644470FC();
  sub_264446FEC();
  return sub_26444711C();
}

uint64_t sub_264442CA8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26444709C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_264442D20()
{
  result = qword_280B5A490;
  if (!qword_280B5A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A490);
  }

  return result;
}

uint64_t sub_264442D74()
{
  v0 = sub_264446FBC();
  __swift_allocate_value_buffer(v0, qword_280B5A8B0);
  __swift_project_value_buffer(v0, qword_280B5A8B0);
  return sub_264446FAC();
}

BOOL sub_264442DE0()
{
  v1 = *v0;
  sub_2644470FC();
  sub_264446FEC();
  v2 = sub_26444711C() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_2644430D4(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_264442EA8(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB50, &qword_264459730);
  result = sub_26444705C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_2644470FC();
      sub_264446FEC();
      result = sub_26444711C();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_2644430D4(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_264442EA8(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_264443304(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_2644470FC();
      sub_264446FEC();
      result = sub_26444711C() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_2644431F8();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_2644470EC();
  __break(1u);
  return result;
}

void *sub_2644431F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB50, &qword_264459730);
  v2 = *v0;
  v3 = sub_26444704C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_264443304(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB50, &qword_264459730);
  result = sub_26444705C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_2644470FC();
      sub_264446FEC();
      result = sub_26444711C();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2644434F4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_2644470FC();
  sub_264446FEC();
  v2 = sub_26444711C() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26444362C()
{
  type metadata accessor for SwiftBootstrapManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  qword_280B5A8C8 = v0;
  return result;
}

uint64_t static ObjCSwiftBridge.bootstrap(context:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26444372C;

  return sub_264444358(a1, a2);
}

uint64_t sub_26444372C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2644439A4(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_264446FCC();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_264443A74;

  return sub_264444358(v3, v5);
}

uint64_t sub_264443A74()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_264446F5C();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

id ObjCSwiftBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCSwiftBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCSwiftBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ObjCSwiftBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ObjCSwiftBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_264443CDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_264444ADC;

  return v6();
}

uint64_t sub_264443DC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26444372C;

  return v7();
}

uint64_t sub_264443EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB58, &qword_264459768);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_264444894(a3, v23 - v10);
  v12 = sub_26444702C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_264444904(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26444701C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26444700C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_264446FDC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_264444904(a3);

    return v21;
  }

LABEL_8:
  sub_264444904(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_264444168(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264444260;

  return v6(a1);
}

uint64_t sub_264444260()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264444358(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_264444378, 0, 0);
}

uint64_t sub_264444378()
{
  if (sub_26444709C())
  {
    v3 = v0 + 16;
    v2 = *(v0 + 16);
    v1 = *(v3 + 8);
    sub_26444706C();

    MEMORY[0x266737530](v2, v1);
    MEMORY[0x266737530](93, 0xE100000000000000);
    return sub_26444708C();
  }

  else
  {
    if (qword_280B5A498 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_2644444FC;

    return sub_264442830();
  }
}

uint64_t sub_2644444FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264444614()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26444372C;

  return sub_2644439A4(v2, v3);
}

uint64_t sub_2644446C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264444ADC;

  return sub_264443CDC(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644447C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264444ADC;

  return sub_264443DC4(a1, v4, v5, v6);
}

uint64_t sub_264444894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB58, &qword_264459768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264444904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6DB58, &qword_264459768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26444496C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264444ADC;

  return sub_264444168(a1, v4);
}

uint64_t sub_264444A24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26444372C;

  return sub_264444168(a1, v4);
}

void __bluetoothContextStartup_block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2643D0000, a2, a3, "Error from ObjCSwiftBridge.bootstrapWithContext[bluetoothd]: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void inPostEraseSetupAssistant_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _BYSetupAssistantNeedsToRun(void)"];
  [v0 handleFailureInFunction:v1 file:@"SPSetupAssistantHelper.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void inPostEraseSetupAssistant_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _BYSetupAssistantHasCompletedInitialRun(void)"];
  [v0 handleFailureInFunction:v1 file:@"SPSetupAssistantHelper.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void SetupAssistantLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SPSetupAssistantHelper.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}