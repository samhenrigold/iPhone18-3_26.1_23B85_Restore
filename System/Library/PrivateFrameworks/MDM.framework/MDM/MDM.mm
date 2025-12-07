uint64_t sub_2561F7814()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2561F784C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2561F79CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561F80C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MDMAnalyticsSendCommandEvent(void *a1, void *a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v9 = a1;
  v10 = a2;
  v11 = v9;
  v12 = v10;
  AnalyticsSendEventLazy();
}

id __MDMAnalyticsSendCommandEvent_block_invoke(uint64_t a1)
{
  v19[9] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D24760];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 domain];

    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
    v2 = v4;
  }

  else
  {
    v5 = &unk_286850320;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = *MEMORY[0x277D24758];
  }

  v7 = *MEMORY[0x277D246E8];
  v18[0] = *MEMORY[0x277D246E0];
  v18[1] = v7;
  v19[0] = v6;
  v19[1] = v5;
  v8 = *MEMORY[0x277D246F0];
  v19[2] = v2;
  v9 = *MEMORY[0x277D24770];
  v18[2] = v8;
  v18[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v19[3] = v10;
  v18[4] = *MEMORY[0x277D24718];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v19[4] = v11;
  v18[5] = *MEMORY[0x277D24738];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 50)];
  v19[5] = v12;
  v18[6] = *MEMORY[0x277D24740];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 51)];
  v19[6] = v13;
  v18[7] = *MEMORY[0x277D24750];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 52)];
  v19[7] = v14;
  v18[8] = *MEMORY[0x277D24748];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 53)];
  v19[8] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:9];

  return v16;
}

id __MDMAnalyticsSendPushEvent_block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D24768];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = *MEMORY[0x277D24750];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 36)];
  v8[1] = v3;
  v7[2] = *MEMORY[0x277D24748];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 37)];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_2561FA45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561FC774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561FCA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2561FD1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_2561FE774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2562002B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256200AA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"error"];

    [(MDMAbstractTunnelParser *)MDMParser responseWithError:v4];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x256200A58);
  }

  _Unwind_Resume(exception_object);
}

BOOL MDMKeybagCreateMDMEscrowWithPasscodeContextData(void *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 DMCMakeUUID];
  v35 = 0;
  v6 = MDMKeybagCopyEscrowWithACM(v5, v4, &v35);

  v7 = v35;
  if (v6)
  {
    v34 = a2;
    v33 = v6;
    v8 = MEMORY[0x277D03520];
    v9 = [MEMORY[0x277D03520] dataFromString:v5];
    v10 = *MEMORY[0x277D24D00];
    v11 = *MEMORY[0x277D24800];
    v12 = *MEMORY[0x277CDBF00];
    v13 = [MEMORY[0x277D24648] sharedConfiguration];
    v14 = [v13 personaID];
    v37 = 0;
    BYTE2(v30) = v14 != 0;
    LOWORD(v30) = 256;
    [v8 setData:v9 forService:v10 account:v11 label:0 description:0 access:v12 group:0 useSystemKeychain:v30 sysBound:&v37 enforcePersonalPersona:? outError:?];
    v15 = v37;

    if (v15)
    {
      v16 = v33;
      v17 = *DMCLogObjects();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v15;
        _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_ERROR, "Failed to store MDM escrow secret into keychain. Error: %@", buf, 0xCu);
      }

      a2 = v34;
    }

    else
    {
      v18 = MEMORY[0x277D03520];
      v19 = *MEMORY[0x277D247F8];
      v20 = *MEMORY[0x277CDBEE8];
      v21 = [MEMORY[0x277D24648] sharedConfiguration];
      v22 = [v21 personaID];
      v36 = 0;
      BYTE2(v31) = v22 != 0;
      LOWORD(v31) = 256;
      v23 = v18;
      v16 = v33;
      v32 = v10;
      [v23 setData:v33 forService:v10 account:v19 label:0 description:0 access:v20 group:0 useSystemKeychain:v31 sysBound:&v36 enforcePersonalPersona:? outError:?];
      v15 = v36;

      a2 = v34;
      if (!v15)
      {
LABEL_11:

        goto LABEL_12;
      }

      v24 = *DMCLogObjects();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v15;
        _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_ERROR, "Failed to store MDM escrow data into keychain. Error: %@", buf, 0xCu);
      }

      v25 = MEMORY[0x277D03520];
      v26 = [MEMORY[0x277D24648] sharedConfiguration];
      v27 = [v26 personaID];
      [v25 removeItemForService:v32 account:v11 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:v27 != 0 group:0];

      v16 = v33;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (a2 && v7)
  {
    v28 = v7;
    *a2 = v7;
  }

  return v7 == 0;
}

