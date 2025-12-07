@interface APCarPlayControlServerControl
@end

@implementation APCarPlayControlServerControl

uint64_t ___APCarPlayControlServerControl_block_invoke(uint64_t a1)
{
  result = CFDictionaryApplyBlock();
  *(*(a1 + 32) + 80) = 1;
  return result;
}

void ___APCarPlayControlServerControl_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BonjourAdvertiserSetPort();
  v5 = BonjourAdvertiserStart();
  if (*(*(a1 + 32) + 104))
  {
    APSEventRecorderRecordEvent();
  }

  v6 = LogCategoryCopyOSLogHandle();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D2A9000, v8, OS_SIGNPOST_EVENT, 0x2B8D07DCuLL, "AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDADVERTISE", "", buf, 2u);
  }

  if (v7)
  {
    os_release(v7);
  }

  if (gLogCategory_CarPlayControlServer <= 40 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CarPlayControlServer, "OSStatus _APCarPlayControlServerControl(HTTPServerRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef, void *)_block_invoke", 40, "Register service %s with port %d on interface %@: %#m\n", "_carplay-ctrl._tcp", *(*(*(a1 + 32) + 32) + 48), a2, v5);
  }
}

uint64_t ___APCarPlayControlServerControl_block_invoke_2_33(uint64_t a1)
{
  result = CFDictionaryApplyBlock();
  *(*(a1 + 32) + 80) = 0;
  return result;
}

uint64_t ___APCarPlayControlServerControl_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = BonjourAdvertiserStop();
  if (gLogCategory_CarPlayControlServer <= 40)
  {
    if (gLogCategory_CarPlayControlServer != -1)
    {
      return ___APCarPlayControlServerControl_block_invoke_3_cold_1(a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return ___APCarPlayControlServerControl_block_invoke_3_cold_1(a2);
    }
  }

  return result;
}

@end