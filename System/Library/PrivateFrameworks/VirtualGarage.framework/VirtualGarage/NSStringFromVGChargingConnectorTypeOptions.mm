@interface NSStringFromVGChargingConnectorTypeOptions
@end

@implementation NSStringFromVGChargingConnectorTypeOptions

__CFString *__NSStringFromVGChargingConnectorTypeOptions_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 <= 15)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        return @"CCS2";
      }

      if (a2 == 8)
      {
        return @"CHAdeMO";
      }
    }

    else
    {
      if (a2 == 1)
      {
        return @"J1772";
      }

      if (a2 == 2)
      {
        return @"CCS1";
      }
    }
  }

  else if (a2 <= 63)
  {
    if (a2 == 16)
    {
      return @"GBT_AC";
    }

    if (a2 == 32)
    {
      return @"GBT_DC";
    }
  }

  else
  {
    switch(a2)
    {
      case 64:
        return @"Tesla (NACS_DC)";
      case 128:
        return @"Mennekes";
      case 256:
        return @"NACS_AC";
    }
  }

  v4 = VGGetAssertLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "NSString * _Nonnull NSStringFromVGChargingConnectorTypeOptions(VGChargingConnectorTypeOptions)_block_invoke";
    v11 = 2080;
    v12 = "VGVehicleState.m";
    v13 = 1024;
    v14 = 88;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
  }

  if (_vg_isInternalInstall())
  {
    v5 = VGGetAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCACC8] callStackSymbols];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
    }
  }

  v7 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_FAULT, "Tried to get a string version of a multiple option bitmask: %lu. This is not supported.", &v9, 0xCu);
  }

  return @"Unknown";
}

@end