id MDMKeybagCopyEscrowWithACM(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MDMCreateLAContextWithPasscode(a1);
  v7 = [v6 externalizedContext];
  if (+[MDMMCInterface isPasscodeSet](MDMMCInterface, "isPasscodeSet") && ![v5 length])
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D033D0];
    v22 = DMCErrorArray();
    v14 = [v20 DMCErrorWithDomain:v21 code:37002 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  else
  {
    EscrowWithACM = MKBKeyBagCreateEscrowWithACM();
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v28 = EscrowWithACM;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_INFO, "MKBKeyBagCreateEscrowWithACM finished with result: %d", buf, 8u);
    }

    if (EscrowWithACM)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277D033D0];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:EscrowWithACM];
      v13 = DMCErrorArray();
      v14 = [v10 DMCErrorWithDomain:v11 code:37003 descriptionArray:v13 errorType:{*MEMORY[0x277D032F8], v12, 0}];
    }

    else
    {
      v15 = MKBKeyBagCopyData();
      if (v15)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277D033D0];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:v15];
        v19 = DMCErrorArray();
        v14 = [v16 DMCErrorWithDomain:v17 code:37004 descriptionArray:v19 errorType:{*MEMORY[0x277D032F8], v18, 0}];
      }

      else
      {
        v26 = *DMCLogObjects();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v28 = 0;
          v29 = 2112;
          v30 = 0;
          _os_log_impl(&dword_2561F5000, v26, OS_LOG_TYPE_INFO, "MKBKeyBagCopyData finished with result: %d %@", buf, 0x12u);
        }

        v14 = 0;
      }
    }
  }

  if (v14)
  {
    if (a3)
    {
      v23 = v14;
      v24 = 0;
      *a3 = v14;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

BOOL MDMKeybagCreateMDMEscrowWithPasscode(void *a1, void *a2)
{
  v3 = MDMCreateLAContextWithPasscode(a1);
  v4 = [v3 externalizedContext];
  MDMEscrowWithPasscodeContextData = MDMKeybagCreateMDMEscrowWithPasscodeContextData(v4, a2);

  return MDMEscrowWithPasscodeContextData;
}

id MDMCreateLAContextWithPasscode(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = MDMCreateLAContextWithPasscodeData(v1);

  return v2;
}

id MDMKeybagRetrieveMDMEscrowDataIfPresent(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D03520];
  v3 = *MEMORY[0x277D24D00];
  v4 = *MEMORY[0x277D247F8];
  v5 = [MEMORY[0x277D24648] sharedConfiguration];
  v6 = [v5 personaID];
  v17 = 0;
  LOBYTE(v16) = v6 != 0;
  v7 = [v2 dataFromService:v3 account:v4 label:0 description:0 group:0 useSystemKeychain:0 enforcePersonalPersona:v16 outError:&v17];
  v8 = v17;

  if (!v7)
  {
    if (a1)
    {
      v9 = v8;
      *a1 = v8;
    }

    v10 = *DMCLogObjects();
    if (v8)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v19 = v8;
      v11 = "Unable to retrieve escrow keybag from the keychain. Error: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v11 = "No escrow keybag found in the keychain.";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 2;
    }

    _os_log_impl(&dword_2561F5000, v12, v13, v11, buf, v14);
  }

LABEL_10:

  return v7;
}

void MDMKeybagDeleteMDMEscrowData()
{
  v0 = MEMORY[0x277D03520];
  v1 = *MEMORY[0x277D24D00];
  v2 = *MEMORY[0x277D247F8];
  v4 = [MEMORY[0x277D24648] sharedConfiguration];
  v3 = [v4 personaID];
  [v0 removeItemForService:v1 account:v2 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:v3 != 0 group:0];
}

void MDMKeybagDeleteMDMEscrowSecret()
{
  v0 = MEMORY[0x277D03520];
  v1 = *MEMORY[0x277D24D00];
  v2 = *MEMORY[0x277D24800];
  v4 = [MEMORY[0x277D24648] sharedConfiguration];
  v3 = [v4 personaID];
  [v0 removeItemForService:v1 account:v2 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:v3 != 0 group:0];
}

id MDMCreateLAContextWithPasscodeData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = [v2 setCredential:v1 type:-8];

    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v5 = *DMCLogObjects();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set credential for context", v7, 2u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MDMKeybagCreateSupervisionEscrowWithPasscode(void *a1, void *a2)
{
  v3 = MDMCreateLAContextWithPasscode(a1);
  v4 = [v3 externalizedContext];
  v11 = 0;
  v5 = MDMKeybagCopyEscrowWithACM(@"com.apple.Chaperone", v4, &v11);
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    if (a2)
    {
      v8 = v6;
      v9 = 0;
      *a2 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

void sub_2562029B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256202ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256203484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25620921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getPRSettingsProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ProximityReaderLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ProximityReaderLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27982C0E0;
    v6 = 0;
    ProximityReaderLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ProximityReaderLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSettingsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSettingsProviderClass_block_invoke_cold_1();
  }

  getPRSettingsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ProximityReaderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ProximityReaderLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_256209E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256214A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256218420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256220830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562277D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256229168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256229724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256229C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25622C880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25622DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25622DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25622E9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25622F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose((v34 - 128), 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_256230454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 168), 8);
  _Block_object_dispose((v31 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_256230C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2562333C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256237378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256237A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2562394CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256239790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256239DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623A594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25623A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623C094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25623CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25623D360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623DED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25623FBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256240034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562406FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256240CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25624197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256241B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562423F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562425FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25624319C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_256244D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256245194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256245C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _performBlockOnMainThread(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [MEMORY[0x277CCACC8] mainThread];

  if (v2 == v3)
  {
    v1[2](v1);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___performBlockOnMainThread_block_invoke;
    block[3] = &unk_27982CC88;
    v5 = v1;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void sub_256248F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256249100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25624949C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256249768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_256249F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_25624A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_25624D42C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_25624D47C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25624A6C4, 0, 0);
}

uint64_t sub_25624A6C4()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D03160], v0[4]);
  sub_25624D46C();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_25624A790;

  return MEMORY[0x2821593E8]();
}

uint64_t sub_25624A790()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25624BBAC;
  }

  else
  {
    v2 = sub_25624BBA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25624A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_25624B694(a3, v24 - v9);
  v11 = sub_25624D4BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25624B704(v10);
  }

  else
  {
    sub_25624D4AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25624D49C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25624D48C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_25624B704(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25624B704(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_25624ABA0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_25624D41C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_25624AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_25624D42C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_25624D47C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25624AF34, 0, 0);
}

uint64_t sub_25624AF34()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D03160], v0[4]);
  sub_25624D46C();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_25624B000;

  return MEMORY[0x2821593C8]();
}

uint64_t sub_25624B000()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25624B1A8;
  }

  else
  {
    v2 = sub_25624B114;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25624B114()
{
  (*(v0 + 16))(0);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25624B1A8()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v1;
  v2(v1);

  (*(v0[8] + 8))(v0[9], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25624B29C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670);
  MEMORY[0x28223BE20]();
  v11 = &v17 - v10;
  v12 = _Block_copy(a3);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_25624D4BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a6;
  v15[5] = v13;
  sub_25624A8A4(0, 0, v11, a7, v15);
}

DMCAppsClientLite __swiftcall DMCAppsClientLite.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for DMCAppsClientLite()
{
  result = qword_27F832CE8;
  if (!qword_27F832CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F832CE8);
  }

  return result;
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

uint64_t sub_25624B508()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25624B5A0;

  return sub_25624AE18(v4, v5, v6, v2, v3);
}

uint64_t sub_25624B5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25624B694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25624B704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25624B76C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25624B864;

  return v6(a1);
}

uint64_t sub_25624B864()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25624B95C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25624BBA8;

  return sub_25624B76C(a1, v4);
}

uint64_t sub_25624BA14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25624B5A0;

  return sub_25624B76C(a1, v4);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25624BB0C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25624BBA8;

  return sub_25624A5A8(v4, v5, v6, v2, v3);
}